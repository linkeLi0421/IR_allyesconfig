; ModuleID = '/llk/IR_all_yes/drivers/isdn/mISDN/socket.c_pt.bc'
source_filename = "../drivers/isdn/mISDN/socket.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_proto_family = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.126, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.126 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.proto_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mISDN_sock_list = type { %struct.hlist_head, %struct.rwlock_t }
%struct.hlist_head = type { ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.127, [0 x i32], %union.anon.128, i16, i16, %union.anon.129, %struct.refcount_struct, [0 x i32], %union.anon.130 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { %struct.hlist_node }
%union.anon.129 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.130 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.131, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.132, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.133, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.131 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.132 = type { ptr }
%union.anon.133 = type { ptr }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.mISDN_sock = type { %struct.sock, %struct.mISDNchannel, i32, ptr }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.sockaddr_mISDN = type { i16, i8, i8, i8, i8 }
%struct.mISDNversion = type { i8, i8, i16 }
%struct.mISDN_devinfo = type { i32, i32, i32, i32, [16 x i8], i32, [20 x i8] }
%struct.mISDN_devrename = type { i32, [20 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.mISDNdevice = type { %struct.mISDNchannel, i32, i32, i32, i32, [16 x i8], %struct.list_head, ptr, %struct.device }
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
%struct.mISDN_ctrl_req = type { i32, i32, i32, i32 }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.81, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.20, %union.anon.79 }
%union.anon.20 = type { ptr }
%union.anon.79 = type { i64 }
%union.anon.81 = type { ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.109, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.109 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.__kernel_old_timeval = type { i32, i32 }

@debug = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mISDN_sock_family_ops = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 34, ptr @mISDN_sock_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@misdn_sock_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\013%s: error(%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"misdn_sock_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/isdn/mISDN/socket.c\00", [36 x i8] zeroinitializer }, align 32
@misdn_sock_init._entry_ptr = internal global ptr @misdn_sock_init._entry, section ".printk_index", align 4
@mISDN_proto = internal global { %struct.proto, [36 x i8] } { %struct.proto { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i8 0, ptr null, i32 1016, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, %union.anon.126 zeroinitializer, ptr null, [32 x i8] c"misdn\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", %struct.list_head zeroinitializer, ptr null }, [36 x i8] zeroinitializer }, align 32
@base_sock_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 34, ptr null, ptr @base_sock_release, ptr @base_sock_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @sock_no_getname, ptr null, ptr @base_sock_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr null, ptr null, ptr null, ptr @sock_no_sendmsg, ptr @sock_no_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@base_sockets = internal global { %struct.mISDN_sock_list, [48 x i8] } { %struct.mISDN_sock_list { %struct.hlist_head zeroinitializer, %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } }, [48 x i8] zeroinitializer }, align 32
@base_sock_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s(%p) sk=%p\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"base_sock_release\00", [46 x i8] zeroinitializer }, align 32
@base_sock_release._entry_ptr = internal global ptr @base_sock_release._entry, section ".printk_index", align 4
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"base_sockets.lock\00", [46 x i8] zeroinitializer }, align 32
@data_sock_ops = internal constant { %struct.proto_ops, [52 x i8] } { %struct.proto_ops { i32 34, ptr null, ptr @data_sock_release, ptr @data_sock_bind, ptr @sock_no_connect, ptr @sock_no_socketpair, ptr @sock_no_accept, ptr @data_sock_getname, ptr @datagram_poll, ptr @data_sock_ioctl, ptr null, ptr @sock_no_listen, ptr @sock_no_shutdown, ptr @data_sock_setsockopt, ptr @data_sock_getsockopt, ptr null, ptr @mISDN_sock_sendmsg, ptr @mISDN_sock_recvmsg, ptr @sock_no_mmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@data_sockets = internal global { %struct.mISDN_sock_list, [48 x i8] } { %struct.mISDN_sock_list { %struct.hlist_head zeroinitializer, %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 3, i8 0, i32 0, i32 0 } } }, [48 x i8] zeroinitializer }, align 32
@data_sock_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.10, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"data_sock_release\00", [46 x i8] zeroinitializer }, align 32
@data_sock_release._entry_ptr = internal global ptr @data_sock_release._entry, section ".printk_index", align 4
@data_sock_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.11, ptr @.str.2, i32 473, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"data_sock_bind\00", [17 x i8] zeroinitializer }, align 32
@data_sock_bind._entry_ptr = internal global ptr @data_sock_bind._entry, section ".printk_index", align 4
@mISDN_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017%s len %d %p\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mISDN_send\00", [21 x i8] zeroinitializer }, align 32
@mISDN_send._entry_ptr = internal global ptr @mISDN_send._entry, section ".printk_index", align 4
@mISDN_send._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.2, i32 74, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\014%s: error %d\0A\00", [16 x i8] zeroinitializer }, align 32
@mISDN_send._entry_ptr.16 = internal global ptr @mISDN_send._entry.14, section ".printk_index", align 4
@mISDN_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 85, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\017%s(%p, %x, %p)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mISDN_ctrl\00", [21 x i8] zeroinitializer }, align 32
@mISDN_ctrl._entry_ptr = internal global ptr @mISDN_ctrl._entry, section ".printk_index", align 4
@data_sock_setsockopt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s(%p, %d, %x, optval, %d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"data_sock_setsockopt\00", [43 x i8] zeroinitializer }, align 32
@data_sock_setsockopt._entry_ptr = internal global ptr @data_sock_setsockopt._entry, section ".printk_index", align 4
@mISDN_sock_sendmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 176, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: len %d flags %x ch %d proto %x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mISDN_sock_sendmsg\00", [45 x i8] zeroinitializer }, align 32
@mISDN_sock_sendmsg._entry_ptr = internal global ptr @mISDN_sock_sendmsg._entry, section ".printk_index", align 4
@mISDN_sock_sendmsg._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 216, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\017%s: ID:%x\0A\00", [19 x i8] zeroinitializer }, align 32
@mISDN_sock_sendmsg._entry_ptr.25 = internal global ptr @mISDN_sock_sendmsg._entry.23, section ".printk_index", align 4
@mISDN_sock_recvmsg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: len %d, flags %x ch.nr %d, proto %x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mISDN_sock_recvmsg\00", [45 x i8] zeroinitializer }, align 32
@mISDN_sock_recvmsg._entry_ptr = internal global ptr @mISDN_sock_recvmsg._entry, section ".printk_index", align 4
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"data_sockets.lock\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 16, i64 17, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 2147764546, i64 2147764547, i64 2147764548, i64 2149075271]
@__sancov_gen_cov_switch_values.30 = internal global [14 x i64] [i64 12, i64 16, i64 1, i64 2, i64 3, i64 4, i64 16, i64 17, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.31 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 3, i64 5, i64 16]
@__sancov_gen_cov_switch_values.32 = internal global [14 x i64] [i64 12, i64 16, i64 1, i64 2, i64 3, i64 4, i64 16, i64 17, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 2147764546, i64 2147764547, i64 2147764548]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 2147764549, i64 2147764550, i64 2147764552]
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 14, i32 15 }
@___asan_gen_.38 = private unnamed_addr constant [22 x i8] c"mISDN_sock_family_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 803, i32 38 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 817, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"mISDN_proto\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 16, i32 21 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"base_sock_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 730, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"base_sockets\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 28, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 622, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 729, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 230, i32 6 }
@___asan_gen_.78 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 214, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 174, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 29, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"data_sock_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 572, i32 31 }
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"data_sockets\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 24, i32 31 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 241, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 473, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 68, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 74, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 85, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 410, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 174, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 215, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 115, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [31 x i8] c"../drivers/isdn/mISDN/socket.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 25, i32 10 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @base_sock_release._entry, ptr @base_sock_release._entry_ptr, ptr @data_sock_bind._entry, ptr @data_sock_bind._entry_ptr, ptr @data_sock_release._entry, ptr @data_sock_release._entry_ptr, ptr @data_sock_setsockopt._entry, ptr @data_sock_setsockopt._entry_ptr, ptr @mISDN_ctrl._entry, ptr @mISDN_ctrl._entry_ptr, ptr @mISDN_send._entry, ptr @mISDN_send._entry.14, ptr @mISDN_send._entry_ptr, ptr @mISDN_send._entry_ptr.16, ptr @mISDN_sock_recvmsg._entry, ptr @mISDN_sock_recvmsg._entry_ptr, ptr @mISDN_sock_sendmsg._entry, ptr @mISDN_sock_sendmsg._entry.23, ptr @mISDN_sock_sendmsg._entry_ptr, ptr @mISDN_sock_sendmsg._entry_ptr.25, ptr @misdn_sock_init._entry, ptr @misdn_sock_init._entry_ptr, ptr @debug, ptr @mISDN_sock_family_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @mISDN_proto, ptr @base_sock_ops, ptr @base_sockets, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @data_sock_ops, ptr @data_sockets, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_sock_family_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @misdn_sock_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_proto to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_sock_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_sockets to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_sock_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_sock_ops to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_sockets to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_sock_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_sock_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_send._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @data_sock_setsockopt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_sock_sendmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_sock_sendmsg._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mISDN_sock_recvmsg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @misdn_sock_init(ptr noundef %deb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store ptr %deb, ptr @debug, align 4
  %call = tail call i32 @sock_register(ptr noundef nonnull @mISDN_sock_family_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @misdn_sock_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @sock_unregister(i32 noundef 34) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mISDN_sock_create(ptr noundef %net, ptr noundef %sock, i32 noundef %proto, i32 noundef %kern) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %proto to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %proto, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.bb1_crit_edge
    i32 2, label %entry.sw.bb1_crit_edge35
    i32 3, label %entry.sw.bb1_crit_edge36
    i32 4, label %entry.sw.bb1_crit_edge37
    i32 16, label %entry.sw.bb1_crit_edge38
    i32 17, label %entry.sw.bb1_crit_edge39
    i32 33, label %entry.sw.bb1_crit_edge40
    i32 34, label %entry.sw.bb1_crit_edge41
    i32 35, label %entry.sw.bb1_crit_edge42
    i32 36, label %entry.sw.bb1_crit_edge43
    i32 37, label %entry.sw.bb1_crit_edge44
    i32 38, label %entry.sw.bb1_crit_edge45
  ]

entry.sw.bb1_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %type.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %2)
  %cmp.not.i = icmp eq i16 %2, 3
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %call.i = tail call zeroext i1 @capable(i32 noundef 13) #6
  br i1 %call.i, label %if.end3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  %call4.i = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 34, i32 noundef 3264, ptr noundef nonnull @mISDN_proto, i32 noundef %kern) #6
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.end3.i.cleanup_crit_edge, label %if.end6.i

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.i:                                        ; preds = %if.end3.i
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call4.i) #6
  %ops.i = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %3 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @base_sock_ops, ptr %ops.i, align 4
  %4 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %sock, align 128
  %5 = getelementptr inbounds %struct.sock_common, ptr %call4.i, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, -257
  store i32 %and.i.i.i, ptr %5, align 4
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %call4.i, i32 0, i32 46
  %8 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %sk_protocol.i, align 4
  %skc_state.i = getelementptr inbounds %struct.sock_common, ptr %call4.i, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 1, ptr %skc_state.i, align 2
  tail call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.mISDN_sock_list, ptr @base_sockets, i32 0, i32 1)) #6
  %skc_refcnt.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %call4.i, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i.i, i32 1, i32 3, i32 1) #6
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i.i, ptr %skc_refcnt.i.i.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i.i) #6, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.end6.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !90

if.end6.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.end6.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.sock_hold.exit.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !91

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.sock_hold.exit.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_hold.exit.i.i.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.end6.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.end6.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i.i, i32 noundef %.sink.i.i.i.i.i.i.i) #6
  br label %sock_hold.exit.i.i.i

sock_hold.exit.i.i.i:                             ; preds = %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.sock_hold.exit.i.i.i_crit_edge
  %12 = getelementptr inbounds %struct.sock_common, ptr %call4.i, i32 0, i32 15
  %13 = load ptr, ptr @base_sockets, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %12, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i.i.i, label %sock_hold.exit.i.i.i.mISDN_sock_link.exit.i_crit_edge, label %do.body12.i.i.i.i.i

