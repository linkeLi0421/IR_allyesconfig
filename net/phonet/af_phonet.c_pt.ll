; ModuleID = '/llk/IR_all_yes/net/phonet/af_phonet.c_pt.bc'
source_filename = "../net/phonet/af_phonet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+phonet_header_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_phonet_header_ops\09\09\09\09"
module asm "\09.long\09__crc_phonet_header_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phonet_header_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22phonet_header_ops\22\09\09\09\09\09"
module asm "__kstrtabns_phonet_header_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pn_skb_send\22, \22a\22\09"
module asm "\09.weak\09__crc_pn_skb_send\09\09\09\09"
module asm "\09.long\09__crc_pn_skb_send\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pn_skb_send:\09\09\09\09\09"
module asm "\09.asciz \09\22pn_skb_send\22\09\09\09\09\09"
module asm "__kstrtabns_pn_skb_send:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+phonet_proto_register\22, \22a\22\09"
module asm "\09.weak\09__crc_phonet_proto_register\09\09\09\09"
module asm "\09.long\09__crc_phonet_proto_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phonet_proto_register:\09\09\09\09\09"
module asm "\09.asciz \09\22phonet_proto_register\22\09\09\09\09\09"
module asm "__kstrtabns_phonet_proto_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+phonet_proto_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_phonet_proto_unregister\09\09\09\09"
module asm "\09.long\09__crc_phonet_proto_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_phonet_proto_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22phonet_proto_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_phonet_proto_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.header_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.pn_sock = type { %struct.sock, i16, i16, i8 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.109, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.110, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.111, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.109 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.110 = type { ptr }
%union.anon.111 = type { ptr }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.sockaddr_pn = type { i16, i8, i8, i8, [11 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.phonethdr = type <{ i8, i8, i8, i16, i8, i8 }>
%struct.phonet_protocol = type { ptr, ptr, i32 }
%struct.phonetmsg = type { i8, i8, %union.anon.147 }
%union.anon.147 = type { %struct.anon.149 }
%struct.anon.149 = type { i16, i8, [3 x i8] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.104, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.104 = type { ptr }

@phonet_header_ops = dso_local constant { %struct.header_ops, [40 x i8] } { %struct.header_ops { ptr @pn_header_create, ptr @pn_header_parse, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@__kstrtab_phonet_header_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_phonet_header_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_phonet_header_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phonet_header_ops to i32), ptr @__kstrtab_phonet_header_ops, ptr @__kstrtabns_phonet_header_ops }, section "___ksymtab+phonet_header_ops", align 4
@__kstrtab_pn_skb_send = external dso_local constant [0 x i8], align 1
@__kstrtabns_pn_skb_send = external dso_local constant [0 x i8], align 1
@__ksymtab_pn_skb_send = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pn_skb_send to i32), ptr @__kstrtab_pn_skb_send, ptr @__kstrtabns_pn_skb_send }, section "___ksymtab+pn_skb_send", align 4
@proto_tab_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @proto_tab_lock, i64 52), ptr getelementptr (i8, ptr @proto_tab_lock, i64 52) }, ptr @proto_tab_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@proto_tab = internal global [3 x ptr] zeroinitializer, section ".data..read_mostly", align 4
@__kstrtab_phonet_proto_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_phonet_proto_register = external dso_local constant [0 x i8], align 1
@__ksymtab_phonet_proto_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phonet_proto_register to i32), ptr @__kstrtab_phonet_proto_register, ptr @__kstrtabns_phonet_proto_register }, section "___ksymtab+phonet_proto_register", align 4
@__kstrtab_phonet_proto_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_phonet_proto_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_phonet_proto_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @phonet_proto_unregister to i32), ptr @__kstrtab_phonet_proto_unregister, ptr @__kstrtabns_phonet_proto_unregister }, section "___ksymtab+phonet_proto_unregister", align 4
@phonet_packet_type = internal global %struct.packet_type { i16 245, i8 0, ptr null, ptr null, ptr @phonet_rcv, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer }, section ".data..read_mostly", align 4
@__initcall__kmod_phonet__463_536_phonet_init6 = internal global ptr @phonet_init, section ".initcall6.init", align 4
@__exitcall_phonet_exit = internal global ptr @phonet_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description464 = internal constant [51 x i8] c"phonet.description=Phonet protocol stack for Linux\00", section ".modinfo", align 1
@__UNIQUE_ID_file465 = internal constant [30 x i8] c"phonet.file=net/phonet/phonet\00", section ".modinfo", align 1
@__UNIQUE_ID_license466 = internal constant [19 x i8] c"phonet.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias467 = internal constant [23 x i8] c"phonet.alias=net-pf-35\00", section ".modinfo", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/phonet/af_phonet.c\00", [41 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"proto_tab_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"proto_tab_lock\00", [17 x i8] zeroinitializer }, align 32
@phonet_rcv.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 105, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"phonet\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phonet_rcv\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No Phonet route to %02X\0A\00", [39 x i8] zeroinitializer }, align 32
@phonet_rcv.descriptor.6 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str, ptr @.str.7, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Phonet loop to %02X on %s\0A\00", [37 x i8] zeroinitializer }, align 32
@phonet_proto_family = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 35, ptr @pn_socket_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@phonet_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\011phonet protocol family initialization failed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"phonet_init\00", [20 x i8] zeroinitializer }, align 32
@phonet_init._entry_ptr = internal global ptr @phonet_init._entry, section ".printk_index", align 4
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net-pf-%d-proto-%d\00", [45 x i8] zeroinitializer }, align 32
@phonet_proto_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"phonet_header_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 139, i32 25 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"proto_tab_lock\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 167, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 456, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 419, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 427, i32 4 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"phonet_proto_family\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 110, i32 38 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 505, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 77, i32 6 }
@___asan_gen_.59 = private constant [26 x i8] c"../net/phonet/af_phonet.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 35, i32 7 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 695, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 723, i32 2 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_alias467, ptr @__UNIQUE_ID_description464, ptr @__UNIQUE_ID_file465, ptr @__UNIQUE_ID_license466, ptr @__exitcall_phonet_exit, ptr @__initcall__kmod_phonet__463_536_phonet_init6, ptr @__ksymtab_phonet_header_ops, ptr @__ksymtab_phonet_proto_register, ptr @__ksymtab_phonet_proto_unregister, ptr @__ksymtab_pn_skb_send, ptr @phonet_exit, ptr @phonet_init._entry, ptr @phonet_init._entry_ptr, ptr @phonet_header_ops, ptr @proto_tab_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @phonet_proto_family, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phonet_header_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @proto_tab_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phonet_proto_family to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phonet_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_header_create(ptr noundef %skb, ptr nocapture noundef readonly %dev, i16 noundef zeroext %type, ptr nocapture noundef readnone %daddr, ptr noundef readonly %saddr, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp2(i16 245, i16 %type)
  %cmp.not = icmp eq i16 %type, 245
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %saddr, null
  br i1 %tobool.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %0 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_addr, align 64
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %saddr.addr.0 = phi ptr [ %saddr, %if.end.if.end3_crit_edge ], [ %1, %if.then2 ]
  %2 = ptrtoint ptr %saddr.addr.0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %saddr.addr.0, align 1
  %4 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %3, ptr %call, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end3 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pn_header_parse(ptr nocapture noundef readonly %skb, ptr nocapture noundef writeonly %haddr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i, align 8
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %3 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i, align 1
  %6 = ptrtoint ptr %haddr to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %haddr, align 1
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pn_skb_send(ptr nocapture noundef readonly %sk, ptr noundef %skb, ptr noundef readonly %target) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 9
  %0 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skc_net.i, align 4
  %sobject = getelementptr inbounds %struct.pn_sock, ptr %sk, i32 0, i32 1
  %2 = ptrtoint ptr %sobject to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sobject, align 8
  %cmp.not = icmp eq ptr %target, null
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spn_dev.i = getelementptr inbounds %struct.sockaddr_pn, ptr %target, i32 0, i32 2
  %4 = ptrtoint ptr %spn_dev.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %spn_dev.i, align 1
  %spn_obj.i = getelementptr inbounds %struct.sockaddr_pn, ptr %target, i32 0, i32 1
  %6 = ptrtoint ptr %spn_obj.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %spn_obj.i, align 1
  %conv.i = zext i8 %7 to i16
  %conv.i.i = zext i8 %5 to i16
  %shl.i.i = shl nuw i16 %conv.i.i, 8
  %or.i.i = or i16 %shl.i.i, %conv.i
  %spn_resource.i = getelementptr inbounds %struct.sockaddr_pn, ptr %target, i32 0, i32 3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dobject = getelementptr inbounds %struct.pn_sock, ptr %sk, i32 0, i32 2
  %8 = ptrtoint ptr %dobject to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dobject, align 2
  %resource = getelementptr inbounds %struct.pn_sock, ptr %sk, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dst.0 = phi i16 [ %or.i.i, %if.then ], [ %9, %if.else ]
  %res.0.in = phi ptr [ %spn_resource.i, %if.then ], [ %resource, %if.else ]
  %10 = ptrtoint ptr %res.0.in to i32
  call void @__asan_load1_noabort(i32 %10)
  %res.0 = load i8, ptr %res.0.in, align 1
  %11 = lshr i16 %dst.0, 8
  %12 = trunc i16 %11 to i8
  %conv1.i = and i8 %12, -4
  %skc_bound_dev_if = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 6
  %13 = ptrtoint ptr %skc_bound_dev_if to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %skc_bound_dev_if, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.else9, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call ptr @dev_get_by_index(ptr noundef %1, i32 noundef %14) #10
  br label %if.end34

if.else9:                                         ; preds = %if.end
  %call10 = tail call i32 @phonet_address_lookup(ptr noundef %1, i8 noundef zeroext %conv1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else14

if.then12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call ptr @phonet_device_get(ptr noundef %1) #10
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %15 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  %bf.set = or i16 %bf.clear, -24576
  store i16 %bf.set, ptr %pkt_type, align 8
  br label %if.end34

if.else14:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dst.0)
  %cmp15 = icmp eq i16 %dst.0, 0
  br i1 %cmp15, label %if.then17, label %if.else30

if.then17:                                        ; preds = %if.else14
  %call19 = tail call ptr @pn_find_sock_by_res(ptr noundef %1, i8 noundef zeroext %res.0) #10
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.else27, label %if.then21

if.then21:                                        ; preds = %if.then17
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %call19, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !72
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #10, !srcloc !73
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sock_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !74

if.end5.i.i.i.i.sock_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sock_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #10
  br label %sock_put.exit

if.then.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  tail call void @sk_free(ptr noundef nonnull %call19) #10
  br label %sock_put.exit

sock_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sock_put.exit_crit_edge
  %call22 = tail call ptr @phonet_device_get(ptr noundef %1) #10
  %pkt_type23 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %17 = ptrtoint ptr %pkt_type23 to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load24 = load i16, ptr %pkt_type23, align 8
  %bf.clear25 = and i16 %bf.load24, 8191
  %bf.set26 = or i16 %bf.clear25, -24576
  store i16 %bf.set26, ptr %pkt_type23, align 8
  br label %if.end34

if.else27:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call ptr @phonet_route_output(ptr noundef %1, i8 noundef zeroext %conv1.i) #10
  br label %if.end34

if.else30:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call ptr @phonet_route_output(ptr noundef %1, i8 noundef zeroext %conv1.i) #10
  br label %if.end34

if.end34:                                         ; preds = %if.else30, %if.else27, %sock_put.exit, %if.then12, %if.then5
  %dev.1 = phi ptr [ %call8, %if.then5 ], [ %call13, %if.then12 ], [ %call31, %if.else30 ], [ %call22, %sock_put.exit ], [ %call28, %if.else27 ]
  %tobool35.not = icmp eq ptr %dev.1, null
  br i1 %tobool35.not, label %drop, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end34
  %flags = getelementptr inbounds %struct.net_device, ptr %dev.1, i32 0, i32 14
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %and = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %lor.lhs.false.do.body1.i105_crit_edge, label %if.end38

lor.lhs.false.do.body1.i105_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i105

if.end38:                                         ; preds = %lor.lhs.false
  %call39 = tail call zeroext i8 @phonet_address_get(ptr noundef nonnull %dev.1, i8 noundef zeroext %conv1.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call39)
  %cmp41 = icmp eq i8 %call39, -1
  br i1 %cmp41, label %if.end38.do.body1.i105_crit_edge, label %if.end44

if.end38.do.body1.i105_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body1.i105

if.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %3)
  %tobool46.not = icmp ult i16 %3, 1024
  %conv49 = and i16 %3, 255
  %conv.i95 = zext i8 %call39 to i16
  %shl.i = shl nuw i16 %conv.i95, 8
  %or.i = or i16 %shl.i, %conv49
  %src.0 = select i1 %tobool46.not, i16 %or.i, i16 %3
  %call52 = tail call fastcc i32 @pn_send(ptr noundef %skb, ptr noundef nonnull %dev.1, i16 noundef zeroext %dst.0, i16 noundef zeroext %src.0, i8 noundef zeroext %res.0, i8 noundef zeroext 0)
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !76
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev.1, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i = add i32 %32, -1
  store i32 %add13.i, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !77
  %and.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %if.end44.dev_put.exit_crit_edge, !prof !78

