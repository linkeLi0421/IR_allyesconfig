; ModuleID = '/llk/IR_all_yes/net/sunrpc/sysfs.c_pt.bc'
source_filename = "../net/sunrpc/sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.kobj_ns_type_operations = type { i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rpc_clnt = type { %struct.refcount_struct, i32, %struct.list_head, %struct.list_head, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i8, ptr, ptr, %struct.atomic_t, i32, [65 x i8], %struct.rpc_pipe_dir_head, ptr, %struct.rpc_rtt, %struct.rpc_timeout, ptr, ptr, ptr, ptr, %union.anon.150, ptr, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rpc_pipe_dir_head = type { %struct.list_head, ptr }
%struct.rpc_rtt = type { i32, [5 x i32], [5 x i32], [5 x i32] }
%struct.rpc_timeout = type { i32, i32, i32, i32, i8 }
%union.anon.150 = type { %struct.work_struct }
%struct.rpc_sysfs_client = type { %struct.kobject, ptr, ptr, ptr }
%struct.rpc_xprt_switch = type { %struct.spinlock, %struct.kref, i32, i32, i32, i32, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.rpc_xprt = type { %struct.kref, ptr, i32, ptr, %struct.__kernel_sockaddr_storage, i32, i32, i32, i32, i32, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.rpc_wait_queue, %struct.list_head, i32, i32, i32, i32, i8, %struct.atomic_t, i32, %struct.list_head, i32, i32, i32, %struct.work_struct, %struct.timer_list, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, i32, ptr, %struct.list_head, %struct.atomic_t, ptr, ptr, i32, i32, %struct.atomic_t, %struct.spinlock, %struct.list_head, %struct.rb_root, %struct.anon.149, ptr, ptr, [6 x ptr], ptr, %struct.callback_head, ptr, ptr, i8 }
%struct.__kernel_sockaddr_storage = type { %union.anon.147 }
%union.anon.147 = type { ptr, [124 x i8] }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.rb_root = type { ptr }
%struct.anon.149 = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.rpc_sysfs_xprt_switch = type { %struct.kobject, ptr, ptr, ptr }
%struct.rpc_sysfs_xprt = type { %struct.kobject, ptr, ptr }
%struct.xprt_class = type { %struct.list_head, i32, ptr, ptr, [32 x i8], [0 x ptr] }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.xprt_addr = type { ptr, %struct.callback_head }
%struct.sock_xprt = type { %struct.rpc_xprt, ptr, ptr, ptr, %struct.anon.151, %struct.anon.153, i32, %struct.delayed_work, %struct.work_struct, %struct.work_struct, %struct.mutex, %struct.__kernel_sockaddr_storage, i16, i32, i32, i32, %struct.rpc_timeout, ptr, ptr, ptr, ptr }
%struct.anon.151 = type { %struct.anon.152, i32, i32, i32 }
%struct.anon.152 = type { i32, i32, i32 }
%struct.anon.153 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sunrpc\00", [25 x i8] zeroinitializer }, align 32
@kernel_kobj = external dso_local local_unnamed_addr global ptr, align 4
@rpc_sunrpc_kset = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rpc-clients\00", [20 x i8] zeroinitializer }, align 32
@rpc_sunrpc_client_kobj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xprt-switches\00", [18 x i8] zeroinitializer }, align 32
@rpc_sunrpc_xprt_switch_kobj = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@rpc_sysfs_client_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014can't create link to %s in sysfs (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rpc_sysfs_client_setup\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/sunrpc/sysfs.c\00", [45 x i8] zeroinitializer }, align 32
@rpc_sysfs_client_setup._entry_ptr = internal global ptr @rpc_sysfs_client_setup._entry, section ".printk_index", align 4
@__const.rpc_sysfs_client_destroy.name = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@rpc_sysfs_object_type = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @rpc_sysfs_object_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr @rpc_sysfs_object_child_ns_type, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@kobj_sysfs_ops = external dso_local constant %struct.sysfs_ops, align 4
@net_ns_type_operations = external dso_local constant %struct.kobj_ns_type_operations, align 4
@rpc_sysfs_client_type = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @rpc_sysfs_client_release, ptr @kobj_sysfs_ops, ptr null, ptr null, ptr null, ptr @rpc_sysfs_client_namespace, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clnt-%d\00", [24 x i8] zeroinitializer }, align 32
@rpc_sysfs_xprt_switch_type = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @rpc_sysfs_xprt_switch_release, ptr @kobj_sysfs_ops, ptr null, ptr @rpc_sysfs_xprt_switch_groups, ptr null, ptr @rpc_sysfs_xprt_switch_namespace, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"switch-%d\00", [22 x i8] zeroinitializer }, align 32
@rpc_sysfs_xprt_switch_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rpc_sysfs_xprt_switch_group, ptr null], [24 x i8] zeroinitializer }, align 32
@rpc_sysfs_xprt_switch_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rpc_sysfs_xprt_switch_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rpc_sysfs_xprt_switch_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rpc_sysfs_xprt_switch_info, ptr null], [24 x i8] zeroinitializer }, align 32
@rpc_sysfs_xprt_switch_info = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpc_sysfs_xprt_switch_info_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xprt_switch_info\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"num_xprts=%u\0Anum_active=%u\0Anum_unique_destaddr=%u\0Aqueue_len=%ld\0A\00", [63 x i8] zeroinitializer }, align 32
@rpc_sysfs_xprt_type = internal global { %struct.kobj_type, [36 x i8] } { %struct.kobj_type { ptr @rpc_sysfs_xprt_release, ptr @kobj_sysfs_ops, ptr null, ptr @rpc_sysfs_xprt_groups, ptr null, ptr @rpc_sysfs_xprt_namespace, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xprt-%d-%s\00", [21 x i8] zeroinitializer }, align 32
@rpc_sysfs_xprt_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @rpc_sysfs_xprt_group, ptr null], [24 x i8] zeroinitializer }, align 32
@rpc_sysfs_xprt_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @rpc_sysfs_xprt_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@rpc_sysfs_xprt_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @rpc_sysfs_xprt_dstaddr, ptr @rpc_sysfs_xprt_srcaddr, ptr @rpc_sysfs_xprt_info, ptr @rpc_sysfs_xprt_change_state, ptr null], [44 x i8] zeroinitializer }, align 32
@rpc_sysfs_xprt_dstaddr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpc_sysfs_xprt_dstaddr_show, ptr @rpc_sysfs_xprt_dstaddr_store }, [36 x i8] zeroinitializer }, align 32
@rpc_sysfs_xprt_srcaddr = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpc_sysfs_xprt_srcaddr_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rpc_sysfs_xprt_info = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpc_sysfs_xprt_info_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@rpc_sysfs_xprt_change_state = internal global { %struct.kobj_attribute, [36 x i8] } { %struct.kobj_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @rpc_sysfs_xprt_state_show, ptr @rpc_sysfs_xprt_state_change }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dstaddr\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/wait_bit.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"srcaddr\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%pISc\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"xprt_info\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [211 x i8], [45 x i8] } { [211 x i8] c"last_used=%lu\0Acur_cong=%lu\0Acong_win=%lu\0Amax_num_slots=%u\0Amin_num_slots=%u\0Anum_reqs=%u\0Abinding_q_len=%u\0Asending_q_len=%u\0Apending_q_len=%u\0Abacklog_q_len=%u\0Amain_xprt=%d\0Asrc_port=%u\0Atasks_queuelen=%ld\0Adst_port=%s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xprt_state\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"state=CLOSED\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"state=%s %s %s %s %s %s %s %s %s %s %s %s\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LOCKED\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CONNECTED\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CONNECTING\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLOSE_WAIT\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"BOUND\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"BOUNDING\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLOSING\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CONGESTED\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CWND_WAIT\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WRITE_SPACE\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OFFLINE\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"REMOVE\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"offline\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"online\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"remove\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 256]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 353, i32 40 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"rpc_sunrpc_kset\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 25, i32 21 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 357, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant [23 x i8] c"rpc_sunrpc_client_kobj\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 26, i32 24 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 361, i32 26 }
@___asan_gen_.57 = private unnamed_addr constant [28 x i8] c"rpc_sunrpc_xprt_switch_kobj\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 26, i32 49 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 551, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant [22 x i8] c"rpc_sysfs_object_type\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 39, i32 25 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 55, i32 15 }
@___asan_gen_.78 = private unnamed_addr constant [22 x i8] c"rpc_sysfs_client_type\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 444, i32 25 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 482, i32 15 }
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"rpc_sysfs_xprt_switch_type\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 450, i32 25 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 503, i32 15 }
@___asan_gen_.90 = private unnamed_addr constant [29 x i8] c"rpc_sysfs_xprt_switch_groups\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [28 x i8] c"rpc_sysfs_xprt_switch_group\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 442, i32 1 }
@___asan_gen_.96 = private unnamed_addr constant [28 x i8] c"rpc_sysfs_xprt_switch_attrs\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 438, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"rpc_sysfs_xprt_switch_info\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 435, i32 30 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 436, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 217, i32 21 }
@___asan_gen_.108 = private unnamed_addr constant [20 x i8] c"rpc_sysfs_xprt_type\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 457, i32 25 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 522, i32 14 }
@___asan_gen_.114 = private unnamed_addr constant [22 x i8] c"rpc_sysfs_xprt_groups\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [21 x i8] c"rpc_sysfs_xprt_group\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 433, i32 1 }
@___asan_gen_.120 = private unnamed_addr constant [21 x i8] c"rpc_sysfs_xprt_attrs\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 426, i32 26 }
@___asan_gen_.123 = private unnamed_addr constant [23 x i8] c"rpc_sysfs_xprt_dstaddr\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 414, i32 30 }
@___asan_gen_.126 = private unnamed_addr constant [23 x i8] c"rpc_sysfs_xprt_srcaddr\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 417, i32 30 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"rpc_sysfs_xprt_info\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 420, i32 30 }
@___asan_gen_.132 = private unnamed_addr constant [28 x i8] c"rpc_sysfs_xprt_change_state\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 423, i32 30 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 414, i32 55 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 98, i32 21 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 255, i32 25 }
@___asan_gen_.145 = private unnamed_addr constant [28 x i8] c"../include/linux/wait_bit.h\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 181, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 417, i32 55 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 123, i32 21 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 420, i32 52 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 142, i32 21 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 155, i32 47 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 423, i32 60 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 173, i32 22 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 188, i32 22 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 189, i32 19 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 189, i32 30 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 190, i32 22 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 191, i32 23 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 192, i32 23 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 193, i32 18 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 194, i32 20 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 195, i32 20 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 196, i32 22 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 197, i32 22 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 198, i32 24 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 199, i32 20 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 200, i32 19 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 295, i32 20 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 297, i32 25 }
@___asan_gen_.216 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private constant [22 x i8] c"../net/sunrpc/sysfs.c\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 299, i32 25 }
@llvm.compiler.used = appending global [60 x ptr] [ptr @rpc_sysfs_client_setup._entry, ptr @rpc_sysfs_client_setup._entry_ptr, ptr @.str, ptr @rpc_sunrpc_kset, ptr @.str.1, ptr @rpc_sunrpc_client_kobj, ptr @.str.2, ptr @rpc_sunrpc_xprt_switch_kobj, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rpc_sysfs_object_type, ptr @.str.6, ptr @rpc_sysfs_client_type, ptr @.str.7, ptr @rpc_sysfs_xprt_switch_type, ptr @.str.8, ptr @rpc_sysfs_xprt_switch_groups, ptr @rpc_sysfs_xprt_switch_group, ptr @rpc_sysfs_xprt_switch_attrs, ptr @rpc_sysfs_xprt_switch_info, ptr @.str.9, ptr @.str.10, ptr @rpc_sysfs_xprt_type, ptr @.str.11, ptr @rpc_sysfs_xprt_groups, ptr @rpc_sysfs_xprt_group, ptr @rpc_sysfs_xprt_attrs, ptr @rpc_sysfs_xprt_dstaddr, ptr @rpc_sysfs_xprt_srcaddr, ptr @rpc_sysfs_xprt_info, ptr @rpc_sysfs_xprt_change_state, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [59 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sunrpc_kset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sunrpc_client_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sunrpc_xprt_switch_kobj to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_client_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_object_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_client_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_xprt_switch_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_xprt_switch_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_xprt_switch_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_xprt_switch_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_xprt_switch_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_xprt_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_xprt_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_xprt_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_xprt_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_xprt_dstaddr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_xprt_srcaddr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_xprt_info to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpc_sysfs_xprt_change_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 211, i32 256, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpc_sysfs_init() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @kernel_kobj to i32))
  %0 = load ptr, ptr @kernel_kobj, align 4
  %call = tail call ptr @kset_create_and_add(ptr noundef nonnull @.str, ptr noundef null, ptr noundef %0) #10
  store ptr %call, ptr @rpc_sunrpc_kset, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 136) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.err_client_crit_edge, label %if.then.i