sock_hold.exit.i.i.i.mISDN_sock_link.exit.i_crit_edge: ; preds = %sock_hold.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mISDN_sock_link.exit.i

do.body12.i.i.i.i.i:                              ; preds = %sock_hold.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %12, ptr %pprev.i.i.i.i.i, align 4
  br label %mISDN_sock_link.exit.i

mISDN_sock_link.exit.i:                           ; preds = %do.body12.i.i.i.i.i, %sock_hold.exit.i.i.i.mISDN_sock_link.exit.i_crit_edge
  store volatile ptr %12, ptr @base_sockets, align 4
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge35, %entry.sw.bb1_crit_edge36, %entry.sw.bb1_crit_edge37, %entry.sw.bb1_crit_edge38, %entry.sw.bb1_crit_edge39, %entry.sw.bb1_crit_edge40, %entry.sw.bb1_crit_edge41, %entry.sw.bb1_crit_edge42, %entry.sw.bb1_crit_edge43, %entry.sw.bb1_crit_edge44, %entry.sw.bb1_crit_edge45
  %type.i9 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 1
  %16 = ptrtoint ptr %type.i9 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %type.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %17)
  %cmp.not.i10 = icmp eq i16 %17, 2
  br i1 %cmp.not.i10, label %if.end.i13, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i13:                                       ; preds = %sw.bb1
  %call.i11 = tail call ptr @sk_alloc(ptr noundef %net, i32 noundef 34, i32 noundef 3264, ptr noundef nonnull @mISDN_proto, i32 noundef %kern) #6
  %tobool.not.i12 = icmp eq ptr %call.i11, null
  br i1 %tobool.not.i12, label %if.end.i13.cleanup_crit_edge, label %if.end3.i22

if.end.i13.cleanup_crit_edge:                     ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3.i22:                                      ; preds = %if.end.i13
  tail call void @sock_init_data(ptr noundef %sock, ptr noundef nonnull %call.i11) #6
  %ops.i14 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 5
  %18 = ptrtoint ptr %ops.i14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @data_sock_ops, ptr %ops.i14, align 4
  %19 = ptrtoint ptr %sock to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %sock, align 128
  %20 = getelementptr inbounds %struct.sock_common, ptr %call.i11, i32 0, i32 13
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %and.i.i.i15 = and i32 %22, -257
  store i32 %and.i.i.i15, ptr %20, align 4
  %conv4.i = trunc i32 %proto to i16
  %sk_protocol.i16 = getelementptr inbounds %struct.sock, ptr %call.i11, i32 0, i32 46
  %23 = ptrtoint ptr %sk_protocol.i16 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv4.i, ptr %sk_protocol.i16, align 4
  %skc_state.i17 = getelementptr inbounds %struct.sock_common, ptr %call.i11, i32 0, i32 4
  %24 = ptrtoint ptr %skc_state.i17 to i32
  call void @__asan_store1_noabort(i32 %24)
  store volatile i8 1, ptr %skc_state.i17, align 2
  tail call void @_raw_write_lock_bh(ptr noundef getelementptr inbounds (%struct.mISDN_sock_list, ptr @data_sockets, i32 0, i32 1)) #6
  %skc_refcnt.i.i.i.i18 = getelementptr inbounds %struct.sock_common, ptr %call.i11, i32 0, i32 19
  %call.i.i.i.i.i.i.i.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i.i.i18, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i.i.i18, i32 1, i32 3, i32 1) #6
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i.i.i18, ptr %skc_refcnt.i.i.i.i18, i32 1, ptr elementtype(i32) %skc_refcnt.i.i.i.i18) #6, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i.i20 = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i20)
  %tobool1.not.i.i.i.i.i.i.i21 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i20, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i21, label %if.end3.i22.if.end15.sink.split.i.i.i.i.i.i.i27_crit_edge, label %if.else.i.i.i.i.i.i.i25, !prof !90

if.end3.i22.if.end15.sink.split.i.i.i.i.i.i.i27_crit_edge: ; preds = %if.end3.i22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i.i27

if.else.i.i.i.i.i.i.i25:                          ; preds = %if.end3.i22
  %add.i.i.i.i.i.i.i23 = add i32 %asmresult.i.i.i.i.i.i.i.i.i20, 1
  %26 = or i32 %add.i.i.i.i.i.i.i23, %asmresult.i.i.i.i.i.i.i.i.i20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i.i.i.i.i24 = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i.i.i.i.i24, label %if.else.i.i.i.i.i.i.i25.sock_hold.exit.i.i.i29_crit_edge, label %if.else.i.i.i.i.i.i.i25.if.end15.sink.split.i.i.i.i.i.i.i27_crit_edge, !prof !91

if.else.i.i.i.i.i.i.i25.if.end15.sink.split.i.i.i.i.i.i.i27_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i.i.i27

if.else.i.i.i.i.i.i.i25.sock_hold.exit.i.i.i29_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_hold.exit.i.i.i29

if.end15.sink.split.i.i.i.i.i.i.i27:              ; preds = %if.else.i.i.i.i.i.i.i25.if.end15.sink.split.i.i.i.i.i.i.i27_crit_edge, %if.end3.i22.if.end15.sink.split.i.i.i.i.i.i.i27_crit_edge
  %.sink.i.i.i.i.i.i.i26 = phi i32 [ 2, %if.end3.i22.if.end15.sink.split.i.i.i.i.i.i.i27_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i25.if.end15.sink.split.i.i.i.i.i.i.i27_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i.i.i18, i32 noundef %.sink.i.i.i.i.i.i.i26) #6
  br label %sock_hold.exit.i.i.i29

sock_hold.exit.i.i.i29:                           ; preds = %if.end15.sink.split.i.i.i.i.i.i.i27, %if.else.i.i.i.i.i.i.i25.sock_hold.exit.i.i.i29_crit_edge
  %27 = getelementptr inbounds %struct.sock_common, ptr %call.i11, i32 0, i32 15
  %28 = load ptr, ptr @data_sockets, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %27, align 4
  %tobool.not.i.i.i.i.i28 = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i.i.i28, label %sock_hold.exit.i.i.i29.mISDN_sock_link.exit.i33_crit_edge, label %do.body12.i.i.i.i.i31

sock_hold.exit.i.i.i29.mISDN_sock_link.exit.i33_crit_edge: ; preds = %sock_hold.exit.i.i.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %mISDN_sock_link.exit.i33

do.body12.i.i.i.i.i31:                            ; preds = %sock_hold.exit.i.i.i29
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i.i.i.i30 = getelementptr inbounds %struct.hlist_node, ptr %28, i32 0, i32 1
  %30 = ptrtoint ptr %pprev.i.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %27, ptr %pprev.i.i.i.i.i30, align 4
  br label %mISDN_sock_link.exit.i33

mISDN_sock_link.exit.i33:                         ; preds = %do.body12.i.i.i.i.i31, %sock_hold.exit.i.i.i29.mISDN_sock_link.exit.i33_crit_edge
  store volatile ptr %27, ptr @data_sockets, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %mISDN_sock_link.exit.i33, %mISDN_sock_link.exit.i
  %call.i11.sink = phi ptr [ %call.i11, %mISDN_sock_link.exit.i33 ], [ %call4.i, %mISDN_sock_link.exit.i ]
  %data_sockets.sink = phi ptr [ @data_sockets, %mISDN_sock_link.exit.i33 ], [ @base_sockets, %mISDN_sock_link.exit.i ]
  %.sink = phi ptr [ getelementptr inbounds (%struct.mISDN_sock_list, ptr @data_sockets, i32 0, i32 1), %mISDN_sock_link.exit.i33 ], [ getelementptr inbounds (%struct.mISDN_sock_list, ptr @base_sockets, i32 0, i32 1), %mISDN_sock_link.exit.i ]
  %pprev34.i.i.i.i.i32 = getelementptr inbounds %struct.sock_common, ptr %call.i11.sink, i32 0, i32 15, i32 0, i32 1
  %31 = ptrtoint ptr %pprev34.i.i.i.i.i32 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %data_sockets.sink, ptr %pprev34.i.i.i.i.i32, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i13.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -93, %entry.cleanup_crit_edge ], [ -94, %sw.bb.cleanup_crit_edge ], [ -1, %if.end.i.cleanup_crit_edge ], [ -12, %if.end3.i.cleanup_crit_edge ], [ -94, %sw.bb1.cleanup_crit_edge ], [ -12, %if.end.i13.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sk_alloc(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_init_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mISDN_sock_link(ptr noundef %l, ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mISDN_sock_list, ptr %l, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #6
  %skc_refcnt.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i.i, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i.i, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i.i, ptr %skc_refcnt.i.i, i32 1, ptr elementtype(i32) %skc_refcnt.i.i) #6, !srcloc !89
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !90

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !91

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sock_hold.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i.i, i32 noundef %.sink.i.i.i.i.i) #6
  br label %sock_hold.exit.i

sock_hold.exit.i:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.sock_hold.exit.i_crit_edge
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = ptrtoint ptr %l to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %l, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %2, align 4
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %sock_hold.exit.i.sk_add_node.exit_crit_edge, label %do.body12.i.i.i

sock_hold.exit.i.sk_add_node.exit_crit_edge:      ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_add_node.exit

do.body12.i.i.i:                                  ; preds = %sock_hold.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %2, ptr %pprev.i.i.i, align 4
  br label %sk_add_node.exit

sk_add_node.exit:                                 ; preds = %do.body12.i.i.i, %sock_hold.exit.i.sk_add_node.exit_crit_edge
  %7 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %2, ptr %l, align 4
  %pprev34.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %8 = ptrtoint ptr %pprev34.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %l, ptr %pprev34.i.i.i, align 4
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @base_sock_release(ptr noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef %sock, ptr noundef %1) #9
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call fastcc void @mISDN_sock_unlink(ptr noundef nonnull @base_sockets, ptr noundef nonnull %1)
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #6
  %2 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %or.i.i.i = or i32 %4, 1
  store i32 %or.i.i.i, ptr %2, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %5 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sk_socket.i.i, align 8
  %6 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %6, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #6
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #6
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #6, !srcloc !93
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !91

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #6
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @sk_free(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @base_sock_bind(ptr nocapture noundef readonly %sock, ptr noundef readonly %addr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %addr_len)
  %cmp = icmp ult i32 %addr_len, 6
  %tobool.not = icmp eq ptr %addr, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %3)
  %cmp2.not = icmp eq i16 %3, 34
  br i1 %cmp2.not, label %if.end5, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #6
  %dev = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end8, label %if.end5.done_crit_edge

if.end5.done_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end8:                                          ; preds = %if.end5
  %dev9 = getelementptr inbounds %struct.sockaddr_mISDN, ptr %addr, i32 0, i32 1
  %6 = ptrtoint ptr %dev9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dev9, align 2
  %conv10 = zext i8 %7 to i32
  %call = tail call ptr @get_mdevice(i32 noundef %conv10) #6
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call, ptr %dev, align 8
  %tobool13.not = icmp eq ptr %call, null
  br i1 %tobool13.not, label %if.end8.done_crit_edge, label %if.end15

if.end8.done_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store volatile i8 2, ptr %skc_state, align 2
  br label %done

done:                                             ; preds = %if.end15, %if.end8.done_crit_edge, %if.end5.done_crit_edge
  %err.0 = phi i32 [ 0, %if.end15 ], [ -114, %if.end5.done_crit_edge ], [ -19, %if.end8.done_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %done, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %done ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_connect(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_socketpair(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_accept(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_getname(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @base_sock_ioctl(ptr nocapture noundef readnone %sock, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %ver = alloca %struct.mISDNversion, align 2
  %di = alloca %struct.mISDN_devinfo, align 4
  %dn = alloca %struct.mISDN_devrename, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver) #6
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 -2147202750, label %sw.bb
    i32 -2147202749, label %sw.bb1
    i32 -2147202748, label %sw.bb8
    i32 -2145892025, label %sw.bb43
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %1 = getelementptr inbounds %struct.mISDNversion, ptr %ver, i32 0, i32 2
  %2 = getelementptr inbounds %struct.mISDNversion, ptr %ver, i32 0, i32 1
  %3 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %ver, align 2
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %2, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 29, ptr %1, align 2
  %6 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #10, !srcloc !95
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.sw.epilog_crit_edge

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ver, i32 noundef 4) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %6, ptr noundef nonnull %ver, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @get_mdevice_count() #6
  %8 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 650) #6
  %9 = tail call i32 @llvm.read_register.i32(metadata !79) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !96
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %8, i32 %call2, i32 -1226833921) #6, !srcloc !99
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not = icmp eq i32 %12, 0
  %spec.select77 = select i1 %tobool5.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 654) #6
  %13 = inttoptr i32 %arg to ptr
  %14 = tail call i32 @llvm.read_register.i32(metadata !79) #6
  %and.i.i.i79 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i79 to ptr
  %cpu_domain.i.i80 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i80) #5, !srcloc !96
  %and.i81 = and i32 %16, -13
  %or.i82 = or i32 %and.i81, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i82) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %17 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %13, i32 -1226833921) #6, !srcloc !100
  %asmresult = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool19.not = icmp eq i32 %asmresult, 0
  br i1 %tobool19.not, label %if.end21, label %sw.bb8.sw.epilog_crit_edge

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end21:                                         ; preds = %sw.bb8
  %asmresult17 = extractvalue { i32, i32 } %17, 1
  %call22 = tail call ptr @get_mdevice(i32 noundef %asmresult17) #6
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.sw.epilog_crit_edge, label %if.then24