if.end44.dev_put.exit_crit_edge:                  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

if.then28.i:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %if.end44.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #10, !srcloc !79
  br label %cleanup

drop:                                             ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

do.body1.i105:                                    ; preds = %if.end38.do.body1.i105_crit_edge, %lor.lhs.false.do.body1.i105_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !76
  %pcpu_refcnt.i97 = getelementptr inbounds %struct.net_device, ptr %dev.1, i32 0, i32 118
  %35 = ptrtoint ptr %pcpu_refcnt.i97 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcpu_refcnt.i97, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i98 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i98 to ptr
  %cpu.i99 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu.i99 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu.i99, align 4
  %arrayidx.i100 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i100, align 4
  %add.i101 = add i32 %43, %37
  %44 = inttoptr i32 %add.i101 to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add13.i102 = add i32 %46, -1
  store i32 %add13.i102, ptr %44, align 4
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !77
  %and.i.i.i103 = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i103)
  %tobool24.not.i104 = icmp eq i32 %and.i.i.i103, 0
  br i1 %tobool24.not.i104, label %if.then28.i106, label %do.body1.i105.do.end30.i107_crit_edge, !prof !78

do.body1.i105.do.end30.i107_crit_edge:            ; preds = %do.body1.i105
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30.i107

if.then28.i106:                                   ; preds = %do.body1.i105
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30.i107

do.end30.i107:                                    ; preds = %if.then28.i106, %do.body1.i105.do.end30.i107_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #10, !srcloc !79
  br label %cleanup

cleanup:                                          ; preds = %do.end30.i107, %drop, %dev_put.exit
  %retval.0 = phi i32 [ %call52, %dev_put.exit ], [ -113, %drop ], [ -113, %do.end30.i107 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phonet_address_lookup(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phonet_device_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pn_find_sock_by_res(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @phonet_route_output(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @phonet_address_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pn_send(ptr noundef %skb, ptr noundef %dev, i16 noundef zeroext %dst, i16 noundef zeroext %src, i8 noundef zeroext %res, i8 noundef zeroext %irq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %2 = add i32 %1, -65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65536, i32 %2)
  %cmp = icmp ult i32 %2, -65536
  br i1 %cmp, label %entry.drop_crit_edge, label %lor.lhs.false

entry.drop_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

lor.lhs.false:                                    ; preds = %entry
  %add2 = add nsw i32 %1, 7
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add2, i32 %4)
  %cmp3 = icmp ugt i32 %add2, %4
  br i1 %cmp3, label %lor.lhs.false.drop_crit_edge, label %if.end

lor.lhs.false.drop_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end:                                           ; preds = %lor.lhs.false
  %5 = lshr i16 %dst, 8
  %6 = trunc i16 %5 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %6)
  %cmp4 = icmp ugt i8 %6, -5
  br i1 %cmp4, label %if.end.drop_crit_edge, label %if.end7

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end7:                                          ; preds = %if.end
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %11 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %and = and i32 %sub.ptr.sub.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7.if.end23_crit_edge, label %do.end, !prof !74

if.end7.if.end23_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 167, i32 noundef 9, ptr noundef null) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end, %if.end7.if.end23_crit_edge
  %call30 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 7) #10
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %14 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i114 = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i115 = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i116 = sub i32 %sub.ptr.lhs.cast.i114, %sub.ptr.rhs.cast.i115
  %conv.i117 = trunc i32 %sub.ptr.sub.i116 to i16
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %16 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i117, ptr %network_header.i, align 4
  %conv.i.i = and i32 %sub.ptr.sub.i116, 65535
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i.i
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %6, ptr %add.ptr.i.i, align 1
  %18 = lshr i16 %src, 8
  %conv1.i119 = trunc i16 %18 to i8
  %pn_sdev = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %pn_sdev to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv1.i119, ptr %pn_sdev, align 1
  %pn_res = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %pn_res to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %res, ptr %pn_res, align 1
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  %23 = trunc i32 %22 to i16
  %conv36 = add i16 %23, -5
  %pn_length = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %pn_length to i32
  call void @__asan_storeN_noabort(i32 %24, i32 2)
  store i16 %conv36, ptr %pn_length, align 1
  %conv1.i120 = trunc i16 %dst to i8
  %pn_robj = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %pn_robj to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv1.i120, ptr %pn_robj, align 1
  %conv1.i121 = trunc i16 %src to i8
  %pn_sobj = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i, i32 0, i32 5
  %26 = ptrtoint ptr %pn_sobj to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv1.i121, ptr %pn_sobj, align 1
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %27 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 245, ptr %protocol, align 8
  %priority = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %28 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %priority, align 4
  %29 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev, ptr %29, align 8
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %31 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask)
  %cmp40 = icmp eq i16 %bf.lshr.mask, -24576
  br i1 %cmp40, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.end23
  %32 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data.i, align 4
  %34 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i124 = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i125 = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i126 = sub i32 %sub.ptr.lhs.cast.i124, %sub.ptr.rhs.cast.i125
  %conv.i127 = trunc i32 %sub.ptr.sub.i126 to i16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %36 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i127, ptr %mac_header.i, align 2
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %37 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i = icmp eq ptr %38, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %38(ptr noundef %skb) #10
  %39 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %destructor.i, align 4
  %40 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %40, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.then42
  %42 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %tobool3.not.i = icmp eq ptr %44, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !74

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #10, !srcloc !80
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %irq)
  %tobool44.not = icmp eq i8 %irq, 0
  br i1 %tobool44.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call45 = tail call i32 @netif_rx(ptr noundef %skb) #10
  br label %cond.end

