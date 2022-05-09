; ModuleID = '/llk/IR_all_yes/net/atm/br2684.c_pt.bc'
source_filename = "../net/atm/br2684.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atm_ioctl = type { ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.br2684_vcc = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, %struct.br2684_filter, i32, i32, %struct.atomic_t }
%struct.br2684_filter = type { i32, i32 }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.104, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.105, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.106, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.104 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.105 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.106 = type { ptr }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.145, i8, %union.anon.147 }
%union.anon.145 = type { %struct.anon.146 }
%struct.anon.146 = type { i8, i8 }
%union.anon.147 = type { %struct.anon.150 }
%struct.anon.150 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.151 }
%struct.anon.151 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.br2684_filter_set = type { %struct.br2684_if_spec, %struct.br2684_filter }
%struct.br2684_if_spec = type { i32, %union.anon.152 }
%union.anon.152 = type { i32, [12 x i8] }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.atm_backend_br2684 = type { i16, %struct.br2684_if_spec, i32, i32, i32, i32, i32, [7 x i8], i32, i32 }
%struct.atm_dev = type { ptr, ptr, ptr, i32, ptr, ptr, i32, %struct.list_head, %struct.list_head, [6 x i8], %struct.atm_cirange, %struct.k_atm_dev_stats, i8, i32, %struct.refcount_struct, %struct.spinlock, ptr, ptr, %struct.device, %struct.list_head }
%struct.atm_cirange = type { i8, i8 }
%struct.k_atm_dev_stats = type { %struct.k_atm_aal_stats, %struct.k_atm_aal_stats, %struct.k_atm_aal_stats }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.139 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.atm_newif_br2684 = type { i16, i32, [16 x i8], i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }

@br2684_ioctl_ops = internal global { %struct.atm_ioctl, [16 x i8] } { %struct.atm_ioctl { ptr null, ptr @br2684_ioctl, %struct.list_head zeroinitializer }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"br2684\00", [25 x i8] zeroinitializer }, align 32
@atm_proc_root = external dso_local local_unnamed_addr global ptr, align 4
@atm_dev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @atm_dev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@br2684_devs = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @br2684_devs, ptr @br2684_devs }, [24 x i8] zeroinitializer }, align 32
@__initcall__kmod_br2684__471_867_br2684_init6 = internal global ptr @br2684_init, section ".initcall6.init", align 4
@__exitcall_br2684_exit = internal global ptr @br2684_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author472 = internal constant [26 x i8] c"br2684.author=Marcell GAL\00", section ".modinfo", align 1
@__UNIQUE_ID_description473 = internal constant [59 x i8] c"br2684.description=RFC2684 bridged protocols over ATM/AAL5\00", section ".modinfo", align 1
@__UNIQUE_ID_file474 = internal constant [27 x i8] c"br2684.file=net/atm/br2684\00", section ".modinfo", align 1
@__UNIQUE_ID_license475 = internal constant [19 x i8] c"br2684.license=GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/atm/br2684.c\00", [47 x i8] zeroinitializer }, align 32
@devs_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@br2684_regvcc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013br2684:%s: tried to attach to non-existent device\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"br2684_regvcc\00", [18 x i8] zeroinitializer }, align 32
@br2684_regvcc._entry_ptr = internal global ptr @br2684_regvcc._entry, section ".printk_index", align 4
@br2684_regvcc.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.1, ptr @.str.4, i8 0, i8 -112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"vcc=%p, encaps=%d, brvcc=%p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"br2684:%s: vcc=%p, encaps=%d, brvcc=%p\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"devs_lock\00", [22 x i8] zeroinitializer }, align 32
@br2684_pop.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.10, ptr @.str.1, ptr @.str.11, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"br2684_pop\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(vcc %p ; net_dev %p )\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"br2684:%s: (vcc %p ; net_dev %p )\0A\00", [61 x i8] zeroinitializer }, align 32
@br2684_create.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.1, ptr @.str.14, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"br2684_create\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"br2684:%s: \0A\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nas%d\00", [26 x i8] zeroinitializer }, align 32
@br2684_create.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.1, ptr @.str.17, i8 0, i8 -83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"registered netdev %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"br2684:%s: registered netdev %s\0A\00", [63 x i8] zeroinitializer }, align 32
@br2684_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.13, ptr @.str.1, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013br2684:%s: register_netdev failed\0A\00", [59 x i8] zeroinitializer }, align 32
@br2684_create._entry_ptr = internal global ptr @br2684_create._entry, section ".printk_index", align 4
@br2684_netdev_ops_routed = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr null, ptr null, ptr @br2684_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @br2684_mac_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@br2684_start_xmit.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.1, ptr @.str.21, i8 0, i8 74, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"br2684_start_xmit\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"skb_dst(skb)=%p\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"br2684:%s: skb_dst(skb)=%p\0A\00", [36 x i8] zeroinitializer }, align 32
@br2684_start_xmit.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.1, ptr @.str.23, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no vcc attached to dev %s\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"br2684:%s: no vcc attached to dev %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/skbuff.h\00", [41 x i8] zeroinitializer }, align 32
@sock_owned_by_me.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@llc_oui_pid_pad = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\AA\AA\03\00\80\C2\00\07\00\00", [22 x i8] zeroinitializer }, align 32
@llc_oui_ipv4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\AA\AA\03\00\00\00\08\00", [24 x i8] zeroinitializer }, align 32
@br2684_xmit_vcc.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.1, ptr @.str.28, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"br2684_xmit_vcc\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"atm_skb(%p)->vcc(%p)->dev(%p)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"br2684:%s: atm_skb(%p)->vcc(%p)->dev(%p)\0A\00", [54 x i8] zeroinitializer }, align 32
@br2684_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr null, ptr null, ptr @br2684_start_xmit, ptr null, ptr null, ptr null, ptr null, ptr @br2684_mac_addr, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@br2684_push.__UNIQUE_ID_ddebug465 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.1, ptr @.str.14, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"br2684_push\00", [20 x i8] zeroinitializer }, align 32
@br2684_push.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.1, ptr @.str.31, i8 0, i8 111, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"skb from brdev %p\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"br2684:%s: skb from brdev %p\0A\00", [34 x i8] zeroinitializer }, align 32
@ethertype_ipv6 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\86\DD", [30 x i8] zeroinitializer }, align 32
@ethertype_ipv4 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\08\00", [30 x i8] zeroinitializer }, align 32
@pad = internal constant { [2 x i8], [30 x i8] } zeroinitializer, align 32
@br2684_push.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.1, ptr @.str.33, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"received packet's protocol: %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"br2684:%s: received packet's protocol: %x\0A\00", [53 x i8] zeroinitializer }, align 32
@atm_dev_event.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.1, ptr @.str.36, i8 0, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"atm_dev_event\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"event=%ld dev=%p\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"br2684:%s: event=%ld dev=%p\0A\00", [35 x i8] zeroinitializer }, align 32
@br2684_close_vcc.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.1, ptr @.str.39, i8 0, i8 102, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"br2684_close_vcc\00", [47 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"removing VCC %p from dev %p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"br2684:%s: removing VCC %p from dev %p\0A\00", [56 x i8] zeroinitializer }, align 32
@br2684_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @br2684_seq_start, ptr @br2684_seq_stop, ptr @br2684_seq_next, ptr @br2684_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"dev %.16s: num=%d, mac=%pM (%s)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"set\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"  vcc %d.%d.%d: encaps=%s payload=%s, failed copies %u/%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LLC\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VC\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bridged\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"routed\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"    filter=%pI4/%pI4\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1073897970, i64 1073897971, i64 1075601808]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 4, i64 4, i64 6]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 2054]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"br2684_ioctl_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 761, i32 25 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 847, i32 20 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"atm_dev_notifier\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 180, i32 30 }
@___asan_gen_.65 = private unnamed_addr constant [12 x i8] c"br2684_devs\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 101, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 733, i32 9 }
@___asan_gen_.71 = private unnamed_addr constant [10 x i8] c"devs_lock\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 554, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 577, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 156, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 99, i32 8 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 189, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 671, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 685, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 694, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 698, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [25 x i8] c"br2684_netdev_ops_routed\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 628, i32 36 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 299, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 303, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 1011, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1750, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [16 x i8] c"llc_oui_pid_pad\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 55, i32 28 }
@___asan_gen_.155 = private unnamed_addr constant [13 x i8] c"llc_oui_ipv4\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 58, i32 28 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 255, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [18 x i8] c"br2684_netdev_ops\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 622, i32 36 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 429, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 446, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [15 x i8] c"ethertype_ipv6\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 54, i32 28 }
@___asan_gen_.182 = private unnamed_addr constant [15 x i8] c"ethertype_ipv4\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 53, i32 28 }
@___asan_gen_.185 = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 57, i32 28 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 507, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 157, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 411, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [15 x i8] c"br2684_seq_ops\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 816, i32 36 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 792, i32 18 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 796, i32 27 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 796, i32 35 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 799, i32 19 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 803, i32 34 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 803, i32 42 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 804, i32 39 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 804, i32 51 }
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.240 = private constant [20 x i8] c"../net/atm/br2684.c\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.240, i32 808, i32 20 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author472, ptr @__UNIQUE_ID_description473, ptr @__UNIQUE_ID_file474, ptr @__UNIQUE_ID_license475, ptr @__exitcall_br2684_exit, ptr @__initcall__kmod_br2684__471_867_br2684_init6, ptr @br2684_create._entry, ptr @br2684_create._entry_ptr, ptr @br2684_exit, ptr @br2684_regvcc._entry, ptr @br2684_regvcc._entry_ptr, ptr @br2684_ioctl_ops, ptr @.str, ptr @atm_dev_notifier, ptr @br2684_devs, ptr @.str.1, ptr @devs_lock, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @br2684_netdev_ops_routed, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @llc_oui_pid_pad, ptr @llc_oui_ipv4, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @br2684_netdev_ops, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @ethertype_ipv6, ptr @ethertype_ipv4, ptr @pad, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @br2684_seq_ops, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br2684_ioctl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atm_dev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br2684_devs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devs_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br2684_regvcc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br2684_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br2684_netdev_ops_routed to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_oui_pid_pad to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_oui_ipv4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br2684_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethertype_ipv6 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethertype_ipv4 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pad to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br2684_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @br2684_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @deregister_atm_ioctl(ptr noundef nonnull @br2684_ioctl_ops) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @atm_proc_root to i32))
  %0 = load ptr, ptr @atm_proc_root, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str, ptr noundef %0) #11
  tail call void @unregister_atmdevice_notifier(ptr noundef nonnull @atm_dev_notifier) #11
  %1 = load volatile ptr, ptr @br2684_devs, align 4
  %cmp.i.not19 = icmp eq ptr %1, @br2684_devs
  br i1 %cmp.i.not19, label %entry.while.end10_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end10_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end10

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %18, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %2, i32 -4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 4
  %brvccs = getelementptr i8, ptr %4, i32 2320
  %5 = ptrtoint ptr %brvccs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %brvccs, align 4
  %cmp.i15.not18 = icmp eq ptr %6, %brvccs
  br i1 %cmp.i15.not18, label %while.body.while.end_crit_edge, label %while.body.while.body7_crit_edge

while.body.while.body7_crit_edge:                 ; preds = %while.body
  br label %while.body7

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body7:                                      ; preds = %while.body7.while.body7_crit_edge, %while.body.while.body7_crit_edge
  %7 = phi ptr [ %9, %while.body7.while.body7_crit_edge ], [ %6, %while.body.while.body7_crit_edge ]
  %add.ptr.i17 = getelementptr i8, ptr %7, i32 -28
  tail call fastcc void @br2684_close_vcc(ptr noundef %add.ptr.i17)
  %8 = ptrtoint ptr %brvccs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %brvccs, align 4
  %cmp.i15.not = icmp eq ptr %9, %brvccs
  br i1 %cmp.i15.not, label %while.body7.while.end_crit_edge, label %while.body7.while.body7_crit_edge

while.body7.while.body7_crit_edge:                ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body7

while.body7.while.end_crit_edge:                  ; preds = %while.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body7.while.end_crit_edge, %while.body.while.end_crit_edge
  %br2684_devs = getelementptr i8, ptr %4, i32 2308
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %br2684_devs) #11
  br i1 %call.i.i, label %if.end.i.i, label %while.end.list_del.exit_crit_edge