if.end21.sw.epilog_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then24:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %di) #6
  %18 = getelementptr inbounds i8, ptr %di, i32 36
  %19 = call ptr @memset(ptr %18, i32 0, i32 20)
  %id25 = getelementptr inbounds %struct.mISDNdevice, ptr %call22, i32 0, i32 1
  %20 = ptrtoint ptr %id25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id25, align 4
  %22 = ptrtoint ptr %di to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %di, align 4
  %Dprotocols = getelementptr inbounds %struct.mISDNdevice, ptr %call22, i32 0, i32 2
  %23 = ptrtoint ptr %Dprotocols to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %Dprotocols, align 8
  %Dprotocols27 = getelementptr inbounds %struct.mISDN_devinfo, ptr %di, i32 0, i32 1
  %25 = ptrtoint ptr %Dprotocols27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %Dprotocols27, align 4
  %Bprotocols = getelementptr inbounds %struct.mISDNdevice, ptr %call22, i32 0, i32 3
  %26 = ptrtoint ptr %Bprotocols to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %Bprotocols, align 4
  %call28 = tail call i32 @get_all_Bprotocols() #6
  %or = or i32 %call28, %27
  %Bprotocols29 = getelementptr inbounds %struct.mISDN_devinfo, ptr %di, i32 0, i32 2
  %28 = ptrtoint ptr %Bprotocols29 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or, ptr %Bprotocols29, align 4
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %call22, i32 0, i32 1
  %29 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %protocol, align 8
  %protocol30 = getelementptr inbounds %struct.mISDN_devinfo, ptr %di, i32 0, i32 3
  %31 = ptrtoint ptr %protocol30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %protocol30, align 4
  %channelmap = getelementptr inbounds %struct.mISDN_devinfo, ptr %di, i32 0, i32 4
  %channelmap31 = getelementptr inbounds %struct.mISDNdevice, ptr %call22, i32 0, i32 5
  %32 = call ptr @memcpy(ptr %channelmap, ptr %channelmap31, i32 16)
  %nrbchan = getelementptr inbounds %struct.mISDNdevice, ptr %call22, i32 0, i32 4
  %33 = ptrtoint ptr %nrbchan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nrbchan, align 8
  %nrbchan33 = getelementptr inbounds %struct.mISDN_devinfo, ptr %di, i32 0, i32 5
  %35 = ptrtoint ptr %nrbchan33 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %nrbchan33, align 4
  %name = getelementptr inbounds %struct.mISDN_devinfo, ptr %di, i32 0, i32 6
  %init_name.i = getelementptr inbounds %struct.mISDNdevice, ptr %call22, i32 0, i32 8, i32 3
  %36 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then24.dev_name.exit_crit_edge

if.then24.dev_name.exit_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  %dev35 = getelementptr inbounds %struct.mISDNdevice, ptr %call22, i32 0, i32 8
  %38 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev35, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then24.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %39, %if.end.i ], [ %37, %if.then24.dev_name.exit_crit_edge ]
  %call37 = call i32 @strscpy(ptr noundef %name, ptr noundef %retval.0.i, i32 noundef 20) #6
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #6
  %call.i.i87 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i87, label %dev_name.exit.copy_to_user.exit95.thread_crit_edge, label %if.end.i.i90

dev_name.exit.copy_to_user.exit95.thread_crit_edge: ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit95.thread

if.end.i.i90:                                     ; preds = %dev_name.exit
  %40 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %13, i32 56, i32 -1226833920) #10, !srcloc !95
  %asmresult.i.i88 = extractvalue { i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i88)
  %cmp.i6.i89 = icmp eq i32 %asmresult.i.i88, 0
  br i1 %cmp.i6.i89, label %copy_to_user.exit95, label %if.end.i.i90.copy_to_user.exit95.thread_crit_edge

if.end.i.i90.copy_to_user.exit95.thread_crit_edge: ; preds = %if.end.i.i90
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit95.thread

copy_to_user.exit95:                              ; preds = %if.end.i.i90
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i91 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %di, i32 noundef 56) #6
  %call.i12.i.i92 = call i32 @arm_copy_to_user(ptr noundef %13, ptr noundef nonnull %di, i32 noundef 56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i92)
  %tobool39.not = icmp eq i32 %call.i12.i.i92, 0
  %spec.select115 = select i1 %tobool39.not, i32 0, i32 -14
  br label %copy_to_user.exit95.thread

copy_to_user.exit95.thread:                       ; preds = %copy_to_user.exit95, %if.end.i.i90.copy_to_user.exit95.thread_crit_edge, %dev_name.exit.copy_to_user.exit95.thread_crit_edge
  %41 = phi i32 [ -14, %dev_name.exit.copy_to_user.exit95.thread_crit_edge ], [ -14, %if.end.i.i90.copy_to_user.exit95.thread_crit_edge ], [ %spec.select115, %copy_to_user.exit95 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %di) #6
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %dn) #6
  %42 = getelementptr inbounds %struct.mISDN_devrename, ptr %dn, i32 0, i32 1
  %43 = getelementptr inbounds %struct.mISDN_devrename, ptr %dn, i32 0, i32 1, i32 19
  %44 = inttoptr i32 %arg to ptr
  %45 = call ptr @memset(ptr %dn, i32 255, i32 24)
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #6
  %call.i.i100 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i100, label %sw.bb43.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

sw.bb43.if.then11.i.i_crit_edge:                  ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb43
  %46 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %44, i32 24, i32 -1226833920) #10, !srcloc !101
  %asmresult.i.i101 = extractvalue { i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i101)
  %cmp.i6.i102 = icmp eq i32 %asmresult.i.i101, 0
  br i1 %cmp.i6.i102, label %if.end.i.i104, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !91

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.end.i.i104:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i103 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %dn, i32 noundef 24) #6
  %47 = call i32 @llvm.read_register.i32(metadata !79) #6
  %and.i.i.i.i.i.i = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 4
  %49 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !96
  %and.i.i.i.i = and i32 %49, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #6, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %dn, ptr noundef %44, i32 noundef 24) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %49) #6, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end47, label %if.end.i.i104.if.then11.i.i_crit_edge, !prof !91

if.end.i.i104.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i104.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %sw.bb43.if.then11.i.i_crit_edge
  %res.0.i.i112 = phi i32 [ %call1.i.i.i, %if.end.i.i104.if.then11.i.i_crit_edge ], [ 24, %sw.bb43.if.then11.i.i_crit_edge ], [ 24, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 24, %res.0.i.i112
  %add.ptr.i.i = getelementptr i8, ptr %dn, i32 %sub.i.i
  %50 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i112)
  br label %cleanup