if.end.err_client_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_client

if.then.i:                                        ; preds = %if.end
  %kset1.i = getelementptr inbounds %struct.kobject, ptr %call7.i.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %kset1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %kset1.i, align 8
  %call2.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @rpc_sysfs_object_type, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.end4, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kobject_put(ptr noundef nonnull %call7.i.i.i) #10
  br label %err_client

if.end4:                                          ; preds = %if.then.i
  store ptr %call7.i.i.i, ptr @rpc_sunrpc_client_kobj, align 4
  %3 = load ptr, ptr @rpc_sunrpc_kset, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 136) #13
  %tobool.not.i10 = icmp eq ptr %call7.i.i.i9, null
  br i1 %tobool.not.i10, label %if.end4.err_switch_crit_edge, label %if.then.i14

if.end4.err_switch_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_switch

if.then.i14:                                      ; preds = %if.end4
  %kset1.i11 = getelementptr inbounds %struct.kobject, ptr %call7.i.i.i9, i32 0, i32 3
  %5 = ptrtoint ptr %kset1.i11 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %kset1.i11, align 8
  %call2.i12 = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i.i9, ptr noundef nonnull @rpc_sysfs_object_type, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i12)
  %cmp.i13 = icmp eq i32 %call2.i12, 0
  br i1 %cmp.i13, label %rpc_sysfs_object_alloc.exit17, label %if.end.i15

if.end.i15:                                       ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kobject_put(ptr noundef nonnull %call7.i.i.i9) #10
  br label %err_switch

rpc_sysfs_object_alloc.exit17:                    ; preds = %if.then.i14
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call7.i.i.i9, ptr @rpc_sunrpc_xprt_switch_kobj, align 4
  br label %return

err_switch:                                       ; preds = %if.end.i15, %if.end4.err_switch_crit_edge
  store ptr null, ptr @rpc_sunrpc_xprt_switch_kobj, align 4
  %6 = load ptr, ptr @rpc_sunrpc_client_kobj, align 4
  tail call void @kobject_put(ptr noundef %6) #10
  br label %err_client