cond.false:                                       ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call46 = tail call i32 @netif_rx_ni(ptr noundef %skb) #10
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call45, %cond.true ], [ %call46, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool47.not = icmp eq i32 %cond, 0
  %cond48 = select i1 %tobool47.not, i32 0, i32 -105
  br label %cleanup

if.else:                                          ; preds = %if.end23
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 4
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 49
  %47 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i128 = icmp eq ptr %48, null
  br i1 %tobool.not.i128, label %if.else.if.end55_crit_edge, label %lor.lhs.false.i

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

lor.lhs.false.i:                                  ; preds = %if.else
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %tobool2.not.i = icmp eq ptr %50, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.end55_crit_edge, label %dev_hard_header.exit

lor.lhs.false.i.if.end55_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

dev_hard_header.exit:                             ; preds = %lor.lhs.false.i
  %call.i = tail call i32 %50(ptr noundef %skb, ptr noundef %dev, i16 noundef zeroext 245, ptr noundef null, ptr noundef null, i32 noundef %46) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp52 = icmp slt i32 %call.i, 0
  br i1 %cmp52, label %dev_hard_header.exit.drop_crit_edge, label %dev_hard_header.exit.if.end55_crit_edge

dev_hard_header.exit.if.end55_crit_edge:          ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

dev_hard_header.exit.drop_crit_edge:              ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.end55:                                         ; preds = %dev_hard_header.exit.if.end55_crit_edge, %lor.lhs.false.i.if.end55_crit_edge, %if.else.if.end55_crit_edge
  %call56 = tail call i32 @dev_queue_xmit(ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp sgt i32 %call56, 0
  br i1 %cmp57, label %if.then65, label %if.end55.cleanup_crit_edge, !prof !78

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then65:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call56)
  %cmp66.not = icmp eq i32 %call56, 2
  %cond68 = select i1 %cmp66.not, i32 0, i32 -105
  br label %cleanup

drop:                                             ; preds = %dev_hard_header.exit.drop_crit_edge, %if.end.drop_crit_edge, %lor.lhs.false.drop_crit_edge, %entry.drop_crit_edge
  %err.1 = phi i32 [ -90, %lor.lhs.false.drop_crit_edge ], [ -90, %entry.drop_crit_edge ], [ -95, %if.end.drop_crit_edge ], [ -113, %dev_hard_header.exit.drop_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.then65, %if.end55.cleanup_crit_edge, %cond.end
  %retval.0 = phi i32 [ %err.1, %drop ], [ %cond48, %cond.end ], [ %cond68, %if.then65 ], [ %call56, %if.end55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put(ptr noundef readonly %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end37_crit_edge, label %do.body1

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

do.body1:                                         ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !76
  %pcpu_refcnt = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !62) #10
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
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !77
  %and.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool24.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool24.not, label %if.then28, label %do.body1.do.end30_crit_edge, !prof !78

do.body1.do.end30_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

if.then28:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %do.end30

do.end30:                                         ; preds = %if.then28, %do.body1.do.end30_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #10, !srcloc !79
  br label %if.end37

if.end37:                                         ; preds = %do.end30, %entry.if.end37_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @phonet_proto_register(i32 noundef %protocol, ptr noundef %pp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %protocol)
  %cmp = icmp ugt i32 %protocol, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %prot = getelementptr inbounds %struct.phonet_protocol, ptr %pp, i32 0, i32 1
  %0 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prot, align 4
  %call = tail call i32 @proto_register(ptr noundef %1, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  tail call void @mutex_lock_nested(ptr noundef nonnull @proto_tab_lock, i32 noundef 0) #10
  %arrayidx = getelementptr [3 x ptr], ptr @proto_tab, i32 0, i32 %protocol
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %do.body, label %if.end2.if.end41_crit_edge

if.end2.if.end41_crit_edge:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.body:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %pp, ptr %arrayidx, align 4
  br label %if.end41

if.end41:                                         ; preds = %do.body, %if.end2.if.end41_crit_edge
  %err.0 = phi i32 [ 0, %do.body ], [ -16, %if.end2.if.end41_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @proto_tab_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end41 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proto_register(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @phonet_proto_unregister(i32 noundef %protocol, ptr noundef readonly %pp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @proto_tab_lock, i32 noundef 0) #10
  %arrayidx = getelementptr [3 x ptr], ptr @proto_tab, i32 0, i32 %protocol
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %1, %pp
  br i1 %cmp.not, label %do.body10, label %do.body2, !prof !74

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/phonet/af_phonet.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 485, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

do.body10:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr null, ptr %arrayidx, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @proto_tab_lock) #10
  tail call void @synchronize_rcu() #10
  %prot = getelementptr inbounds %struct.phonet_protocol, ptr %pp, i32 0, i32 1
  %3 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prot, align 4
  tail call void @proto_unregister(ptr noundef %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @proto_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @phonet_exit() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @isi_unregister() #10
  tail call void @phonet_sysctl_exit() #10
  tail call void @sock_unregister(i32 noundef 35) #10
  tail call void @dev_remove_pack(ptr noundef nonnull @phonet_packet_type) #10
  tail call void @phonet_device_exit() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @isi_unregister() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phonet_sysctl_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_remove_pack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phonet_device_exit() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @phonet_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @phonet_device_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @pn_sock_init() #10
  %call1 = tail call i32 @sock_register(ptr noundef nonnull @phonet_proto_family) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #13
  br label %err_sock

if.end5:                                          ; preds = %if.end
  tail call void @dev_add_pack(ptr noundef nonnull @phonet_packet_type) #10
  %call6 = tail call i32 @phonet_sysctl_init() #10
  %call7 = tail call i32 @isi_register() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %err11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err11:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @phonet_sysctl_exit() #10
  tail call void @sock_unregister(i32 noundef 35) #10
  tail call void @dev_remove_pack(ptr noundef nonnull @phonet_packet_type) #10
  br label %err_sock

err_sock:                                         ; preds = %err11, %do.end
  %err.0 = phi i32 [ %call1, %do.end ], [ %call7, %err11 ]
  tail call void @phonet_device_exit() #10
  br label %cleanup

cleanup:                                          ; preds = %err_sock, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err_sock ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx_ni(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phonet_rcv(ptr noundef %skb, ptr noundef %dev, ptr nocapture noundef readnone %pkttype, ptr nocapture noundef readnone %orig_dev) #0 align 64 {
entry:
  %sa = alloca %struct.sockaddr_pn, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sa) #10
  %2 = getelementptr inbounds %struct.sockaddr_pn, ptr %sa, i32 0, i32 1
  %3 = getelementptr inbounds %struct.sockaddr_pn, ptr %sa, i32 0, i32 2
  %4 = getelementptr inbounds %struct.sockaddr_pn, ptr %sa, i32 0, i32 3
  %5 = getelementptr inbounds %struct.sockaddr_pn, ptr %sa, i32 0, i32 4
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 21
  %6 = call ptr @memset(ptr %sa, i32 255, i32 16)
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i, i32 noundef 4) #10
  %7 = ptrtoint ptr %users.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %users.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i.not.i = icmp eq i32 %8, 1
  br i1 %cmp.i.not.i, label %skb_share_check.exit, label %if.then6.i

if.then6.i:                                       ; preds = %entry
  %call7.i = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #10
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_share_check.exit.thread, label %skb_share_check.exit.thread200, !prof !78

skb_share_check.exit.thread200:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @consume_skb(ptr noundef %skb) #10
  br label %if.end

skb_share_check.exit.thread:                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  br label %cleanup129

skb_share_check.exit:                             ; preds = %entry
  %tobool.not = icmp eq ptr %skb, null
  br i1 %tobool.not, label %skb_share_check.exit.cleanup129_crit_edge, label %skb_share_check.exit.if.end_crit_edge

skb_share_check.exit.if.end_crit_edge:            ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

skb_share_check.exit.cleanup129_crit_edge:        ; preds = %skb_share_check.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup129

if.end:                                           ; preds = %skb_share_check.exit.if.end_crit_edge, %skb_share_check.exit.thread200
  %skb.addr.0.i203 = phi ptr [ %call7.i, %skb_share_check.exit.thread200 ], [ %skb, %skb_share_check.exit.if.end_crit_edge ]
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 6
  %9 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %10)
  %cmp.i = icmp ult i32 %10, 7
  br i1 %cmp.i, label %if.end.out_crit_edge, label %cond.false.i, !prof !78

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

cond.false.i:                                     ; preds = %if.end
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %10, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub.i.i.i)
  %cmp.i.i = icmp ult i32 %sub.i.i.i, 7
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %cond.false.i.pskb_pull.exit_crit_edge

cond.false.i.pskb_pull.exit_crit_edge:            ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pskb_pull.exit

land.lhs.true.i.i:                                ; preds = %cond.false.i
  %sub.i.i = sub nuw nsw i32 7, %sub.i.i.i
  %call2.i.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %skb.addr.0.i203, i32 noundef %sub.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call2.i.i, null
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.out_crit_edge, label %land.lhs.true.i.i.pskb_pull.exit_crit_edge

land.lhs.true.i.i.pskb_pull.exit_crit_edge:       ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pskb_pull.exit

land.lhs.true.i.i.out_crit_edge:                  ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

pskb_pull.exit:                                   ; preds = %land.lhs.true.i.i.pskb_pull.exit_crit_edge, %cond.false.i.pskb_pull.exit_crit_edge
  %13 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len1.i, align 4
  %sub4.i.i = add i32 %14, -7
  store i32 %sub4.i.i, ptr %len1.i, align 4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 7
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tobool3.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool3.not, label %pskb_pull.exit.out_crit_edge, label %if.end5

pskb_pull.exit.out_crit_edge:                     ; preds = %pskb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5:                                          ; preds = %pskb_pull.exit
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %20 to i32
  %add.ptr.i.i177 = getelementptr i8, ptr %18, i32 %conv.i.i
  %pn_length = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i177, i32 0, i32 3
  %21 = ptrtoint ptr %pn_length to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %pn_length, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %22)
  %cmp = icmp ult i16 %22, 2
  br i1 %cmp, label %if.end5.out_crit_edge, label %if.end10

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end10:                                         ; preds = %if.end5
  %sub = add i16 %22, -2
  %conv13 = zext i16 %sub to i32
  %23 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv13)
  %cmp15 = icmp ult i32 %24, %conv13
  br i1 %cmp15, label %if.end10.out_crit_edge, label %lor.lhs.false

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv13)
  %cmp.i179 = icmp ugt i32 %24, %conv13
  br i1 %cmp.i179, label %cond.true.i, label %lor.lhs.false.if.end21_crit_edge

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