if.end47:                                         ; preds = %if.end.i.i104
  %51 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %43, align 1
  %52 = ptrtoint ptr %dn to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dn, align 4
  %call50 = call ptr @get_mdevice(i32 noundef %53) #6
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.end47.cleanup_crit_edge, label %if.then52

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then52:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  %dev53 = getelementptr inbounds %struct.mISDNdevice, ptr %call50, i32 0, i32 8
  %call56 = call i32 @device_rename(ptr noundef %dev53, ptr noundef %42) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then52, %if.end47.cleanup_crit_edge, %if.then11.i.i
  %err.2 = phi i32 [ %call56, %if.then52 ], [ -19, %if.end47.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %dn) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup, %copy_to_user.exit95.thread, %if.end21.sw.epilog_crit_edge, %sw.bb8.sw.epilog_crit_edge, %sw.bb1, %copy_to_user.exit, %if.end.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.3 = phi i32 [ %err.2, %cleanup ], [ %41, %copy_to_user.exit95.thread ], [ %spec.select77, %sw.bb1 ], [ -14, %sw.bb8.sw.epilog_crit_edge ], [ -19, %if.end21.sw.epilog_crit_edge ], [ -22, %entry.sw.epilog_crit_edge ], [ -14, %sw.bb.sw.epilog_crit_edge ], [ -14, %if.end.i.i.sw.epilog_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver) #6
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_listen(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_shutdown(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_sendmsg(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_recvmsg(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_no_mmap(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mISDN_sock_unlink(ptr noundef %l, ptr noundef %sk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mISDN_sock_list, ptr %l, i32 0, i32 1
  tail call void @_raw_write_lock_bh(ptr noundef %lock) #6
  %pprev.i.i.i.i.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15, i32 0, i32 1
  %0 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprev.i.i.i.i.i, align 4
  %tobool.not.i.i.i.i.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i.i.not.i, label %entry.sk_del_node_init.exit_crit_edge, label %if.then.i.i

entry.sk_del_node_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_del_node_init.exit

if.then.i.i:                                      ; preds = %entry
  %2 = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 15
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %4, ptr %1, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then.i_crit_edge, label %do.body13.i.i.i.i

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

do.body13.i.i.i.i:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %pprev14.i.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %pprev14.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %1, ptr %pprev14.i.i.i.i, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %do.body13.i.i.i.i, %if.then.i.i.if.then.i_crit_edge
  %7 = ptrtoint ptr %pprev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.i.i.i.i, align 4
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 19
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  %8 = ptrtoint ptr %skc_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %skc_refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i = icmp eq i32 %9, 1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !90

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 729, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #6
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #6, !srcloc !93
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i.i, label %if.then3.i.i.i.i, label %if.end.i.sk_del_node_init.exit_crit_edge, !prof !90

if.end.i.sk_del_node_init.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sk_del_node_init.exit

if.then3.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  br label %sk_del_node_init.exit

sk_del_node_init.exit:                            ; preds = %if.then3.i.i.i.i, %if.end.i.sk_del_node_init.exit_crit_edge, %entry.sk_del_node_init.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mdevice(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_mdevice_count() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_all_Bprotocols() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_rename(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_sock_release(ptr noundef %sock) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = load ptr, ptr @debug, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, ptr noundef %sock, ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %5 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sk_protocol, align 4
  %7 = zext i16 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.30)
  switch i16 %6, label %if.end4.sw.epilog_crit_edge [
    i16 1, label %if.end4.sw.bb_crit_edge
    i16 2, label %if.end4.sw.bb_crit_edge24
    i16 3, label %if.end4.sw.bb_crit_edge25
    i16 4, label %if.end4.sw.bb_crit_edge26
    i16 16, label %if.end4.sw.bb9_crit_edge
    i16 17, label %if.end4.sw.bb9_crit_edge27
    i16 33, label %if.end4.sw.bb9_crit_edge28
    i16 34, label %if.end4.sw.bb9_crit_edge29
    i16 35, label %if.end4.sw.bb9_crit_edge30
    i16 36, label %if.end4.sw.bb9_crit_edge31
    i16 37, label %if.end4.sw.bb9_crit_edge32
    i16 38, label %if.end4.sw.bb9_crit_edge33
  ]

if.end4.sw.bb9_crit_edge33:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end4.sw.bb9_crit_edge32:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end4.sw.bb9_crit_edge31:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end4.sw.bb9_crit_edge30:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end4.sw.bb9_crit_edge29:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end4.sw.bb9_crit_edge28:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end4.sw.bb9_crit_edge27:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end4.sw.bb9_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb9

if.end4.sw.bb_crit_edge26:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end4.sw.bb_crit_edge25:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end4.sw.bb_crit_edge24:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end4.sw.bb_crit_edge:                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end4.sw.epilog_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end4.sw.bb_crit_edge, %if.end4.sw.bb_crit_edge24, %if.end4.sw.bb_crit_edge25, %if.end4.sw.bb_crit_edge26
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp = icmp eq i8 %9, 2
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %ch = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 1
  tail call void @delete_channel(ptr noundef %ch) #6
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mISDN_sock_unlink(ptr noundef nonnull @data_sockets, ptr noundef nonnull %1)
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end4.sw.bb9_crit_edge, %if.end4.sw.bb9_crit_edge27, %if.end4.sw.bb9_crit_edge28, %if.end4.sw.bb9_crit_edge29, %if.end4.sw.bb9_crit_edge30, %if.end4.sw.bb9_crit_edge31, %if.end4.sw.bb9_crit_edge32, %if.end4.sw.bb9_crit_edge33
  %ch10 = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 1
  tail call void @delete_channel(ptr noundef %ch10) #6
  tail call fastcc void @mISDN_sock_unlink(ptr noundef nonnull @data_sockets, ptr noundef nonnull %1)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %if.else, %if.then7, %if.end4.sw.epilog_crit_edge
  tail call void @lock_sock_nested(ptr noundef nonnull %1, i32 noundef 0) #6
  %sk_callback_lock.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 50
  tail call void @_raw_write_lock_bh(ptr noundef %sk_callback_lock.i) #6
  %10 = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %or.i.i.i = or i32 %12, 1
  store i32 %or.i.i.i, ptr %10, align 4
  %sk_socket.i.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 71
  %13 = ptrtoint ptr %sk_socket.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %sk_socket.i.i, align 8
  %14 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 17
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %14, align 8
  tail call void @_raw_write_unlock_bh(ptr noundef %sk_callback_lock.i) #6
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  tail call void @skb_queue_purge(ptr noundef %sk_receive_queue) #6
  tail call void @release_sock(ptr noundef nonnull %1) #6
  %skc_refcnt.i = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 19
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %skc_refcnt.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @llvm.prefetch.p0(ptr %skc_refcnt.i, i32 1, i32 3, i32 1) #6
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %skc_refcnt.i, ptr %skc_refcnt.i, i32 1, ptr elementtype(i32) %skc_refcnt.i) #6, !srcloc !93
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !91

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %skc_refcnt.i, i32 noundef 3) #6
  br label %cleanup

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @sk_free(ptr noundef nonnull %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_sock_bind(ptr noundef %sock, ptr noundef %addr, i32 noundef %addr_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = load ptr, ptr @debug, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %sock, ptr noundef %1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %addr_len)
  %cmp.not = icmp ne i32 %addr_len, 6
  %tobool4.not = icmp eq ptr %addr, null
  %or.cond = or i1 %tobool4.not, %cmp.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 34, i16 %6)
  %cmp5.not = icmp eq i16 %6, 34
  br i1 %cmp5.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #6
  %dev = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %if.end11, label %if.end8.done_crit_edge

if.end8.done_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end11:                                         ; preds = %if.end8
  %dev12 = getelementptr inbounds %struct.sockaddr_mISDN, ptr %addr, i32 0, i32 1
  %9 = ptrtoint ptr %dev12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dev12, align 2
  %conv13 = zext i8 %10 to i32
  %call14 = tail call ptr @get_mdevice(i32 noundef %conv13) #6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %dev, align 8
  %tobool17.not = icmp eq ptr %call14, null
  br i1 %tobool17.not, label %if.end11.done_crit_edge, label %if.end19

if.end11.done_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end19:                                         ; preds = %if.end11
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %12 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sk_protocol, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %13)
  %cmp21 = icmp ult i16 %13, 32
  br i1 %cmp21, label %if.then23, label %if.end19.if.end97_crit_edge

if.end19.if.end97_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then23:                                        ; preds = %if.end19
  tail call void @_raw_read_lock_bh(ptr noundef getelementptr inbounds (%struct.mISDN_sock_list, ptr @data_sockets, i32 0, i32 1)) #6
  %14 = load ptr, ptr @data_sockets, align 4
  %tobool25.not = icmp eq ptr %14, null
  %add.ptr = getelementptr i8, ptr %14, i32 -84
  %tobool27.not188191 = icmp eq ptr %add.ptr, null
  %tobool27.not188 = or i1 %tobool25.not, %tobool27.not188191
  br i1 %tobool27.not188, label %if.then23.for.end_crit_edge, label %if.then23.for.body_crit_edge

if.then23.for.body_crit_edge:                     ; preds = %if.then23
  br label %for.body

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then23.for.body_crit_edge
  %csk.0189 = phi ptr [ %add.ptr93, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.then23.for.body_crit_edge ]
  %cmp28 = icmp eq ptr %1, %csk.0189
  br i1 %cmp28, label %for.body.for.inc_crit_edge, label %if.end31

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end31:                                         ; preds = %for.body
  %dev32 = getelementptr inbounds %struct.mISDN_sock, ptr %csk.0189, i32 0, i32 3
  %15 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev32, align 8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %cmp34.not = icmp eq ptr %16, %18
  br i1 %cmp34.not, label %if.end37, label %if.end31.for.inc_crit_edge

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end37:                                         ; preds = %if.end31
  %sk_protocol38 = getelementptr inbounds %struct.sock, ptr %csk.0189, i32 0, i32 46
  %19 = ptrtoint ptr %sk_protocol38 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sk_protocol38, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31, i16 %20)
  %cmp40 = icmp ugt i16 %20, 31
  br i1 %cmp40, label %if.end37.for.inc_crit_edge, label %if.end43

if.end37.for.inc_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end43:                                         ; preds = %if.end37
  %switch.tableidx = add i16 %20, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %switch.tableidx)
  %21 = icmp ult i16 %switch.tableidx, 16
  %switch.downshift = lshr i16 -32747, %switch.tableidx
  %22 = and i16 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %switch.masked = icmp ne i16 %22, 0
  %23 = select i1 %21, i1 %switch.masked, i1 false
  %24 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sk_protocol, align 4
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.31)
  switch i16 %25, label %lor.end81 [
    i16 1, label %if.end43.lor.end81.thr_comm_crit_edge
    i16 3, label %if.end43.lor.end81.thr_comm_crit_edge193
    i16 5, label %if.end43.lor.end81.thr_comm_crit_edge194
    i16 16, label %if.end43.lor.end81.thr_comm_crit_edge195
  ]

if.end43.lor.end81.thr_comm_crit_edge195:         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end81.thr_comm

if.end43.lor.end81.thr_comm_crit_edge194:         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end81.thr_comm

if.end43.lor.end81.thr_comm_crit_edge193:         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end81.thr_comm

if.end43.lor.end81.thr_comm_crit_edge:            ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end81.thr_comm

lor.end81.thr_comm:                               ; preds = %if.end43.lor.end81.thr_comm_crit_edge, %if.end43.lor.end81.thr_comm_crit_edge193, %if.end43.lor.end81.thr_comm_crit_edge194, %if.end43.lor.end81.thr_comm_crit_edge195
  br i1 %23, label %lor.end81.thr_comm.for.inc_crit_edge, label %lor.end81.thr_comm.if.end86_crit_edge

lor.end81.thr_comm.if.end86_crit_edge:            ; preds = %lor.end81.thr_comm
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

lor.end81.thr_comm.for.inc_crit_edge:             ; preds = %lor.end81.thr_comm
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.end81:                                        ; preds = %if.end43
  br i1 %23, label %lor.end81.if.end86_crit_edge, label %lor.end81.for.inc_crit_edge

lor.end81.for.inc_crit_edge:                      ; preds = %lor.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.end81.if.end86_crit_edge:                     ; preds = %lor.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.end86:                                         ; preds = %lor.end81.if.end86_crit_edge, %lor.end81.thr_comm.if.end86_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef getelementptr inbounds (%struct.mISDN_sock_list, ptr @data_sockets, i32 0, i32 1)) #6
  br label %done

for.inc:                                          ; preds = %lor.end81.for.inc_crit_edge, %lor.end81.thr_comm.for.inc_crit_edge, %if.end37.for.inc_crit_edge, %if.end31.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %27 = getelementptr inbounds %struct.sock_common, ptr %csk.0189, i32 0, i32 15
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool89.not = icmp eq ptr %29, null
  %add.ptr93 = getelementptr i8, ptr %29, i32 -84
  %tobool27.not192 = icmp eq ptr %add.ptr93, null
  %tobool27.not = or i1 %tobool89.not, %tobool27.not192
  br i1 %tobool27.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then23.for.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef getelementptr inbounds (%struct.mISDN_sock_list, ptr @data_sockets, i32 0, i32 1)) #6
  %30 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %30)
  %.pr = load i16, ptr %sk_protocol, align 4
  br label %if.end97

if.end97:                                         ; preds = %for.end, %if.end19.if.end97_crit_edge
  %31 = phi i16 [ %.pr, %for.end ], [ %13, %if.end19.if.end97_crit_edge ]
  %ch = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 1
  %send = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 1, i32 7
  %32 = ptrtoint ptr %send to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @mISDN_send, ptr %send, align 8
  %ctrl = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 1, i32 9
  %33 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @mISDN_ctrl, ptr %ctrl, align 8
  %34 = zext i16 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.32)
  switch i16 %31, label %if.end97.done_crit_edge [
    i16 1, label %if.end97.sw.bb_crit_edge
    i16 2, label %if.end97.sw.bb_crit_edge196
    i16 3, label %if.end97.sw.bb_crit_edge197
    i16 4, label %if.end97.sw.bb_crit_edge198
    i16 16, label %if.end97.sw.bb109_crit_edge
    i16 17, label %if.end97.sw.bb109_crit_edge199
    i16 33, label %if.end97.sw.bb115_crit_edge
    i16 34, label %if.end97.sw.bb115_crit_edge200
    i16 35, label %if.end97.sw.bb115_crit_edge201
    i16 36, label %if.end97.sw.bb115_crit_edge202
    i16 37, label %if.end97.sw.bb115_crit_edge203
    i16 38, label %if.end97.sw.bb115_crit_edge204
  ]

if.end97.sw.bb115_crit_edge204:                   ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb115

if.end97.sw.bb115_crit_edge203:                   ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb115

if.end97.sw.bb115_crit_edge202:                   ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb115

if.end97.sw.bb115_crit_edge201:                   ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb115

if.end97.sw.bb115_crit_edge200:                   ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb115

if.end97.sw.bb115_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb115

if.end97.sw.bb109_crit_edge199:                   ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb109

if.end97.sw.bb109_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb109

if.end97.sw.bb_crit_edge198:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end97.sw.bb_crit_edge197:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end97.sw.bb_crit_edge196:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end97.sw.bb_crit_edge:                         ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end97.done_crit_edge:                          ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