while.end.list_del.exit_crit_edge:                ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr i8, ptr %4, i32 2312
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %br2684_devs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %br2684_devs, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.end.list_del.exit_crit_edge
  %16 = ptrtoint ptr %br2684_devs to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %br2684_devs, align 4
  %prev.i = getelementptr i8, ptr %4, i32 2312
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @unregister_netdev(ptr noundef %4) #11
  tail call void @free_netdev(ptr noundef %4) #11
  %18 = load volatile ptr, ptr @br2684_devs, align 4
  %cmp.i.not = icmp eq ptr %18, @br2684_devs
  br i1 %cmp.i.not, label %list_del.exit.while.end10_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

list_del.exit.while.end10_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end10

while.end10:                                      ; preds = %list_del.exit.while.end10_crit_edge, %entry.while.end10_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @deregister_atm_ioctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_atmdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @br2684_close_vcc(ptr noundef %brvcc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br2684_close_vcc.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br2684_close_vcc, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !146

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %device = getelementptr inbounds %struct.br2684_vcc, ptr %brvcc, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br2684_close_vcc.__UNIQUE_ID_ddebug464, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, ptr noundef %brvcc, ptr noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @devs_lock) #11
  %brvccs = getelementptr inbounds %struct.br2684_vcc, ptr %brvcc, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %brvccs) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.br2684_vcc, ptr %brvcc, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %brvccs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %brvccs, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %brvccs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %brvccs, align 4
  %prev.i = getelementptr inbounds %struct.br2684_vcc, ptr %brvcc, i32 0, i32 7, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @devs_lock) #11
  %10 = ptrtoint ptr %brvcc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %brvcc, align 4
  %user_back = getelementptr inbounds %struct.atm_vcc, ptr %11, i32 0, i32 22
  %12 = ptrtoint ptr %user_back to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %user_back, align 8
  %old_release_cb = getelementptr inbounds %struct.br2684_vcc, ptr %brvcc, i32 0, i32 4
  %13 = ptrtoint ptr %old_release_cb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %old_release_cb, align 4
  %15 = load ptr, ptr %brvcc, align 4
  %release_cb = getelementptr inbounds %struct.atm_vcc, ptr %15, i32 0, i32 9
  %16 = ptrtoint ptr %release_cb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %release_cb, align 4
  %old_push = getelementptr inbounds %struct.br2684_vcc, ptr %brvcc, i32 0, i32 2
  %17 = ptrtoint ptr %old_push to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %old_push, align 4
  %19 = load ptr, ptr %brvcc, align 4
  tail call void %18(ptr noundef %19, ptr noundef null) #11
  %old_owner = getelementptr inbounds %struct.br2684_vcc, ptr %brvcc, i32 0, i32 5
  %20 = ptrtoint ptr %old_owner to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %old_owner, align 4
  tail call void @module_put(ptr noundef %21) #11
  tail call void @kfree(ptr noundef %brvcc) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @br2684_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @atm_proc_root to i32))
  %0 = load ptr, ptr @atm_proc_root, align 4
  %call = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str, i16 noundef zeroext 0, ptr noundef %0, ptr noundef nonnull @br2684_seq_ops, i32 noundef 0, ptr noundef null) #11
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @register_atm_ioctl(ptr noundef nonnull @br2684_ioctl_ops) #11
  %call1 = tail call i32 @register_atmdevice_notifier(ptr noundef nonnull @atm_dev_notifier) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br2684_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #3 align 64 {
entry:
  %fs.i = alloca %struct.br2684_filter_set, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sk.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk.i, align 16
  %2 = inttoptr i32 %arg to ptr
  %3 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 1073897970, label %entry.sw.bb_crit_edge
    i32 1073897971, label %entry.sw.bb_crit_edge50
    i32 1075601808, label %sw.bb20
  ]

entry.sw.bb_crit_edge50:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge50
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 733) #11
  %4 = tail call i32 @llvm.read_register.i32(metadata !136) #11
  %and.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 4
  %6 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !147
  %and.i = and i32 %6, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !149
  %7 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_2", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %2, i32 -1226833921) #11, !srcloc !150
  %asmresult = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %6) #11, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %asmresult2 = extractvalue { i32, i32 } %7, 1
  %conv4 = and i32 %asmresult2, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv4)
  %cmp.not = icmp eq i32 %conv4, 2
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call8, label %if.end10, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073897970, i32 %cmd)
  %cmp11 = icmp eq i32 %cmd, 1073897970
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end10
  %8 = ptrtoint ptr %sock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sock, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp14.not = icmp eq i32 %9, 3
  br i1 %cmp14.not, label %if.end17, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #13
  %call18 = tail call fastcc i32 @br2684_regvcc(ptr noundef %1, ptr noundef %2)
  br label %cleanup

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call fastcc i32 @br2684_create(ptr noundef %2)
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  %push = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %push, align 8
  %cmp21.not = icmp eq ptr %11, @br2684_push
  br i1 %cmp21.not, label %if.end24, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %sw.bb20
  %call25 = tail call zeroext i1 @capable(i32 noundef 12) #11
  br i1 %call25, label %if.end27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %fs.i) #11
  %12 = getelementptr inbounds %struct.br2684_if_spec, ptr %fs.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.br2684_filter_set, ptr %fs.i, i32 0, i32 1
  %14 = call ptr @memset(ptr %fs.i, i32 255, i32 28)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #11
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i.i, label %if.end27.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end27.if.then11.i.i.i_crit_edge:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end27
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 28, i32 -1226833920) #14, !srcloc !151
  %asmresult.i.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !152

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %fs.i, i32 noundef 28) #11
  %16 = call i32 @llvm.read_register.i32(metadata !136) #11
  %and.i.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #4, !srcloc !147
  %and.i.i.i.i.i = and i32 %18, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #11, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !149
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %fs.i, ptr noundef %2, i32 noundef 28) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #11, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !152

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end27.if.then11.i.i.i_crit_edge
  %res.0.i.i36.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 28, %if.end27.if.then11.i.i.i_crit_edge ], [ 28, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 28, %res.0.i.i36.i
  %add.ptr.i.i.i = getelementptr i8, ptr %fs.i, i32 %sub.i.i.i
  %19 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i36.i)
  br label %br2684_setfilt.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %20 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %fs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 0
  br i1 %cmp.not.i, label %if.else20.i, label %if.then1.i

if.then1.i:                                       ; preds = %if.end.i
  call void @_raw_read_lock(ptr noundef nonnull @devs_lock) #11
  %22 = ptrtoint ptr %fs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fs.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %23, label %if.then1.i.br2684_find_dev.exit.i_crit_edge [
    i32 1, label %if.then1.i.for.cond.i.i_crit_edge
    i32 2, label %if.then1.i.for.cond4.i.i_crit_edge
  ]

if.then1.i.for.cond4.i.i_crit_edge:               ; preds = %if.then1.i
  br label %for.cond4.i.i

if.then1.i.for.cond.i.i_crit_edge:                ; preds = %if.then1.i
  br label %for.cond.i.i

if.then1.i.br2684_find_dev.exit.i_crit_edge:      ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %br2684_find_dev.exit.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.then1.i.for.cond.i.i_crit_edge
  %lh.0.in.i.i = phi ptr [ %lh.0.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ @br2684_devs, %if.then1.i.for.cond.i.i_crit_edge ]
  %25 = ptrtoint ptr %lh.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %lh.0.i.i = load ptr, ptr %lh.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %lh.0.i.i, @br2684_devs
  br i1 %cmp.i.not.i.i, label %for.cond.i.i.br2684_find_dev.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.br2684_find_dev.exit.i_crit_edge:    ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %br2684_find_dev.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %add.ptr.i.i31.i = getelementptr i8, ptr %lh.0.i.i, i32 -4
  %26 = ptrtoint ptr %add.ptr.i.i31.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i.i31.i, align 4
  %number.i.i = getelementptr i8, ptr %27, i32 2316
  %28 = ptrtoint ptr %number.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %number.i.i, align 4
  %30 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %12, align 4
  %cmp.i.i = icmp eq i32 %29, %31
  br i1 %cmp.i.i, label %for.body.i.i.br2684_find_dev.exit.i_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

for.body.i.i.br2684_find_dev.exit.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %br2684_find_dev.exit.i

for.cond4.i.i:                                    ; preds = %for.body8.i.i.for.cond4.i.i_crit_edge, %if.then1.i.for.cond4.i.i_crit_edge
  %lh.1.in.i.i = phi ptr [ %lh.1.i.i, %for.body8.i.i.for.cond4.i.i_crit_edge ], [ @br2684_devs, %if.then1.i.for.cond4.i.i_crit_edge ]
  %32 = ptrtoint ptr %lh.1.in.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %lh.1.i.i = load ptr, ptr %lh.1.in.i.i, align 4
  %cmp.i30.not.i.i = icmp eq ptr %lh.1.i.i, @br2684_devs
  br i1 %cmp.i30.not.i.i, label %for.cond4.i.i.br2684_find_dev.exit.i_crit_edge, label %for.body8.i.i

for.cond4.i.i.br2684_find_dev.exit.i_crit_edge:   ; preds = %for.cond4.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %br2684_find_dev.exit.i

for.body8.i.i:                                    ; preds = %for.cond4.i.i
  %add.ptr.i32.i.i = getelementptr i8, ptr %lh.1.i.i, i32 -4
  %33 = ptrtoint ptr %add.ptr.i32.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i32.i.i, align 4
  %call12.i.i = call i32 @strncmp(ptr noundef %34, ptr noundef %12, i32 noundef 16) #11
  %tobool13.not.i.i = icmp eq i32 %call12.i.i, 0
  br i1 %tobool13.not.i.i, label %for.body8.i.i.br2684_find_dev.exit.i_crit_edge, label %for.body8.i.i.for.cond4.i.i_crit_edge

for.body8.i.i.for.cond4.i.i_crit_edge:            ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond4.i.i

for.body8.i.i.br2684_find_dev.exit.i_crit_edge:   ; preds = %for.body8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %br2684_find_dev.exit.i

br2684_find_dev.exit.i:                           ; preds = %for.body8.i.i.br2684_find_dev.exit.i_crit_edge, %for.cond4.i.i.br2684_find_dev.exit.i_crit_edge, %for.body.i.i.br2684_find_dev.exit.i_crit_edge, %for.cond.i.i.br2684_find_dev.exit.i_crit_edge, %if.then1.i.br2684_find_dev.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.then1.i.br2684_find_dev.exit.i_crit_edge ], [ null, %for.cond.i.i.br2684_find_dev.exit.i_crit_edge ], [ %27, %for.body.i.i.br2684_find_dev.exit.i_crit_edge ], [ null, %for.cond4.i.i.br2684_find_dev.exit.i_crit_edge ], [ %34, %for.body8.i.i.br2684_find_dev.exit.i_crit_edge ]
  %add.ptr.i.i32.i = getelementptr i8, ptr %retval.0.i.i, i32 2304
  %cmp5.i = icmp eq ptr %add.ptr.i.i32.i, null
  br i1 %cmp5.i, label %br2684_find_dev.exit.i.if.end16.thread.i_crit_edge, label %lor.lhs.false.i

br2684_find_dev.exit.i.if.end16.thread.i_crit_edge: ; preds = %br2684_find_dev.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.thread.i

lor.lhs.false.i:                                  ; preds = %br2684_find_dev.exit.i
  %brvccs.i = getelementptr i8, ptr %retval.0.i.i, i32 2320
  %35 = ptrtoint ptr %brvccs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %brvccs.i, align 4
  %cmp.i33.not.i = icmp eq ptr %36, %brvccs.i
  br i1 %cmp.i33.not.i, label %lor.lhs.false.i.if.end16.thread.i_crit_edge, label %lor.lhs.false8.i

lor.lhs.false.i.if.end16.thread.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.thread.i

lor.lhs.false8.i:                                 ; preds = %lor.lhs.false.i
  %prev.i = getelementptr i8, ptr %retval.0.i.i, i32 2324
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i, align 4
  %cmp11.not.i = icmp eq ptr %36, %38
  br i1 %cmp11.not.i, label %if.end16.i, label %lor.lhs.false8.i.if.end16.thread.i_crit_edge

lor.lhs.false8.i.if.end16.thread.i_crit_edge:     ; preds = %lor.lhs.false8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.thread.i