err_client:                                       ; preds = %err_switch, %if.end.i, %if.end.err_client_crit_edge
  store ptr null, ptr @rpc_sunrpc_client_kobj, align 4
  %7 = load ptr, ptr @rpc_sunrpc_kset, align 4
  tail call void @kset_unregister(ptr noundef %7) #10
  store ptr null, ptr @rpc_sunrpc_kset, align 4
  br label %return

return:                                           ; preds = %err_client, %rpc_sysfs_object_alloc.exit17, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %err_client ], [ -12, %entry.return_crit_edge ], [ 0, %rpc_sysfs_object_alloc.exit17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kset_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_sysfs_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rpc_sunrpc_client_kobj, align 4
  tail call void @kobject_put(ptr noundef %0) #10
  %1 = load ptr, ptr @rpc_sunrpc_xprt_switch_kobj, align 4
  tail call void @kobject_put(ptr noundef %1) #10
  %2 = load ptr, ptr @rpc_sunrpc_kset, align 4
  tail call void @kset_unregister(ptr noundef %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_sysfs_client_setup(ptr noundef %clnt, ptr noundef %xprt_switch, ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @rpc_sunrpc_client_kobj, align 4
  %cl_clid = getelementptr inbounds %struct.rpc_clnt, ptr %clnt, i32 0, i32 1
  %1 = ptrtoint ptr %cl_clid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cl_clid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 148) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.if.end11_crit_edge, label %if.then.i

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then.i:                                        ; preds = %entry
  %net1.i = getelementptr inbounds %struct.rpc_sysfs_client, ptr %call7.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %net1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net1.i, align 8
  %5 = load ptr, ptr @rpc_sunrpc_kset, align 4
  %kset.i = getelementptr inbounds %struct.kobject, ptr %call7.i.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %kset.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %kset.i, align 8
  %call3.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @rpc_sysfs_client_type, ptr noundef %0, ptr noundef nonnull @.str.7, i32 noundef %2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kobject_put(ptr noundef nonnull %call7.i.i.i) #10
  br label %if.end11

if.then:                                          ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %name) #10
  %7 = call ptr @memcpy(ptr %name, ptr @__const.rpc_sysfs_client_destroy.name, i32 7)
  %xps_sysfs = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xprt_switch, i32 0, i32 10
  %8 = ptrtoint ptr %xps_sysfs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %xps_sysfs, align 4
  %cl_sysfs = getelementptr inbounds %struct.rpc_clnt, ptr %clnt, i32 0, i32 27
  %10 = ptrtoint ptr %cl_sysfs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i, ptr %cl_sysfs, align 4
  %clnt1 = getelementptr inbounds %struct.rpc_sysfs_client, ptr %call7.i.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %clnt1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %clnt, ptr %clnt1, align 4
  %xprt_switch2 = getelementptr inbounds %struct.rpc_sysfs_client, ptr %call7.i.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %xprt_switch2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %xprt_switch, ptr %xprt_switch2, align 8
  %call3 = tail call i32 @kobject_uevent(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #10
  %call6 = call i32 @sysfs_create_link_nowarn(ptr noundef nonnull %call7.i.i.i, ptr noundef %9, ptr noundef nonnull %name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then.if.end_crit_edge, label %do.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull %name, i32 noundef %call6) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %name) #10
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.end.i, %entry.if.end11_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link_nowarn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_sysfs_xprt_switch_setup(ptr noundef %xprt_switch, ptr noundef %xprt, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xps_net = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xprt_switch, i32 0, i32 8
  %0 = ptrtoint ptr %xps_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xps_net, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %xprt_net = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 49
  %2 = ptrtoint ptr %xprt_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xprt_net, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %net.0 = phi ptr [ %3, %if.else ], [ %1, %entry.if.end_crit_edge ]
  %4 = load ptr, ptr @rpc_sunrpc_xprt_switch_kobj, align 4
  %or.i.i = or i32 %gfp_flags, 256
  %and.i.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i19.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i19.i.i.i, label %if.end.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !123

if.end.kzalloc.exit.i_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end
  %and2.i.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.kzalloc.exit.i_crit_edge

if.end.i.i.i.i.kzalloc.exit.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge, %if.end.kzalloc.exit.i_crit_edge
  %retval.0.i20.i.i.i = phi i32 [ 0, %if.end.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i.i, i32 8
  %5 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef %or.i.i, i32 noundef 148) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %kzalloc.exit.i.if.end7_crit_edge, label %if.then.i

kzalloc.exit.i.if.end7_crit_edge:                 ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then.i:                                        ; preds = %kzalloc.exit.i
  %net1.i = getelementptr inbounds %struct.rpc_sysfs_xprt_switch, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %net1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %net.0, ptr %net1.i, align 8
  %8 = load ptr, ptr @rpc_sunrpc_kset, align 4
  %kset.i = getelementptr inbounds %struct.kobject, ptr %call7.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %kset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %kset.i, align 8
  %xps_id.i = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xprt_switch, i32 0, i32 2
  %10 = ptrtoint ptr %xps_id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xps_id.i, align 4
  %call3.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @rpc_sysfs_xprt_switch_type, ptr noundef %4, ptr noundef nonnull @.str.8, i32 noundef %11) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp eq i32 %call3.i, 0
  br i1 %cmp.i, label %if.then3, label %if.end.i

if.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kobject_put(ptr noundef nonnull %call7.i.i.i) #10
  br label %if.end7

if.then3:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %xps_sysfs = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xprt_switch, i32 0, i32 10
  %12 = ptrtoint ptr %xps_sysfs to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i.i, ptr %xps_sysfs, align 4
  %xprt_switch4 = getelementptr inbounds %struct.rpc_sysfs_xprt_switch, ptr %call7.i.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %xprt_switch4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %xprt_switch, ptr %xprt_switch4, align 4
  %xprt5 = getelementptr inbounds %struct.rpc_sysfs_xprt_switch, ptr %call7.i.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %xprt5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %xprt, ptr %xprt5, align 8
  %call6 = tail call i32 @kobject_uevent(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.i, %kzalloc.exit.i.if.end7_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_sysfs_xprt_setup(ptr noundef %xprt_switch, ptr noundef %xprt, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xps_sysfs = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xprt_switch, i32 0, i32 10
  %0 = ptrtoint ptr %xps_sysfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xps_sysfs, align 4
  %or.i.i = or i32 %gfp_flags, 256
  %and.i.i.i.i = and i32 %gfp_flags, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %cmp.i19.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %cmp.i19.i.i.i, label %entry.kzalloc.exit.i_crit_edge, label %if.end.i.i.i.i, !prof !123

entry.kzalloc.exit.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  %and2.i.i.i.i = and i32 %gfp_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i.i)
  %tobool3.not.i.i.i.i = icmp eq i32 %and2.i.i.i.i, 0
  br i1 %tobool3.not.i.i.i.i, label %if.end5.i.i.i.i, label %if.end.i.i.i.i.kzalloc.exit.i_crit_edge

if.end.i.i.i.i.kzalloc.exit.i_crit_edge:          ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit.i

if.end5.i.i.i.i:                                  ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i.i.i.i = and i32 %gfp_flags, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i.i.i)
  %tobool7.not.i.i.i.i = icmp eq i32 %and6.i.i.i.i, 0
  %..i.i.i.i = select i1 %tobool7.not.i.i.i.i, i32 1, i32 2
  br label %kzalloc.exit.i

kzalloc.exit.i:                                   ; preds = %if.end5.i.i.i.i, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge, %entry.kzalloc.exit.i_crit_edge
  %retval.0.i20.i.i.i = phi i32 [ 0, %entry.kzalloc.exit.i_crit_edge ], [ 3, %if.end.i.i.i.i.kzalloc.exit.i_crit_edge ], [ %..i.i.i.i, %if.end5.i.i.i.i ]
  %arrayidx6.i.i.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i20.i.i.i, i32 8
  %2 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx6.i.i.i, align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef %or.i.i, i32 noundef 144) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %kzalloc.exit.i.if.end_crit_edge, label %if.end.i