sw.bb:                                            ; preds = %if.end97.sw.bb_crit_edge, %if.end97.sw.bb_crit_edge196, %if.end97.sw.bb_crit_edge197, %if.end97.sw.bb_crit_edge198
  tail call fastcc void @mISDN_sock_unlink(ptr noundef nonnull @data_sockets, ptr noundef %1)
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  %37 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sk_protocol, align 4
  %conv104 = zext i16 %38 to i32
  %call105 = tail call i32 @connect_layer1(ptr noundef %36, ptr noundef %ch, i32 noundef %conv104, ptr noundef nonnull %addr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %sw.bb.if.end123_crit_edge, label %if.then107

sw.bb.if.end123_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.then107:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @mISDN_sock_link(ptr noundef nonnull @data_sockets, ptr noundef %1)
  br label %done

sw.bb109:                                         ; preds = %if.end97.sw.bb109_crit_edge, %if.end97.sw.bb109_crit_edge199
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %conv113 = zext i16 %31 to i32
  %call114 = tail call i32 @create_l2entity(ptr noundef %40, ptr noundef %ch, i32 noundef %conv113, ptr noundef nonnull %addr) #6
  br label %sw.epilog

sw.bb115:                                         ; preds = %if.end97.sw.bb115_crit_edge, %if.end97.sw.bb115_crit_edge200, %if.end97.sw.bb115_crit_edge201, %if.end97.sw.bb115_crit_edge202, %if.end97.sw.bb115_crit_edge203, %if.end97.sw.bb115_crit_edge204
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %conv119 = zext i16 %31 to i32
  %call120 = tail call i32 @connect_Bstack(ptr noundef %42, ptr noundef %ch, i32 noundef %conv119, ptr noundef nonnull %addr) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb115, %sw.bb109
  %err.0 = phi i32 [ %call120, %sw.bb115 ], [ %call114, %sw.bb109 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool121.not = icmp eq i32 %err.0, 0
  br i1 %tobool121.not, label %sw.epilog.if.end123_crit_edge, label %sw.epilog.done_crit_edge

sw.epilog.done_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

sw.epilog.if.end123_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end123

if.end123:                                        ; preds = %sw.epilog.if.end123_crit_edge, %sw.bb.if.end123_crit_edge
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %43 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %43)
  store volatile i8 2, ptr %skc_state, align 2
  %44 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sk_protocol, align 4
  %conv126 = zext i16 %45 to i32
  %protocol = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %protocol to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv126, ptr %protocol, align 8
  br label %done

done:                                             ; preds = %if.end123, %sw.epilog.done_crit_edge, %if.then107, %if.end97.done_crit_edge, %if.end86, %if.end11.done_crit_edge, %if.end8.done_crit_edge
  %err.1 = phi i32 [ -16, %if.end86 ], [ %err.0, %sw.epilog.done_crit_edge ], [ 0, %if.end123 ], [ -114, %if.end8.done_crit_edge ], [ -19, %if.end11.done_crit_edge ], [ -93, %if.end97.done_crit_edge ], [ %call105, %if.then107 ]
  tail call void @release_sock(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %done, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %done ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_sock_getname(ptr nocapture noundef readonly %sock, ptr nocapture noundef writeonly %addr, i32 noundef %peer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %dev = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #6
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 34, ptr %addr, align 2
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %conv = trunc i32 %8 to i8
  %dev3 = getelementptr inbounds %struct.sockaddr_mISDN, ptr %addr, i32 0, i32 1
  %9 = ptrtoint ptr %dev3 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %dev3, align 2
  %nr = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr, align 4
  %conv4 = trunc i32 %11 to i8
  %channel = getelementptr inbounds %struct.sockaddr_mISDN, ptr %addr, i32 0, i32 2
  %12 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4, ptr %channel, align 1
  %addr6 = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %addr6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %addr6, align 4
  %conv7 = trunc i32 %14 to i8
  %sapi = getelementptr inbounds %struct.sockaddr_mISDN, ptr %addr, i32 0, i32 3
  %15 = ptrtoint ptr %sapi to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv7, ptr %sapi, align 2
  %16 = load i32, ptr %addr6, align 4
  %shr = lshr i32 %16, 8
  %conv11 = trunc i32 %shr to i8
  %tei = getelementptr inbounds %struct.sockaddr_mISDN, ptr %addr, i32 0, i32 4
  %17 = ptrtoint ptr %tei to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv11, ptr %tei, align 1
  tail call void @release_sock(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 6, %if.end ], [ -77, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @datagram_poll(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_sock_ioctl(ptr nocapture noundef readonly %sock, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %cq.i = alloca %struct.mISDN_ctrl_req, align 4
  %val.i = alloca [2 x i32], align 4
  %ver = alloca %struct.mISDNversion, align 2
  %di = alloca %struct.mISDN_devinfo, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver) #6
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %cmd, label %sw.default [
    i32 -2147202750, label %sw.bb
    i32 -2147202749, label %sw.bb2
    i32 -2147202748, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %3 = getelementptr inbounds %struct.mISDNversion, ptr %ver, i32 0, i32 2
  %4 = getelementptr inbounds %struct.mISDNversion, ptr %ver, i32 0, i32 1
  %5 = ptrtoint ptr %ver to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %ver, align 2
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %4, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 29, ptr %3, align 2
  %8 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #6
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i, label %sw.bb.sw.epilog_crit_edge, label %if.end.i.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 4, i32 -1226833920) #10, !srcloc !95
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.sw.epilog_crit_edge

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

copy_to_user.exit:                                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ver, i32 noundef 4) #6
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %8, ptr noundef nonnull %ver, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool.not = icmp eq i32 %call.i12.i.i, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @get_mdevice_count() #6
  %10 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 367) #6
  %11 = tail call i32 @llvm.read_register.i32(metadata !79) #6
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !96
  %and.i = and i32 %13, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %14 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %10, i32 %call3, i32 -1226833921) #6, !srcloc !102
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not = icmp eq i32 %14, 0
  %spec.select63 = select i1 %tobool6.not, i32 0, i32 -14
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 371) #6
  %15 = inttoptr i32 %arg to ptr
  %16 = tail call i32 @llvm.read_register.i32(metadata !79) #6
  %and.i.i.i65 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i65 to ptr
  %cpu_domain.i.i66 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 4
  %18 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i66) #5, !srcloc !96
  %and.i67 = and i32 %18, -13
  %or.i68 = or i32 %and.i67, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i68) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %19 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %15, i32 -1226833921) #6, !srcloc !103
  %asmresult = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %18) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool20.not = icmp eq i32 %asmresult, 0
  br i1 %tobool20.not, label %if.end22, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end22:                                         ; preds = %sw.bb9
  %asmresult18 = extractvalue { i32, i32 } %19, 1
  %call23 = tail call ptr @get_mdevice(i32 noundef %asmresult18) #6
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end22.sw.epilog_crit_edge, label %if.then25

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then25:                                        ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %di) #6
  %20 = getelementptr inbounds i8, ptr %di, i32 36
  %21 = call ptr @memset(ptr %20, i32 0, i32 20)
  %id26 = getelementptr inbounds %struct.mISDNdevice, ptr %call23, i32 0, i32 1
  %22 = ptrtoint ptr %id26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id26, align 4
  %24 = ptrtoint ptr %di to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %di, align 4
  %Dprotocols = getelementptr inbounds %struct.mISDNdevice, ptr %call23, i32 0, i32 2
  %25 = ptrtoint ptr %Dprotocols to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %Dprotocols, align 8
  %Dprotocols28 = getelementptr inbounds %struct.mISDN_devinfo, ptr %di, i32 0, i32 1
  %27 = ptrtoint ptr %Dprotocols28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %Dprotocols28, align 4
  %Bprotocols = getelementptr inbounds %struct.mISDNdevice, ptr %call23, i32 0, i32 3
  %28 = ptrtoint ptr %Bprotocols to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %Bprotocols, align 4
  %call29 = tail call i32 @get_all_Bprotocols() #6
  %or = or i32 %call29, %29
  %Bprotocols30 = getelementptr inbounds %struct.mISDN_devinfo, ptr %di, i32 0, i32 2
  %30 = ptrtoint ptr %Bprotocols30 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or, ptr %Bprotocols30, align 4
  %protocol = getelementptr inbounds %struct.mISDNchannel, ptr %call23, i32 0, i32 1
  %31 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %protocol, align 8
  %protocol31 = getelementptr inbounds %struct.mISDN_devinfo, ptr %di, i32 0, i32 3
  %33 = ptrtoint ptr %protocol31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %protocol31, align 4
  %channelmap = getelementptr inbounds %struct.mISDN_devinfo, ptr %di, i32 0, i32 4
  %channelmap32 = getelementptr inbounds %struct.mISDNdevice, ptr %call23, i32 0, i32 5
  %34 = call ptr @memcpy(ptr %channelmap, ptr %channelmap32, i32 16)
  %nrbchan = getelementptr inbounds %struct.mISDNdevice, ptr %call23, i32 0, i32 4
  %35 = ptrtoint ptr %nrbchan to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nrbchan, align 8
  %nrbchan34 = getelementptr inbounds %struct.mISDN_devinfo, ptr %di, i32 0, i32 5
  %37 = ptrtoint ptr %nrbchan34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %nrbchan34, align 4
  %name = getelementptr inbounds %struct.mISDN_devinfo, ptr %di, i32 0, i32 6
  %init_name.i = getelementptr inbounds %struct.mISDNdevice, ptr %call23, i32 0, i32 8, i32 3
  %38 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then25.dev_name.exit_crit_edge

if.then25.dev_name.exit_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %dev36 = getelementptr inbounds %struct.mISDNdevice, ptr %call23, i32 0, i32 8
  %40 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev36, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then25.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %41, %if.end.i ], [ %39, %if.then25.dev_name.exit_crit_edge ]
  %call38 = call i32 @strscpy(ptr noundef %name, ptr noundef %retval.0.i, i32 noundef 20) #6
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #6
  %call.i.i73 = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i73, label %dev_name.exit.copy_to_user.exit81.thread_crit_edge, label %if.end.i.i76

dev_name.exit.copy_to_user.exit81.thread_crit_edge: ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit81.thread

if.end.i.i76:                                     ; preds = %dev_name.exit
  %42 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 56, i32 -1226833920) #10, !srcloc !95
  %asmresult.i.i74 = extractvalue { i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i74)
  %cmp.i6.i75 = icmp eq i32 %asmresult.i.i74, 0
  br i1 %cmp.i6.i75, label %copy_to_user.exit81, label %if.end.i.i76.copy_to_user.exit81.thread_crit_edge

if.end.i.i76.copy_to_user.exit81.thread_crit_edge: ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_to_user.exit81.thread

copy_to_user.exit81:                              ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i77 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %di, i32 noundef 56) #6
  %call.i12.i.i78 = call i32 @arm_copy_to_user(ptr noundef %15, ptr noundef nonnull %di, i32 noundef 56) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i78)
  %tobool40.not = icmp eq i32 %call.i12.i.i78, 0
  %spec.select89 = select i1 %tobool40.not, i32 0, i32 -14
  br label %copy_to_user.exit81.thread

copy_to_user.exit81.thread:                       ; preds = %copy_to_user.exit81, %if.end.i.i76.copy_to_user.exit81.thread_crit_edge, %dev_name.exit.copy_to_user.exit81.thread_crit_edge
  %43 = phi i32 [ -14, %dev_name.exit.copy_to_user.exit81.thread_crit_edge ], [ -14, %if.end.i.i76.copy_to_user.exit81.thread_crit_edge ], [ %spec.select89, %copy_to_user.exit81 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %di) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %44 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %45)
  %cmp = icmp eq i8 %45, 2
  br i1 %cmp, label %if.then45, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then45:                                        ; preds = %sw.default
  %46 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cq.i) #6
  %47 = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %cq.i, i32 0, i32 1
  %48 = call ptr @memset(ptr %cq.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %val.i) #6
  %49 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %val.i, align 4, !annotation !104
  %50 = getelementptr inbounds [2 x i32], ptr %val.i, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %50, align 4, !annotation !104
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #6
  %dev.i = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 8
  %tobool.not.i82 = icmp eq ptr %53, null
  br i1 %tobool.not.i82, label %if.then45.data_sock_ioctl_bound.exit_crit_edge, label %if.end.i83

if.then45.data_sock_ioctl_bound.exit_crit_edge:   ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #8
  br label %data_sock_ioctl_bound.exit

if.end.i83:                                       ; preds = %if.then45
  %54 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %cmd, label %if.end.i83.data_sock_ioctl_bound.exit_crit_edge [
    i32 -2147202747, label %if.end8.i.i.i
    i32 -2147202746, label %sw.bb40.i
    i32 -2147202744, label %sw.bb60.i
  ]