if.end16.thread.i:                                ; preds = %lor.lhs.false8.i.if.end16.thread.i_crit_edge, %lor.lhs.false.i.if.end16.thread.i_crit_edge, %br2684_find_dev.exit.i.if.end16.thread.i_crit_edge
  call void @_raw_read_unlock(ptr noundef nonnull @devs_lock) #11
  br label %br2684_setfilt.exit

if.end16.i:                                       ; preds = %lor.lhs.false8.i
  %add.ptr.i.i = getelementptr i8, ptr %36, i32 -28
  call void @_raw_read_unlock(ptr noundef nonnull @devs_lock) #11
  %cmp17.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp17.i, label %if.end16.i.br2684_setfilt.exit_crit_edge, label %if.end16.i.if.end22.i_crit_edge

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22.i

if.end16.i.br2684_setfilt.exit_crit_edge:         ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %br2684_setfilt.exit

if.else20.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %user_back.i.i = getelementptr inbounds %struct.atm_vcc, ptr %1, i32 0, i32 22
  %39 = ptrtoint ptr %user_back.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %user_back.i.i, align 8
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.else20.i, %if.end16.i.if.end22.i_crit_edge
  %brvcc.1.i = phi ptr [ %add.ptr.i.i, %if.end16.i.if.end22.i_crit_edge ], [ %40, %if.else20.i ]
  %filter.i = getelementptr inbounds %struct.br2684_vcc, ptr %brvcc.1.i, i32 0, i32 8
  %41 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %41, i32 8)
  %42 = load i64, ptr %13, align 4
  %43 = ptrtoint ptr %filter.i to i32
  call void @__asan_storeN_noabort(i32 %43, i32 8)
  store i64 %42, ptr %filter.i, align 4
  br label %br2684_setfilt.exit

br2684_setfilt.exit:                              ; preds = %if.end22.i, %if.end16.i.br2684_setfilt.exit_crit_edge, %if.end16.thread.i, %if.then11.i.i.i
  %retval.1.i = phi i32 [ 0, %if.end22.i ], [ -3, %if.end16.i.br2684_setfilt.exit_crit_edge ], [ -3, %if.end16.thread.i ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %fs.i) #11
  br label %cleanup

cleanup:                                          ; preds = %br2684_setfilt.exit, %if.end24.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %if.else, %if.end17, %if.then13.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.1.i, %br2684_setfilt.exit ], [ %call18, %if.end17 ], [ %call19, %if.else ], [ -14, %sw.bb.cleanup_crit_edge ], [ -515, %if.end.cleanup_crit_edge ], [ -1, %if.end7.cleanup_crit_edge ], [ -22, %if.then13.cleanup_crit_edge ], [ -515, %sw.bb20.cleanup_crit_edge ], [ -1, %if.end24.cleanup_crit_edge ], [ -515, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br2684_regvcc(ptr noundef %atmvcc, ptr noundef %arg) unnamed_addr #3 align 64 {
entry:
  %be = alloca %struct.atm_backend_br2684, align 4
  %one = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %be) #11
  %0 = call ptr @memset(ptr %be, i32 255, i32 60)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 60, i32 -1226833920) #14, !srcloc !151
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !152

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %be, i32 noundef 60) #11
  %2 = call i32 @llvm.read_register.i32(metadata !136) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !147
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !149
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %be, ptr noundef %arg, i32 noundef 60) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !152

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i148 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 60, %entry.if.then11.i.i_crit_edge ], [ 60, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 60, %res.0.i.i148
  %add.ptr.i.i = getelementptr i8, ptr %be, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i148)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 56) #15
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %qspace = getelementptr inbounds %struct.br2684_vcc, ptr %call7.i.i, i32 0, i32 11
  %call.i.i136 = call zeroext i1 @__kasan_check_write(ptr noundef %qspace, i32 noundef 4) #11
  %7 = ptrtoint ptr %qspace to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 2, ptr %qspace, align 4
  call void @_raw_write_lock_irq(ptr noundef nonnull @devs_lock) #11
  %ifspec = getelementptr inbounds %struct.atm_backend_br2684, ptr %be, i32 0, i32 1
  %8 = ptrtoint ptr %ifspec to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifspec, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %9, label %if.end4.do.end_crit_edge [
    i32 1, label %for.cond.preheader.i
    i32 2, label %for.cond4.preheader.i
  ]

if.end4.do.end_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.cond4.preheader.i:                            ; preds = %if.end4
  %spec10.i = getelementptr inbounds %struct.atm_backend_br2684, ptr %be, i32 0, i32 1, i32 1
  br label %for.cond4.i

for.cond.preheader.i:                             ; preds = %if.end4
  %spec.i = getelementptr inbounds %struct.atm_backend_br2684, ptr %be, i32 0, i32 1, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.preheader.i
  %lh.0.in.i = phi ptr [ %lh.0.i, %for.body.i.for.cond.i_crit_edge ], [ @br2684_devs, %for.cond.preheader.i ]
  %11 = ptrtoint ptr %lh.0.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %lh.0.i = load ptr, ptr %lh.0.in.i, align 4
  %cmp.i.not.i = icmp eq ptr %lh.0.i, @br2684_devs
  br i1 %cmp.i.not.i, label %for.cond.i.do.end_crit_edge, label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %add.ptr.i.i137 = getelementptr i8, ptr %lh.0.i, i32 -4
  %12 = ptrtoint ptr %add.ptr.i.i137 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i137, align 4
  %number.i = getelementptr i8, ptr %13, i32 2316
  %14 = ptrtoint ptr %number.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %number.i, align 4
  %16 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %spec.i, align 4
  %cmp.i = icmp eq i32 %15, %17
  br i1 %cmp.i, label %for.body.i.br2684_find_dev.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i

for.body.i.br2684_find_dev.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %br2684_find_dev.exit

for.cond4.i:                                      ; preds = %for.body8.i.for.cond4.i_crit_edge, %for.cond4.preheader.i
  %lh.1.in.i = phi ptr [ %lh.1.i, %for.body8.i.for.cond4.i_crit_edge ], [ @br2684_devs, %for.cond4.preheader.i ]
  %18 = ptrtoint ptr %lh.1.in.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %lh.1.i = load ptr, ptr %lh.1.in.i, align 4
  %cmp.i30.not.i = icmp eq ptr %lh.1.i, @br2684_devs
  br i1 %cmp.i30.not.i, label %for.cond4.i.do.end_crit_edge, label %for.body8.i

for.cond4.i.do.end_crit_edge:                     ; preds = %for.cond4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

for.body8.i:                                      ; preds = %for.cond4.i
  %add.ptr.i32.i = getelementptr i8, ptr %lh.1.i, i32 -4
  %19 = ptrtoint ptr %add.ptr.i32.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %add.ptr.i32.i, align 4
  %call12.i = call i32 @strncmp(ptr noundef %20, ptr noundef %spec10.i, i32 noundef 16) #11
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %for.body8.i.br2684_find_dev.exit_crit_edge, label %for.body8.i.for.cond4.i_crit_edge

for.body8.i.for.cond4.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond4.i

for.body8.i.br2684_find_dev.exit_crit_edge:       ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %br2684_find_dev.exit

br2684_find_dev.exit:                             ; preds = %for.body8.i.br2684_find_dev.exit_crit_edge, %for.body.i.br2684_find_dev.exit_crit_edge
  %retval.0.i138 = phi ptr [ %13, %for.body.i.br2684_find_dev.exit_crit_edge ], [ %20, %for.body8.i.br2684_find_dev.exit_crit_edge ]
  %cmp = icmp eq ptr %retval.0.i138, null
  br i1 %cmp, label %br2684_find_dev.exit.do.end_crit_edge, label %if.end8

br2684_find_dev.exit.do.end_crit_edge:            ; preds = %br2684_find_dev.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %br2684_find_dev.exit.do.end_crit_edge, %for.cond4.i.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %if.end4.do.end_crit_edge
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #16
  br label %error

if.end8:                                          ; preds = %br2684_find_dev.exit
  %push = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 10
  %21 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %push, align 8
  %cmp10 = icmp eq ptr %22, null
  br i1 %cmp10, label %if.end8.error_crit_edge, label %if.end12

if.end8.error_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end12:                                         ; preds = %if.end8
  %brvccs = getelementptr i8, ptr %retval.0.i138, i32 2320
  %23 = ptrtoint ptr %brvccs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %brvccs, align 4
  %cmp.i140.not = icmp eq ptr %24, %brvccs
  br i1 %cmp.i140.not, label %if.end16, label %if.end12.error_crit_edge

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end16:                                         ; preds = %if.end12
  %fcs_in = getelementptr inbounds %struct.atm_backend_br2684, ptr %be, i32 0, i32 2
  %25 = ptrtoint ptr %fcs_in to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %fcs_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp17.not = icmp eq i32 %26, 0
  br i1 %cmp17.not, label %lor.lhs.false, label %if.end16.error_crit_edge

if.end16.error_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

lor.lhs.false:                                    ; preds = %if.end16
  %fcs_out = getelementptr inbounds %struct.atm_backend_br2684, ptr %be, i32 0, i32 3
  %27 = ptrtoint ptr %fcs_out to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fcs_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp18.not = icmp eq i32 %28, 0
  br i1 %cmp18.not, label %lor.lhs.false19, label %lor.lhs.false.error_crit_edge

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %fcs_auto = getelementptr inbounds %struct.atm_backend_br2684, ptr %be, i32 0, i32 4
  %29 = ptrtoint ptr %fcs_auto to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %fcs_auto, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool20.not = icmp eq i32 %30, 0
  br i1 %tobool20.not, label %lor.lhs.false21, label %lor.lhs.false19.error_crit_edge

lor.lhs.false19.error_crit_edge:                  ; preds = %lor.lhs.false19
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

lor.lhs.false21:                                  ; preds = %lor.lhs.false19
  %has_vpiid = getelementptr inbounds %struct.atm_backend_br2684, ptr %be, i32 0, i32 6
  %31 = ptrtoint ptr %has_vpiid to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %has_vpiid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool22.not = icmp eq i32 %32, 0
  br i1 %tobool22.not, label %lor.lhs.false23, label %lor.lhs.false21.error_crit_edge

lor.lhs.false21.error_crit_edge:                  ; preds = %lor.lhs.false21
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

lor.lhs.false23:                                  ; preds = %lor.lhs.false21
  %send_padding = getelementptr inbounds %struct.atm_backend_br2684, ptr %be, i32 0, i32 8
  %33 = ptrtoint ptr %send_padding to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %send_padding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool24.not = icmp eq i32 %34, 0
  br i1 %tobool24.not, label %lor.lhs.false25, label %lor.lhs.false23.error_crit_edge

lor.lhs.false23.error_crit_edge:                  ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

lor.lhs.false25:                                  ; preds = %lor.lhs.false23
  %encaps = getelementptr inbounds %struct.atm_backend_br2684, ptr %be, i32 0, i32 5
  %35 = ptrtoint ptr %encaps to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %encaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %switch = icmp ult i32 %36, 2
  br i1 %switch, label %lor.lhs.false29, label %lor.lhs.false25.error_crit_edge

lor.lhs.false25.error_crit_edge:                  ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %min_size = getelementptr inbounds %struct.atm_backend_br2684, ptr %be, i32 0, i32 9
  %37 = ptrtoint ptr %min_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %min_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp30.not = icmp eq i32 %38, 0
  br i1 %cmp30.not, label %do.body33, label %lor.lhs.false29.error_crit_edge

lor.lhs.false29.error_crit_edge:                  ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

do.body33:                                        ; preds = %lor.lhs.false29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br2684_regvcc.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br2684_regvcc, %if.then39)) #11
          to label %do.end43 [label %if.then39], !srcloc !146

if.then39:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #13
  %39 = ptrtoint ptr %encaps to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %encaps, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br2684_regvcc.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, ptr noundef %atmvcc, i32 noundef %40, ptr noundef nonnull %call7.i.i) #11
  br label %do.end43

do.end43:                                         ; preds = %if.then39, %do.body33
  %41 = ptrtoint ptr %brvccs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %brvccs, align 4
  %cmp.i141.not = icmp eq ptr %42, %brvccs
  br i1 %cmp.i141.not, label %land.lhs.true47, label %do.end43.if.end68_crit_edge

do.end43.if.end68_crit_edge:                      ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