kzalloc.exit.i.if.end_crit_edge:                  ; preds = %kzalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %kzalloc.exit.i
  %4 = load ptr, ptr @rpc_sunrpc_kset, align 4
  %kset.i = getelementptr inbounds %struct.kobject, ptr %call7.i.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %kset.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %kset.i, align 8
  %id.i = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 2
  %6 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id.i, align 8
  %arrayidx.i = getelementptr %struct.rpc_xprt, ptr %xprt, i32 0, i32 51, i32 2
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 8
  %call2.i = tail call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @rpc_sysfs_xprt_type, ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef %7, ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.then, label %if.end4.i

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kobject_put(ptr noundef nonnull %call7.i.i.i) #10
  br label %if.end

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %xprt_sysfs = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 55
  %10 = ptrtoint ptr %xprt_sysfs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7.i.i.i, ptr %xprt_sysfs, align 8
  %xprt1 = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %call7.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %xprt1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %xprt, ptr %xprt1, align 8
  %xprt_switch2 = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %call7.i.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %xprt_switch2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %xprt_switch, ptr %xprt_switch2, align 4
  %call4 = tail call i32 @kobject_uevent(ptr noundef nonnull %call7.i.i.i, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %if.end4.i, %kzalloc.exit.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_sysfs_client_destroy(ptr nocapture noundef %clnt) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [7 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_sysfs = getelementptr inbounds %struct.rpc_clnt, ptr %clnt, i32 0, i32 27
  %0 = ptrtoint ptr %cl_sysfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_sysfs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %name) #10
  %2 = call ptr @memcpy(ptr %name, ptr @__const.rpc_sysfs_client_destroy.name, i32 7)
  call void @sysfs_remove_link(ptr noundef nonnull %1, ptr noundef nonnull %name) #10
  %call = call i32 @kobject_uevent(ptr noundef nonnull %1, i32 noundef 1) #10
  call void @kobject_del(ptr noundef nonnull %1) #10
  call void @kobject_put(ptr noundef nonnull %1) #10
  %3 = ptrtoint ptr %cl_sysfs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %cl_sysfs, align 4
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %name) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_sysfs_xprt_switch_destroy(ptr nocapture noundef %xprt_switch) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xps_sysfs = getelementptr inbounds %struct.rpc_xprt_switch, ptr %xprt_switch, i32 0, i32 10
  %0 = ptrtoint ptr %xps_sysfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xps_sysfs, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @kobject_uevent(ptr noundef nonnull %1, i32 noundef 1) #10
  tail call void @kobject_del(ptr noundef nonnull %1) #10
  tail call void @kobject_put(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %xps_sysfs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xps_sysfs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rpc_sysfs_xprt_destroy(ptr nocapture noundef %xprt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xprt_sysfs = getelementptr inbounds %struct.rpc_xprt, ptr %xprt, i32 0, i32 55
  %0 = ptrtoint ptr %xprt_sysfs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xprt_sysfs, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @kobject_uevent(ptr noundef nonnull %1, i32 noundef 1) #10
  tail call void @kobject_del(ptr noundef nonnull %1) #10
  tail call void @kobject_put(ptr noundef nonnull %1) #10
  %2 = ptrtoint ptr %xprt_sysfs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %xprt_sysfs, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpc_sysfs_object_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %kobj) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @rpc_sysfs_object_child_ns_type(ptr nocapture noundef readnone %kobj) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @net_ns_type_operations
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpc_sysfs_client_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %kobj) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @rpc_sysfs_client_namespace(ptr nocapture noundef readonly %kobj) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.rpc_sysfs_client, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpc_sysfs_xprt_switch_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %kobj) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @rpc_sysfs_xprt_switch_namespace(ptr nocapture noundef readonly %kobj) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr inbounds %struct.rpc_sysfs_xprt_switch, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpc_sysfs_xprt_switch_info_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xprt_switch.i = getelementptr inbounds %struct.rpc_sysfs_xprt_switch, ptr %kobj, i32 0, i32 2
  %0 = ptrtoint ptr %xprt_switch.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xprt_switch.i, align 4
  %call.i = tail call ptr @xprt_switch_get(ptr noundef %1) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %xps_nxprts = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %xps_nxprts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xps_nxprts, align 4
  %xps_nactive = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %xps_nactive to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xps_nactive, align 4
  %xps_nunique_destaddr_xprts = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call.i, i32 0, i32 5
  %6 = ptrtoint ptr %xps_nunique_destaddr_xprts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xps_nunique_destaddr_xprts, align 4
  %xps_queuelen = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call.i, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %xps_queuelen, i32 noundef 4) #10
  %8 = ptrtoint ptr %xps_queuelen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %xps_queuelen, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef %9)
  tail call void @xprt_switch_put(ptr noundef nonnull %call.i) #10
  %add = add i32 %call2, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_switch_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_switch_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rpc_sysfs_xprt_release(ptr noundef %kobj) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %kobj) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @rpc_sysfs_xprt_namespace(ptr nocapture noundef readonly %kobj) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xprt = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %xprt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xprt, align 4
  %xprt_net = getelementptr inbounds %struct.rpc_xprt, ptr %1, i32 0, i32 49
  %2 = ptrtoint ptr %xprt_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xprt_net, align 8
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpc_sysfs_xprt_dstaddr_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xprt.i = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %xprt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xprt.i, align 4
  %call.i = tail call ptr @xprt_get(ptr noundef %1) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %address_strings = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 51
  %2 = ptrtoint ptr %address_strings to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %address_strings, align 8
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, ptr noundef %3)
  tail call void @xprt_put(ptr noundef nonnull %call.i) #10
  %add = add i32 %call1, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpc_sysfs_xprt_dstaddr_store(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xprt.i = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %xprt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xprt.i, align 4
  %call.i = tail call ptr @xprt_get(ptr noundef %1) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %xprt_class = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 54
  %2 = ptrtoint ptr %xprt_class to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xprt_class, align 4
  %ident = getelementptr inbounds %struct.xprt_class, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ident, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %if.end.cleanup.sink.split_crit_edge [
    i32 6, label %if.end.if.end5_crit_edge
    i32 256, label %if.end.if.end5_crit_edge100
  ]

if.end.if.end5_crit_edge100:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end.if.end5_crit_edge, %if.end.if.end5_crit_edge100
  %state = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 18
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 181) #10
  %call.i91 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool.not.i = icmp eq i32 %call.i91, 0
  br i1 %tobool.not.i, label %if.end5.if.end9_crit_edge, label %wait_on_bit_lock.exit

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

wait_on_bit_lock.exit:                            ; preds = %if.end5
  %call3.i = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %state, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 258) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool7.not = icmp eq i32 %call3.i, 0
  br i1 %tobool7.not, label %wait_on_bit_lock.exit.if.end9_crit_edge, label %wait_on_bit_lock.exit.cleanup.sink.split_crit_edge