if.end.i83.data_sock_ioctl_bound.exit_crit_edge:  ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #8
  br label %data_sock_ioctl_bound.exit

if.end8.i.i.i:                                    ; preds = %if.end.i83
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #6
  %call.i.i.i84 = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i.i84, label %if.end8.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end8.i.i.i.if.then11.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end8.i.i.i
  %55 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %46, i32 16, i32 -1226833920) #10
  %asmresult.i.i.i = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !91

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cq.i, i32 noundef 16) #6
  %56 = call i32 @llvm.read_register.i32(metadata !79) #6
  %and.i.i.i.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #5, !srcloc !96
  %and.i.i.i.i.i = and i32 %58, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #6, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cq.i, ptr noundef %46, i32 noundef 16) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #6, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end3.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !91

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end8.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i136.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %if.end8.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.0.i.i136.i
  %add.ptr.i.i.i = getelementptr i8, ptr %cq.i, i32 %sub.i.i.i
  %59 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i136.i)
  br label %data_sock_ioctl_bound.exit

if.end3.i:                                        ; preds = %if.end.i.i.i
  %sk_protocol.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %60 = ptrtoint ptr %sk_protocol.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %sk_protocol.i, align 4
  %62 = and i16 %61, -32
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %62)
  %cmp.i = icmp eq i16 %62, 32
  %63 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i, align 8
  br i1 %cmp.i, label %if.then5.i, label %if.end32.thread141.i

if.then5.i:                                       ; preds = %if.end3.i
  %bchannels.i = getelementptr inbounds %struct.mISDNdevice, ptr %64, i32 0, i32 6
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then5.i
  %bchan.0.in.i = phi ptr [ %bchannels.i, %if.then5.i ], [ %bchan.0.i, %for.body.i.for.cond.i_crit_edge ]
  %65 = ptrtoint ptr %bchan.0.in.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %bchan.0.i = load ptr, ptr %bchan.0.in.i, align 4
  %cmp15.not.i = icmp eq ptr %bchan.0.i, %bchannels.i
  br i1 %cmp15.not.i, label %for.cond.i.data_sock_ioctl_bound.exit_crit_edge, label %for.body.i

for.cond.i.data_sock_ioctl_bound.exit_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %data_sock_ioctl_bound.exit

for.body.i:                                       ; preds = %for.cond.i
  %nr.i = getelementptr inbounds %struct.mISDNchannel, ptr %bchan.0.i, i32 0, i32 2
  %66 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nr.i, align 4
  %68 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %47, align 4
  %cmp17.i = icmp eq i32 %67, %69
  br i1 %cmp17.i, label %if.end32.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

if.end32.i:                                       ; preds = %for.body.i
  %ctrl.i = getelementptr inbounds %struct.mISDNchannel, ptr %bchan.0.i, i32 0, i32 9
  %70 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ctrl.i, align 4
  %call20.i = call i32 %71(ptr noundef %bchan.0.i, i32 noundef 768, ptr noundef nonnull %cq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool33.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool33.not.i, label %if.end32.i.if.end8.i.i123.i_crit_edge, label %if.end32.i.data_sock_ioctl_bound.exit_crit_edge

if.end32.i.data_sock_ioctl_bound.exit_crit_edge:  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %data_sock_ioctl_bound.exit

if.end32.i.if.end8.i.i123.i_crit_edge:            ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i123.i

if.end32.thread141.i:                             ; preds = %if.end3.i
  %ctrl28.i = getelementptr inbounds %struct.mISDNchannel, ptr %64, i32 0, i32 9
  %72 = ptrtoint ptr %ctrl28.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ctrl28.i, align 8
  %call31.i = call i32 %73(ptr noundef %64, i32 noundef 768, ptr noundef nonnull %cq.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool33.not143.i = icmp eq i32 %call31.i, 0
  br i1 %tobool33.not143.i, label %if.end32.thread141.i.if.end8.i.i123.i_crit_edge, label %if.end32.thread141.i.data_sock_ioctl_bound.exit_crit_edge

if.end32.thread141.i.data_sock_ioctl_bound.exit_crit_edge: ; preds = %if.end32.thread141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %data_sock_ioctl_bound.exit

if.end32.thread141.i.if.end8.i.i123.i_crit_edge:  ; preds = %if.end32.thread141.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i123.i

if.end8.i.i123.i:                                 ; preds = %if.end32.thread141.i.if.end8.i.i123.i_crit_edge, %if.end32.i.if.end8.i.i123.i_crit_edge
  call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 174) #6
  %call.i.i124.i = call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i124.i, label %if.end8.i.i123.i.data_sock_ioctl_bound.exit_crit_edge, label %copy_to_user.exit.i

if.end8.i.i123.i.data_sock_ioctl_bound.exit_crit_edge: ; preds = %if.end8.i.i123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %data_sock_ioctl_bound.exit

copy_to_user.exit.i:                              ; preds = %if.end8.i.i123.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i128.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %cq.i, i32 noundef 16) #6
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %46, ptr noundef nonnull %cq.i, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool37.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool37.not.i, i32 0, i32 -14
  br label %data_sock_ioctl_bound.exit

sw.bb40.i:                                        ; preds = %if.end.i83
  %sk_protocol41.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %74 = ptrtoint ptr %sk_protocol41.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %sk_protocol41.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %75)
  %cmp43.not.i = icmp eq i16 %75, 17
  br i1 %cmp43.not.i, label %if.end46.i, label %sw.bb40.i.data_sock_ioctl_bound.exit_crit_edge

sw.bb40.i.data_sock_ioctl_bound.exit_crit_edge:   ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %data_sock_ioctl_bound.exit

if.end46.i:                                       ; preds = %sw.bb40.i
  %76 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -2147202746, ptr %val.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 319) #6
  %77 = tail call i32 @llvm.read_register.i32(metadata !79) #6
  %and.i.i.i.i = and i32 %77, -16384
  %78 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %78, i32 0, i32 4
  %79 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #5, !srcloc !96
  %and.i.i = and i32 %79, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %80 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %46, i32 -1226833921) #6, !srcloc !105
  %asmresult.i = extractvalue { i32, i32 } %80, 0
  %asmresult49.i = extractvalue { i32, i32 } %80, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %79) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %81 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %asmresult49.i, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool52.not.i = icmp eq i32 %asmresult.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %if.end46.i.data_sock_ioctl_bound.exit_crit_edge

if.end46.i.data_sock_ioctl_bound.exit_crit_edge:  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %data_sock_ioctl_bound.exit

if.end54.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev.i, align 8
  %teimgr.i = getelementptr inbounds %struct.mISDNdevice, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %teimgr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %teimgr.i, align 4
  %ctrl56.i = getelementptr inbounds %struct.mISDNchannel, ptr %85, i32 0, i32 9
  %86 = ptrtoint ptr %ctrl56.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ctrl56.i, align 4
  %call59.i = call i32 %87(ptr noundef %85, i32 noundef 768, ptr noundef nonnull %val.i) #6
  br label %data_sock_ioctl_bound.exit

sw.bb60.i:                                        ; preds = %if.end.i83
  %sk_protocol61.i = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %88 = ptrtoint ptr %sk_protocol61.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %sk_protocol61.i, align 4
  %90 = and i16 %89, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %90)
  %switch.i = icmp eq i16 %90, 16
  br i1 %switch.i, label %if.end70.i, label %sw.bb60.i.data_sock_ioctl_bound.exit_crit_edge

sw.bb60.i.data_sock_ioctl_bound.exit_crit_edge:   ; preds = %sw.bb60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %data_sock_ioctl_bound.exit

if.end70.i:                                       ; preds = %sw.bb60.i
  %91 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -2147202744, ptr %val.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 333) #6
  %92 = tail call i32 @llvm.read_register.i32(metadata !79) #6
  %and.i.i.i130.i = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i130.i to ptr
  %cpu_domain.i.i131.i = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 4
  %94 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i131.i) #5, !srcloc !96
  %and.i132.i = and i32 %94, -13
  %or.i133.i = or i32 %and.i132.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i133.i) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %95 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %46, i32 -1226833921) #6, !srcloc !106
  %asmresult81.i = extractvalue { i32, i32 } %95, 0
  %asmresult82.i = extractvalue { i32, i32 } %95, 1
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %94) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %96 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %asmresult82.i, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult81.i)
  %tobool85.not.i = icmp eq i32 %asmresult81.i, 0
  br i1 %tobool85.not.i, label %if.end87.i, label %if.end70.i.data_sock_ioctl_bound.exit_crit_edge

if.end70.i.data_sock_ioctl_bound.exit_crit_edge:  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %data_sock_ioctl_bound.exit

if.end87.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev.i, align 8
  %teimgr89.i = getelementptr inbounds %struct.mISDNdevice, ptr %98, i32 0, i32 7
  %99 = ptrtoint ptr %teimgr89.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %teimgr89.i, align 4
  %ctrl90.i = getelementptr inbounds %struct.mISDNchannel, ptr %100, i32 0, i32 9
  %101 = ptrtoint ptr %ctrl90.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ctrl90.i, align 4
  %call94.i = call i32 %102(ptr noundef %100, i32 noundef 768, ptr noundef nonnull %val.i) #6
  br label %data_sock_ioctl_bound.exit

data_sock_ioctl_bound.exit:                       ; preds = %if.end87.i, %if.end70.i.data_sock_ioctl_bound.exit_crit_edge, %sw.bb60.i.data_sock_ioctl_bound.exit_crit_edge, %if.end54.i, %if.end46.i.data_sock_ioctl_bound.exit_crit_edge, %sw.bb40.i.data_sock_ioctl_bound.exit_crit_edge, %copy_to_user.exit.i, %if.end8.i.i123.i.data_sock_ioctl_bound.exit_crit_edge, %if.end32.thread141.i.data_sock_ioctl_bound.exit_crit_edge, %if.end32.i.data_sock_ioctl_bound.exit_crit_edge, %for.cond.i.data_sock_ioctl_bound.exit_crit_edge, %if.then11.i.i.i, %if.end.i83.data_sock_ioctl_bound.exit_crit_edge, %if.then45.data_sock_ioctl_bound.exit_crit_edge
  %err.1.i = phi i32 [ %call94.i, %if.end87.i ], [ %call59.i, %if.end54.i ], [ %call20.i, %if.end32.i.data_sock_ioctl_bound.exit_crit_edge ], [ -19, %if.then45.data_sock_ioctl_bound.exit_crit_edge ], [ -22, %sw.bb40.i.data_sock_ioctl_bound.exit_crit_edge ], [ -14, %if.end46.i.data_sock_ioctl_bound.exit_crit_edge ], [ -22, %sw.bb60.i.data_sock_ioctl_bound.exit_crit_edge ], [ -14, %if.end70.i.data_sock_ioctl_bound.exit_crit_edge ], [ -22, %if.end.i83.data_sock_ioctl_bound.exit_crit_edge ], [ %call31.i, %if.end32.thread141.i.data_sock_ioctl_bound.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.end8.i.i123.i.data_sock_ioctl_bound.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ], [ -22, %for.cond.i.data_sock_ioctl_bound.exit_crit_edge ]
  call void @release_sock(ptr noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %val.i) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cq.i) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %data_sock_ioctl_bound.exit, %sw.default.sw.epilog_crit_edge, %copy_to_user.exit81.thread, %if.end22.sw.epilog_crit_edge, %sw.bb9.sw.epilog_crit_edge, %sw.bb2, %copy_to_user.exit, %if.end.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %err.1 = phi i32 [ %err.1.i, %data_sock_ioctl_bound.exit ], [ %43, %copy_to_user.exit81.thread ], [ %spec.select63, %sw.bb2 ], [ -14, %sw.bb9.sw.epilog_crit_edge ], [ -19, %if.end22.sw.epilog_crit_edge ], [ -107, %sw.default.sw.epilog_crit_edge ], [ -14, %sw.bb.sw.epilog_crit_edge ], [ -14, %if.end.i.i.sw.epilog_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver) #6
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_sock_setsockopt(ptr noundef %sock, i32 noundef %level, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %len) #0 align 64 {
entry:
  %opt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %opt) #6
  %2 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %opt, align 4
  %3 = load ptr, ptr @debug, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef %sock, i32 noundef %level, i32 noundef %optname, i32 noundef %len) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cond = icmp eq i32 %optname, 1
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %src.coerce.fca.0.extract.i.i = extractvalue [2 x i32] %optval.coerce, 0
  %6 = inttoptr i32 %src.coerce.fca.0.extract.i.i to ptr
  %sockptr.coerce.fca.1.extract.i.i.i = extractvalue [2 x i32] %optval.coerce, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sockptr.coerce.fca.1.extract.i.i.i)
  %bf.cast.i.i.i = icmp slt i32 %sockptr.coerce.fca.1.extract.i.i.i, 0
  br i1 %bf.cast.i.i.i, label %if.end.i.i, label %if.end8.i.i.i.i