land.lhs.true47:                                  ; preds = %do.end43
  %mac_was_set = getelementptr i8, ptr %retval.0.i138, i32 2328
  %43 = ptrtoint ptr %mac_was_set to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mac_was_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool48.not = icmp eq i32 %44, 0
  br i1 %tobool48.not, label %if.then49, label %land.lhs.true47.if.end68_crit_edge

land.lhs.true47.if.end68_crit_edge:               ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end68

if.then49:                                        ; preds = %land.lhs.true47
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 6
  %45 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev, align 4
  %esi50 = getelementptr inbounds %struct.atm_dev, ptr %46, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %one) #11
  %47 = ptrtoint ptr %one to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %one, align 1
  %48 = ptrtoint ptr %esi50 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %esi50, align 1
  %arrayidx51 = getelementptr %struct.atm_dev, ptr %46, i32 0, i32 9, i32 1
  %50 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx51, align 1
  %or131 = or i8 %51, %49
  %arrayidx53 = getelementptr %struct.atm_dev, ptr %46, i32 0, i32 9, i32 2
  %52 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx53, align 1
  %or55132 = or i8 %or131, %53
  %arrayidx56 = getelementptr %struct.atm_dev, ptr %46, i32 0, i32 9, i32 3
  %54 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx56, align 1
  %or58133 = or i8 %or55132, %55
  %arrayidx59 = getelementptr %struct.atm_dev, ptr %46, i32 0, i32 9, i32 4
  %56 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx59, align 1
  %or61134 = or i8 %or58133, %57
  %arrayidx62 = getelementptr %struct.atm_dev, ptr %46, i32 0, i32 9, i32 5
  %58 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx62, align 1
  %or64135 = or i8 %or61134, %59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or64135)
  %tobool65.not = icmp eq i8 %or64135, 0
  br i1 %tobool65.not, label %if.else, label %if.then66

if.then66:                                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %retval.0.i138, i32 0, i32 56
  %60 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %addr_len.i, align 1
  %conv.i143 = zext i8 %61 to i32
  call void @dev_addr_mod(ptr noundef nonnull %retval.0.i138, i32 noundef 0, ptr noundef %esi50, i32 noundef %conv.i143) #11
  br label %if.end67

if.else:                                          ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  call void @dev_addr_mod(ptr noundef nonnull %retval.0.i138, i32 noundef 2, ptr noundef nonnull %one, i32 noundef 1) #11
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then66
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %one) #11
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %land.lhs.true47.if.end68_crit_edge, %do.end43.if.end68_crit_edge
  %brvccs69 = getelementptr inbounds %struct.br2684_vcc, ptr %call7.i.i, i32 0, i32 7
  %62 = ptrtoint ptr %brvccs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %brvccs, align 4
  %call.i.i144 = call zeroext i1 @__list_add_valid(ptr noundef %brvccs69, ptr noundef %brvccs, ptr noundef %63) #11
  br i1 %call.i.i144, label %if.end.i.i145, label %if.end68.list_add.exit_crit_edge

if.end68.list_add.exit_crit_edge:                 ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i145:                                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %brvccs69, ptr %prev1.i.i, align 4
  %65 = ptrtoint ptr %brvccs69 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %63, ptr %brvccs69, align 4
  %prev3.i.i = getelementptr inbounds %struct.br2684_vcc, ptr %call7.i.i, i32 0, i32 7, i32 1
  %66 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %brvccs, ptr %prev3.i.i, align 8
  %67 = ptrtoint ptr %brvccs to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %brvccs69, ptr %brvccs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i145, %if.end68.list_add.exit_crit_edge
  call void @_raw_write_unlock_irq(ptr noundef nonnull @devs_lock) #11
  %device = getelementptr inbounds %struct.br2684_vcc, ptr %call7.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %retval.0.i138, ptr %device, align 4
  %69 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %atmvcc, ptr %call7.i.i, align 8
  %user_back = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 22
  %70 = ptrtoint ptr %user_back to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i, ptr %user_back, align 8
  %71 = ptrtoint ptr %encaps to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %encaps, align 4
  %encaps73 = getelementptr inbounds %struct.br2684_vcc, ptr %call7.i.i, i32 0, i32 6
  %73 = ptrtoint ptr %encaps73 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %encaps73, align 8
  %74 = ptrtoint ptr %push to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %push, align 8
  %old_push = getelementptr inbounds %struct.br2684_vcc, ptr %call7.i.i, i32 0, i32 2
  %76 = ptrtoint ptr %old_push to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %75, ptr %old_push, align 8
  %pop = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 11
  %77 = ptrtoint ptr %pop to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pop, align 4
  %old_pop = getelementptr inbounds %struct.br2684_vcc, ptr %call7.i.i, i32 0, i32 3
  %79 = ptrtoint ptr %old_pop to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %old_pop, align 4
  %release_cb = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 9
  %80 = ptrtoint ptr %release_cb to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %release_cb, align 4
  %old_release_cb = getelementptr inbounds %struct.br2684_vcc, ptr %call7.i.i, i32 0, i32 4
  %82 = ptrtoint ptr %old_release_cb to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %old_release_cb, align 8
  %owner = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 17
  %83 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %owner, align 4
  %old_owner = getelementptr inbounds %struct.br2684_vcc, ptr %call7.i.i, i32 0, i32 5
  %85 = ptrtoint ptr %old_owner to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %old_owner, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !153
  %86 = ptrtoint ptr %push to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @br2684_push, ptr %push, align 8
  %87 = ptrtoint ptr %pop to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @br2684_pop, ptr %pop, align 4
  %88 = ptrtoint ptr %release_cb to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @br2684_release_cb, ptr %release_cb, align 4
  %89 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %owner, align 4
  %dev79 = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 6
  %90 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev79, align 4
  %signal = getelementptr inbounds %struct.atm_dev, ptr %91, i32 0, i32 12
  %92 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %signal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %cmp81 = icmp eq i8 %93, 0
  br i1 %cmp81, label %if.then83, label %if.else84

if.then83:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @netif_carrier_off(ptr noundef nonnull %retval.0.i138) #11
  br label %if.end85

if.else84:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @netif_carrier_on(ptr noundef nonnull %retval.0.i138) #11
  br label %if.end85

if.end85:                                         ; preds = %if.else84, %if.then83
  call void @__module_get(ptr noundef null) #11
  call void @vcc_process_recv_queue(ptr noundef %atmvcc) #11
  br label %cleanup

error:                                            ; preds = %lor.lhs.false29.error_crit_edge, %lor.lhs.false25.error_crit_edge, %lor.lhs.false23.error_crit_edge, %lor.lhs.false21.error_crit_edge, %lor.lhs.false19.error_crit_edge, %lor.lhs.false.error_crit_edge, %if.end16.error_crit_edge, %if.end12.error_crit_edge, %if.end8.error_crit_edge, %do.end
  %err.0 = phi i32 [ -6, %do.end ], [ -77, %if.end8.error_crit_edge ], [ -17, %if.end12.error_crit_edge ], [ -22, %lor.lhs.false25.error_crit_edge ], [ -22, %lor.lhs.false29.error_crit_edge ], [ -22, %lor.lhs.false23.error_crit_edge ], [ -22, %lor.lhs.false21.error_crit_edge ], [ -22, %lor.lhs.false19.error_crit_edge ], [ -22, %lor.lhs.false.error_crit_edge ], [ -22, %if.end16.error_crit_edge ]
  call void @_raw_write_unlock_irq(ptr noundef nonnull @devs_lock) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end85, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %err.0, %error ], [ 0, %if.end85 ], [ -12, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %be) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br2684_create(ptr noundef %arg) unnamed_addr #3 align 64 {
entry:
  %ni = alloca %struct.atm_newif_br2684, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %ni) #11
  %0 = call ptr @memset(ptr %ni, i32 255, i32 28)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br2684_create.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br2684_create, %if.then)) #11
          to label %if.end59.i.i [label %if.then], !srcloc !146

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br2684_create.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13) #11
  br label %if.end59.i.i

if.end59.i.i:                                     ; preds = %if.then, %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end59.i.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.then11.i.i_crit_edge:             ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 28, i32 -1226833920) #14, !srcloc !151
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !152

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ni, i32 noundef 28) #11
  %2 = call i32 @llvm.read_register.i32(metadata !136) #11
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #4, !srcloc !147
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !149
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ni, ptr noundef %arg, i32 noundef 28) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #11, !srcloc !148
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !152

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i.if.then11.i.i_crit_edge
  %res.0.i.i86 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 28, %if.end59.i.i.if.then11.i.i_crit_edge ], [ 28, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 28, %res.0.i.i86
  %add.ptr.i.i = getelementptr i8, ptr %ni, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i86)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i
  %media = getelementptr inbounds %struct.atm_newif_br2684, ptr %ni, i32 0, i32 1
  %6 = ptrtoint ptr %media to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %media, align 4
  %and = and i32 %7, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %and.lobit = lshr exact i32 %and, 16
  %8 = xor i32 %and.lobit, 1
  %and11 = and i32 %7, 65535
  %9 = ptrtoint ptr %media to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and11, ptr %media, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp.not = icmp eq i32 %and11, 0
  br i1 %cmp.not, label %lor.lhs.false, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end6
  %mtu = getelementptr inbounds %struct.atm_newif_br2684, ptr %ni, i32 0, i32 3
  %10 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %11)
  %cmp13.not = icmp eq i32 %11, 1500
  br i1 %cmp13.not, label %if.end15, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  %ifname = getelementptr inbounds %struct.atm_newif_br2684, ptr %ni, i32 0, i32 2
  %12 = ptrtoint ptr %ifname to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ifname, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool16.not = icmp eq i8 %13, 0
  %cond = select i1 %tobool16.not, ptr @.str.16, ptr %ifname
  %cond20 = select i1 %tobool7.not, ptr @br2684_setup, ptr @br2684_setup_routed
  %call21 = call ptr @alloc_netdev_mqs(i32 noundef 32, ptr noundef %cond, i8 noundef zeroext 0, ptr noundef nonnull %cond20, i32 noundef 1, i32 noundef 1) #11
  %tobool22.not = icmp eq ptr %call21, null
  br i1 %tobool22.not, label %if.end15.cleanup_crit_edge, label %if.end24

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br2684_create.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br2684_create, %if.then38)) #11
          to label %do.end42 [label %if.then38], !srcloc !146

if.then38:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br2684_create.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.13, ptr noundef nonnull %call21) #11
  br label %do.end42

do.end42:                                         ; preds = %if.then38, %if.end24
  %call43 = call i32 @register_netdev(ptr noundef nonnull %call21) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end49, label %if.end52

do.end49:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #13
  %call51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.13) #16
  call void @free_netdev(ptr noundef nonnull %call21) #11
  br label %cleanup

if.end52:                                         ; preds = %do.end42
  call void @_raw_write_lock_irq(ptr noundef nonnull @devs_lock) #11
  %payload53 = getelementptr i8, ptr %call21, i32 2332
  %14 = ptrtoint ptr %payload53 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %payload53, align 4
  %15 = load volatile ptr, ptr @br2684_devs, align 4
  %cmp.i.not = icmp eq ptr %15, @br2684_devs
  br i1 %cmp.i.not, label %if.end52.if.end62_crit_edge, label %if.else57

if.end52.if.end62_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end62

if.else57:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #13
  %16 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @br2684_devs, i32 0, i32 1), align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 -4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr.i, align 4
  %number60 = getelementptr i8, ptr %18, i32 2316
  %19 = ptrtoint ptr %number60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %number60, align 4
  %add = add i32 %20, 1
  br label %if.end62

if.end62:                                         ; preds = %if.else57, %if.end52.if.end62_crit_edge
  %add.sink = phi i32 [ %add, %if.else57 ], [ 1, %if.end52.if.end62_crit_edge ]
  %21 = getelementptr i8, ptr %call21, i32 2316
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add.sink, ptr %21, align 4
  %br2684_devs = getelementptr i8, ptr %call21, i32 2308
  %23 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @br2684_devs, i32 0, i32 1), align 4
  %call.i.i81 = call zeroext i1 @__list_add_valid(ptr noundef %br2684_devs, ptr noundef %23, ptr noundef nonnull @br2684_devs) #11
  br i1 %call.i.i81, label %if.end.i.i82, label %if.end62.list_add_tail.exit_crit_edge