wait_on_bit_lock.exit.cleanup.sink.split_crit_edge: ; preds = %wait_on_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

wait_on_bit_lock.exit.if.end9_crit_edge:          ; preds = %wait_on_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %wait_on_bit_lock.exit.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %addr = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.40)
  switch i16 %8, label %if.end9.rpc_get_port.exit_crit_edge [
    i16 2, label %sw.bb.i
    i16 10, label %sw.bb1.i
  ]

if.end9.rpc_get_port.exit_crit_edge:              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpc_get_port.exit

sw.bb.i:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %sin_port.i = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  br label %return.sink.split.i

sw.bb1.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_port.i = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %sw.bb1.i, %sw.bb.i
  %sin6_port.sink.i = phi ptr [ %sin6_port.i, %sw.bb1.i ], [ %sin_port.i, %sw.bb.i ]
  %10 = ptrtoint ptr %sin6_port.sink.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %sin6_port.sink.i, align 2
  br label %rpc_get_port.exit

rpc_get_port.exit:                                ; preds = %return.sink.split.i, %if.end9.rpc_get_port.exit_crit_edge
  %retval.0.i92 = phi i16 [ 0, %if.end9.rpc_get_port.exit_crit_edge ], [ %11, %return.sink.split.i ]
  %call11 = tail call i32 @strcspn(ptr noundef %buf, ptr noundef nonnull @.str.14)
  %call12 = tail call ptr @kstrndup(ptr noundef %buf, i32 noundef %call11, i32 noundef 3264) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %rpc_get_port.exit.out_crit_edge, label %if.end15

rpc_get_port.exit.out_crit_edge:                  ; preds = %rpc_get_port.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15:                                         ; preds = %rpc_get_port.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 12) #13
  %tobool17.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool17.not, label %out_err_free, label %if.end19

if.end19:                                         ; preds = %if.end15
  %address_strings = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 51
  %13 = ptrtoint ptr %address_strings to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %address_strings, align 8
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %call7.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !124
  %16 = ptrtoint ptr %address_strings to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %call12, ptr %address_strings, align 8
  %rcu = getelementptr inbounds %struct.xprt_addr, ptr %call7.i.i, i32 0, i32 1
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @free_xprt_addr) #10
  %xprt_net = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 49
  %17 = ptrtoint ptr %xprt_net to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %xprt_net, align 8
  %call63 = tail call i32 @rpc_pton(ptr noundef %18, ptr noundef %buf, i32 noundef %call11, ptr noundef %addr, i32 noundef 16) #10
  %addrlen = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %addrlen to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call63, ptr %addrlen, align 8
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr, align 2
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.41)
  switch i16 %21, label %if.end19.rpc_set_port.exit_crit_edge [
    i16 2, label %sw.bb.i94
    i16 10, label %sw.bb1.i96
  ]

if.end19.rpc_set_port.exit_crit_edge:             ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %rpc_set_port.exit

sw.bb.i94:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %sin_port.i93 = getelementptr inbounds %struct.sockaddr_in, ptr %addr, i32 0, i32 1
  br label %sw.epilog.sink.split.i

sw.bb1.i96:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_port.i95 = getelementptr inbounds %struct.sockaddr_in6, ptr %addr, i32 0, i32 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb1.i96, %sw.bb.i94
  %sin6_port.sink.i97 = phi ptr [ %sin6_port.i95, %sw.bb1.i96 ], [ %sin_port.i93, %sw.bb.i94 ]
  %23 = ptrtoint ptr %sin6_port.sink.i97 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %retval.0.i92, ptr %sin6_port.sink.i97, align 2
  br label %rpc_set_port.exit

rpc_set_port.exit:                                ; preds = %sw.epilog.sink.split.i, %if.end19.rpc_set_port.exit_crit_edge
  tail call void @xprt_force_disconnect(ptr noundef nonnull %call.i) #10
  br label %out

out:                                              ; preds = %out_err_free, %rpc_set_port.exit, %rpc_get_port.exit.out_crit_edge
  %count.addr.0 = phi i32 [ %count, %rpc_set_port.exit ], [ -12, %rpc_get_port.exit.out_crit_edge ], [ -12, %out_err_free ]
  tail call void @xprt_release_write(ptr noundef nonnull %call.i, ptr noundef null) #10
  br label %cleanup.sink.split

out_err_free:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call12) #10
  br label %out

cleanup.sink.split:                               ; preds = %out, %wait_on_bit_lock.exit.cleanup.sink.split_crit_edge, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -95, %if.end.cleanup.sink.split_crit_edge ], [ %count.addr.0, %out ], [ -4, %wait_on_bit_lock.exit.cleanup.sink.split_crit_edge ]
  tail call void @xprt_put(ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xprt_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @free_xprt_addr(ptr noundef %head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %head, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  tail call void @kfree(ptr noundef %1) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rpc_pton(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_force_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xprt_release_write(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @out_of_line_wait_on_bit_lock(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bit_wait(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpc_sysfs_xprt_srcaddr_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  %saddr = alloca %struct.__kernel_sockaddr_storage, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xprt.i = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %xprt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xprt.i, align 4
  %call.i = tail call ptr @xprt_get(ptr noundef %1) #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %saddr) #10
  %2 = call ptr @memset(ptr %saddr, i32 255, i32 128)
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 18
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not = icmp eq i32 %5, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @xprt_put(ptr noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %recv_mutex = getelementptr inbounds %struct.sock_xprt, ptr %call.i, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %recv_mutex, i32 noundef 0) #10
  %sock3 = getelementptr inbounds %struct.sock_xprt, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %sock3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sock3, align 8
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %if.end.out_crit_edge, label %lor.lhs.false4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false4:                                   ; preds = %if.end
  %call6 = call i32 @kernel_getsockname(ptr noundef nonnull %7, ptr noundef nonnull %saddr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %lor.lhs.false4.out_crit_edge, label %if.end9

lor.lhs.false4.out_crit_edge:                     ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end9:                                          ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, ptr noundef nonnull %saddr)
  %phi.bo = add i32 %call10, 1
  br label %out

out:                                              ; preds = %if.end9, %lor.lhs.false4.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %lor.lhs.false4.out_crit_edge ], [ %phi.bo, %if.end9 ]
  call void @mutex_unlock(ptr noundef %recv_mutex) #10
  call void @xprt_put(ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ %ret.0, %out ], [ -107, %if.then ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %saddr) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kernel_getsockname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpc_sysfs_xprt_info_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xprt.i = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %xprt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xprt.i, align 4
  %call.i = tail call ptr @xprt_get(ptr noundef %1) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 18
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp eq i32 %4, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @xprt_put(ptr noundef %call.i) #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %last_used = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 28
  %5 = ptrtoint ptr %last_used to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_used, align 8
  %cong = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %cong to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cong, align 8
  %cwnd = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %cwnd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cwnd, align 4
  %max_reqs = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 15
  %11 = ptrtoint ptr %max_reqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %max_reqs, align 4
  %min_reqs = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 16
  %13 = ptrtoint ptr %min_reqs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %min_reqs, align 8
  %num_reqs = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 17
  %15 = ptrtoint ptr %num_reqs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_reqs, align 4
  %qlen = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 10, i32 5
  %17 = ptrtoint ptr %qlen to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %qlen, align 4
  %conv = zext i16 %18 to i32
  %qlen3 = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 11, i32 5
  %19 = ptrtoint ptr %qlen3 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %qlen3, align 4
  %conv4 = zext i16 %20 to i32
  %qlen5 = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 12, i32 5
  %21 = ptrtoint ptr %qlen5 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %qlen5, align 4
  %conv6 = zext i16 %22 to i32
  %qlen7 = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 13, i32 5
  %23 = ptrtoint ptr %qlen7 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %qlen7, align 4
  %conv8 = zext i16 %24 to i32
  %main = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 56
  %25 = ptrtoint ptr %main to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %main, align 4, !range !125
  %27 = zext i8 %26 to i32
  %xprt_class = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 54
  %28 = ptrtoint ptr %xprt_class to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %xprt_class, align 4
  %ident = getelementptr inbounds %struct.xprt_class, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ident, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %31)
  %cmp = icmp eq i32 %31, 6
  br i1 %cmp, label %cond.true, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call zeroext i16 @get_srcport(ptr noundef nonnull %call.i) #10
  %conv13 = zext i16 %call12 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %conv13, %cond.true ], [ 0, %if.end.cond.end_crit_edge ]
  %queuelen = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 32
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %queuelen, i32 noundef 4) #10
  %32 = ptrtoint ptr %queuelen to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %queuelen, align 4
  %34 = ptrtoint ptr %xprt_class to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %xprt_class, align 4
  %ident16 = getelementptr inbounds %struct.xprt_class, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %ident16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ident16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %37)
  %cmp17 = icmp eq i32 %37, 6
  br i1 %cmp17, label %cond.true19, label %cond.end.cond.end21_crit_edge

cond.end.cond.end21_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end21

cond.true19:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr %struct.rpc_xprt, ptr %call.i, i32 0, i32 51, i32 1
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  br label %cond.end21

cond.end21:                                       ; preds = %cond.true19, %cond.end.cond.end21_crit_edge
  %cond22 = phi ptr [ %39, %cond.true19 ], [ @.str.20, %cond.end.cond.end21_crit_edge ]
  %call23 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.19, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef %conv, i32 noundef %conv4, i32 noundef %conv6, i32 noundef %conv8, i32 noundef %27, i32 noundef %cond, i32 noundef %33, ptr noundef %cond22)
  tail call void @xprt_put(ptr noundef nonnull %call.i) #10
  %add = add i32 %call23, 1
  br label %cleanup