cond.true.i:                                      ; preds = %lor.lhs.false
  %25 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i180 = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i180, label %__skb_trim.exit.i.i, label %pskb_trim.exit

__skb_trim.exit.i.i:                              ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv13, ptr %len1.i, align 4
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %29, i32 %conv13
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  br label %if.end21

pskb_trim.exit:                                   ; preds = %cond.true.i
  %call.i.i = tail call i32 @___pskb_trim(ptr noundef nonnull %skb.addr.0.i203, i32 noundef %conv13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool19.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool19.not, label %pskb_trim.exit.if.end21_crit_edge, label %pskb_trim.exit.out_crit_edge

pskb_trim.exit.out_crit_edge:                     ; preds = %pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

pskb_trim.exit.if.end21_crit_edge:                ; preds = %pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.end21:                                         ; preds = %pskb_trim.exit.if.end21_crit_edge, %__skb_trim.exit.i.i, %lor.lhs.false.if.end21_crit_edge
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %33 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 15, i32 0, i32 19
  %35 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %36 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %37 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %34, i32 %conv.i.i.i
  %38 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr.i.i.i, align 1
  %pn_robj.i = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %pn_robj.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %pn_robj.i, align 1
  %42 = ptrtoint ptr %sa to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 35, ptr %sa, align 2
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %39, ptr %3, align 1
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %41, ptr %2, align 2
  %pn_res.i = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %pn_res.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %pn_res.i, align 1
  %47 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %4, align 2
  %48 = call ptr @memset(ptr %5, i32 0, i32 11)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -5, i8 %39)
  %cmp24 = icmp ugt i8 %39, -5
  br i1 %cmp24, label %if.then26, label %if.end27

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @pn_deliver_sock_broadcast(ptr noundef %1, ptr noundef nonnull %skb.addr.0.i203) #10
  br label %out

if.end27:                                         ; preds = %if.end21
  %conv.i183 = zext i8 %41 to i16
  %conv.i.i184 = zext i8 %39 to i16
  %shl.i.i = shl nuw i16 %conv.i.i184, 8
  %or.i.i = or i16 %shl.i.i, %conv.i183
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i.i)
  %cmp30 = icmp eq i16 %or.i.i, 0
  br i1 %cmp30, label %if.then32, label %if.end27.if.end38_crit_edge

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then32:                                        ; preds = %if.end27
  %call33 = tail call ptr @pn_find_sock_by_res(ptr noundef %1, i8 noundef zeroext %46) #10
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.then32.if.end38_crit_edge, label %cleanup

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

cleanup:                                          ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__sk_receive_skb(ptr noundef nonnull %call33, ptr noundef nonnull %skb.addr.0.i203, i32 noundef 0, i32 noundef 1, i1 noundef zeroext true) #10
  br label %cleanup129

if.end38:                                         ; preds = %if.then32.if.end38_crit_edge, %if.end27.if.end38_crit_edge
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %3, align 1
  %51 = and i8 %50, -4
  %call40 = tail call i32 @phonet_address_lookup(ptr noundef %1, i8 noundef zeroext %51) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end38
  %call45 = call ptr @pn_find_sock_by_sa(ptr noundef %1, ptr noundef nonnull %sa) #10
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end49, label %cleanup56

if.end49:                                         ; preds = %if.then43
  %call50 = call fastcc i32 @can_respond(ptr noundef nonnull %skb.addr.0.i203)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end49.out_crit_edge, label %if.then52

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @send_obj_unreachable(ptr noundef nonnull %skb.addr.0.i203)
  call fastcc void @send_reset_indications(ptr noundef nonnull %skb.addr.0.i203)
  br label %out

cleanup56:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #12
  %call.i186 = call i32 @__sk_receive_skb(ptr noundef nonnull %call45, ptr noundef nonnull %skb.addr.0.i203, i32 noundef 0, i32 noundef 1, i1 noundef zeroext true) #10
  br label %cleanup129

if.else:                                          ; preds = %if.end38
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i203, i32 0, i32 15
  %52 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask)
  %cmp60 = icmp eq i16 %bf.lshr.mask, -24576
  br i1 %cmp60, label %if.else.out_crit_edge, label %if.else65, !prof !78

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else65:                                        ; preds = %if.else
  %53 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %3, align 1
  %55 = and i8 %54, -4
  %call67 = tail call ptr @phonet_route_output(ptr noundef %1, i8 noundef zeroext %55) #10
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %do.body, label %if.end84