if.end62.list_add_tail.exit_crit_edge:            ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i82:                                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %br2684_devs, ptr getelementptr inbounds (%struct.list_head, ptr @br2684_devs, i32 0, i32 1), align 4
  %24 = ptrtoint ptr %br2684_devs to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @br2684_devs, ptr %br2684_devs, align 4
  %prev3.i.i = getelementptr i8, ptr %call21, i32 2312
  %25 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %prev3.i.i, align 4
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %br2684_devs, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i82, %if.end62.list_add_tail.exit_crit_edge
  call void @_raw_write_unlock_irq(ptr noundef nonnull @devs_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end49, %if.end15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %call43, %do.end49 ], [ 0, %list_add_tail.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %ni) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br2684_push(ptr noundef %atmvcc, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %user_back.i = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 22
  %0 = ptrtoint ptr %user_back.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_back.i, align 8
  %device = getelementptr inbounds %struct.br2684_vcc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br2684_push.__UNIQUE_ID_ddebug465, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br2684_push, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !146

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br2684_push.__UNIQUE_ID_ddebug465, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.30) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cmp = icmp eq ptr %skb, null
  br i1 %cmp, label %if.then11, label %if.end16, !prof !154

if.then11:                                        ; preds = %do.end
  tail call fastcc void @br2684_close_vcc(ptr noundef %1)
  %brvccs = getelementptr i8, ptr %3, i32 2320
  %4 = ptrtoint ptr %brvccs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %brvccs, align 4
  %cmp.i.not = icmp eq ptr %5, %brvccs
  br i1 %cmp.i.not, label %if.then14, label %if.then11.cleanup169_crit_edge

if.then11.cleanup169_crit_edge:                   ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup169

if.then14:                                        ; preds = %if.then11
  tail call void @_raw_write_lock_irq(ptr noundef nonnull @devs_lock) #11
  %br2684_devs = getelementptr i8, ptr %3, i32 2308
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %br2684_devs) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then14.list_del.exit_crit_edge

if.then14.list_del.exit_crit_edge:                ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr i8, ptr %3, i32 2312
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %br2684_devs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %br2684_devs, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then14.list_del.exit_crit_edge
  %12 = ptrtoint ptr %br2684_devs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %br2684_devs, align 4
  %prev.i = getelementptr i8, ptr %3, i32 2312
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef nonnull @devs_lock) #11
  tail call void @unregister_netdev(ptr noundef %3) #11
  tail call void @free_netdev(ptr noundef %3) #11
  br label %cleanup169

if.end16:                                         ; preds = %do.end
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  %14 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %truesize, align 8
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %atmvcc, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #11
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %15, ptr elementtype(i32) %sk_backlog.i) #11, !srcloc !155
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br2684_push.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br2684_push, %if.then29)) #11
          to label %do.end32 [label %if.then29], !srcloc !146

if.then29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br2684_push.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30, ptr noundef %add.ptr.i.i) #11
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %if.end16
  %encaps = getelementptr inbounds %struct.br2684_vcc, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %encaps to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %encaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp33 = icmp eq i32 %18, 1
  br i1 %cmp33, label %if.then34, label %if.else82

if.then34:                                        ; preds = %do.end32
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %20)
  %cmp35 = icmp ugt i32 %20, 7
  br i1 %cmp35, label %land.lhs.true, label %if.then34.error_crit_edge

if.then34.error_crit_edge:                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

land.lhs.true:                                    ; preds = %if.then34
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr i8, ptr %22, i32 7
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp36 = icmp eq i8 %24, 1
  br i1 %cmp36, label %if.then38, label %land.lhs.true.if.end40thread-pre-split_crit_edge

land.lhs.true.if.end40thread-pre-split_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40thread-pre-split

if.then38:                                        ; preds = %land.lhs.true
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i.i = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i.i, label %if.end21.critedge.i.i, label %do.end.i.i, !prof !152

do.end.i.i:                                       ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 2789, i32 noundef 9, ptr noundef null) #11
  br label %if.end40thread-pre-split

if.end21.critedge.i.i:                            ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %20, -4
  %27 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %len, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 %sub
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %28 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  br label %if.end40

if.end40thread-pre-split:                         ; preds = %do.end.i.i, %land.lhs.true.if.end40thread-pre-split_crit_edge
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load i32, ptr %len, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.end40thread-pre-split, %if.end21.critedge.i.i
  %30 = phi i32 [ %.pr, %if.end40thread-pre-split ], [ %sub, %if.end21.critedge.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %30)
  %cmp42 = icmp ugt i32 %30, 7
  br i1 %cmp42, label %land.lhs.true44, label %if.end40.error_crit_edge

if.end40.error_crit_edge:                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

land.lhs.true44:                                  ; preds = %if.end40
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %bcmp233 = tail call i32 @bcmp(ptr noundef dereferenceable(6) %32, ptr noundef nonnull dereferenceable(6) @llc_oui_ipv4, i32 6) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp233)
  %cmp47 = icmp eq i32 %bcmp233, 0
  br i1 %cmp47, label %if.then49, label %if.else66

if.then49:                                        ; preds = %land.lhs.true44
  %add.ptr = getelementptr i8, ptr %32, i32 6
  %bcmp234 = tail call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr, ptr noundef nonnull dereferenceable(2) @ethertype_ipv6, i32 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp234)
  %cmp52 = icmp eq i32 %bcmp234, 0
  br i1 %cmp52, label %if.then49.if.end64_crit_edge, label %if.else

if.then49.if.end64_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.else:                                          ; preds = %if.then49
  %bcmp235 = tail call i32 @bcmp(ptr noundef dereferenceable(2) %add.ptr, ptr noundef nonnull dereferenceable(2) @ethertype_ipv4, i32 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp235)
  %cmp58 = icmp eq i32 %bcmp235, 0
  br i1 %cmp58, label %if.else.if.end64_crit_edge, label %if.else.error_crit_edge

if.else.error_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.else.if.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.end64:                                         ; preds = %if.else.if.end64_crit_edge, %if.then49.if.end64_crit_edge
  %.sink = phi i16 [ -31011, %if.then49.if.end64_crit_edge ], [ 2048, %if.else.if.end64_crit_edge ]
  %protocol61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %33 = ptrtoint ptr %protocol61 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %.sink, ptr %protocol61, align 8
  %call65 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 8) #11
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %36 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %37 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i242 = trunc i32 %sub.ptr.sub.i to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %38 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i242, ptr %network_header.i, align 4
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %39 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  store i16 %bf.clear, ptr %pkt_type, align 8
  br label %if.end119

if.else66:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %30)
  %cmp68 = icmp ugt i32 %30, 9
  br i1 %cmp68, label %land.lhs.true70, label %if.else66.error_crit_edge

if.else66.error_crit_edge:                        ; preds = %if.else66
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

land.lhs.true70:                                  ; preds = %if.else66
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %bcmp232 = tail call i32 @bcmp(ptr noundef dereferenceable(7) %41, ptr noundef nonnull dereferenceable(7) @llc_oui_pid_pad, i32 7) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp232)
  %cmp73 = icmp eq i32 %bcmp232, 0
  br i1 %cmp73, label %if.then75, label %land.lhs.true70.error_crit_edge

land.lhs.true70.error_crit_edge:                  ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.then75:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #13
  %call76 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 10) #11
  %call77 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb, ptr noundef %3) #11
  %protocol78 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %42 = ptrtoint ptr %protocol78 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %call77, ptr %protocol78, align 8
  br label %if.end119

if.else82:                                        ; preds = %do.end32
  %payload = getelementptr i8, ptr %3, i32 2332
  %43 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp83 = icmp eq i32 %44, 0
  %data.i243 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %45 = ptrtoint ptr %data.i243 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i243, align 4
  br i1 %cmp83, label %if.then85, label %if.else108

if.then85:                                        ; preds = %if.else82
  %head.i244 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %47 = ptrtoint ptr %head.i244 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i244, align 8
  %sub.ptr.lhs.cast.i245 = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i246 = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i247 = sub i32 %sub.ptr.lhs.cast.i245, %sub.ptr.rhs.cast.i246
  %conv.i248 = trunc i32 %sub.ptr.sub.i247 to i16
  %network_header.i249 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %49 = ptrtoint ptr %network_header.i249 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i248, ptr %network_header.i249, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i247, 65535
  %add.ptr.i.i250 = getelementptr i8, ptr %48, i32 %conv.i.i
  %50 = ptrtoint ptr %add.ptr.i.i250 to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load87 = load i8, ptr %add.ptr.i.i250, align 4
  %bf.lshr = lshr i8 %bf.load87, 4
  %trunc = trunc i8 %bf.lshr to i4
  %51 = zext i4 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.52)
  switch i4 %trunc, label %if.then85.error_crit_edge [
    i4 4, label %if.then85.cleanup.thread_crit_edge
    i4 6, label %if.then99
  ]

if.then85.cleanup.thread_crit_edge:               ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

if.then85.error_crit_edge:                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.then99:                                        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then99, %if.then85.cleanup.thread_crit_edge
  %.sink262 = phi i16 [ -31011, %if.then99 ], [ 2048, %if.then85.cleanup.thread_crit_edge ]
  %protocol92 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %52 = ptrtoint ptr %protocol92 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %.sink262, ptr %protocol92, align 8
  %pkt_type104 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %53 = ptrtoint ptr %pkt_type104 to i32
  call void @__asan_load2_noabort(i32 %53)
  %bf.load105 = load i16, ptr %pkt_type104, align 8
  %bf.clear106 = and i16 %bf.load105, 8191
  store i16 %bf.clear106, ptr %pkt_type104, align 8
  br label %if.end119

if.else108:                                       ; preds = %if.else82
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(2) %46, ptr noundef nonnull dereferenceable(2) @pad, i32 2) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp111.not = icmp eq i32 %bcmp, 0
  br i1 %cmp111.not, label %if.end114, label %if.else108.error_crit_edge

if.else108.error_crit_edge:                       ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end114:                                        ; preds = %if.else108
  call void @__sanitizer_cov_trace_pc() #13
  %call115 = tail call ptr @skb_pull(ptr noundef nonnull %skb, i32 noundef 2) #11
  %call116 = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %skb, ptr noundef %3) #11
  %protocol117 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %54 = ptrtoint ptr %protocol117 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %call116, ptr %protocol117, align 8
  br label %if.end119

if.end119:                                        ; preds = %if.end114, %cleanup.thread, %if.then75, %if.end64
  %protocol120 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %filter.i = getelementptr inbounds %struct.br2684_vcc, ptr %1, i32 0, i32 8
  %netmask.i = getelementptr inbounds %struct.br2684_vcc, ptr %1, i32 0, i32 8, i32 1
  %55 = ptrtoint ptr %netmask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %netmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp.i251 = icmp eq i32 %56, 0
  br i1 %cmp.i251, label %if.end119.if.end130_crit_edge, label %if.end.i

if.end119.if.end130_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.end.i:                                         ; preds = %if.end119
  %57 = ptrtoint ptr %protocol120 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %protocol120, align 8
  %59 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %58, label %if.end.i.dropped_crit_edge [
    i16 2048, label %land.lhs.true.i
    i16 2054, label %if.end.i.if.end130_crit_edge
  ]

if.end.i.if.end130_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.end.i.dropped_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dropped

land.lhs.true.i:                                  ; preds = %if.end.i
  %data.i252 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %60 = ptrtoint ptr %data.i252 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data.i252, align 4
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %61, i32 0, i32 9
  %62 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %daddr.i, align 4
  %and.i = and i32 %63, %56
  %64 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %filter.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %65)
  %cmp6.i = icmp eq i32 %and.i, %65
  br i1 %cmp6.i, label %land.lhs.true.i.if.end130_crit_edge, label %land.lhs.true.i.dropped_crit_edge

land.lhs.true.i.dropped_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dropped

land.lhs.true.i.if.end130_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

if.end130:                                        ; preds = %land.lhs.true.i.if.end130_crit_edge, %if.end.i.if.end130_crit_edge, %if.end119.if.end130_crit_edge
  %66 = getelementptr inbounds %struct.anon.0, ptr %skb, i32 0, i32 2
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %3, ptr %66, align 8
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %68 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %atmvcc, ptr %cb, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br2684_push.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br2684_push, %if.then143)) #11
          to label %do.end148 [label %if.then143], !srcloc !146

if.then143:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  %69 = ptrtoint ptr %protocol120 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %protocol120, align 8
  %conv145 = zext i16 %70 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br2684_push.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.30, i32 noundef %conv145) #11
  br label %do.end148