cleanup:                                          ; preds = %cond.end21, %if.then
  %retval.0 = phi i32 [ %add, %cond.end21 ], [ -107, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @get_srcport(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpc_sysfs_xprt_state_show(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xprt.i = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %xprt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xprt.i, align 4
  %call.i = tail call ptr @xprt_get(ptr noundef %1) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 18
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.22, i32 14)
  br label %if.end52

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state, align 4
  %and1.i = and i32 %6, 1
  %7 = load volatile i32, ptr %state, align 4
  %8 = load volatile i32, ptr %state, align 4
  %9 = load volatile i32, ptr %state, align 4
  %10 = load volatile i32, ptr %state, align 4
  %11 = load volatile i32, ptr %state, align 4
  %12 = load volatile i32, ptr %state, align 4
  %13 = load volatile i32, ptr %state, align 4
  %14 = load volatile i32, ptr %state, align 4
  %15 = load volatile i32, ptr %state, align 4
  %16 = load volatile i32, ptr %state, align 4
  %17 = load volatile i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool28.not = icmp eq i32 %and1.i, 0
  %cond = select i1 %tobool28.not, ptr @.str.25, ptr @.str.24
  %18 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool29.not = icmp eq i32 %18, 0
  %cond30 = select i1 %tobool29.not, ptr @.str.25, ptr @.str.26
  %19 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool31.not = icmp eq i32 %19, 0
  %cond32 = select i1 %tobool31.not, ptr @.str.25, ptr @.str.27
  %20 = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool33.not = icmp eq i32 %20, 0
  %cond34 = select i1 %tobool33.not, ptr @.str.25, ptr @.str.28
  %21 = and i32 %10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool35.not = icmp eq i32 %21, 0
  %cond36 = select i1 %tobool35.not, ptr @.str.25, ptr @.str.29
  %22 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool37.not = icmp eq i32 %22, 0
  %cond38 = select i1 %tobool37.not, ptr @.str.25, ptr @.str.30
  %23 = and i32 %12, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool39.not = icmp eq i32 %23, 0
  %cond40 = select i1 %tobool39.not, ptr @.str.25, ptr @.str.31
  %24 = and i32 %13, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool41.not = icmp eq i32 %24, 0
  %cond42 = select i1 %tobool41.not, ptr @.str.25, ptr @.str.32
  %25 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool43.not = icmp eq i32 %25, 0
  %cond44 = select i1 %tobool43.not, ptr @.str.25, ptr @.str.33
  %26 = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool45.not = icmp eq i32 %26, 0
  %cond46 = select i1 %tobool45.not, ptr @.str.25, ptr @.str.34
  %27 = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool47.not = icmp eq i32 %27, 0
  %cond48 = select i1 %tobool47.not, ptr @.str.25, ptr @.str.35
  %28 = and i32 %17, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool49.not = icmp eq i32 %28, 0
  %cond50 = select i1 %tobool49.not, ptr @.str.25, ptr @.str.36
  %call51 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.23, ptr noundef nonnull %cond, ptr noundef nonnull %cond30, ptr noundef nonnull %cond32, ptr noundef nonnull %cond34, ptr noundef nonnull %cond36, ptr noundef nonnull %cond38, ptr noundef nonnull %cond40, ptr noundef nonnull %cond42, ptr noundef nonnull %cond44, ptr noundef nonnull %cond46, ptr noundef nonnull %cond48, ptr noundef nonnull %cond50)
  %phi.bo = add i32 %call51, 1
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then2
  %ret.0 = phi i32 [ %phi.bo, %if.else ], [ 14, %if.then2 ]
  tail call void @xprt_put(ptr noundef nonnull %call.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end52 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpc_sysfs_xprt_state_change(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %xprt.i = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %kobj, i32 0, i32 1
  %0 = ptrtoint ptr %xprt.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xprt.i, align 4
  %call.i = tail call ptr @xprt_get(ptr noundef %1) #10
  %xprt_switch.i = getelementptr inbounds %struct.rpc_sysfs_xprt, ptr %kobj, i32 0, i32 2
  %2 = ptrtoint ptr %xprt_switch.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xprt_switch.i, align 4
  %call.i106 = tail call ptr @xprt_switch_get(ptr noundef %3) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(8) @.str.37, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end15_crit_edge, label %if.else

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.else:                                          ; preds = %if.end
  %call5 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(7) @.str.38, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else.if.end15_crit_edge, label %if.else8

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.else8:                                         ; preds = %if.else
  %call9 = tail call i32 @strncmp(ptr noundef %buf, ptr noundef nonnull dereferenceable(7) @.str.39, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.else8.if.end15_crit_edge, label %if.else8.out_put_crit_edge

if.else8.out_put_crit_edge:                       ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put

if.else8.if.end15_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.end15:                                         ; preds = %if.else8.if.end15_crit_edge, %if.else.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %tobool32.not = phi i1 [ true, %if.end.if.end15_crit_edge ], [ false, %if.else.if.end15_crit_edge ], [ true, %if.else8.if.end15_crit_edge ]
  %tobool43.not = phi i1 [ true, %if.end.if.end15_crit_edge ], [ true, %if.else.if.end15_crit_edge ], [ false, %if.else8.if.end15_crit_edge ]
  %state = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 18
  tail call void @__might_sleep(ptr noundef nonnull @.str.15, i32 noundef 181) #10
  %call.i107 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %tobool.not.i = icmp eq i32 %call.i107, 0
  br i1 %tobool.not.i, label %if.end15.if.end19_crit_edge, label %wait_on_bit_lock.exit

if.end15.if.end19_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

wait_on_bit_lock.exit:                            ; preds = %if.end15
  %call3.i = tail call i32 @out_of_line_wait_on_bit_lock(ptr noundef %state, i32 noundef 0, ptr noundef nonnull @bit_wait, i32 noundef 258) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool17.not = icmp eq i32 %call3.i, 0
  br i1 %tobool17.not, label %wait_on_bit_lock.exit.if.end19_crit_edge, label %wait_on_bit_lock.exit.out_put_crit_edge

wait_on_bit_lock.exit.out_put_crit_edge:          ; preds = %wait_on_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_put

wait_on_bit_lock.exit.if.end19_crit_edge:         ; preds = %wait_on_bit_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.end19:                                         ; preds = %wait_on_bit_lock.exit.if.end19_crit_edge, %if.end15.if.end19_crit_edge
  %main = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 56
  %4 = ptrtoint ptr %main to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %main, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool20.not = icmp eq i8 %5, 0
  br i1 %tobool20.not, label %if.end22, label %if.end19.release_tasks_crit_edge

if.end19.release_tasks_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_tasks

if.end22:                                         ; preds = %if.end19
  br i1 %tobool3.not, label %if.then24, label %if.else31

if.then24:                                        ; preds = %if.end22
  %call26 = tail call i32 @_test_and_set_bit(i32 noundef 7, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.then28, label %if.then24.release_tasks_crit_edge

if.then24.release_tasks_crit_edge:                ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_tasks

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef %call.i106) #10
  %xps_nactive = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call.i106, i32 0, i32 4
  %6 = ptrtoint ptr %xps_nactive to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xps_nactive, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %xps_nactive, align 4
  tail call void @_raw_spin_unlock(ptr noundef %call.i106) #10
  br label %release_tasks

if.else31:                                        ; preds = %if.end22
  br i1 %tobool32.not, label %if.else42, label %if.then33

if.then33:                                        ; preds = %if.else31
  %call35 = tail call i32 @_test_and_clear_bit(i32 noundef 7, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then33.release_tasks_crit_edge, label %if.then37

if.then33.release_tasks_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_tasks

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_lock(ptr noundef %call.i106) #10
  %xps_nactive39 = getelementptr inbounds %struct.rpc_xprt_switch, ptr %call.i106, i32 0, i32 4
  %8 = ptrtoint ptr %xps_nactive39 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xps_nactive39, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %xps_nactive39, align 4
  tail call void @_raw_spin_unlock(ptr noundef %call.i106) #10
  br label %release_tasks

if.else42:                                        ; preds = %if.else31
  br i1 %tobool43.not, label %if.else42.release_tasks_crit_edge, label %if.then44

if.else42.release_tasks_crit_edge:                ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_tasks

if.then44:                                        ; preds = %if.else42
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state, align 4
  %12 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool47.not = icmp eq i32 %12, 0
  br i1 %tobool47.not, label %if.then44.release_tasks_crit_edge, label %if.then48

if.then44.release_tasks_crit_edge:                ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_tasks

if.then48:                                        ; preds = %if.then44
  %call50 = tail call i32 @_test_and_set_bit(i32 noundef 8, ptr noundef %state) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %if.then48.release_tasks_crit_edge

if.then48.release_tasks_crit_edge:                ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_tasks

if.then52:                                        ; preds = %if.then48
  tail call void @xprt_force_disconnect(ptr noundef nonnull %call.i) #10
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state, align 4
  %15 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool55.not = icmp eq i32 %15, 0
  br i1 %tobool55.not, label %if.then52.release_tasks_crit_edge, label %if.then56

if.then52.release_tasks_crit_edge:                ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_tasks

if.then56:                                        ; preds = %if.then52
  %qlen = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 11, i32 5
  %16 = ptrtoint ptr %qlen to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %qlen, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool57.not = icmp eq i16 %17, 0
  br i1 %tobool57.not, label %land.lhs.true, label %if.then56.release_tasks_crit_edge

if.then56.release_tasks_crit_edge:                ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_tasks

land.lhs.true:                                    ; preds = %if.then56
  %qlen58 = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 12, i32 5
  %18 = ptrtoint ptr %qlen58 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %qlen58, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool59.not = icmp eq i16 %19, 0
  br i1 %tobool59.not, label %land.lhs.true60, label %land.lhs.true.release_tasks_crit_edge

land.lhs.true.release_tasks_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_tasks

land.lhs.true60:                                  ; preds = %land.lhs.true
  %qlen61 = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 13, i32 5
  %20 = ptrtoint ptr %qlen61 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %qlen61, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool62.not = icmp eq i16 %21, 0
  br i1 %tobool62.not, label %land.lhs.true63, label %land.lhs.true60.release_tasks_crit_edge

land.lhs.true60.release_tasks_crit_edge:          ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_tasks

land.lhs.true63:                                  ; preds = %land.lhs.true60
  %queuelen = getelementptr inbounds %struct.rpc_xprt, ptr %call.i, i32 0, i32 32
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %queuelen, i32 noundef 4) #10
  %22 = ptrtoint ptr %queuelen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %queuelen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool65.not = icmp eq i32 %23, 0
  br i1 %tobool65.not, label %if.then66, label %land.lhs.true63.release_tasks_crit_edge

land.lhs.true63.release_tasks_crit_edge:          ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_tasks

if.then66:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @rpc_xprt_switch_remove_xprt(ptr noundef %call.i106, ptr noundef nonnull %call.i) #10
  br label %release_tasks

release_tasks:                                    ; preds = %if.then66, %land.lhs.true63.release_tasks_crit_edge, %land.lhs.true60.release_tasks_crit_edge, %land.lhs.true.release_tasks_crit_edge, %if.then56.release_tasks_crit_edge, %if.then52.release_tasks_crit_edge, %if.then48.release_tasks_crit_edge, %if.then44.release_tasks_crit_edge, %if.else42.release_tasks_crit_edge, %if.then37, %if.then33.release_tasks_crit_edge, %if.then28, %if.then24.release_tasks_crit_edge, %if.end19.release_tasks_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.then24.release_tasks_crit_edge ], [ %count, %if.then28 ], [ %count, %if.then37 ], [ %count, %if.then33.release_tasks_crit_edge ], [ %count, %if.then48.release_tasks_crit_edge ], [ %count, %if.then56.release_tasks_crit_edge ], [ %count, %land.lhs.true.release_tasks_crit_edge ], [ %count, %land.lhs.true60.release_tasks_crit_edge ], [ %count, %land.lhs.true63.release_tasks_crit_edge ], [ %count, %if.then66 ], [ %count, %if.then52.release_tasks_crit_edge ], [ %count, %if.else42.release_tasks_crit_edge ], [ -22, %if.end19.release_tasks_crit_edge ], [ -22, %if.then44.release_tasks_crit_edge ]
  tail call void @xprt_release_write(ptr noundef nonnull %call.i, ptr noundef null) #10
  br label %out_put

out_put:                                          ; preds = %release_tasks, %wait_on_bit_lock.exit.out_put_crit_edge, %if.else8.out_put_crit_edge
  %count.addr.1 = phi i32 [ %count.addr.0, %release_tasks ], [ -22, %if.else8.out_put_crit_edge ], [ -4, %wait_on_bit_lock.exit.out_put_crit_edge ]
  tail call void @xprt_put(ptr noundef nonnull %call.i) #10
  tail call void @xprt_switch_put(ptr noundef %call.i106) #10
  br label %cleanup

cleanup:                                          ; preds = %out_put, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.1, %out_put ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_xprt_switch_remove_xprt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 59)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/sunrpc/sysfs.c", i32 353, i32 40}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/sunrpc/sysfs.c", i32 357, i32 26}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/sunrpc/sysfs.c", i32 361, i32 26}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/sunrpc/sysfs.c", i32 551, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @rpc_sysfs_client_setup._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @rpc_sysfs_client_setup._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @rpc_sunrpc_kset, !13, !"rpc_sunrpc_kset", i1 false, i1 false}
!13 = !{!"../net/sunrpc/sysfs.c", i32 25, i32 21}
!14 = !{ptr @rpc_sunrpc_client_kobj, !15, !"rpc_sunrpc_client_kobj", i1 false, i1 false}
!15 = !{!"../net/sunrpc/sysfs.c", i32 26, i32 24}
!16 = !{ptr @rpc_sunrpc_xprt_switch_kobj, !17, !"rpc_sunrpc_xprt_switch_kobj", i1 false, i1 false}
!17 = !{!"../net/sunrpc/sysfs.c", i32 26, i32 49}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/sunrpc/sysfs.c", i32 55, i32 15}
!20 = !{ptr @rpc_sysfs_object_type, !21, !"rpc_sysfs_object_type", i1 false, i1 false}
!21 = !{!"../net/sunrpc/sysfs.c", i32 39, i32 25}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../net/sunrpc/sysfs.c", i32 482, i32 15}
!24 = !{ptr @rpc_sysfs_client_type, !25, !"rpc_sysfs_client_type", i1 false, i1 false}
!25 = !{!"../net/sunrpc/sysfs.c", i32 444, i32 25}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/sunrpc/sysfs.c", i32 503, i32 15}
!28 = !{ptr @rpc_sysfs_xprt_switch_type, !29, !"rpc_sysfs_xprt_switch_type", i1 false, i1 false}
!29 = !{!"../net/sunrpc/sysfs.c", i32 450, i32 25}
!30 = !{ptr @rpc_sysfs_xprt_switch_groups, !31, !"rpc_sysfs_xprt_switch_groups", i1 false, i1 false}
!31 = !{!"../net/sunrpc/sysfs.c", i32 442, i32 1}
!32 = !{ptr @rpc_sysfs_xprt_switch_group, !31, !"rpc_sysfs_xprt_switch_group", i1 false, i1 false}
!33 = !{ptr @rpc_sysfs_xprt_switch_attrs, !34, !"rpc_sysfs_xprt_switch_attrs", i1 false, i1 false}
!34 = !{!"../net/sunrpc/sysfs.c", i32 438, i32 26}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/sunrpc/sysfs.c", i32 436, i32 2}
!37 = !{ptr @rpc_sysfs_xprt_switch_info, !38, !"rpc_sysfs_xprt_switch_info", i1 false, i1 false}
!38 = !{!"../net/sunrpc/sysfs.c", i32 435, i32 30}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/sunrpc/sysfs.c", i32 217, i32 21}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/sunrpc/sysfs.c", i32 522, i32 14}
!43 = !{ptr @rpc_sysfs_xprt_type, !44, !"rpc_sysfs_xprt_type", i1 false, i1 false}
!44 = !{!"../net/sunrpc/sysfs.c", i32 457, i32 25}
!45 = !{ptr @rpc_sysfs_xprt_groups, !46, !"rpc_sysfs_xprt_groups", i1 false, i1 false}
!46 = !{!"../net/sunrpc/sysfs.c", i32 433, i32 1}
!47 = !{ptr @rpc_sysfs_xprt_group, !46, !"rpc_sysfs_xprt_group", i1 false, i1 false}
!48 = !{ptr @rpc_sysfs_xprt_attrs, !49, !"rpc_sysfs_xprt_attrs", i1 false, i1 false}
!49 = !{!"../net/sunrpc/sysfs.c", i32 426, i32 26}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/sunrpc/sysfs.c", i32 414, i32 55}
!52 = !{ptr @rpc_sysfs_xprt_dstaddr, !53, !"rpc_sysfs_xprt_dstaddr", i1 false, i1 false}
!53 = !{!"../net/sunrpc/sysfs.c", i32 414, i32 30}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../net/sunrpc/sysfs.c", i32 98, i32 21}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/sunrpc/sysfs.c", i32 255, i32 25}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/wait_bit.h", i32 181, i32 2}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../net/sunrpc/sysfs.c", i32 417, i32 55}
!62 = !{ptr @rpc_sysfs_xprt_srcaddr, !63, !"rpc_sysfs_xprt_srcaddr", i1 false, i1 false}
!63 = !{!"../net/sunrpc/sysfs.c", i32 417, i32 30}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../net/sunrpc/sysfs.c", i32 123, i32 21}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../net/sunrpc/sysfs.c", i32 420, i32 52}
!68 = !{ptr @rpc_sysfs_xprt_info, !69, !"rpc_sysfs_xprt_info", i1 false, i1 false}
!69 = !{!"../net/sunrpc/sysfs.c", i32 420, i32 30}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/sunrpc/sysfs.c", i32 142, i32 21}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../net/sunrpc/sysfs.c", i32 155, i32 47}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../net/sunrpc/sysfs.c", i32 423, i32 60}
!76 = !{ptr @rpc_sysfs_xprt_change_state, !77, !"rpc_sysfs_xprt_change_state", i1 false, i1 false}
!77 = !{!"../net/sunrpc/sysfs.c", i32 423, i32 30}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../net/sunrpc/sysfs.c", i32 173, i32 22}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../net/sunrpc/sysfs.c", i32 188, i32 22}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/sunrpc/sysfs.c", i32 189, i32 19}
!84 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/sunrpc/sysfs.c", i32 189, i32 30}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../net/sunrpc/sysfs.c", i32 190, i32 22}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../net/sunrpc/sysfs.c", i32 191, i32 23}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../net/sunrpc/sysfs.c", i32 192, i32 23}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../net/sunrpc/sysfs.c", i32 193, i32 18}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/sunrpc/sysfs.c", i32 194, i32 20}
!96 = !{ptr @.str.31, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../net/sunrpc/sysfs.c", i32 195, i32 20}
!98 = !{ptr @.str.32, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../net/sunrpc/sysfs.c", i32 196, i32 22}
!100 = !{ptr @.str.33, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../net/sunrpc/sysfs.c", i32 197, i32 22}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../net/sunrpc/sysfs.c", i32 198, i32 24}
!104 = !{ptr @.str.35, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../net/sunrpc/sysfs.c", i32 199, i32 20}
!106 = !{ptr @.str.36, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/sunrpc/sysfs.c", i32 200, i32 19}
!108 = !{ptr @.str.37, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../net/sunrpc/sysfs.c", i32 295, i32 20}
!110 = !{ptr @.str.38, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/sunrpc/sysfs.c", i32 297, i32 25}
!112 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../net/sunrpc/sysfs.c", i32 299, i32 25}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{!"branch_weights", i32 2000, i32 1}
!124 = !{i64 2157248207}
!125 = !{i8 0, i8 2}