do.body:                                          ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phonet_rcv.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phonet_rcv, %land.lhs.true)) #10
          to label %out [label %land.lhs.true], !srcloc !83

land.lhs.true:                                    ; preds = %do.body
  %call78 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true.out_crit_edge, label %if.then80

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then80:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %3, align 1
  %58 = and i8 %57, -4
  %conv82 = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phonet_rcv.descriptor, ptr noundef nonnull @.str.5, i32 noundef %conv82) #10
  br label %out

if.end84:                                         ; preds = %if.else65
  %59 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %60, i32 -7
  store ptr %add.ptr.i, ptr %data.i.i, align 4
  %61 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %62, 7
  store i32 %add.i, ptr %len1.i, align 4
  %63 = getelementptr inbounds %struct.anon, ptr %skb.addr.0.i203, i32 0, i32 2
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call67, ptr %63, align 8
  %cmp86 = icmp eq ptr %call67, %dev
  br i1 %cmp86, label %do.body89, label %if.end110

do.body89:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phonet_rcv.descriptor.6, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phonet_rcv, %land.lhs.true101)) #10
          to label %out_dev123 [label %land.lhs.true101], !srcloc !83

land.lhs.true101:                                 ; preds = %do.body89
  %call102 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %land.lhs.true101.out_dev123_crit_edge, label %if.then104

land.lhs.true101.out_dev123_crit_edge:            ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_dev123

if.then104:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %3, align 1
  %67 = and i8 %66, -4
  %conv106 = zext i8 %67 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @phonet_rcv.descriptor.6, ptr noundef nonnull @.str.7, i32 noundef %conv106, ptr noundef %dev) #10
  br label %out_dev123

if.end110:                                        ; preds = %if.end84
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %call67, i32 0, i32 19
  %68 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %hard_header_len, align 2
  %conv111 = zext i16 %69 to i32
  %call112 = tail call fastcc i32 @skb_cow_head(ptr noundef nonnull %skb.addr.0.i203, i32 noundef %conv111)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112)
  %tobool113.not = icmp eq i32 %call112, 0
  br i1 %tobool113.not, label %if.end115, label %if.end110.out_dev123_crit_edge

if.end110.out_dev123_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_dev123

if.end115:                                        ; preds = %if.end110
  %70 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len1.i, align 4
  %header_ops.i = getelementptr inbounds %struct.net_device, ptr %call67, i32 0, i32 49
  %72 = ptrtoint ptr %header_ops.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %header_ops.i, align 4
  %tobool.not.i = icmp eq ptr %73, null
  br i1 %tobool.not.i, label %if.end115.cleanup124.thread218_crit_edge, label %lor.lhs.false.i

if.end115.cleanup124.thread218_crit_edge:         ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup124.thread218

lor.lhs.false.i:                                  ; preds = %if.end115
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %73, align 4
  %tobool2.not.i = icmp eq ptr %75, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup124.thread218_crit_edge, label %dev_hard_header.exit

lor.lhs.false.i.cleanup124.thread218_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup124.thread218

dev_hard_header.exit:                             ; preds = %lor.lhs.false.i
  %call.i192 = tail call i32 %75(ptr noundef nonnull %skb.addr.0.i203, ptr noundef nonnull %call67, i16 noundef zeroext 245, ptr noundef null, ptr noundef null, i32 noundef %71) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %cmp118 = icmp slt i32 %call.i192, 0
  br i1 %cmp118, label %dev_hard_header.exit.out_dev123_crit_edge, label %dev_hard_header.exit.cleanup124.thread218_crit_edge

dev_hard_header.exit.cleanup124.thread218_crit_edge: ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup124.thread218

dev_hard_header.exit.out_dev123_crit_edge:        ; preds = %dev_hard_header.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_dev123

cleanup124.thread218:                             ; preds = %dev_hard_header.exit.cleanup124.thread218_crit_edge, %lor.lhs.false.i.cleanup124.thread218_crit_edge, %if.end115.cleanup124.thread218_crit_edge
  %call122 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %skb.addr.0.i203) #10
  tail call fastcc void @dev_put(ptr noundef nonnull %call67)
  br label %cleanup129

out_dev123:                                       ; preds = %dev_hard_header.exit.out_dev123_crit_edge, %if.end110.out_dev123_crit_edge, %if.then104, %land.lhs.true101.out_dev123_crit_edge, %do.body89
  tail call fastcc void @dev_put(ptr noundef nonnull %call67)
  br label %out

out:                                              ; preds = %out_dev123, %if.then80, %land.lhs.true.out_crit_edge, %do.body, %if.else.out_crit_edge, %if.then52, %if.end49.out_crit_edge, %if.then26, %pskb_trim.exit.out_crit_edge, %if.end10.out_crit_edge, %if.end5.out_crit_edge, %pskb_pull.exit.out_crit_edge, %land.lhs.true.i.i.out_crit_edge, %if.end.out_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %skb.addr.0.i203, i32 noundef 0) #10
  br label %cleanup129

cleanup129:                                       ; preds = %out, %cleanup124.thread218, %cleanup56, %cleanup, %skb_share_check.exit.cleanup129_crit_edge, %skb_share_check.exit.thread
  %retval.4 = phi i32 [ 1, %out ], [ %call.i186, %cleanup56 ], [ %call.i, %cleanup ], [ 1, %skb_share_check.exit.cleanup129_crit_edge ], [ 1, %skb_share_check.exit.thread ], [ 0, %cleanup124.thread218 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sa) #10
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pn_deliver_sock_broadcast(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pn_find_sock_by_sa(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @can_respond(ptr noundef %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 3
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge, !prof !78

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp3.i = icmp ult i32 %1, 3
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !78

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 3, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end_crit_edge

pskb_may_pull.exit.if.end_crit_edge:              ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %pskb_may_pull.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %6 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %7 to i32
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 %conv.i.i
  %pn_res = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %pn_res to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pn_res, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %9)
  %cmp = icmp eq i8 %9, -32
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i52 = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub.i.i52)
  %cmp.not.i53 = icmp ult i32 %sub.i.i52, 5
  br i1 %cmp.not.i53, label %if.end.i55, label %land.lhs.true.if.end5thread-pre-split_crit_edge, !prof !78

land.lhs.true.if.end5thread-pre-split_crit_edge:  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5thread-pre-split

if.end.i55:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %11)
  %cmp3.i54 = icmp ult i32 %11, 5
  br i1 %cmp3.i54, label %if.end.i55.cleanup_crit_edge, label %pskb_may_pull.exit61, !prof !78

if.end.i55.cleanup_crit_edge:                     ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

pskb_may_pull.exit61:                             ; preds = %if.end.i55
  %sub.i56 = sub nuw nsw i32 5, %sub.i.i52
  %call13.i57 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i56) #10
  %cmp14.i58.not = icmp eq ptr %call13.i57, null
  br i1 %cmp14.i58.not, label %pskb_may_pull.exit61.cleanup_crit_edge, label %pskb_may_pull.exit61.if.end5thread-pre-split_crit_edge

pskb_may_pull.exit61.if.end5thread-pre-split_crit_edge: ; preds = %pskb_may_pull.exit61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5thread-pre-split

pskb_may_pull.exit61.cleanup_crit_edge:           ; preds = %pskb_may_pull.exit61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5thread-pre-split:                          ; preds = %pskb_may_pull.exit61.if.end5thread-pre-split_crit_edge, %land.lhs.true.if.end5thread-pre-split_crit_edge
  %14 = ptrtoint ptr %pn_res to i32
  call void @__asan_load1_noabort(i32 %14)
  %.pr = load i8, ptr %pn_res, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.end5thread-pre-split, %if.end.if.end5_crit_edge
  %15 = phi i8 [ %.pr, %if.end5thread-pre-split ], [ %9, %if.end.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %15)
  %cmp8 = icmp eq i8 %15, 16
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %18 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i67 = zext i16 %19 to i32
  %add.ptr.i.i68 = getelementptr i8, ptr %17, i32 %conv.i.i67
  %pn_msg_id = getelementptr inbounds %struct.phonetmsg, ptr %add.ptr.i.i68, i32 0, i32 1
  %20 = ptrtoint ptr %pn_msg_id to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pn_msg_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %21)
  %cmp15.not = icmp eq i8 %21, -16
  br i1 %cmp15.not, label %if.end18, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %22 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i64 = zext i16 %23 to i32
  %add.ptr.i.i65 = getelementptr i8, ptr %17, i32 %conv.i.i64
  %pn_res19 = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i65, i32 0, i32 2
  %24 = ptrtoint ptr %pn_res19 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pn_res19, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %25)
  %cmp21 = icmp eq i8 %25, -32
  %pn_e_submsg_id = getelementptr inbounds %struct.phonetmsg, ptr %add.ptr.i.i68, i32 0, i32 2, i32 0, i32 1
  %pn_msg_u24 = getelementptr inbounds %struct.phonetmsg, ptr %add.ptr.i.i68, i32 0, i32 2
  %cond.in.in = select i1 %cmp21, ptr %pn_e_submsg_id, ptr %pn_msg_u24
  %26 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %26)
  %cond.in49 = load i8, ptr %cond.in.in, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %cond.in49)
  %cmp28.not = icmp eq i8 %cond.in49, 20
  br i1 %cmp28.not, label %if.end18.if.end37_crit_edge, label %land.lhs.true30