do.end148:                                        ; preds = %if.then143, %if.end130
  %flags = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 14
  %71 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags, align 8
  %and = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool149.not = icmp eq i32 %and, 0
  br i1 %tobool149.not, label %do.end148.dropped_crit_edge, label %if.end159, !prof !154

do.end148.dropped_crit_edge:                      ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #13
  br label %dropped

if.end159:                                        ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #13
  %stats = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36
  %73 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %stats, align 8
  %inc = add i32 %74, 1
  store i32 %inc, ptr %stats, align 8
  %len160 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %75 = ptrtoint ptr %len160 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len160, align 4
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 2
  %77 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %rx_bytes, align 8
  %add = add i32 %78, %76
  store i32 %add, ptr %rx_bytes, align 8
  %79 = call ptr @memset(ptr %cb, i32 0, i32 12)
  %call164 = tail call i32 @netif_rx(ptr noundef nonnull %skb) #11
  br label %cleanup169

dropped:                                          ; preds = %do.end148.dropped_crit_edge, %land.lhs.true.i.dropped_crit_edge, %if.end.i.dropped_crit_edge
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 6
  br label %free_skb

error:                                            ; preds = %if.else108.error_crit_edge, %if.then85.error_crit_edge, %land.lhs.true70.error_crit_edge, %if.else66.error_crit_edge, %if.else.error_crit_edge, %if.end40.error_crit_edge, %if.then34.error_crit_edge
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 4
  br label %free_skb

free_skb:                                         ; preds = %error, %dropped
  %rx_errors.sink264 = phi ptr [ %rx_errors, %error ], [ %rx_dropped, %dropped ]
  %80 = ptrtoint ptr %rx_errors.sink264 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_errors.sink264, align 8
  %inc168 = add i32 %81, 1
  store i32 %inc168, ptr %rx_errors.sink264, align 8
  tail call void @consume_skb(ptr noundef nonnull %skb) #11
  br label %cleanup169

cleanup169:                                       ; preds = %free_skb, %if.end159, %list_del.exit, %if.then11.cleanup169_crit_edge
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br2684_pop(ptr noundef %vcc, ptr noundef %skb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %user_back.i = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 22
  %0 = ptrtoint ptr %user_back.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_back.i, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br2684_pop.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br2684_pop, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !146

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %device = getelementptr inbounds %struct.br2684_vcc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br2684_pop.__UNIQUE_ID_ddebug460, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef %vcc, ptr noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %old_pop = getelementptr inbounds %struct.br2684_vcc, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %old_pop to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_pop, align 4
  tail call void %5(ptr noundef %vcc, ptr noundef %skb) #11
  %qspace = getelementptr inbounds %struct.br2684_vcc, ptr %1, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %qspace, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !156
  tail call void @llvm.prefetch.p0(ptr %qspace, i32 1, i32 3, i32 1) #11
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %qspace, ptr %qspace, i32 1, ptr elementtype(i32) %qspace) #11, !srcloc !157
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !158
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp = icmp eq i32 %asmresult.i.i.i.i, 1
  br i1 %cmp, label %if.then5, label %do.end.if.end7_crit_edge

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %device6 = getelementptr inbounds %struct.br2684_vcc, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %device6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device6, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 103
  %9 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %10) #11
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.end.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br2684_release_cb(ptr noundef %atmvcc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %user_back.i = getelementptr inbounds %struct.atm_vcc, ptr %atmvcc, i32 0, i32 22
  %0 = ptrtoint ptr %user_back.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %user_back.i, align 8
  %qspace = getelementptr inbounds %struct.br2684_vcc, ptr %1, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %qspace, i32 noundef 4) #11
  %2 = ptrtoint ptr %qspace to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %qspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %device = getelementptr inbounds %struct.br2684_vcc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 103
  %6 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %7) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %old_release_cb = getelementptr inbounds %struct.br2684_vcc, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %old_release_cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %old_release_cb, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %9(ptr noundef %atmvcc) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcc_process_recv_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_netdev_mqs(i32 noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br2684_setup_routed(ptr noundef %netdev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %netdev, ptr %add.ptr.i.i, align 4
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 19
  %1 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 8, ptr %hard_header_len, align 2
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @br2684_netdev_ops_routed, ptr %netdev_ops, align 8
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %3 = ptrtoint ptr %addr_len to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %addr_len, align 1
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1500, ptr %mtu, align 4
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 30
  %5 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 31
  %6 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65535, ptr %max_mtu, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 32
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 512, ptr %type, align 16
  %flags = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4240, ptr %flags, align 8
  %tx_queue_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 107
  %9 = ptrtoint ptr %tx_queue_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 100, ptr %tx_queue_len, align 16
  %brvccs = getelementptr i8, ptr %netdev, i32 2320
  %10 = ptrtoint ptr %brvccs to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %brvccs, ptr %brvccs, align 4
  %prev.i = getelementptr i8, ptr %netdev, i32 2324
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %brvccs, ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br2684_setup(ptr noundef %netdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  tail call void @ether_setup(ptr noundef %netdev) #11
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 19
  %0 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hard_header_len, align 2
  %add = add i16 %1, 10
  store i16 %add, ptr %hard_header_len, align 2
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %netdev, ptr %add.ptr.i.i, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %3 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @br2684_netdev_ops, ptr %netdev_ops, align 8
  %brvccs = getelementptr i8, ptr %netdev, i32 2320
  %4 = ptrtoint ptr %brvccs to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %brvccs, ptr %brvccs, align 4
  %prev.i = getelementptr i8, ptr %netdev, i32 2324
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %brvccs, ptr %prev.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br2684_start_xmit(ptr noundef %skb, ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br2684_start_xmit.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br2684_start_xmit, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !146

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 8
  %and.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.skb_dst.exit_crit_edge, label %land.lhs.true.i

if.then.skb_dst.exit_crit_edge:                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.lhs.true.i:                                  ; preds = %if.then
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.rhs.i, label %land.lhs.true.i.skb_dst.exit_crit_edge

land.lhs.true.i.skb_dst.exit_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %call2.i = tail call i32 @rcu_read_lock_bh_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %do.end.i, label %land.rhs.i.skb_dst.exit_crit_edge, !prof !154

land.rhs.i.skb_dst.exit_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %skb_dst.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 1013, i32 noundef 9, ptr noundef null) #11
  br label %skb_dst.exit

skb_dst.exit:                                     ; preds = %do.end.i, %land.rhs.i.skb_dst.exit_crit_edge, %land.lhs.true.i.skb_dst.exit_crit_edge, %if.then.skb_dst.exit_crit_edge
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 8
  %and25.i = and i32 %4, -2
  %5 = inttoptr i32 %and25.i to ptr
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br2684_start_xmit.__UNIQUE_ID_ddebug462, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.20, ptr noundef %5) #11
  br label %do.end

do.end:                                           ; preds = %skb_dst.exit, %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @devs_lock) #11
  %brvccs.i = getelementptr i8, ptr %dev, i32 2320
  %6 = ptrtoint ptr %brvccs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %brvccs.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %brvccs.i
  %add.ptr.i.i83 = getelementptr i8, ptr %7, i32 -28
  %cmp86 = icmp eq ptr %add.ptr.i.i83, null
  %cmp = or i1 %cmp.i.not.i, %cmp86
  br i1 %cmp, label %do.body7, label %if.end25

do.body7:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br2684_start_xmit.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br2684_start_xmit, %if.then19)) #11
          to label %do.end22 [label %if.then19], !srcloc !146

if.then19:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br2684_start_xmit.__UNIQUE_ID_ddebug463, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.20, ptr noundef %dev) #11
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %do.body7
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %8 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_errors, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %tx_errors, align 4
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 17
  %10 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_carrier_errors, align 4
  %inc24 = add i32 %11, 1
  store i32 %inc24, ptr %tx_carrier_errors, align 4
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %out_devs

if.end25:                                         ; preds = %do.end
  %12 = ptrtoint ptr %add.ptr.i.i83 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i.i83, align 4
  %sk_lock = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4
  tail call void @_raw_spin_lock(ptr noundef %sk_lock) #11
  %flags = getelementptr inbounds %struct.atm_vcc, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags, align 4
  %16 = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool29.not = icmp eq i32 %16, 0
  br i1 %tobool29.not, label %lor.lhs.false, label %if.end25.if.then37_crit_edge

if.end25.if.then37_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

lor.lhs.false:                                    ; preds = %if.end25
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags, align 4
  %19 = and i32 %18, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool32.not = icmp eq i32 %19, 0
  br i1 %tobool32.not, label %lor.lhs.false33, label %lor.lhs.false.if.then37_crit_edge

lor.lhs.false.if.then37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %flags, align 4
  %22 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool36.not = icmp eq i32 %22, 0
  br i1 %tobool36.not, label %lor.lhs.false33.if.then37_crit_edge, label %if.end40

lor.lhs.false33.if.then37_crit_edge:              ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then37

if.then37:                                        ; preds = %lor.lhs.false33.if.then37_crit_edge, %lor.lhs.false.if.then37_crit_edge, %if.end25.if.then37_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %23 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_dropped, align 4
  %inc39 = add i32 %24, 1
  store i32 %inc39, ptr %tx_dropped, align 4
  tail call void @consume_skb(ptr noundef %skb) #11
  br label %out

if.end40:                                         ; preds = %lor.lhs.false33
  %dep_map.i.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 3
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %lockdep_sock_is_held.exit.i.i, label %if.end40.sock_owned_by_user.exit_crit_edge

if.end40.sock_owned_by_user.exit_crit_edge:       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_owned_by_user.exit

lockdep_sock_is_held.exit.i.i:                    ; preds = %if.end40
  %dep_map2.i.i.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 0, i32 0, i32 0, i32 4
  %call.i6.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map2.i.i.i, i32 noundef -1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i6.i.i.i)
  %tobool4.i.not.i.i = icmp eq i32 %call.i6.i.i.i, 0
  br i1 %tobool4.i.not.i.i, label %land.rhs.i.i, label %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge

lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge: ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_owned_by_user.exit

land.rhs.i.i:                                     ; preds = %lockdep_sock_is_held.exit.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %25 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i.i, label %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, label %land.rhs3.i.i

land.rhs.i.i.sock_owned_by_user.exit_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_owned_by_user.exit

land.rhs3.i.i:                                    ; preds = %land.rhs.i.i
  %.b40.i.i = load i1, ptr @sock_owned_by_me.__already_done, align 1
  br i1 %.b40.i.i, label %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, label %if.then.i.i, !prof !152

land.rhs3.i.i.sock_owned_by_user.exit_crit_edge:  ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sock_owned_by_user.exit

if.then.i.i:                                      ; preds = %land.rhs3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @sock_owned_by_me.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 1750, i32 noundef 9, ptr noundef null) #11
  br label %sock_owned_by_user.exit

sock_owned_by_user.exit:                          ; preds = %if.then.i.i, %land.rhs3.i.i.sock_owned_by_user.exit_crit_edge, %land.rhs.i.i.sock_owned_by_user.exit_crit_edge, %lockdep_sock_is_held.exit.i.i.sock_owned_by_user.exit_crit_edge, %if.end40.sock_owned_by_user.exit_crit_edge
  %owned.i = getelementptr inbounds %struct.sock, ptr %13, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %owned.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %owned.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.i.not = icmp eq i32 %27, 0
  br i1 %tobool.i.not, label %if.end44, label %if.then43

if.then43:                                        ; preds = %sock_owned_by_user.exit
  call void @__sanitizer_cov_trace_pc() #13
  %device = getelementptr i8, ptr %7, i32 -24
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %29, i32 0, i32 103
  %30 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %31, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  br label %out

if.end44:                                         ; preds = %sock_owned_by_user.exit
  %call45 = tail call fastcc i32 @br2684_xmit_vcc(ptr noundef %skb, ptr noundef %dev, ptr noundef nonnull %add.ptr.i.i83)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.then47, label %if.end44.out_crit_edge

if.end44.out_crit_edge:                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then47:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %tx_errors49 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 5
  %32 = ptrtoint ptr %tx_errors49 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_errors49, align 4
  %inc50 = add i32 %33, 1
  store i32 %inc50, ptr %tx_errors49, align 4
  %tx_fifo_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 18
  %34 = ptrtoint ptr %tx_fifo_errors to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tx_fifo_errors, align 8
  %inc52 = add i32 %35, 1
  store i32 %inc52, ptr %tx_fifo_errors, align 8
  br label %out