if.end8.i.i.i.i:                                  ; preds = %sw.bb
  tail call void @__might_fault(ptr noundef nonnull @.str.8, i32 noundef 156) #6
  %call.i.i.i.i = tail call zeroext i1 @should_fail_usercopy() #6
  br i1 %call.i.i.i.i, label %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end8.i.i.i.i
  %7 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %6, i32 4, i32 -1226833920) #10, !srcloc !101
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.i6.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.i6.i.i.i, label %if.end.i.i.i.i, label %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !91

land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %land.lhs.true.i.i.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %opt, i32 noundef 4) #6
  %8 = call i32 @llvm.read_register.i32(metadata !79) #6
  %and.i.i.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i.i) #5, !srcloc !96
  %and.i.i.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i.i.i = or i32 %and.i.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i.i) #6, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %call1.i.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %opt, ptr noundef %6, i32 noundef 4) #6
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #6, !srcloc !97
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %tobool4.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i.i, label %if.end5thread-pre-split, label %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, !prof !91

if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge:       ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then11.i.i.i.i

if.then11.i.i.i.i:                                ; preds = %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge
  %res.0.i.i3.i.i = phi i32 [ %call1.i.i.i.i.i, %if.end.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %if.end8.i.i.i.i.if.then11.i.i.i.i_crit_edge ], [ 4, %land.lhs.true.i.i.i.i.if.then11.i.i.i.i_crit_edge ]
  %sub.i.i.i.i = sub i32 4, %res.0.i.i3.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %opt, i32 %sub.i.i.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i.i.i, i32 0, i32 %res.0.i.i3.i.i)
  br label %sw.epilog

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %6, align 1
  %14 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %opt, align 4
  br label %if.end5

if.end5thread-pre-split:                          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %opt to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %opt, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end5thread-pre-split, %if.end.i.i
  %16 = phi i32 [ %.pr, %if.end5thread-pre-split ], [ %13, %if.end.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool6.not = icmp eq i32 %16, 0
  %cmask8 = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %cmask8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmask8, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i32 %18, 1
  %19 = ptrtoint ptr %cmask8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or, ptr %cmask8, align 4
  br label %sw.epilog

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %and9 = and i32 %18, -2
  %20 = ptrtoint ptr %cmask8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and9, ptr %cmask8, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then7, %if.then11.i.i.i.i, %if.end.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %if.then7 ], [ 0, %if.else ], [ -92, %if.end.sw.epilog_crit_edge ], [ -14, %if.then11.i.i.i.i ]
  call void @release_sock(ptr noundef %1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %opt) #6
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @data_sock_getsockopt(ptr nocapture noundef readonly %sock, i32 noundef %level, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 441) #6
  %2 = tail call i32 @llvm.read_register.i32(metadata !79) #6
  %and.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !96
  %and.i = and i32 %4, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %5 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #6, !srcloc !107
  %asmresult = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %asmresult2 = extractvalue { i32, i32 } %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult2)
  %cmp.not = icmp eq i32 %asmresult2, 1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %optname)
  %cond = icmp eq i32 %optname, 1
  br i1 %cond, label %sw.bb, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %cmask = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cmask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmask, align 4
  %8 = trunc i32 %7 to i8
  %9 = and i8 %8, 1
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 454) #6
  %10 = tail call i32 @llvm.read_register.i32(metadata !79) #6
  %and.i.i.i23 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i23 to ptr
  %cpu_domain.i.i24 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i24) #5, !srcloc !96
  %and.i25 = and i32 %12, -13
  %or.i26 = or i32 %and.i25, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i26) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  %13 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optval, i8 %9, i32 -1226833921) #6, !srcloc !108
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #6, !srcloc !97
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool18.not = icmp eq i32 %13, 0
  %spec.select = select i1 %tobool18.not, i32 0, i32 -14
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -92, %if.end5.cleanup_crit_edge ], [ %spec.select, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mISDN_sock_sendmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  %2 = load ptr, ptr @debug, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %msg_flags = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %5 = ptrtoint ptr %msg_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %msg_flags, align 4
  %nr = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %9 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %sk_protocol, align 4
  %conv = zext i16 %10 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %len, i32 noundef %6, i32 noundef %8, i32 noundef %conv) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %msg_flags2 = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 6
  %11 = ptrtoint ptr %msg_flags2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %msg_flags2, align 4
  %and3 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %and8 = and i32 %12, -24641
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp ne i32 %and8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp = icmp ult i32 %len, 8
  %or.cond = or i1 %cmp, %tobool9.not
  br i1 %or.cond, label %if.end6.cleanup_crit_edge, label %if.end14

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %cmp16.not = icmp eq i8 %14, 2
  br i1 %cmp16.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #6
  %add.i = add i32 %len, 4
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end19.done_crit_edge, label %if.end23, !prof !90

if.end19.done_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end23:                                         ; preds = %if.end19
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 4
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %17 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %18, i32 4
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call24 = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %len) #6
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.i.i.i.i = icmp slt i32 %len, 0
  br i1 %cmp9.i.i.i.i, label %land.rhs16.i.i.i.i, label %if.then.i.i.i.i.i

land.rhs16.i.i.i.i:                               ; preds = %if.end23
  %.b71.i.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i.i, label %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge, label %if.then27.i.i.i.i, !prof !91

land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge: ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %copy_from_iter.exit.i.i

if.then27.i.i.i.i:                                ; preds = %land.rhs16.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 230, i32 noundef 9, ptr noundef null) #6
  br label %copy_from_iter.exit.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__check_object_size(ptr noundef %call24, i32 noundef %len, i1 noundef zeroext false) #6
  %call3.i.i.i = tail call i32 @_copy_from_iter(ptr noundef %call24, i32 noundef %len, ptr noundef %msg_iter.i) #6
  br label %copy_from_iter.exit.i.i

copy_from_iter.exit.i.i:                          ; preds = %if.then.i.i.i.i.i, %if.then27.i.i.i.i, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call3.i.i.i, %if.then.i.i.i.i.i ], [ 0, %if.then27.i.i.i.i ], [ 0, %land.rhs16.i.i.i.i.copy_from_iter.exit.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i, i32 %len)
  %cmp.i.i = icmp eq i32 %retval.0.i.i.i, %len
  br i1 %cmp.i.i, label %if.end28, label %memcpy_from_msg.exit, !prof !91

memcpy_from_msg.exit:                             ; preds = %copy_from_iter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iov_iter_revert(ptr noundef %msg_iter.i, i32 noundef %retval.0.i.i.i) #6
  br label %done

if.end28:                                         ; preds = %copy_from_iter.exit.i.i
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %22 = load i64, ptr %20, align 1
  %23 = ptrtoint ptr %cb to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %cb, align 8
  %call29 = tail call ptr @skb_pull(ptr noundef nonnull %call.i.i, i32 noundef 8) #6
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %24 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg_namelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %25)
  %cmp30 = icmp ugt i32 %25, 5
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msg, align 8
  %channel = getelementptr inbounds %struct.sockaddr_mISDN, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %channel, align 1
  %conv37 = zext i8 %29 to i32
  br label %if.end55.sink.split

if.else:                                          ; preds = %if.end28
  %sk_protocol40 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %30 = ptrtoint ptr %sk_protocol40 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %sk_protocol40, align 4
  %32 = and i16 %31, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %32)
  %switch = icmp eq i16 %32, 16
  br i1 %switch, label %if.then48, label %if.else.if.end55_crit_edge

if.else.if.end55_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then48:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %nr50 = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %nr50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr50, align 4
  br label %if.end55.sink.split

if.end55.sink.split:                              ; preds = %if.then48, %if.then32
  %.sink = phi i32 [ %34, %if.then48 ], [ %conv37, %if.then32 ]
  %id53 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %id53 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %.sink, ptr %id53, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.end55.sink.split, %if.else.if.end55_crit_edge
  %36 = load ptr, ptr @debug, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %and56 = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end55.if.end67_crit_edge, label %do.end61

if.end55.if.end67_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

do.end61:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %id65 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 4
  %39 = ptrtoint ptr %id65 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id65, align 4
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.22, i32 noundef %40) #9
  br label %if.end67

if.end67:                                         ; preds = %do.end61, %if.end55.if.end67_crit_edge
  %peer = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 1, i32 6
  %41 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %peer, align 4
  %tobool69.not = icmp eq ptr %42, null
  br i1 %tobool69.not, label %if.end67.done_crit_edge, label %if.end71

if.end67.done_crit_edge:                          ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end71:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %recv = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 1, i32 8
  %43 = ptrtoint ptr %recv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %recv, align 4
  %call75 = tail call i32 %44(ptr noundef nonnull %42, ptr noundef nonnull %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  %spec.select = select i1 %tobool76.not, i32 %len, i32 %call75
  %spec.select112 = select i1 %tobool76.not, ptr null, ptr %call.i.i
  br label %done

done:                                             ; preds = %if.end71, %if.end67.done_crit_edge, %memcpy_from_msg.exit, %if.end19.done_crit_edge
  %err.0 = phi i32 [ -19, %if.end67.done_crit_edge ], [ -14, %memcpy_from_msg.exit ], [ %spec.select, %if.end71 ], [ -12, %if.end19.done_crit_edge ]
  %skb.0 = phi ptr [ %call.i.i, %if.end67.done_crit_edge ], [ %call.i.i, %memcpy_from_msg.exit ], [ %spec.select112, %if.end71 ], [ null, %if.end19.done_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %skb.0, i32 noundef 0) #6
  tail call void @release_sock(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end14.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %done ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -77, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mISDN_sock_recvmsg(ptr nocapture noundef readonly %sock, ptr noundef %msg, i32 noundef %len, i32 noundef %flags) #0 align 64 {
entry:
  %tv.i = alloca %struct.__kernel_old_timeval, align 8
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #6
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %err, align 4, !annotation !104
  %3 = load ptr, ptr @debug, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nr = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr, align 4
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %8 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sk_protocol, align 4
  %conv = zext i16 %9 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %len, i32 noundef %flags, i32 noundef %7, i32 noundef %conv) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and2 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %11)
  %cmp = icmp eq i8 %11, 3
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %and10 = and i32 %flags, 64
  %call11 = call ptr @skb_recv_datagram(ptr noundef %1, i32 noundef %flags, i32 noundef %and10, ptr noundef nonnull %err) #6
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %err, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %14 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %msg, align 8
  %tobool15.not = icmp eq ptr %15, null
  br i1 %tobool15.not, label %if.end14.if.end62_crit_edge, label %if.then16

if.end14.if.end62_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end62

if.then16:                                        ; preds = %if.end14
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 34, ptr %15, align 2
  %dev = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %conv22 = trunc i32 %20 to i8
  %dev23 = getelementptr inbounds %struct.sockaddr_mISDN, ptr %15, i32 0, i32 1
  %21 = ptrtoint ptr %dev23 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv22, ptr %dev23, align 2
  %sk_protocol24 = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %22 = ptrtoint ptr %sk_protocol24 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sk_protocol24, align 4
  %24 = and i16 %23, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %24)
  %switch = icmp eq i16 %24, 16
  br i1 %switch, label %if.then32, label %if.else