if.end18.if.end37_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true30:                                  ; preds = %if.end18
  %27 = ptrtoint ptr %pn_e_submsg_id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pn_e_submsg_id, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp34.not = icmp eq i8 %28, 1
  br i1 %cmp34.not, label %land.lhs.true30.if.end37_crit_edge, label %land.lhs.true30.cleanup_crit_edge

land.lhs.true30.cleanup_crit_edge:                ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true30.if.end37_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true30.if.end37_crit_edge, %if.end18.if.end37_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %land.lhs.true30.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %pskb_may_pull.exit61.cleanup_crit_edge, %if.end.i55.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ 0, %pskb_may_pull.exit.cleanup_crit_edge ], [ 0, %pskb_may_pull.exit61.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 1, %if.end11.cleanup_crit_edge ], [ 1, %land.lhs.true30.cleanup_crit_edge ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_obj_unreachable(ptr nocapture noundef readonly %rskb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %rskb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %rskb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %rskb, i32 0, i32 15, i32 0, i32 19
  %4 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i2 = zext i16 %5 to i32
  %add.ptr.i.i3 = getelementptr i8, ptr %1, i32 %conv.i.i2
  %6 = ptrtoint ptr %add.ptr.i.i3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i.i3, align 2
  %pn_res = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %pn_res to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pn_res, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -32, i8 %9)
  %cmp = icmp eq i8 %9, -32
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pn_msg_u = getelementptr inbounds %struct.phonetmsg, ptr %add.ptr.i.i3, i32 0, i32 2
  %10 = ptrtoint ptr %pn_msg_u to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %pn_msg_u, align 2
  %resp.sroa.8.sroa.0.0.extract.shift = lshr i16 %11, 8
  %resp.sroa.8.sroa.0.0.extract.trunc = trunc i16 %resp.sroa.8.sroa.0.0.extract.shift to i8
  %resp.sroa.8.sroa.7.0.extract.trunc = trunc i16 %11 to i8
  %pn_msg_id7 = getelementptr inbounds %struct.phonetmsg, ptr %add.ptr.i.i3, i32 0, i32 1
  %12 = ptrtoint ptr %pn_msg_id7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %pn_msg_id7, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pn_msg_id13 = getelementptr inbounds %struct.phonetmsg, ptr %add.ptr.i.i3, i32 0, i32 1
  %14 = ptrtoint ptr %pn_msg_id13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pn_msg_id13, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %resp.sroa.8.sroa.7.0 = phi i8 [ %resp.sroa.8.sroa.7.0.extract.trunc, %if.then ], [ %15, %if.else ]
  %resp.sroa.8.sroa.0.0 = phi i8 [ %resp.sroa.8.sroa.0.0.extract.trunc, %if.then ], [ 20, %if.else ]
  %resp.sroa.15.0 = phi i8 [ %13, %if.then ], [ 0, %if.else ]
  %resp.sroa.12.0 = phi i8 [ 20, %if.then ], [ 0, %if.else ]
  %16 = getelementptr inbounds %struct.anon, ptr %rskb, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %pn_sdev = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %pn_sdev to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pn_sdev, align 1
  %pn_sobj = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %pn_sobj to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pn_sobj, align 1
  %conv19 = zext i8 %22 to i16
  %conv.i = zext i8 %20 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %or.i = or i16 %shl.i, %conv19
  %23 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i.i, align 1
  %pn_robj = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %pn_robj to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pn_robj, align 1
  %conv21 = zext i8 %26 to i16
  %conv.i4 = zext i8 %24 to i16
  %shl.i5 = shl nuw i16 %conv.i4, 8
  %or.i6 = or i16 %shl.i5, %conv21
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 192, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %if.end.pn_raw_send.exit_crit_edge, label %if.end.i

if.end.pn_raw_send.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %pn_raw_send.exit

if.end.i:                                         ; preds = %if.end
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 127
  %27 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nd_net.i.i, align 4
  %conv1.i.i = and i8 %20, -4
  %call3.i = tail call i32 @phonet_address_lookup(ptr noundef %28, i8 noundef zeroext %conv1.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %29 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %bf.set.i = or i16 %bf.clear.i, -24576
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %31, i32 184
  store ptr %add.ptr.i.i7, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %33, i32 184
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %34 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i.i = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !74

do.body3.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !84
  unreachable

__skb_put.exit.i:                                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i2.i = getelementptr i8, ptr %33, i32 192
  %36 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr.i2.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %37 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %38, 8
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %39 = ptrtoint ptr %add.ptr.i.i7 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %7, ptr %add.ptr.i.i7, align 1
  %resp.sroa.6.0.add.ptr.i.i7.sroa_idx = getelementptr i8, ptr %31, i32 185
  %40 = ptrtoint ptr %resp.sroa.6.0.add.ptr.i.i7.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -16, ptr %resp.sroa.6.0.add.ptr.i.i7.sroa_idx, align 1
  %resp.sroa.8.0.add.ptr.i.i7.sroa_idx = getelementptr i8, ptr %31, i32 186
  %resp.sroa.8.sroa.7.0.insert.ext = zext i8 %resp.sroa.8.sroa.7.0 to i16
  %resp.sroa.8.sroa.0.0.insert.ext = zext i8 %resp.sroa.8.sroa.0.0 to i16
  %resp.sroa.8.sroa.0.0.insert.shift = shl nuw i16 %resp.sroa.8.sroa.0.0.insert.ext, 8
  %resp.sroa.8.sroa.0.0.insert.insert = or i16 %resp.sroa.8.sroa.0.0.insert.shift, %resp.sroa.8.sroa.7.0.insert.ext
  %41 = ptrtoint ptr %resp.sroa.8.0.add.ptr.i.i7.sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %resp.sroa.8.sroa.0.0.insert.insert, ptr %resp.sroa.8.0.add.ptr.i.i7.sroa_idx, align 1
  %resp.sroa.12.0.add.ptr.i.i7.sroa_idx = getelementptr i8, ptr %31, i32 188
  %42 = ptrtoint ptr %resp.sroa.12.0.add.ptr.i.i7.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %resp.sroa.12.0, ptr %resp.sroa.12.0.add.ptr.i.i7.sroa_idx, align 1
  %resp.sroa.15.0.add.ptr.i.i7.sroa_idx = getelementptr i8, ptr %31, i32 189
  %43 = ptrtoint ptr %resp.sroa.15.0.add.ptr.i.i7.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %resp.sroa.15.0, ptr %resp.sroa.15.0.add.ptr.i.i7.sroa_idx, align 1
  %resp.sroa.17.0.add.ptr.i.i7.sroa_idx = getelementptr i8, ptr %31, i32 190
  %44 = ptrtoint ptr %resp.sroa.17.0.add.ptr.i.i7.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %resp.sroa.17.0.add.ptr.i.i7.sroa_idx, align 1
  %resp.sroa.19.0.add.ptr.i.i7.sroa_idx = getelementptr i8, ptr %31, i32 191
  %45 = ptrtoint ptr %resp.sroa.19.0.add.ptr.i.i7.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %resp.sroa.19.0.add.ptr.i.i7.sroa_idx, align 1
  %call8.i = tail call fastcc i32 @pn_send(ptr noundef nonnull %call.i.i, ptr noundef %18, i16 noundef zeroext %or.i, i16 noundef zeroext %or.i6, i8 noundef zeroext %9, i8 noundef zeroext 1) #10
  br label %pn_raw_send.exit

pn_raw_send.exit:                                 ; preds = %__skb_put.exit.i, %if.end.pn_raw_send.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_reset_indications(ptr nocapture noundef readonly %rskb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %rskb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %rskb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %4 = getelementptr inbounds %struct.anon, ptr %rskb, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 8
  %pn_sdev = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %pn_sdev to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %pn_sdev, align 1
  %conv.i = zext i8 %8 to i16
  %shl.i = shl nuw i16 %conv.i, 8
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i.i, align 1
  %pn_robj = getelementptr inbounds %struct.phonethdr, ptr %add.ptr.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %pn_robj to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pn_robj, align 1
  %conv = zext i8 %12 to i16
  %conv.i1 = zext i8 %10 to i16
  %shl.i2 = shl nuw i16 %conv.i1, 8
  %or.i = or i16 %shl.i2, %conv
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 188, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %entry.pn_raw_send.exit_crit_edge, label %if.end.i

entry.pn_raw_send.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %pn_raw_send.exit

if.end.i:                                         ; preds = %entry
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 127
  %13 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nd_net.i.i, align 4
  %conv1.i.i = and i8 %8, -4
  %call3.i = tail call i32 @phonet_address_lookup(ptr noundef %14, i8 noundef zeroext %conv1.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp eq i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %15 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.clear.i = and i16 %bf.load.i, 8191
  %bf.set.i = or i16 %bf.clear.i, -24576
  store i16 %bf.set.i, ptr %pkt_type.i, align 8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i3 = getelementptr i8, ptr %17, i32 184
  store ptr %add.ptr.i.i3, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %19, i32 184
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !74

do.body3.i.i:                                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !84
  unreachable

__skb_put.exit.i:                                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i2.i = getelementptr i8, ptr %19, i32 188
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i2.i, ptr %tail.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %24, 4
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %25 = ptrtoint ptr %add.ptr.i.i3 to i32
  call void @__asan_storeN_noabort(i32 %25, i32 4)
  store i32 1048576, ptr %add.ptr.i.i3, align 1
  %call8.i = tail call fastcc i32 @pn_send(ptr noundef nonnull %call.i.i, ptr noundef %6, i16 noundef zeroext %shl.i, i16 noundef zeroext %or.i, i8 noundef zeroext 16, i8 noundef zeroext 1) #10
  br label %pn_raw_send.exit

pn_raw_send.exit:                                 ; preds = %__skb_put.exit.i, %entry.pn_raw_send.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skb_cow_head(ptr noundef %skb, i32 noundef %headroom) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %cloned.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %cloned.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.skb_header_cloned.exit_crit_edge, label %if.end.i

entry.skb_header_cloned.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_header_cloned.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i, align 4
  %dataref1.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i, i32 noundef 4) #10
  %3 = ptrtoint ptr %dataref1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref1.i, align 4
  %and.i = and i32 %4, 65535
  %shr.i = ashr i32 %4, 16
  %sub.i = sub nsw i32 %and.i, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i)
  %cmp.i.not = icmp eq i32 %sub.i, 1
  br label %skb_header_cloned.exit

skb_header_cloned.exit:                           ; preds = %if.end.i, %entry.skb_header_cloned.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp.i.not, %if.end.i ], [ true, %entry.skb_header_cloned.exit_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %headroom)
  %tobool.not.i3 = icmp uge i32 %sub.ptr.sub.i.i, %headroom
  %or.cond.i = and i1 %retval.0.i, %tobool.not.i3
  br i1 %or.cond.i, label %skb_header_cloned.exit.__skb_cow.exit_crit_edge, label %if.then3.i

skb_header_cloned.exit.__skb_cow.exit_crit_edge:  ; preds = %skb_header_cloned.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_cow.exit

if.then3.i:                                       ; preds = %skb_header_cloned.exit
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.usub.sat.i32(i32 %headroom, i32 %sub.ptr.sub.i.i) #10
  %add.i = add i32 %9, 127
  %and.i4 = and i32 %add.i, -128
  %call4.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %and.i4, i32 noundef 0, i32 noundef 2592) #10
  br label %__skb_cow.exit