out:                                              ; preds = %if.then47, %if.end44.out_crit_edge, %if.then43, %if.then37
  %ret.0 = phi i32 [ 0, %if.then37 ], [ 16, %if.then43 ], [ 0, %if.end44.out_crit_edge ], [ 0, %if.then47 ]
  tail call void @_raw_spin_unlock(ptr noundef %sk_lock) #11
  br label %out_devs

out_devs:                                         ; preds = %out, %do.end22
  %ret.1 = phi i32 [ 0, %do.end22 ], [ %ret.0, %out ]
  tail call void @_raw_read_unlock(ptr noundef nonnull @devs_lock) #11
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br2684_mac_addr(ptr noundef %dev, ptr noundef %p) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @eth_mac_addr(ptr noundef %dev, ptr noundef %p) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mac_was_set = getelementptr i8, ptr %dev, i32 2328
  %0 = ptrtoint ptr %mac_was_set to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %mac_was_set, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br2684_xmit_vcc(ptr noundef %skb, ptr nocapture noundef %dev, ptr noundef %brvcc) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %encaps = getelementptr inbounds %struct.br2684_vcc, ptr %brvcc, i32 0, i32 6
  %0 = ptrtoint ptr %encaps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %payload = getelementptr i8, ptr %dev, i32 2332
  %2 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp1 = icmp eq i32 %3, 1
  %cond = select i1 %cmp1, i32 10, i32 8
  %cond4 = select i1 %cmp1, i32 2, i32 0
  %cond5 = select i1 %cmp, i32 %cond, i32 %cond4
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
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i, i32 %cond5)
  %cmp7 = icmp ult i32 %sub.ptr.sub.i, %cond5
  br i1 %cmp7, label %if.then, label %entry.if.end12_crit_edge

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then:                                          ; preds = %entry
  %call8 = tail call ptr @skb_realloc_headroom(ptr noundef %skb, i32 noundef %cond5) #11
  %copies_needed = getelementptr inbounds %struct.br2684_vcc, ptr %brvcc, i32 0, i32 9
  %8 = ptrtoint ptr %copies_needed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %copies_needed, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %copies_needed, align 4
  tail call void @consume_skb(ptr noundef %skb) #11
  %cmp9 = icmp eq ptr %call8, null
  br i1 %cmp9, label %cleanup.thread, label %if.then.if.end12_crit_edge

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %copies_failed = getelementptr inbounds %struct.br2684_vcc, ptr %brvcc, i32 0, i32 10
  %10 = ptrtoint ptr %copies_failed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %copies_failed, align 4
  %inc11 = add i32 %11, 1
  store i32 %inc11, ptr %copies_failed, align 4
  br label %cleanup69

if.end12:                                         ; preds = %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  %skb.addr.1 = phi ptr [ %skb, %entry.if.end12_crit_edge ], [ %call8, %if.then.if.end12_crit_edge ]
  %12 = ptrtoint ptr %encaps to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp14 = icmp eq i32 %13, 1
  %payload16 = getelementptr i8, ptr %dev, i32 2332
  %14 = ptrtoint ptr %payload16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %payload16, align 4
  br i1 %cmp14, label %if.then15, label %if.else30

if.then15:                                        ; preds = %if.end12
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %15, label %if.then15.if.end37_crit_edge [
    i32 1, label %if.then18
    i32 0, label %if.then22
  ]

if.then15.if.end37_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %call19 = tail call ptr @skb_push(ptr noundef %skb.addr.1, i32 noundef 10) #11
  %data.i113 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %17 = ptrtoint ptr %data.i113 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i113, align 4
  %19 = call ptr @memcpy(ptr %18, ptr @llc_oui_pid_pad, i32 10)
  br label %if.end37

if.then22:                                        ; preds = %if.then15
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 15, i32 0, i32 18
  %20 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %protocol, align 8
  %call23 = tail call ptr @skb_push(ptr noundef %skb.addr.1, i32 noundef 8) #11
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %21, label %sw.default [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb24
  ]

sw.bb:                                            ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %data.i114 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %23 = ptrtoint ptr %data.i114 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i114, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 -6149099042686105600, ptr %24, align 1
  br label %if.end37

sw.bb24:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  %data.i115 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %26 = ptrtoint ptr %data.i115 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i115, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 8)
  store i64 -6149099042686073123, ptr %27, align 1
  br label %if.end37

sw.default:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @consume_skb(ptr noundef %skb.addr.1) #11
  br label %cleanup69

if.else30:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp32 = icmp eq i32 %15, 1
  br i1 %cmp32, label %if.then34, label %if.else30.if.end37_crit_edge

if.else30.if.end37_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end37

if.then34:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #13
  %call35 = tail call ptr @skb_push(ptr noundef %skb.addr.1, i32 noundef 2) #11
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 19
  %29 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 0, ptr %30, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.else30.if.end37_crit_edge, %sw.bb24, %sw.bb, %if.then18, %if.then15.if.end37_crit_edge
  %32 = ptrtoint ptr %brvcc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %brvcc, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 3
  %34 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %cb, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br2684_xmit_vcc.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br2684_xmit_vcc, %if.then42)) #11
          to label %do.end [label %if.then42], !srcloc !146

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  %dev43 = getelementptr inbounds %struct.atm_vcc, ptr %33, i32 0, i32 6
  %35 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev43, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br2684_xmit_vcc.__UNIQUE_ID_ddebug461, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, ptr noundef %skb.addr.1, ptr noundef %33, ptr noundef %36) #11
  br label %do.end

do.end:                                           ; preds = %if.then42, %if.end37
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 20
  %37 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %truesize.i, align 8
  %sk_wmem_alloc.i = getelementptr inbounds %struct.sock, ptr %33, i32 0, i32 23
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_wmem_alloc.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %sk_wmem_alloc.i, i32 1, i32 3, i32 1) #11
  %39 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_wmem_alloc.i, ptr %sk_wmem_alloc.i, i32 %38, ptr elementtype(i32) %sk_wmem_alloc.i) #11, !srcloc !159
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %do.end.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !154

do.end.if.end15.sink.split.i.i.i_crit_edge:       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %do.end
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, %38
  %40 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %.not.i.i.i = icmp sgt i32 %40, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.atm_account_tx.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !152

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.atm_account_tx.exit_crit_edge:      ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %atm_account_tx.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %do.end.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %do.end.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %sk_wmem_alloc.i, i32 noundef %.sink.i.i.i) #11
  br label %atm_account_tx.exit

atm_account_tx.exit:                              ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.atm_account_tx.exit_crit_edge
  %41 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %truesize.i, align 8
  %acct_truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %acct_truesize.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %acct_truesize.i, align 8
  %atm_options.i = getelementptr inbounds %struct.atm_vcc, ptr %33, i32 0, i32 5
  %44 = ptrtoint ptr %atm_options.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %atm_options.i, align 8
  %atm_options4.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 3, i32 4
  %46 = ptrtoint ptr %atm_options4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %atm_options4.i, align 4
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 1
  %47 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tx_packets, align 4
  %inc45 = add i32 %48, 1
  store i32 %inc45, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.1, i32 0, i32 6
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %51 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tx_bytes, align 4
  %add = add i32 %52, %50
  store i32 %add, ptr %tx_bytes, align 4
  %qspace = getelementptr inbounds %struct.br2684_vcc, ptr %brvcc, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %qspace, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !160
  tail call void @llvm.prefetch.p0(ptr %qspace, i32 1, i32 3, i32 1) #11
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %qspace, ptr %qspace, i32 1, ptr elementtype(i32) %qspace) #11, !srcloc !161
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %53, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i)
  %cmp48 = icmp slt i32 %asmresult.i.i.i.i, 1
  br i1 %cmp48, label %if.then50, label %atm_account_tx.exit.if.end64_crit_edge

atm_account_tx.exit.if.end64_crit_edge:           ; preds = %atm_account_tx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then50:                                        ; preds = %atm_account_tx.exit
  %device = getelementptr inbounds %struct.br2684_vcc, ptr %brvcc, i32 0, i32 1
  %54 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %device, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %55, i32 0, i32 103
  %56 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %57, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  %call.i.i112 = tail call zeroext i1 @__kasan_check_read(ptr noundef %qspace, i32 noundef 4) #11
  %58 = ptrtoint ptr %qspace to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %qspace, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp53 = icmp sgt i32 %59, 0
  br i1 %cmp53, label %if.then61, label %if.then50.if.end64_crit_edge, !prof !154

if.then50.if.end64_crit_edge:                     ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then61:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %device, align 4
  %_tx.i.i116 = getelementptr inbounds %struct.net_device, ptr %61, i32 0, i32 103
  %62 = ptrtoint ptr %_tx.i.i116 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %_tx.i.i116, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %63) #11
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.then50.if.end64_crit_edge, %atm_account_tx.exit.if.end64_crit_edge
  %send = getelementptr inbounds %struct.atm_vcc, ptr %33, i32 0, i32 13
  %64 = ptrtoint ptr %send to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %send, align 4
  %call65 = tail call i32 %65(ptr noundef %33, ptr noundef %skb.addr.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  %lnot.ext68 = zext i1 %tobool66.not to i32
  br label %cleanup69

cleanup69:                                        ; preds = %if.end64, %sw.default, %cleanup.thread
  %retval.3 = phi i32 [ %lnot.ext68, %if.end64 ], [ 0, %sw.default ], [ 0, %cleanup.thread ]
  ret i32 %retval.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_realloc_headroom(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ether_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atm_dev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atm_dev_event.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atm_dev_event, %if.then)) #11
          to label %do.body3 [label %if.then], !srcloc !146

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @atm_dev_event.__UNIQUE_ID_ddebug459, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.35, i32 noundef %event, ptr noundef %arg) #11
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  %call5 = tail call i32 @_raw_read_lock_irqsave(ptr noundef nonnull @devs_lock) #11
  %lh.068 = load ptr, ptr @br2684_devs, align 4
  %cmp.i.not69 = icmp eq ptr %lh.068, @br2684_devs
  br i1 %cmp.i.not69, label %do.body3.do.body44_crit_edge, label %for.body.preheader

do.body3.do.body44_crit_edge:                     ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body44

for.body.preheader:                               ; preds = %do.body3
  %signal = getelementptr inbounds %struct.atm_dev, ptr %arg, i32 0, i32 12
  br label %for.body

for.cond.loopexit:                                ; preds = %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %0 = ptrtoint ptr %lh.070 to i32
  call void @__asan_load4_noabort(i32 %0)
  %lh.0 = load ptr, ptr %lh.070, align 4
  %cmp.i.not = icmp eq ptr %lh.0, @br2684_devs
  br i1 %cmp.i.not, label %for.cond.loopexit.do.body44_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.cond.loopexit.do.body44_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body44

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.preheader
  %lh.070 = phi ptr [ %lh.0, %for.cond.loopexit.for.body_crit_edge ], [ %lh.068, %for.body.preheader ]
  %add.ptr.i = getelementptr i8, ptr %lh.070, i32 -4
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr.i, align 4
  %brvccs = getelementptr i8, ptr %2, i32 2320
  %3 = ptrtoint ptr %brvccs to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn65 = load ptr, ptr %brvccs, align 4
  %cmp19.not66 = icmp eq ptr %.pn65, %brvccs
  br i1 %cmp19.not66, label %for.body.for.cond.loopexit_crit_edge, label %for.body.for.body23_crit_edge

for.body.for.body23_crit_edge:                    ; preds = %for.body
  br label %for.body23

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

for.body23:                                       ; preds = %for.inc.for.body23_crit_edge, %for.body.for.body23_crit_edge
  %.pn67 = phi ptr [ %.pn, %for.inc.for.body23_crit_edge ], [ %.pn65, %for.body.for.body23_crit_edge ]
  %brvcc.0 = getelementptr i8, ptr %.pn67, i32 -28
  %4 = ptrtoint ptr %brvcc.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %brvcc.0, align 4
  %tobool24.not = icmp eq ptr %5, null
  br i1 %tobool24.not, label %for.body23.for.inc_crit_edge, label %land.lhs.true

for.body23.for.inc_crit_edge:                     ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body23
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %cmp26 = icmp eq ptr %7, %arg
  br i1 %cmp26, label %if.then28, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then28:                                        ; preds = %land.lhs.true
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %signal, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp31 = icmp eq i8 %9, 0
  br i1 %cmp31, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_carrier_off(ptr noundef %2) #11
  br label %for.inc