if.then32:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %id33 = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 3, i32 4
  %25 = ptrtoint ptr %id33 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id33, align 4
  %shr = lshr i32 %26, 16
  %conv35 = trunc i32 %shr to i8
  %channel = getelementptr inbounds %struct.sockaddr_mISDN, ptr %15, i32 0, i32 2
  %27 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv35, ptr %channel, align 1
  %28 = load i32, ptr %id33, align 4
  %shr39 = lshr i32 %28, 8
  %conv41 = trunc i32 %shr39 to i8
  %tei = getelementptr inbounds %struct.sockaddr_mISDN, ptr %15, i32 0, i32 4
  %29 = ptrtoint ptr %tei to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv41, ptr %tei, align 1
  %30 = load i32, ptr %id33, align 4
  %conv46 = trunc i32 %30 to i8
  %sapi = getelementptr inbounds %struct.sockaddr_mISDN, ptr %15, i32 0, i32 3
  %31 = ptrtoint ptr %sapi to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv46, ptr %sapi, align 2
  br label %if.end61

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %nr48 = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %nr48 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr48, align 4
  %conv49 = trunc i32 %33 to i8
  %channel50 = getelementptr inbounds %struct.sockaddr_mISDN, ptr %15, i32 0, i32 2
  %34 = ptrtoint ptr %channel50 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv49, ptr %channel50, align 1
  %addr = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addr, align 4
  %conv53 = trunc i32 %36 to i8
  %sapi54 = getelementptr inbounds %struct.sockaddr_mISDN, ptr %15, i32 0, i32 3
  %37 = ptrtoint ptr %sapi54 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv53, ptr %sapi54, align 2
  %38 = load i32, ptr %addr, align 4
  %shr57 = lshr i32 %38, 8
  %conv59 = trunc i32 %shr57 to i8
  %tei60 = getelementptr inbounds %struct.sockaddr_mISDN, ptr %15, i32 0, i32 4
  %39 = ptrtoint ptr %tei60 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv59, ptr %tei60, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.else, %if.then32
  %msg_namelen = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 1
  %40 = ptrtoint ptr %msg_namelen to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 6, ptr %msg_namelen, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.end14.if.end62_crit_edge
  %len63 = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 6
  %41 = ptrtoint ptr %len63 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len63, align 4
  %add = add i32 %42, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len)
  %cmp64 = icmp ugt i32 %add, %len
  br i1 %cmp64, label %if.then66, label %if.end72

if.then66:                                        ; preds = %if.end62
  %and67 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.else70, label %if.then69

if.then69:                                        ; preds = %if.then66
  %users = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 21
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %users, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !92
  call void @llvm.prefetch.p0(ptr %users, i32 1, i32 3, i32 1) #6
  %43 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users, ptr %users, i32 1, ptr elementtype(i32) %users) #6, !srcloc !93
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp slt i32 %asmresult.i.i.i.i.i, 2
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.then69.cleanup_crit_edge, !prof !90

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3.i.i:                                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %users, i32 noundef 4) #6
  br label %cleanup

if.else70:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  %sk_receive_queue = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 8
  call void @skb_queue_head(ptr noundef %sk_receive_queue, ptr noundef nonnull %call11) #6
  br label %cleanup

if.end72:                                         ; preds = %if.end62
  %call73 = call ptr @skb_push(ptr noundef nonnull %call11, i32 noundef 8) #6
  %cb74 = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 3
  %44 = ptrtoint ptr %cb74 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %cb74, align 8
  %46 = ptrtoint ptr %call73 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 8)
  store i64 %45, ptr %call73, align 1
  %msg_iter.i = getelementptr inbounds %struct.msghdr, ptr %msg, i32 0, i32 2
  %call.i = call i32 @skb_copy_datagram_iter(ptr noundef nonnull %call11, i32 noundef 0, ptr noundef %msg_iter.i, i32 noundef %add) #6
  %47 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %call.i, ptr %err, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tv.i) #6
  %48 = ptrtoint ptr %tv.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %tv.i, align 8, !annotation !104
  %49 = getelementptr inbounds %struct.__kernel_old_timeval, ptr %tv.i, i32 0, i32 1
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %49, align 4, !annotation !104
  %cmask.i = getelementptr inbounds %struct.mISDN_sock, ptr %1, i32 0, i32 2
  %51 = ptrtoint ptr %cmask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cmask.i, align 4
  %and.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end72.mISDN_sock_cmsg.exit_crit_edge, label %if.then.i

if.end72.mISDN_sock_cmsg.exit_crit_edge:          ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %mISDN_sock_cmsg.exit

if.then.i:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %53 = getelementptr inbounds %struct.sk_buff, ptr %call11, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %53, align 8
  call void @ns_to_kernel_old_timeval(ptr nonnull sret(%struct.__kernel_old_timeval) align 4 %tv.i, i64 noundef %55) #6
  %call.i123 = call i32 @put_cmsg(ptr noundef %msg, i32 noundef 0, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tv.i) #6
  br label %mISDN_sock_cmsg.exit

mISDN_sock_cmsg.exit:                             ; preds = %if.then.i, %if.end72.mISDN_sock_cmsg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tv.i) #6
  call void @skb_free_datagram(ptr noundef %1, ptr noundef nonnull %call11) #6
  %56 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool77.not = icmp eq i32 %57, 0
  %spec.select = select i1 %tobool77.not, i32 %add, i32 %57
  br label %cleanup

cleanup:                                          ; preds = %mISDN_sock_cmsg.exit, %if.else70, %if.then3.i.i, %if.then69.cleanup_crit_edge, %if.then13, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %mISDN_sock_cmsg.exit ], [ %13, %if.then13 ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ -28, %if.else70 ], [ -28, %if.then69.cleanup_crit_edge ], [ -28, %if.then3.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @delete_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_purge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mISDN_send(ptr noundef %ch, ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %ch, i32 -960
  %0 = load ptr, ptr @debug, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %4, ptr noundef %skb) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %skc_state = getelementptr i8, ptr %ch, i32 -942
  %5 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load volatile i8, ptr %skc_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %6)
  %cmp = icmp eq i8 %6, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #6
  %7 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %call.i.i, ptr %7, align 8
  %call6 = tail call i32 @sock_queue_rcv_skb(ptr noundef %add.ptr, ptr noundef %skb) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %do.end11

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.13, i32 noundef %call6) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -49, %if.end.cleanup_crit_edge ], [ %call6, %do.end11 ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mISDN_ctrl(ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @debug, align 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %and = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef %ch, i32 noundef %cmd, ptr noundef %arg) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %cmd)
  %cond = icmp eq i32 %cmd, 512
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %skc_state = getelementptr i8, ptr %ch, i32 -942
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store volatile i8 3, ptr %skc_state, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %if.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @connect_layer1(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @create_l2entity(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @connect_Bstack(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_queue_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_recv_datagram(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_queue_head(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_free_datagram(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_datagram_iter(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @put_cmsg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ns_to_kernel_old_timeval(ptr sret(%struct.__kernel_old_timeval) align 4, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77}
!llvm.named.register.sp = !{!79}
!llvm.module.flags = !{!80, !81, !82, !83, !84, !85, !86, !87}
!llvm.ident = !{!88}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/isdn/mISDN/socket.c", i32 817, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @misdn_sock_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @misdn_sock_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @debug, !7, !"debug", i1 false, i1 false}
!7 = !{!"../drivers/isdn/mISDN/socket.c", i32 14, i32 15}
!8 = !{ptr @mISDN_sock_family_ops, !9, !"mISDN_sock_family_ops", i1 false, i1 false}
!9 = !{!"../drivers/isdn/mISDN/socket.c", i32 803, i32 38}
!10 = !{ptr @mISDN_proto, !11, !"mISDN_proto", i1 false, i1 false}
!11 = !{!"../drivers/isdn/mISDN/socket.c", i32 16, i32 21}
!12 = !{ptr @base_sock_ops, !13, !"base_sock_ops", i1 false, i1 false}
!13 = !{!"../drivers/isdn/mISDN/socket.c", i32 730, i32 31}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/isdn/mISDN/socket.c", i32 622, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @base_sock_release._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @base_sock_release._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/net/sock.h", i32 729, i32 3}
!21 = distinct !{null, !22, !"__already_done", i1 false, i1 false}
!22 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/isdn/mISDN/socket.c", i32 29, i32 10}
!30 = !{ptr @base_sockets, !31, !"base_sockets", i1 false, i1 false}
!31 = !{!"../drivers/isdn/mISDN/socket.c", i32 28, i32 31}
!32 = !{ptr @data_sock_ops, !33, !"data_sock_ops", i1 false, i1 false}
!33 = !{!"../drivers/isdn/mISDN/socket.c", i32 572, i32 31}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/isdn/mISDN/socket.c", i32 241, i32 3}
!36 = !{ptr @data_sock_release._entry, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @data_sock_release._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/isdn/mISDN/socket.c", i32 473, i32 3}
!40 = !{ptr @data_sock_bind._entry, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @data_sock_bind._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/isdn/mISDN/socket.c", i32 68, i32 3}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @mISDN_send._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @mISDN_send._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/isdn/mISDN/socket.c", i32 74, i32 3}
!49 = !{ptr @mISDN_send._entry.14, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @mISDN_send._entry_ptr.16, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/isdn/mISDN/socket.c", i32 85, i32 3}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mISDN_ctrl._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mISDN_ctrl._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/isdn/mISDN/socket.c", i32 410, i32 3}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @data_sock_setsockopt._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @data_sock_setsockopt._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/isdn/mISDN/socket.c", i32 174, i32 3}
!63 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @mISDN_sock_sendmsg._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @mISDN_sock_sendmsg._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/isdn/mISDN/socket.c", i32 215, i32 3}
!68 = !{ptr @mISDN_sock_sendmsg._entry.23, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @mISDN_sock_sendmsg._entry_ptr.25, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/isdn/mISDN/socket.c", i32 115, i32 3}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mISDN_sock_recvmsg._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @mISDN_sock_recvmsg._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/isdn/mISDN/socket.c", i32 25, i32 10}
!77 = !{ptr @data_sockets, !78, !"data_sockets", i1 false, i1 false}
!78 = !{!"../drivers/isdn/mISDN/socket.c", i32 24, i32 31}
!79 = !{!"sp"}
!80 = !{i32 1, !"wchar_size", i32 2}
!81 = !{i32 1, !"min_enum_size", i32 4}
!82 = !{i32 8, !"branch-target-enforcement", i32 0}
!83 = !{i32 8, !"sign-return-address", i32 0}
!84 = !{i32 8, !"sign-return-address-all", i32 0}
!85 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!86 = !{i32 7, !"uwtable", i32 1}
!87 = !{i32 7, !"frame-pointer", i32 2}
!88 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!89 = !{i64 2148279550, i64 2148279582, i64 2148279611, i64 2148279645, i64 2148279676, i64 2148279699}
!90 = !{!"branch_weights", i32 1, i32 2000}
!91 = !{!"branch_weights", i32 2000, i32 1}
!92 = !{i64 2148367551}
!93 = !{i64 2148282015, i64 2148282047, i64 2148282076, i64 2148282110, i64 2148282141, i64 2148282164}
!94 = !{i64 2149303831}
!95 = !{i64 2152398220, i64 2152398245}
!96 = !{i64 4893094}
!97 = !{i64 4893291}
!98 = !{i64 2152378524}
!99 = !{i64 2156954778, i64 2156955058, i64 2156955392, i64 2156955726}
!100 = !{i64 2156966999, i64 2156967279, i64 2156967613, i64 2156967947}
!101 = !{i64 2152397539, i64 2152397564}
!102 = !{i64 2156901185, i64 2156901465, i64 2156901799, i64 2156902133}
!103 = !{i64 2156913406, i64 2156913686, i64 2156914020, i64 2156914354}
!104 = !{!"auto-init"}
!105 = !{i64 2156877182, i64 2156877462, i64 2156877796, i64 2156878130}
!106 = !{i64 2156890188, i64 2156890468, i64 2156890802, i64 2156891136}
!107 = !{i64 2156927235, i64 2156927515, i64 2156927849, i64 2156928183}
!108 = !{i64 2156932833, i64 2156933113, i64 2156933447, i64 2156933781}