__skb_cow.exit:                                   ; preds = %if.then3.i, %skb_header_cloned.exit.__skb_cow.exit_crit_edge
  %retval.0.i5 = phi i32 [ %call4.i, %if.then3.i ], [ 0, %skb_header_cloned.exit.__skb_cow.exit_crit_edge ]
  ret i32 %retval.0.i5
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sk_receive_skb(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phonet_device_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pn_sock_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_add_pack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phonet_sysctl_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @isi_register() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pn_socket_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @capable(i32 noundef 21) #10
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %protocol)
  %cmp = icmp eq i32 %protocol, 0
  br i1 %cmp, label %if.then1, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then1:                                         ; preds = %if.end
  %type = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 4
  %conv = sext i16 %1 to i32
  %2 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %if.then1.cleanup_crit_edge [
    i32 2, label %if.then1.if.end3_crit_edge
    i32 5, label %sw.bb2
  ]

if.then1.if.end3_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb2:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end3:                                          ; preds = %sw.bb2, %if.then1.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %protocol.addr.0 = phi i32 [ 2, %sw.bb2 ], [ %protocol, %if.end.if.end3_crit_edge ], [ 1, %if.then1.if.end3_crit_edge ]
  %call4 = tail call fastcc ptr @phonet_proto_get(i32 noundef %protocol.addr.0)
  %cmp5 = icmp eq ptr %call4, null
  br i1 %cmp5, label %land.lhs.true, label %if.end3.if.end16_crit_edge

if.end3.if.end16_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end3
  %call7 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.11, i32 noundef 35, i32 noundef %protocol.addr.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.end12, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true
  %call11 = tail call fastcc ptr @phonet_proto_get(i32 noundef %protocol.addr.0)
  %cmp13 = icmp eq ptr %call11, null
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end12.if.end16_crit_edge, %if.end3.if.end16_crit_edge
  %pnp.065 = phi ptr [ %call11, %if.end12.if.end16_crit_edge ], [ %call4, %if.end3.if.end16_crit_edge ]
  %type17 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %3 = ptrtoint ptr %type17 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %type17, align 4
  %conv18 = sext i16 %4 to i32
  %sock_type = getelementptr inbounds %struct.phonet_protocol, ptr %pnp.065, i32 0, i32 2
  %5 = ptrtoint ptr %sock_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sock_type, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv18)
  %cmp19.not = icmp eq i32 %6, %conv18
  br i1 %cmp19.not, label %if.end22, label %if.end16.out_crit_edge

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end22:                                         ; preds = %if.end16
  %prot = getelementptr inbounds %struct.phonet_protocol, ptr %pnp.065, i32 0, i32 1
  %7 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prot, align 4
  %call23 = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 35, i32 noundef 3264, ptr noundef %8, i32 noundef %kern) #10
  %cmp24 = icmp eq ptr %call23, null
  br i1 %cmp24, label %if.end22.out_crit_edge, label %if.end27

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call23) #10
  %9 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %sock, align 128
  %10 = ptrtoint ptr %pnp.065 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pnp.065, align 4
  %ops28 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %12 = ptrtoint ptr %ops28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %ops28, align 4
  %skc_prot = getelementptr inbounds %struct.sock_common, ptr %call23, i32 0, i32 8
  %13 = ptrtoint ptr %skc_prot to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %skc_prot, align 8
  %backlog_rcv = getelementptr inbounds %struct.proto, ptr %14, i32 0, i32 17
  %15 = ptrtoint ptr %backlog_rcv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %backlog_rcv, align 4
  %sk_backlog_rcv = getelementptr inbounds %struct.sock, ptr %call23, i32 0, i32 80
  %17 = ptrtoint ptr %sk_backlog_rcv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %sk_backlog_rcv, align 4
  %conv29 = trunc i32 %protocol.addr.0 to i16
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %call23, i32 0, i32 46
  %18 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv29, ptr %sk_protocol, align 4
  %sobject = getelementptr inbounds %struct.pn_sock, ptr %call23, i32 0, i32 1
  %init = getelementptr inbounds %struct.proto, ptr %14, i32 0, i32 6
  %19 = call ptr @memset(ptr %sobject, i32 0, i32 5)
  %20 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %init, align 4
  %call33 = tail call i32 %21(ptr noundef nonnull %call23) #10
  br label %out