if.else:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @netif_carrier_on(ptr noundef %2) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then33, %land.lhs.true.for.inc_crit_edge, %for.body23.for.inc_crit_edge
  %10 = ptrtoint ptr %.pn67 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn67, align 4
  %cmp19.not = icmp eq ptr %.pn, %brvccs
  br i1 %cmp19.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.inc.for.body23_crit_edge

for.inc.for.body23_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body23

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.loopexit

do.body44:                                        ; preds = %for.cond.loopexit.do.body44_crit_edge, %do.body3.do.body44_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef nonnull @devs_lock, i32 noundef %call5) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_atm_ioctl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_atmdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @br2684_seq_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @devs_lock) #11
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef nonnull @br2684_devs, i64 noundef %1) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br2684_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_unlock(ptr noundef nonnull @devs_lock) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @br2684_seq_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr noundef %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef nonnull @br2684_devs, ptr noundef %pos) #11
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br2684_seq_show(ptr noundef %seq, ptr noundef readonly %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %v, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %number = getelementptr i8, ptr %v, i32 8
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %4 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr, align 64
  %mac_was_set = getelementptr i8, ptr %v, i32 20
  %6 = ptrtoint ptr %mac_was_set to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mac_was_set, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %cond = select i1 %tobool.not, ptr @.str.43, ptr @.str.42
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.41, ptr noundef %1, i32 noundef %3, ptr noundef %5, ptr noundef nonnull %cond) #11
  %brvccs = getelementptr i8, ptr %v, i32 12
  %8 = ptrtoint ptr %brvccs to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn44 = load ptr, ptr %brvccs, align 4
  %cmp.not45 = icmp eq ptr %.pn44, %brvccs
  br i1 %cmp.not45, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %payload = getelementptr i8, ptr %v, i32 24
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn46 = phi ptr [ %.pn44, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %brvcc.0 = getelementptr i8, ptr %.pn46, i32 -28
  %9 = ptrtoint ptr %brvcc.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %brvcc.0, align 4
  %dev = getelementptr inbounds %struct.atm_vcc, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %number7 = getelementptr inbounds %struct.atm_dev, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %number7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number7, align 4
  %vpi = getelementptr inbounds %struct.atm_vcc, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %vpi to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vpi, align 4
  %conv = sext i16 %16 to i32
  %vci = getelementptr inbounds %struct.atm_vcc, ptr %10, i32 0, i32 3
  %17 = ptrtoint ptr %vci to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vci, align 8
  %encaps = getelementptr i8, ptr %.pn46, i32 -4
  %19 = ptrtoint ptr %encaps to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %encaps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp10 = icmp eq i32 %20, 1
  %cond12 = select i1 %cmp10, ptr @.str.45, ptr @.str.46
  %21 = ptrtoint ptr %payload to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp13 = icmp eq i32 %22, 1
  %cond15 = select i1 %cmp13, ptr @.str.47, ptr @.str.48
  %copies_failed = getelementptr i8, ptr %.pn46, i32 20
  %23 = ptrtoint ptr %copies_failed to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %copies_failed, align 4
  %copies_needed = getelementptr i8, ptr %.pn46, i32 16
  %25 = ptrtoint ptr %copies_needed to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %copies_needed, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.44, i32 noundef %14, i32 noundef %conv, i32 noundef %18, ptr noundef nonnull %cond12, ptr noundef nonnull %cond15, i32 noundef %24, i32 noundef %26) #11
  %netmask = getelementptr i8, ptr %.pn46, i32 12
  %27 = ptrtoint ptr %netmask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %netmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp16.not = icmp eq i32 %28, 0
  br i1 %cmp16.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %filter = getelementptr i8, ptr %.pn46, i32 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.49, ptr noundef %filter, ptr noundef %netmask) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %29 = ptrtoint ptr %.pn46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pn = load ptr, ptr %.pn46, align 4
  %cmp.not = icmp eq ptr %.pn, %brvccs
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind readnone }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { cold nounwind }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !33, !35, !36, !38, !39, !40, !41, !43, !44, !45, !46, !48, !50, !51, !52, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !72, !74, !75, !76, !77, !79, !81, !83, !85, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !113, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134}
!llvm.named.register.sp = !{!136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/atm/br2684.c", i32 847, i32 20}
!2 = !{ptr @__initcall__kmod_br2684__471_867_br2684_init6, !3, !"__initcall__kmod_br2684__471_867_br2684_init6", i1 false, i1 false}
!3 = !{!"../net/atm/br2684.c", i32 867, i32 1}
!4 = !{ptr @__exitcall_br2684_exit, !5, !"__exitcall_br2684_exit", i1 false, i1 false}
!5 = !{!"../net/atm/br2684.c", i32 868, i32 1}
!6 = !{ptr @__UNIQUE_ID_author472, !7, !"__UNIQUE_ID_author472", i1 false, i1 false}
!7 = !{!"../net/atm/br2684.c", i32 870, i32 1}
!8 = !{ptr @__UNIQUE_ID_description473, !9, !"__UNIQUE_ID_description473", i1 false, i1 false}
!9 = !{!"../net/atm/br2684.c", i32 871, i32 1}
!10 = !{ptr @__UNIQUE_ID_file474, !11, !"__UNIQUE_ID_file474", i1 false, i1 false}
!11 = !{!"../net/atm/br2684.c", i32 872, i32 1}
!12 = !{ptr @__UNIQUE_ID_license475, !11, !"__UNIQUE_ID_license475", i1 false, i1 false}
!13 = !{ptr @br2684_ioctl_ops, !14, !"br2684_ioctl_ops", i1 false, i1 false}
!14 = !{!"../net/atm/br2684.c", i32 761, i32 25}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/atm/br2684.c", i32 733, i32 9}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/atm/br2684.c", i32 554, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @br2684_regvcc._entry, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @br2684_regvcc._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/atm/br2684.c", i32 577, i32 2}
!24 = !{ptr @br2684_regvcc.__UNIQUE_ID_ddebug468, !23, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__already_done", i1 false, i1 false}
!27 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!28 = distinct !{null, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/atm/br2684.c", i32 99, i32 8}
!35 = !{ptr @devs_lock, !34, !"devs_lock", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/atm/br2684.c", i32 189, i32 2}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @br2684_pop.__UNIQUE_ID_ddebug460, !37, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!40 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/atm/br2684.c", i32 671, i32 2}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @br2684_create.__UNIQUE_ID_ddebug469, !42, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!45 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/atm/br2684.c", i32 685, i32 11}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/atm/br2684.c", i32 694, i32 2}
!50 = !{ptr @br2684_create.__UNIQUE_ID_ddebug470, !49, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!51 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/atm/br2684.c", i32 698, i32 3}
!54 = !{ptr @br2684_create._entry, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @br2684_create._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @br2684_netdev_ops_routed, !57, !"br2684_netdev_ops_routed", i1 false, i1 false}
!57 = !{!"../net/atm/br2684.c", i32 628, i32 36}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../net/atm/br2684.c", i32 299, i32 2}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @br2684_start_xmit.__UNIQUE_ID_ddebug462, !59, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!62 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/atm/br2684.c", i32 303, i32 3}
!65 = !{ptr @br2684_start_xmit.__UNIQUE_ID_ddebug463, !64, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!66 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../include/linux/skbuff.h", i32 1011, i32 2}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/net/sock.h", i32 1750, i32 2}
!71 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/atm/br2684.c", i32 255, i32 2}
!74 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @br2684_xmit_vcc.__UNIQUE_ID_ddebug461, !73, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!76 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @llc_oui_pid_pad, !78, !"llc_oui_pid_pad", i1 false, i1 false}
!78 = !{!"../net/atm/br2684.c", i32 55, i32 28}
!79 = !{ptr @llc_oui_ipv4, !80, !"llc_oui_ipv4", i1 false, i1 false}
!80 = !{!"../net/atm/br2684.c", i32 58, i32 28}
!81 = distinct !{null, !82, !"llc_oui_ipv6", i1 false, i1 false}
!82 = !{!"../net/atm/br2684.c", i32 59, i32 28}
!83 = !{ptr @br2684_netdev_ops, !84, !"br2684_netdev_ops", i1 false, i1 false}
!84 = !{!"../net/atm/br2684.c", i32 622, i32 36}
!85 = !{ptr @.str.30, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/atm/br2684.c", i32 429, i32 2}
!87 = !{ptr @br2684_push.__UNIQUE_ID_ddebug465, !86, !"__UNIQUE_ID_ddebug465", i1 false, i1 false}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/atm/br2684.c", i32 446, i32 2}
!90 = !{ptr @br2684_push.__UNIQUE_ID_ddebug466, !89, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!91 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/atm/br2684.c", i32 507, i32 2}
!94 = !{ptr @br2684_push.__UNIQUE_ID_ddebug467, !93, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!95 = !{ptr @.str.34, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ethertype_ipv6, !97, !"ethertype_ipv6", i1 false, i1 false}
!97 = !{!"../net/atm/br2684.c", i32 54, i32 28}
!98 = !{ptr @ethertype_ipv4, !99, !"ethertype_ipv4", i1 false, i1 false}
!99 = !{!"../net/atm/br2684.c", i32 53, i32 28}
!100 = !{ptr @pad, !101, !"pad", i1 false, i1 false}
!101 = !{!"../net/atm/br2684.c", i32 57, i32 28}
!102 = !{ptr @atm_dev_notifier, !103, !"atm_dev_notifier", i1 false, i1 false}
!103 = !{!"../net/atm/br2684.c", i32 180, i32 30}
!104 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/atm/br2684.c", i32 157, i32 2}
!106 = !{ptr @.str.36, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @atm_dev_event.__UNIQUE_ID_ddebug459, !105, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!108 = !{ptr @.str.37, !105, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @br2684_devs, !110, !"br2684_devs", i1 false, i1 false}
!110 = !{!"../net/atm/br2684.c", i32 101, i32 8}
!111 = !{ptr @.str.38, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/atm/br2684.c", i32 411, i32 2}
!113 = !{ptr @.str.39, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @br2684_close_vcc.__UNIQUE_ID_ddebug464, !112, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!115 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @br2684_seq_ops, !117, !"br2684_seq_ops", i1 false, i1 false}
!117 = !{!"../net/atm/br2684.c", i32 816, i32 36}
!118 = !{ptr @.str.41, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../net/atm/br2684.c", i32 792, i32 18}
!120 = !{ptr @.str.42, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../net/atm/br2684.c", i32 796, i32 27}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../net/atm/br2684.c", i32 796, i32 35}
!124 = !{ptr @.str.44, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../net/atm/br2684.c", i32 799, i32 19}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../net/atm/br2684.c", i32 803, i32 34}
!128 = !{ptr @.str.46, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../net/atm/br2684.c", i32 803, i32 42}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../net/atm/br2684.c", i32 804, i32 39}
!132 = !{ptr @.str.48, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../net/atm/br2684.c", i32 804, i32 51}
!134 = !{ptr @.str.49, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../net/atm/br2684.c", i32 808, i32 20}
!136 = !{!"sp"}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{i64 2148974781, i64 2148974786, i64 2148974799, i64 2148974843, i64 2148974877, i64 2148974898}
!147 = !{i64 5572841}
!148 = !{i64 5573038}
!149 = !{i64 2153058271}
!150 = !{i64 2157017986, i64 2157018266, i64 2157018600, i64 2157018934}
!151 = !{i64 2153077286, i64 2153077311}
!152 = !{!"branch_weights", i32 2000, i32 1}
!153 = !{i64 2157003856}
!154 = !{!"branch_weights", i32 1, i32 2000}
!155 = !{i64 2148363869, i64 2148363895, i64 2148363924, i64 2148363958, i64 2148363989, i64 2148364012}
!156 = !{i64 2148446839}
!157 = !{i64 2148362124, i64 2148362156, i64 2148362185, i64 2148362219, i64 2148362250, i64 2148362273}
!158 = !{i64 2148447068}
!159 = !{i64 2148362934, i64 2148362966, i64 2148362995, i64 2148363029, i64 2148363060, i64 2148363083}
!160 = !{i64 2148449880}
!161 = !{i64 2148364589, i64 2148364621, i64 2148364650, i64 2148364684, i64 2148364715, i64 2148364738}
!162 = !{i64 2148450109}