out:                                              ; preds = %if.end27, %if.end22.out_crit_edge, %if.end16.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end27 ], [ -93, %if.end16.out_crit_edge ], [ -12, %if.end22.out_crit_edge ]
  %prot.i = getelementptr inbounds %struct.phonet_protocol, ptr %pnp.065, i32 0, i32 1
  %22 = ptrtoint ptr %prot.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prot.i, align 4
  %owner.i = getelementptr inbounds %struct.proto, ptr %23, i32 0, i32 51
  %24 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %25) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end12.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -1, %entry.cleanup_crit_edge ], [ -93, %if.then1.cleanup_crit_edge ], [ -93, %if.end12.cleanup_crit_edge ], [ -93, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @phonet_proto_get(i32 noundef %protocol) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %protocol)
  %cmp = icmp ugt i32 %protocol, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !85
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %arrayidx = getelementptr [3 x ptr], ptr @proto_tab, i32 0, i32 %protocol
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx, align 4
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end9_crit_edge

rcu_read_lock.exit.do.end9_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true4

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b19 = load i1, ptr @phonet_proto_get.__warned, align 1
  br i1 %.b19, label %land.lhs.true4.do.end9_crit_edge, label %if.then6

land.lhs.true4.do.end9_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @phonet_proto_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 35, ptr noundef nonnull @.str.12) #10
  br label %do.end9

do.end9:                                          ; preds = %if.then6, %land.lhs.true4.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %rcu_read_lock.exit.do.end9_crit_edge
  %tobool11.not = icmp eq ptr %5, null
  br i1 %tobool11.not, label %do.end9.if.end15_crit_edge, label %land.lhs.true12

do.end9.if.end15_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

land.lhs.true12:                                  ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  %prot = getelementptr inbounds %struct.phonet_protocol, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prot to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prot, align 4
  %owner = getelementptr inbounds %struct.proto, ptr %7, i32 0, i32 51
  %8 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %owner, align 4
  %call13 = tail call zeroext i1 @try_module_get(ptr noundef %9) #10
  %spec.select = select i1 %call13, ptr %5, ptr null
  br label %if.end15

if.end15:                                         ; preds = %land.lhs.true12, %do.end9.if.end15_crit_edge
  %pp.0 = phi ptr [ null, %do.end9.if.end15_crit_edge ], [ %spec.select, %land.lhs.true12 ]
  %call.i20 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i20, label %if.end15.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i23

if.end15.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i23:                                ; preds = %if.end15
  %call1.i21 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i21)
  %tobool.not.i22 = icmp eq i32 %call1.i21, 0
  br i1 %tobool.not.i22, label %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i25

land.lhs.true.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i23
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i25:                               ; preds = %land.lhs.true.i23
  %.b4.i24 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i24, label %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, label %if.then.i26

land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i26:                                      ; preds = %land.lhs.true2.i25
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i26, %land.lhs.true2.i25.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i23.rcu_read_unlock.exit_crit_edge, %if.end15.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !86
  %10 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i.i27 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i27 to ptr
  %preempt_count.i.i.i.i28 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i28, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i28, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %pp.0, %rcu_read_unlock.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !28, !29, !31, !33, !34, !35, !36, !38, !39, !41, !43, !45, !46, !47, !48, !50, !52, !54, !55, !57, !58, !59, !61}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @phonet_header_ops, !1, !"phonet_header_ops", i1 false, i1 false}
!1 = !{!"../net/phonet/af_phonet.c", i32 139, i32 25}
!2 = !{ptr @__ksymtab_phonet_header_ops, !3, !"__ksymtab_phonet_header_ops", i1 false, i1 false}
!3 = !{!"../net/phonet/af_phonet.c", i32 143, i32 1}
!4 = !{ptr @__ksymtab_pn_skb_send, !5, !"__ksymtab_pn_skb_send", i1 false, i1 false}
!5 = !{!"../net/phonet/af_phonet.c", i32 281, i32 1}
!6 = !{ptr @__ksymtab_phonet_proto_register, !7, !"__ksymtab_phonet_proto_register", i1 false, i1 false}
!7 = !{!"../net/phonet/af_phonet.c", i32 479, i32 1}
!8 = !{ptr @__ksymtab_phonet_proto_unregister, !9, !"__ksymtab_phonet_proto_unregister", i1 false, i1 false}
!9 = !{!"../net/phonet/af_phonet.c", i32 491, i32 1}
!10 = !{ptr @__initcall__kmod_phonet__463_536_phonet_init6, !11, !"__initcall__kmod_phonet__463_536_phonet_init6", i1 false, i1 false}
!11 = !{!"../net/phonet/af_phonet.c", i32 536, i32 1}
!12 = !{ptr @__exitcall_phonet_exit, !13, !"__exitcall_phonet_exit", i1 false, i1 false}
!13 = !{!"../net/phonet/af_phonet.c", i32 537, i32 1}
!14 = !{ptr @__UNIQUE_ID_description464, !15, !"__UNIQUE_ID_description464", i1 false, i1 false}
!15 = !{!"../net/phonet/af_phonet.c", i32 538, i32 1}
!16 = !{ptr @__UNIQUE_ID_file465, !17, !"__UNIQUE_ID_file465", i1 false, i1 false}
!17 = !{!"../net/phonet/af_phonet.c", i32 539, i32 1}
!18 = !{ptr @__UNIQUE_ID_license466, !17, !"__UNIQUE_ID_license466", i1 false, i1 false}
!19 = !{ptr @__UNIQUE_ID_alias467, !20, !"__UNIQUE_ID_alias467", i1 false, i1 false}
!20 = !{!"../net/phonet/af_phonet.c", i32 540, i32 1}
!21 = !{ptr @proto_tab, !22, !"proto_tab", i1 false, i1 false}
!22 = !{!"../net/phonet/af_phonet.c", i32 25, i32 38}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/phonet/af_phonet.c", i32 167, i32 2}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/phonet/af_phonet.c", i32 456, i32 8}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @proto_tab_lock, !26, !"proto_tab_lock", i1 false, i1 false}
!29 = !{ptr @phonet_packet_type, !30, !"phonet_packet_type", i1 false, i1 false}
!30 = !{!"../net/phonet/af_phonet.c", i32 451, i32 27}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/phonet/af_phonet.c", i32 419, i32 4}
!33 = !{ptr @.str.4, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @phonet_rcv.descriptor, !32, !"descriptor", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/phonet/af_phonet.c", i32 427, i32 4}
!38 = !{ptr @phonet_rcv.descriptor.6, !37, !"descriptor", i1 false, i1 false}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/skbuff.h", i32 1810, i32 2}
!41 = distinct !{null, !42, !"data", i1 false, i1 false}
!42 = !{!"../net/phonet/af_phonet.c", i32 339, i32 18}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/phonet/af_phonet.c", i32 505, i32 3}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @phonet_init._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @phonet_init._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @phonet_proto_family, !49, !"phonet_proto_family", i1 false, i1 false}
!49 = !{!"../net/phonet/af_phonet.c", i32 110, i32 38}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/phonet/af_phonet.c", i32 77, i32 6}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/phonet/af_phonet.c", i32 35, i32 7}
!54 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!55 = distinct !{null, !56, !"__warned", i1 false, i1 false}
!56 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!57 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!61 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{i64 2148309790}
!73 = !{i64 2148224254, i64 2148224286, i64 2148224315, i64 2148224349, i64 2148224380, i64 2148224403}
!74 = !{!"branch_weights", i32 2000, i32 1}
!75 = !{i64 2149316238}
!76 = !{i64 612740, i64 612801}
!77 = !{i64 615472}
!78 = !{!"branch_weights", i32 1, i32 2000}
!79 = !{i64 615757}
!80 = !{i64 2155048984, i64 2155049472, i64 2155049021, i64 2155049077, i64 2155049111, i64 2155049135, i64 2155049176, i64 2155049197, i64 2155049225, i64 2155049259}
!81 = !{i64 2156851866}
!82 = !{i64 2156856435, i64 2156856922, i64 2156856472, i64 2156856528, i64 2156856562, i64 2156856586, i64 2156856627, i64 2156856648, i64 2156856676, i64 2156856710}
!83 = !{i64 2148702074, i64 2148702079, i64 2148702092, i64 2148702136, i64 2148702170, i64 2148702191}
!84 = !{i64 2155030966, i64 2155031454, i64 2155031003, i64 2155031059, i64 2155031093, i64 2155031117, i64 2155031158, i64 2155031179, i64 2155031207, i64 2155031241}
!85 = !{i64 2149366728}
!86 = !{i64 2149366994}
