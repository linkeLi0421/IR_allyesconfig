; ModuleID = '/llk/IR_all_yes/fs/dlm/midcomms.c_pt.bc'
source_filename = "../fs/dlm/midcomms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.srcu_data = type { [2 x i32], [2 x i32], [112 x i8], %struct.spinlock, %struct.rcu_segcblist, i32, i32, i8, %struct.timer_list, %struct.work_struct, %struct.callback_head, ptr, i32, i32, ptr, [24 x i8] }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], %struct.atomic_t, [4 x i32], i8 }
%struct.callback_head = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.midcomms_node = type { i32, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.atomic_t, i32, %struct.wait_queue_head, i32, %struct.spinlock, i32, ptr, %struct.hlist_node, %struct.callback_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dlm_header = type { i32, %union.anon.2, i32, i16, i8, i8 }
%union.anon.2 = type { i32 }
%struct.dlm_rcom = type { %struct.dlm_header, i32, i32, i64, i64, i64, [0 x i8] }
%struct.dlm_opts = type { %struct.dlm_header, i8, i8, i16, i32, [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dlm_mhandle = type { ptr, ptr, ptr, ptr, i8, i32, ptr, i32, %struct.list_head, %struct.callback_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dlm_rawmsg_data = type { ptr, ptr }

@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dlm_mhandle\00", [20 x i8] zeroinitializer }, align 32
@dlm_process_incoming_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\013dlm: received invalid length header: %u from node %d, will abort message parsing\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dlm_process_incoming_buffer\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fs/dlm/midcomms.c\00", [46 x i8] zeroinitializer }, align 32
@dlm_process_incoming_buffer._entry_ptr = internal global ptr @dlm_process_incoming_buffer._entry, section ".printk_index", align 4
@dlm_process_incoming_buffer._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013dlm: received invalid version header: %u from node %d, will skip this message\0A\00", [47 x i8] zeroinitializer }, align 32
@dlm_process_incoming_buffer._entry_ptr.6 = internal global ptr @dlm_process_incoming_buffer._entry.4, section ".printk_index", align 4
@nodes_srcu = internal global { %struct.srcu_struct, [200 x i8] } { %struct.srcu_struct { [3 x %struct.srcu_node] zeroinitializer, [3 x ptr] zeroinitializer, %struct.mutex zeroinitializer, %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.93, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.mutex zeroinitializer, i32 0, i32 0, i32 -1, i32 0, i32 0, ptr @nodes_srcu_srcu_data, i32 0, %struct.mutex zeroinitializer, %struct.completion zeroinitializer, %struct.atomic_t zeroinitializer, %struct.delayed_work { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @nodes_srcu, i64 700), ptr getelementptr (i8, ptr @nodes_srcu, i64 700) }, ptr null, %struct.lockdep_map { ptr getelementptr (i8, ptr @nodes_srcu, i64 696), [2 x ptr] zeroinitializer, ptr @.str.94, i8 0, i8 0, i8 0, i32 0, i32 0 } }, %struct.timer_list { %struct.hlist_node { ptr inttoptr (i32 768 to ptr), ptr null }, i32 0, ptr @delayed_work_timer_fn, i32 2097152, %struct.lockdep_map { ptr @.str.95, [2 x ptr] zeroinitializer, ptr @.str.95, i8 0, i8 0, i8 0, i32 0, i32 0 } }, ptr null, i32 0 }, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.96, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [200 x i8] zeroinitializer }, align 32
@dlm_midcomms_unack_msg_resend.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@dlm_midcomms_unack_msg_resend._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.dlm_midcomms_unack_msg_resend = private unnamed_addr constant [30 x i8] c"dlm_midcomms_unack_msg_resend\00", align 1
@dlm_midcomms_unack_msg_resend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.dlm_midcomms_unack_msg_resend, ptr @.str.3, i32 1013, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013dlm: retransmit dlm msg, seq %u, nodeid %d\0A\00", [50 x i8] zeroinitializer }, align 32
@dlm_midcomms_unack_msg_resend._entry_ptr = internal global ptr @dlm_midcomms_unack_msg_resend._entry, section ".printk_index", align 4
@dlm_midcomms_get_mhandle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@node_hash = internal global { [32 x %struct.hlist_head], [32 x i8] } zeroinitializer, align 32
@dlm_midcomms_add_member.__UNIQUE_ID_ddebug619 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 1, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dlm\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dlm_midcomms_add_member\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"receive add member from node %d with state %s\0A\00", [49 x i8] zeroinitializer }, align 32
@dlm_midcomms_add_member.__UNIQUE_ID_ddebug620 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.3, ptr @.str.13, i8 1, i8 51, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"switch node %d to state %s\0A\00", [36 x i8] zeroinitializer }, align 32
@dlm_midcomms_add_member._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.3, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013dlm: reset node %d because shutdown stuck\0A\00", [51 x i8] zeroinitializer }, align 32
@dlm_midcomms_add_member._entry_ptr = internal global ptr @dlm_midcomms_add_member._entry, section ".printk_index", align 4
@dlm_midcomms_add_member.__UNIQUE_ID_ddebug621 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.3, ptr @.str.15, i8 1, i8 55, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"node %d users inc count %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dlm_midcomms_remove_member.__UNIQUE_ID_ddebug622 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 1, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dlm_midcomms_remove_member\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"node %d users dec count %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dlm_midcomms_remove_member.__UNIQUE_ID_ddebug623 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.16, ptr @.str.3, ptr @.str.18, i8 1, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"receive remove member from node %d with state %s\0A\00", [46 x i8] zeroinitializer }, align 32
@dlm_midcomms_remove_member.__UNIQUE_ID_ddebug624 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.16, ptr @.str.3, ptr @.str.19, i8 1, i8 65, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"switch node %d to state %s case 2\0A\00", [61 x i8] zeroinitializer }, align 32
@dlm_midcomms_remove_member._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.3, i32 1296, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013dlm: %s: unexpected state: %d\0A\0A\00", [62 x i8] zeroinitializer }, align 32
@dlm_midcomms_remove_member._entry_ptr = internal global ptr @dlm_midcomms_remove_member._entry, section ".printk_index", align 4
@close_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.114, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @close_lock, i64 52), ptr getelementptr (i8, ptr @close_lock, i64 52) }, ptr @close_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.115, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@dlm_midcomms_shutdown.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nodes_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.122, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__pcpu_unique_nodes_srcu_srcu_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@nodes_srcu_srcu_data = weak dso_local global %struct.srcu_data zeroinitializer, section ".data..percpu", align 128
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CLOSED\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ESTABLISHED\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FIN_WAIT1\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"FIN_WAIT2\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLOSE_WAIT\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LAST_ACK\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLOSING\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@dlm_midcomms_receive_buffer_3_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 865, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013dlm: msg too small: %u, will skip this message from node %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dlm_midcomms_receive_buffer_3_1\00", [32 x i8] zeroinitializer }, align 32
@dlm_midcomms_receive_buffer_3_1._entry_ptr = internal global ptr @dlm_midcomms_receive_buffer_3_1._entry, section ".printk_index", align 4
@dlm_midcomms_receive_buffer_3_1._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.3, i32 872, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013dlm: unsupported h_cmd received: %u, will skip this message from node %d\0A\00", [52 x i8] zeroinitializer }, align 32
@dlm_midcomms_receive_buffer_3_1._entry_ptr.33 = internal global ptr @dlm_midcomms_receive_buffer_3_1._entry.31, section ".printk_index", align 4
@dlm_midcomms_recv_node_lookup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013dlm: rcom msg too small: %u, will skip this message from node %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"dlm_midcomms_recv_node_lookup\00", [34 x i8] zeroinitializer }, align 32
@dlm_midcomms_recv_node_lookup._entry_ptr = internal global ptr @dlm_midcomms_recv_node_lookup._entry, section ".printk_index", align 4
@dlm_midcomms_recv_node_lookup.__UNIQUE_ID_ddebug612 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.35, ptr @.str.3, ptr @.str.36, i8 0, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"receive begin RCOM msg from node %d with state %s\0A\00", [45 x i8] zeroinitializer }, align 32
@dlm_midcomms_recv_node_lookup.__UNIQUE_ID_ddebug613 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.35, ptr @.str.3, ptr @.str.13, i8 0, i8 -107, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dlm_midcomms_recv_node_lookup._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.35, ptr @.str.3, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dlm_midcomms_recv_node_lookup._entry_ptr.38 = internal global ptr @dlm_midcomms_recv_node_lookup._entry.37, section ".printk_index", align 4
@dlm_midcomms_recv_node_lookup._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.35, ptr @.str.3, i32 632, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013dlm: opts msg too small: %u, will skip this message from node %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dlm_midcomms_recv_node_lookup._entry_ptr.41 = internal global ptr @dlm_midcomms_recv_node_lookup._entry.39, section ".printk_index", align 4
@dlm_midcomms_recv_node_lookup._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dlm_midcomms_recv_node_lookup._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.3, i32 637, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013dlm: received dlm opts message nextcmd %d from node %d in an invalid sequence\0A\00", [47 x i8] zeroinitializer }, align 32
@dlm_midcomms_recv_node_lookup._entry_ptr.44 = internal global ptr @dlm_midcomms_recv_node_lookup._entry.42, section ".printk_index", align 4
@dlm_midcomms_recv_node_lookup._rs.45 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dlm_midcomms_recv_node_lookup._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.35, ptr @.str.3, i32 641, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013dlm: received dlm message cmd %d from node %d in an invalid sequence\0A\00", [56 x i8] zeroinitializer }, align 32
@dlm_midcomms_recv_node_lookup._entry_ptr.48 = internal global ptr @dlm_midcomms_recv_node_lookup._entry.46, section ".printk_index", align 4
@dlm_midcomms_version_check_3_1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013dlm: version 0x%08x for node %d detected\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dlm_midcomms_version_check_3_1\00", [33 x i8] zeroinitializer }, align 32
@dlm_midcomms_version_check_3_1._entry_ptr = internal global ptr @dlm_midcomms_version_check_3_1._entry, section ".printk_index", align 4
@dlm_midcomms_version_check_3_1._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dlm_midcomms_version_check_3_1._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013dlm: version mismatch detected, assumed 0x%08x but node %d has 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@dlm_midcomms_version_check_3_1._entry_ptr.53 = internal global ptr @dlm_midcomms_version_check_3_1._entry.51, section ".printk_index", align 4
@dlm_midcomms_receive_buffer_3_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 755, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013dlm: unsupported rcom type received: %u, will skip this message from node %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dlm_midcomms_receive_buffer_3_2\00", [32 x i8] zeroinitializer }, align 32
@dlm_midcomms_receive_buffer_3_2._entry_ptr = internal global ptr @dlm_midcomms_receive_buffer_3_2._entry, section ".printk_index", align 4
@dlm_midcomms_receive_buffer_3_2._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.55, ptr @.str.3, i32 768, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dlm_midcomms_receive_buffer_3_2._entry_ptr.57 = internal global ptr @dlm_midcomms_receive_buffer_3_2._entry.56, section ".printk_index", align 4
@dlm_midcomms_receive_buffer_3_2._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.55, ptr @.str.3, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013dlm: inner rcom msg too small: %u, will skip this message from node %d\0A\00", [54 x i8] zeroinitializer }, align 32
@dlm_midcomms_receive_buffer_3_2._entry_ptr.60 = internal global ptr @dlm_midcomms_receive_buffer_3_2._entry.58, section ".printk_index", align 4
@dlm_midcomms_receive_buffer_3_2._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.55, ptr @.str.3, i32 789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013dlm: inner msg too small: %u, will skip this message from node %d\0A\00", [59 x i8] zeroinitializer }, align 32
@dlm_midcomms_receive_buffer_3_2._entry_ptr.63 = internal global ptr @dlm_midcomms_receive_buffer_3_2._entry.61, section ".printk_index", align 4
@dlm_midcomms_receive_buffer_3_2._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.55, ptr @.str.3, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013dlm: inner fin too small: %u, will skip this message from node %d\0A\00", [59 x i8] zeroinitializer }, align 32
@dlm_midcomms_receive_buffer_3_2._entry_ptr.66 = internal global ptr @dlm_midcomms_receive_buffer_3_2._entry.64, section ".printk_index", align 4
@dlm_midcomms_receive_buffer_3_2._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.55, ptr @.str.3, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\013dlm: unsupported inner h_cmd received: %u, will skip this message from node %d\0A\00", [46 x i8] zeroinitializer }, align 32
@dlm_midcomms_receive_buffer_3_2._entry_ptr.69 = internal global ptr @dlm_midcomms_receive_buffer_3_2._entry.67, section ".printk_index", align 4
@dlm_midcomms_receive_buffer_3_2._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.55, ptr @.str.3, i32 816, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dlm_midcomms_receive_buffer_3_2._entry_ptr.71 = internal global ptr @dlm_midcomms_receive_buffer_3_2._entry.70, section ".printk_index", align 4
@dlm_midcomms_version_check_3_2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.72, ptr @.str.3, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"dlm_midcomms_version_check_3_2\00", [33 x i8] zeroinitializer }, align 32
@dlm_midcomms_version_check_3_2._entry_ptr = internal global ptr @dlm_midcomms_version_check_3_2._entry, section ".printk_index", align 4
@dlm_midcomms_version_check_3_2._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dlm_midcomms_version_check_3_2._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.72, ptr @.str.3, i32 667, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dlm_midcomms_version_check_3_2._entry_ptr.74 = internal global ptr @dlm_midcomms_version_check_3_2._entry.73, section ".printk_index", align 4
@dlm_opts_check_msglen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013dlm: fin too small: %d, will skip this message from node %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dlm_opts_check_msglen\00", [42 x i8] zeroinitializer }, align 32
@dlm_opts_check_msglen._entry_ptr = internal global ptr @dlm_opts_check_msglen._entry, section ".printk_index", align 4
@dlm_opts_check_msglen._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.3, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013dlm: msg too small: %d, will skip this message from node %d\0A\00", [33 x i8] zeroinitializer }, align 32
@dlm_opts_check_msglen._entry_ptr.79 = internal global ptr @dlm_opts_check_msglen._entry.77, section ".printk_index", align 4
@dlm_opts_check_msglen._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.76, ptr @.str.3, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013dlm: rcom msg too small: %d, will skip this message from node %d\0A\00", [60 x i8] zeroinitializer }, align 32
@dlm_opts_check_msglen._entry_ptr.82 = internal global ptr @dlm_opts_check_msglen._entry.80, section ".printk_index", align 4
@dlm_opts_check_msglen._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.76, ptr @.str.3, i32 716, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013dlm: unsupported o_nextcmd received: %u, will skip this message from node %d\0A\00", [48 x i8] zeroinitializer }, align 32
@dlm_opts_check_msglen._entry_ptr.85 = internal global ptr @dlm_opts_check_msglen._entry.83, section ".printk_index", align 4
@dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug607 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.86, ptr @.str.3, ptr @.str.87, i8 0, i8 123, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dlm_midcomms_receive_buffer\00", [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"receive fin msg from node %d with state %s\0A\00", [52 x i8] zeroinitializer }, align 32
@dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug608 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.86, ptr @.str.3, ptr @.str.13, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug609 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.86, ptr @.str.3, ptr @.str.88, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"switch node %d to state %s case 1\0A\00", [61 x i8] zeroinitializer }, align 32
@dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug610 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.86, ptr @.str.3, ptr @.str.13, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug611 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.86, ptr @.str.3, ptr @.str.13, i8 0, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dlm_midcomms_receive_buffer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.86, ptr @.str.3, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dlm_midcomms_receive_buffer._entry_ptr = internal global ptr @dlm_midcomms_receive_buffer._entry, section ".printk_index", align 4
@dlm_midcomms_receive_buffer._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@dlm_midcomms_receive_buffer._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.86, ptr @.str.3, i32 551, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013dlm: ignore dlm msg because seq mismatch, seq: %u, expected: %u, nodeid: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@dlm_midcomms_receive_buffer._entry_ptr.91 = internal global ptr @dlm_midcomms_receive_buffer._entry.89, section ".printk_index", align 4
@dlm_receive_ack.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dlm_receive_ack.__warned.92 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nodes_srcu.lock\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(nodes_srcu.work).work\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fs/dlm/midcomms.c:214\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nodes_srcu\00", [21 x i8] zeroinitializer }, align 32
@nodeid2node.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&node->state_lock\00", [46 x i8] zeroinitializer }, align 32
@nodeid2node.__key.98 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&node->send_queue_lock\00", [41 x i8] zeroinitializer }, align 32
@nodeid2node.__key.100 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.101 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&node->shutdown_wait\00", [43 x i8] zeroinitializer }, align 32
@__find_node.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@srcu_read_unlock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.102 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/srcu.h\00", [43 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.105 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@midcomms_node_reset.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.106, ptr @.str.3, ptr @.str.107, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"midcomms_node_reset\00", [44 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reset node %d\0A\00", [17 x i8] zeroinitializer }, align 32
@dlm_send_queue_flush.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.108, ptr @.str.3, ptr @.str.109, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.108 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dlm_send_queue_flush\00", [43 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"flush midcomms send queue of node %d\0A\00", [58 x i8] zeroinitializer }, align 32
@dlm_send_queue_flush.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dlm_send_fin.__UNIQUE_ID_ddebug601 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.110, ptr @.str.3, ptr @.str.111, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dlm_send_fin\00", [19 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sending fin msg to node %d\0A\00", [36 x i8] zeroinitializer }, align 32
@dlm_pas_fin_ack_rcv.__UNIQUE_ID_ddebug606 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.112, ptr @.str.3, ptr @.str.113, i8 0, i8 114, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlm_pas_fin_ack_rcv\00", [44 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"receive passive fin ack from node %d with state %s\0A\00", [44 x i8] zeroinitializer }, align 32
@dlm_pas_fin_ack_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.112, ptr @.str.3, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dlm_pas_fin_ack_rcv._entry_ptr = internal global ptr @dlm_pas_fin_ack_rcv._entry, section ".printk_index", align 4
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"close_lock.wait_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"close_lock\00", [21 x i8] zeroinitializer }, align 32
@midcomms_shutdown.__UNIQUE_ID_ddebug625 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.116, ptr @.str.3, ptr @.str.117, i8 1, i8 77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"midcomms_shutdown\00", [46 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"receive active shutdown for node %d with state %s\0A\00", [45 x i8] zeroinitializer }, align 32
@midcomms_shutdown.__UNIQUE_ID_ddebug626 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.116, ptr @.str.3, ptr @.str.19, i8 1, i8 78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@midcomms_shutdown.__UNIQUE_ID_ddebug627 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.116, ptr @.str.3, ptr @.str.118, i8 1, i8 85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"active shutdown timed out for node %d with state %s\0A\00", [43 x i8] zeroinitializer }, align 32
@midcomms_shutdown.__UNIQUE_ID_ddebug628 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.116, ptr @.str.3, ptr @.str.119, i8 1, i8 87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"active shutdown done for node %d with state %s\0A\00", [48 x i8] zeroinitializer }, align 32
@dlm_act_fin_ack_rcv.__UNIQUE_ID_ddebug616 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.120, ptr @.str.3, ptr @.str.121, i8 1, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dlm_act_fin_ack_rcv\00", [44 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"receive active fin ack from node %d with state %s\0A\00", [45 x i8] zeroinitializer }, align 32
@dlm_act_fin_ack_rcv.__UNIQUE_ID_ddebug617 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.120, ptr @.str.3, ptr @.str.13, i8 1, i8 39, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dlm_act_fin_ack_rcv.__UNIQUE_ID_ddebug618 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.120, ptr @.str.3, ptr @.str.13, i8 1, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@dlm_act_fin_ack_rcv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.120, ptr @.str.3, i32 1196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@dlm_act_fin_ack_rcv._entry_ptr = internal global ptr @dlm_act_fin_ack_rcv._entry, section ".printk_index", align 4
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nodes_lock\00", [21 x i8] zeroinitializer }, align 32
@switch.table.dlm_midcomms_state = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.dlm_midcomms_add_member = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.dlm_midcomms_add_member.123 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.dlm_midcomms_remove_member = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.dlm_midcomms_remove_member.124 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.dlm_pas_fin_ack_rcv = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.midcomms_shutdown = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.midcomms_shutdown.125 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.midcomms_shutdown.126 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.midcomms_shutdown.127 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.dlm_midcomms_recv_node_lookup = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.dlm_midcomms_recv_node_lookup.128 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.dlm_midcomms_receive_buffer = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.dlm_midcomms_receive_buffer.129 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.dlm_midcomms_receive_buffer.130 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.dlm_midcomms_receive_buffer.131 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.dlm_midcomms_receive_buffer.132 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.dlm_act_fin_ack_rcv = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.dlm_act_fin_ack_rcv.133 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@switch.table.dlm_act_fin_ack_rcv.134 = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16777984, i64 33555200]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.136 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.137 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 196609, i64 196610]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 196609, i64 196610]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.143 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 6]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.146 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 196609]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 196610]
@__sancov_gen_cov_switch_values.150 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.151 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 7]
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 226, i32 27 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 908, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 927, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant [11 x i8] c"nodes_srcu\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1006, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1012, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant [10 x i8] c"node_hash\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 212, i32 26 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1220, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1227, i32 4 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1235, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1245, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1268, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1275, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1285, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1295, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant [11 x i8] c"close_lock\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [11 x i8] c"nodes_lock\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 234, i32 10 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 236, i32 10 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 238, i32 10 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 240, i32 10 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 242, i32 10 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 244, i32 10 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 246, i32 10 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 248, i32 10 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 864, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 871, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 572, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 589, i32 6 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 605, i32 6 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 631, i32 5 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 636, i32 4 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 640, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 829, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 835, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 754, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 767, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 780, i32 5 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 788, i32 5 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 796, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 803, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 815, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 660, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 666, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 692, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 700, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 708, i32 4 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 715, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 492, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 506, i32 6 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 528, i32 5 }
@___asan_gen_.425 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 550, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 214, i32 1 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 343, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 344, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 347, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant [24 x i8] c"../include/linux/srcu.h\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.465, i32 189, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 695, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 723, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 317, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 304, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 419, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 457, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 471, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 222, i32 8 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1332, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1365, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1371, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1174, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 1195, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.531 = private constant [21 x i8] c"../fs/dlm/midcomms.c\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.531, i32 213, i32 8 }
@___asan_gen_.533 = private unnamed_addr constant [32 x i8] c"switch.table.dlm_midcomms_state\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [37 x i8] c"switch.table.dlm_midcomms_add_member\00", align 1
@___asan_gen_.535 = private unnamed_addr constant [41 x i8] c"switch.table.dlm_midcomms_add_member.123\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [40 x i8] c"switch.table.dlm_midcomms_remove_member\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [44 x i8] c"switch.table.dlm_midcomms_remove_member.124\00", align 1
@___asan_gen_.538 = private unnamed_addr constant [33 x i8] c"switch.table.dlm_pas_fin_ack_rcv\00", align 1
@___asan_gen_.539 = private unnamed_addr constant [31 x i8] c"switch.table.midcomms_shutdown\00", align 1
@___asan_gen_.540 = private unnamed_addr constant [35 x i8] c"switch.table.midcomms_shutdown.125\00", align 1
@___asan_gen_.541 = private unnamed_addr constant [35 x i8] c"switch.table.midcomms_shutdown.126\00", align 1
@___asan_gen_.542 = private unnamed_addr constant [35 x i8] c"switch.table.midcomms_shutdown.127\00", align 1
@___asan_gen_.543 = private unnamed_addr constant [43 x i8] c"switch.table.dlm_midcomms_recv_node_lookup\00", align 1
@___asan_gen_.544 = private unnamed_addr constant [47 x i8] c"switch.table.dlm_midcomms_recv_node_lookup.128\00", align 1
@___asan_gen_.545 = private unnamed_addr constant [41 x i8] c"switch.table.dlm_midcomms_receive_buffer\00", align 1
@___asan_gen_.546 = private unnamed_addr constant [45 x i8] c"switch.table.dlm_midcomms_receive_buffer.129\00", align 1
@___asan_gen_.547 = private unnamed_addr constant [45 x i8] c"switch.table.dlm_midcomms_receive_buffer.130\00", align 1
@___asan_gen_.548 = private unnamed_addr constant [45 x i8] c"switch.table.dlm_midcomms_receive_buffer.131\00", align 1
@___asan_gen_.549 = private unnamed_addr constant [45 x i8] c"switch.table.dlm_midcomms_receive_buffer.132\00", align 1
@___asan_gen_.550 = private unnamed_addr constant [33 x i8] c"switch.table.dlm_act_fin_ack_rcv\00", align 1
@___asan_gen_.551 = private unnamed_addr constant [37 x i8] c"switch.table.dlm_act_fin_ack_rcv.133\00", align 1
@___asan_gen_.552 = private unnamed_addr constant [37 x i8] c"switch.table.dlm_act_fin_ack_rcv.134\00", align 1
@llvm.compiler.used = appending global [178 x ptr] [ptr @dlm_act_fin_ack_rcv._entry, ptr @dlm_act_fin_ack_rcv._entry_ptr, ptr @dlm_midcomms_add_member._entry, ptr @dlm_midcomms_add_member._entry_ptr, ptr @dlm_midcomms_receive_buffer._entry, ptr @dlm_midcomms_receive_buffer._entry.89, ptr @dlm_midcomms_receive_buffer._entry_ptr, ptr @dlm_midcomms_receive_buffer._entry_ptr.91, ptr @dlm_midcomms_receive_buffer_3_1._entry, ptr @dlm_midcomms_receive_buffer_3_1._entry.31, ptr @dlm_midcomms_receive_buffer_3_1._entry_ptr, ptr @dlm_midcomms_receive_buffer_3_1._entry_ptr.33, ptr @dlm_midcomms_receive_buffer_3_2._entry, ptr @dlm_midcomms_receive_buffer_3_2._entry.56, ptr @dlm_midcomms_receive_buffer_3_2._entry.58, ptr @dlm_midcomms_receive_buffer_3_2._entry.61, ptr @dlm_midcomms_receive_buffer_3_2._entry.64, ptr @dlm_midcomms_receive_buffer_3_2._entry.67, ptr @dlm_midcomms_receive_buffer_3_2._entry.70, ptr @dlm_midcomms_receive_buffer_3_2._entry_ptr, ptr @dlm_midcomms_receive_buffer_3_2._entry_ptr.57, ptr @dlm_midcomms_receive_buffer_3_2._entry_ptr.60, ptr @dlm_midcomms_receive_buffer_3_2._entry_ptr.63, ptr @dlm_midcomms_receive_buffer_3_2._entry_ptr.66, ptr @dlm_midcomms_receive_buffer_3_2._entry_ptr.69, ptr @dlm_midcomms_receive_buffer_3_2._entry_ptr.71, ptr @dlm_midcomms_recv_node_lookup._entry, ptr @dlm_midcomms_recv_node_lookup._entry.37, ptr @dlm_midcomms_recv_node_lookup._entry.39, ptr @dlm_midcomms_recv_node_lookup._entry.42, ptr @dlm_midcomms_recv_node_lookup._entry.46, ptr @dlm_midcomms_recv_node_lookup._entry_ptr, ptr @dlm_midcomms_recv_node_lookup._entry_ptr.38, ptr @dlm_midcomms_recv_node_lookup._entry_ptr.41, ptr @dlm_midcomms_recv_node_lookup._entry_ptr.44, ptr @dlm_midcomms_recv_node_lookup._entry_ptr.48, ptr @dlm_midcomms_remove_member._entry, ptr @dlm_midcomms_remove_member._entry_ptr, ptr @dlm_midcomms_unack_msg_resend._entry, ptr @dlm_midcomms_unack_msg_resend._entry_ptr, ptr @dlm_midcomms_version_check_3_1._entry, ptr @dlm_midcomms_version_check_3_1._entry.51, ptr @dlm_midcomms_version_check_3_1._entry_ptr, ptr @dlm_midcomms_version_check_3_1._entry_ptr.53, ptr @dlm_midcomms_version_check_3_2._entry, ptr @dlm_midcomms_version_check_3_2._entry.73, ptr @dlm_midcomms_version_check_3_2._entry_ptr, ptr @dlm_midcomms_version_check_3_2._entry_ptr.74, ptr @dlm_opts_check_msglen._entry, ptr @dlm_opts_check_msglen._entry.77, ptr @dlm_opts_check_msglen._entry.80, ptr @dlm_opts_check_msglen._entry.83, ptr @dlm_opts_check_msglen._entry_ptr, ptr @dlm_opts_check_msglen._entry_ptr.79, ptr @dlm_opts_check_msglen._entry_ptr.82, ptr @dlm_opts_check_msglen._entry_ptr.85, ptr @dlm_pas_fin_ack_rcv._entry, ptr @dlm_pas_fin_ack_rcv._entry_ptr, ptr @dlm_process_incoming_buffer._entry, ptr @dlm_process_incoming_buffer._entry.4, ptr @dlm_process_incoming_buffer._entry_ptr, ptr @dlm_process_incoming_buffer._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @nodes_srcu, ptr @.str.7, ptr @dlm_midcomms_unack_msg_resend._rs, ptr @.str.8, ptr @.str.9, ptr @node_hash, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @close_lock, ptr @nodes_lock, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.40, ptr @dlm_midcomms_recv_node_lookup._rs, ptr @.str.43, ptr @dlm_midcomms_recv_node_lookup._rs.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @dlm_midcomms_version_check_3_1._rs, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.72, ptr @dlm_midcomms_version_check_3_2._rs, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @dlm_midcomms_receive_buffer._rs, ptr @.str.90, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @nodeid2node.__key, ptr @.str.97, ptr @nodeid2node.__key.98, ptr @.str.99, ptr @nodeid2node.__key.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @switch.table.dlm_midcomms_state, ptr @switch.table.dlm_midcomms_add_member, ptr @switch.table.dlm_midcomms_add_member.123, ptr @switch.table.dlm_midcomms_remove_member, ptr @switch.table.dlm_midcomms_remove_member.124, ptr @switch.table.dlm_pas_fin_ack_rcv, ptr @switch.table.midcomms_shutdown, ptr @switch.table.midcomms_shutdown.125, ptr @switch.table.midcomms_shutdown.126, ptr @switch.table.midcomms_shutdown.127, ptr @switch.table.dlm_midcomms_recv_node_lookup, ptr @switch.table.dlm_midcomms_recv_node_lookup.128, ptr @switch.table.dlm_midcomms_receive_buffer, ptr @switch.table.dlm_midcomms_receive_buffer.129, ptr @switch.table.dlm_midcomms_receive_buffer.130, ptr @switch.table.dlm_midcomms_receive_buffer.131, ptr @switch.table.dlm_midcomms_receive_buffer.132, ptr @switch.table.dlm_act_fin_ack_rcv, ptr @switch.table.dlm_act_fin_ack_rcv.133, ptr @switch.table.dlm_act_fin_ack_rcv.134], section "llvm.metadata"
@0 = internal global [147 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_process_incoming_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_process_incoming_buffer._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodes_srcu to i32), i32 824, i32 1024, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_unack_msg_resend._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_unack_msg_resend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @node_hash to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_add_member._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_remove_member._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @close_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodes_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_receive_buffer_3_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_receive_buffer_3_1._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_recv_node_lookup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_recv_node_lookup._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_recv_node_lookup._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_recv_node_lookup._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_recv_node_lookup._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_recv_node_lookup._rs.45 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_recv_node_lookup._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_version_check_3_1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_version_check_3_1._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_version_check_3_1._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_receive_buffer_3_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_receive_buffer_3_2._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_receive_buffer_3_2._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_receive_buffer_3_2._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_receive_buffer_3_2._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_receive_buffer_3_2._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_receive_buffer_3_2._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_version_check_3_2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_version_check_3_2._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_version_check_3_2._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_opts_check_msglen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_opts_check_msglen._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_opts_check_msglen._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_opts_check_msglen._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_receive_buffer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_receive_buffer._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_midcomms_receive_buffer._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodeid2node.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodeid2node.__key.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nodeid2node.__key.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_pas_fin_ack_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlm_act_fin_ack_rcv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_midcomms_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_midcomms_add_member to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_midcomms_add_member.123 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_midcomms_remove_member to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_midcomms_remove_member.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_pas_fin_ack_rcv to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.midcomms_shutdown to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.midcomms_shutdown.125 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.midcomms_shutdown.126 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.midcomms_shutdown.127 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_midcomms_recv_node_lookup to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_midcomms_recv_node_lookup.128 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_midcomms_receive_buffer to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_midcomms_receive_buffer.129 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_midcomms_receive_buffer.130 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_midcomms_receive_buffer.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_midcomms_receive_buffer.132 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_act_fin_ack_rcv to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_act_fin_ack_rcv.133 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dlm_act_fin_ack_rcv.134 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_midcomms_cache_create() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @dlm_midcomms_state(ptr nocapture noundef readonly %node) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %switch.tableidx = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 7
  br i1 %2, label %switch.lookup, label %entry.dlm_state_str.exit_crit_edge

entry.dlm_state_str.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_midcomms_state, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dlm_state_str.exit

dlm_state_str.exit:                               ; preds = %switch.lookup, %entry.dlm_state_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.28, %entry.dlm_state_str.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dlm_midcomms_flags(ptr nocapture noundef readonly %node) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 7
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_midcomms_send_queue_cnt(ptr noundef %node) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %send_queue_cnt = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %send_queue_cnt, i32 noundef 4) #11
  %0 = ptrtoint ptr %send_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %send_queue_cnt, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @dlm_midcomms_version(ptr nocapture noundef readonly %node) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_process_incoming_buffer(i32 noundef %nodeid, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %len)
  %cmp59 = icmp ugt i32 %len, 15
  br i1 %cmp59, label %entry.while.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %entry.while.body_crit_edge
  %len.addr.065 = phi i32 [ %sub, %sw.epilog.while.body_crit_edge ], [ %len, %entry.while.body_crit_edge ]
  %ret.064 = phi i32 [ %add, %sw.epilog.while.body_crit_edge ], [ 0, %entry.while.body_crit_edge ]
  %ptr.060 = phi ptr [ %add.ptr, %sw.epilog.while.body_crit_edge ], [ %buf, %entry.while.body_crit_edge ]
  %h_length = getelementptr inbounds %struct.dlm_header, ptr %ptr.060, i32 0, i32 3
  %0 = ptrtoint ptr %h_length to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %h_length, align 4
  %2 = tail call i16 @llvm.bswap.i16(i16 %1)
  %conv = zext i16 %2 to i32
  %3 = add i16 %2, -4097
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4081, i16 %3)
  %4 = icmp ult i16 %3, -4081
  br i1 %4, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv, i32 noundef %nodeid) #14
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_cmp4(i32 %len.addr.065, i32 %conv)
  %cmp8 = icmp slt i32 %len.addr.065, %conv
  br i1 %cmp8, label %if.end.cleanup_crit_edge, label %if.end11

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %5 = ptrtoint ptr %ptr.060 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ptr.060, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %do.end15 [
    i32 16777984, label %sw.bb
    i32 33555200, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end11
  %call.i.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @nodes_srcu) #11
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  %call1.i = tail call fastcc ptr @dlm_midcomms_recv_node_lookup(i32 noundef %nodeid, ptr noundef %ptr.060, i16 noundef zeroext %2, ptr noundef nonnull @dlm_midcomms_version_check_3_1) #11
  %tobool.not.i = icmp eq ptr %call1.i, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %tobool.not.i.i = icmp ult i32 %call.i.i, 2
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  br i1 %tobool.not.i.i, label %if.then.i.srcu_read_unlock.exit.i_crit_edge, label %land.rhs.i.i

if.then.i.srcu_read_unlock.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit.i

land.rhs.i.i:                                     ; preds = %if.then.i
  %.b1.i.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.srcu_read_unlock.exit.i_crit_edge, label %if.then.i.i, !prof !286

land.rhs.i.i.srcu_read_unlock.exit.i_crit_edge:   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit.i

srcu_read_unlock.exit.i:                          ; preds = %if.then.i.i, %land.rhs.i.i.srcu_read_unlock.exit.i_crit_edge, %if.then.i.srcu_read_unlock.exit.i_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %call.i.i) #11
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  br i1 %tobool.not.i.i, label %if.end.i.srcu_read_unlock.exit31.i_crit_edge, label %land.rhs.i29.i

if.end.i.srcu_read_unlock.exit31.i_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit31.i

land.rhs.i29.i:                                   ; preds = %if.end.i
  %.b1.i28.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i28.i, label %land.rhs.i29.i.srcu_read_unlock.exit31.i_crit_edge, label %if.then.i30.i, !prof !286

land.rhs.i29.i.srcu_read_unlock.exit31.i_crit_edge: ; preds = %land.rhs.i29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit31.i

if.then.i30.i:                                    ; preds = %land.rhs.i29.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit31.i

srcu_read_unlock.exit31.i:                        ; preds = %if.then.i30.i, %land.rhs.i29.i.srcu_read_unlock.exit31.i_crit_edge, %if.end.i.srcu_read_unlock.exit31.i_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %call.i.i) #11
  %h_cmd.i = getelementptr inbounds %struct.dlm_header, ptr %ptr.060, i32 0, i32 4
  %8 = ptrtoint ptr %h_cmd.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %h_cmd.i, align 2
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.135)
  switch i8 %9, label %do.end10.i [
    i8 2, label %srcu_read_unlock.exit31.i.sw.epilog.i_crit_edge
    i8 1, label %sw.bb.i
  ]

srcu_read_unlock.exit31.i.sw.epilog.i_crit_edge:  ; preds = %srcu_read_unlock.exit31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %srcu_read_unlock.exit31.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 88, i16 %2)
  %cmp.i = icmp ult i16 %2, 88
  br i1 %cmp.i, label %do.end.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv, i32 noundef %nodeid) #14
  br label %sw.epilog

do.end10.i:                                       ; preds = %srcu_read_unlock.exit31.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %9 to i32
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv.i, i32 noundef %nodeid) #14
  br label %sw.epilog

sw.epilog.i:                                      ; preds = %sw.bb.i.sw.epilog.i_crit_edge, %srcu_read_unlock.exit31.i.sw.epilog.i_crit_edge
  tail call void @dlm_receive_buffer(ptr noundef %ptr.060, i32 noundef %nodeid) #11
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end11
  %call.i.i43 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @nodes_srcu) #11
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  %call1.i44 = tail call fastcc ptr @dlm_midcomms_recv_node_lookup(i32 noundef %nodeid, ptr noundef %ptr.060, i16 noundef zeroext %2, ptr noundef nonnull @dlm_midcomms_version_check_3_2) #11
  %tobool.not.i45 = icmp eq ptr %call1.i44, null
  br i1 %tobool.not.i45, label %sw.bb12.out.i_crit_edge, label %if.end.i47

sw.bb12.out.i_crit_edge:                          ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #13
  br label %out.i

if.end.i47:                                       ; preds = %sw.bb12
  %h_cmd.i46 = getelementptr inbounds %struct.dlm_header, ptr %ptr.060, i32 0, i32 4
  %11 = ptrtoint ptr %h_cmd.i46 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %h_cmd.i46, align 2
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.136)
  switch i8 %12, label %do.end98.i [
    i8 2, label %sw.bb.i48
    i8 3, label %sw.bb34.i
    i8 4, label %sw.bb93.i
  ]

sw.bb.i48:                                        ; preds = %if.end.i47
  %rc_type.i = getelementptr inbounds %struct.dlm_rcom, ptr %ptr.060, i32 0, i32 1
  %14 = ptrtoint ptr %rc_type.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rc_type.i, align 8
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %16, label %do.end.i50 [
    i32 2, label %sw.bb.i48.sw.epilog.i51_crit_edge
    i32 6, label %sw.bb.i48.sw.epilog.i51_crit_edge72
    i32 1, label %sw.bb.i48.sw.epilog.i51_crit_edge73
    i32 5, label %sw.bb.i48.sw.epilog.i51_crit_edge74
  ]

sw.bb.i48.sw.epilog.i51_crit_edge74:              ; preds = %sw.bb.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i51

sw.bb.i48.sw.epilog.i51_crit_edge73:              ; preds = %sw.bb.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i51

sw.bb.i48.sw.epilog.i51_crit_edge72:              ; preds = %sw.bb.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i51

sw.bb.i48.sw.epilog.i51_crit_edge:                ; preds = %sw.bb.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i51

do.end.i50:                                       ; preds = %sw.bb.i48
  call void @__sanitizer_cov_trace_pc() #13
  %call6.i49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, i32 noundef %16, i32 noundef %nodeid) #14
  br label %out.i

sw.epilog.i51:                                    ; preds = %sw.bb.i48.sw.epilog.i51_crit_edge, %sw.bb.i48.sw.epilog.i51_crit_edge72, %sw.bb.i48.sw.epilog.i51_crit_edge73, %sw.bb.i48.sw.epilog.i51_crit_edge74
  %flags.i = getelementptr inbounds %struct.midcomms_node, ptr %call1.i44, i32 0, i32 7
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %flags.i, align 4
  %20 = and i32 %19, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool8.not.i = icmp eq i32 %20, 0
  br i1 %tobool8.not.i, label %sw.epilog.i51.if.end26.i_crit_edge, label %do.end20.i, !prof !286

sw.epilog.i51.if.end26.i_crit_edge:               ; preds = %sw.epilog.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26.i

do.end20.i:                                       ; preds = %sw.epilog.i51
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 759, i32 noundef 9, ptr noundef null) #11
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end20.i, %sw.epilog.i51.if.end26.i_crit_edge
  tail call void @dlm_receive_buffer(ptr noundef %ptr.060, i32 noundef %nodeid) #11
  br label %out.i

sw.bb34.i:                                        ; preds = %if.end.i47
  %u.i = getelementptr inbounds %struct.dlm_header, ptr %ptr.060, i32 0, i32 1
  %21 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %u.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %2)
  %cmp.i.i = icmp ult i16 %2, 24
  br i1 %cmp.i.i, label %sw.bb34.i.do.end40.i_crit_edge, label %if.end.i.i

sw.bb34.i.do.end40.i_crit_edge:                   ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40.i

if.end.i.i:                                       ; preds = %sw.bb34.i
  %sub.i.i = add nsw i32 %conv, -24
  %o_optlen.i.i = getelementptr inbounds %struct.dlm_opts, ptr %ptr.060, i32 0, i32 3
  %24 = ptrtoint ptr %o_optlen.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %o_optlen.i.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #11
  %conv2.i.i = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %conv2.i.i)
  %cmp3.i.i = icmp slt i32 %sub.i.i, %conv2.i.i
  br i1 %cmp3.i.i, label %if.end.i.i.do.end40.i_crit_edge, label %if.end6.i.i

if.end.i.i.do.end40.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end40.i

if.end6.i.i:                                      ; preds = %if.end.i.i
  %sub9.i.i = sub nsw i32 %sub.i.i, %conv2.i.i
  %o_nextcmd.i.i = getelementptr inbounds %struct.dlm_opts, ptr %ptr.060, i32 0, i32 1
  %27 = ptrtoint ptr %o_nextcmd.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %o_nextcmd.i.i, align 8
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.138)
  switch i8 %28, label %do.end38.i.i [
    i8 5, label %sw.bb.i.i
    i8 1, label %sw.bb15.i.i
    i8 2, label %sw.bb26.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub9.i.i)
  %cmp11.i.i = icmp ult i32 %sub9.i.i, 16
  br i1 %cmp11.i.i, label %do.end.i.i, label %sw.bb.i.i.if.end44.i_crit_edge

sw.bb.i.i.if.end44.i_crit_edge:                   ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

do.end.i.i:                                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i141.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %sub9.i.i, i32 noundef %nodeid) #14
  br label %do.end40.i

sw.bb15.i.i:                                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %sub9.i.i)
  %cmp16.i.i = icmp ult i32 %sub9.i.i, 88
  br i1 %cmp16.i.i, label %do.end21.i.i, label %sw.bb15.i.i.if.end44.i_crit_edge

sw.bb15.i.i.if.end44.i_crit_edge:                 ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

do.end21.i.i:                                     ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call24.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %conv, i32 noundef %nodeid) #14
  br label %do.end40.i

sw.bb26.i.i:                                      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %sub9.i.i)
  %cmp27.i.i = icmp ult i32 %sub9.i.i, 48
  br i1 %cmp27.i.i, label %do.end32.i.i, label %sw.bb26.i.i.if.end44.i_crit_edge

sw.bb26.i.i.if.end44.i_crit_edge:                 ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44.i

do.end32.i.i:                                     ; preds = %sw.bb26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call34.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %sub9.i.i, i32 noundef %nodeid) #14
  br label %do.end40.i

do.end38.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv10.i.i = zext i8 %28 to i32
  %call42.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, i32 noundef %conv10.i.i, i32 noundef %nodeid) #14
  br label %do.end40.i

do.end40.i:                                       ; preds = %do.end38.i.i, %do.end32.i.i, %do.end21.i.i, %do.end.i.i, %if.end.i.i.do.end40.i_crit_edge, %sw.bb34.i.do.end40.i_crit_edge
  %call43.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv, i32 noundef %nodeid) #14
  br label %out.i

if.end44.i:                                       ; preds = %sw.bb26.i.i.if.end44.i_crit_edge, %sw.bb15.i.i.if.end44.i_crit_edge, %sw.bb.i.i.if.end44.i_crit_edge
  %o_opts.i = getelementptr inbounds %struct.dlm_opts, ptr %ptr.060, i32 0, i32 5
  %add.ptr.i = getelementptr i8, ptr %o_opts.i, i32 %conv2.i.i
  %h_length46.i = getelementptr inbounds %struct.dlm_header, ptr %add.ptr.i, i32 0, i32 3
  %30 = ptrtoint ptr %h_length46.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %h_length46.i, align 4
  %32 = tail call i16 @llvm.bswap.i16(i16 %31) #11
  %h_cmd47.i = getelementptr inbounds %struct.dlm_header, ptr %add.ptr.i, i32 0, i32 4
  %33 = ptrtoint ptr %h_cmd47.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %h_cmd47.i, align 2
  %35 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.139)
  switch i8 %34, label %do.end88.i [
    i8 2, label %sw.bb49.i
    i8 1, label %sw.bb61.i
    i8 5, label %sw.bb73.i
  ]

sw.bb49.i:                                        ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %32)
  %cmp51.i = icmp ult i16 %32, 48
  br i1 %cmp51.i, label %do.end56.i, label %sw.bb49.i.sw.epilog92.i_crit_edge

sw.bb49.i.sw.epilog92.i_crit_edge:                ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog92.i

do.end56.i:                                       ; preds = %sw.bb49.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv50.i = zext i16 %32 to i32
  %call59.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %conv50.i, i32 noundef %nodeid) #14
  br label %out.i

sw.bb61.i:                                        ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 88, i16 %32)
  %cmp63.i = icmp ult i16 %32, 88
  br i1 %cmp63.i, label %do.end68.i, label %sw.bb61.i.sw.epilog92.i_crit_edge

sw.bb61.i.sw.epilog92.i_crit_edge:                ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog92.i

do.end68.i:                                       ; preds = %sw.bb61.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv62.i = zext i16 %32 to i32
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %conv62.i, i32 noundef %nodeid) #14
  br label %out.i

sw.bb73.i:                                        ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %32)
  %cmp75.i = icmp ult i16 %32, 16
  br i1 %cmp75.i, label %do.end80.i, label %sw.bb73.i.sw.epilog92.i_crit_edge

sw.bb73.i.sw.epilog92.i_crit_edge:                ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog92.i

do.end80.i:                                       ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv74.i = zext i16 %32 to i32
  %call83.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %conv74.i, i32 noundef %nodeid) #14
  br label %out.i

do.end88.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv90.i = zext i16 %32 to i32
  %call91.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %conv90.i, i32 noundef %nodeid) #14
  br label %out.i

sw.epilog92.i:                                    ; preds = %sw.bb73.i.sw.epilog92.i_crit_edge, %sw.bb61.i.sw.epilog92.i_crit_edge, %sw.bb49.i.sw.epilog92.i_crit_edge
  tail call fastcc void @dlm_midcomms_receive_buffer(ptr noundef %add.ptr.i, ptr noundef nonnull %call1.i44, i32 noundef %23) #11
  br label %out.i

sw.bb93.i:                                        ; preds = %if.end.i47
  %u94.i = getelementptr inbounds %struct.dlm_header, ptr %ptr.060, i32 0, i32 1
  %36 = ptrtoint ptr %u94.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %u94.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #11
  %39 = tail call i32 @llvm.read_register.i32(metadata !276) #11
  %and.i.i.i.i.i.i.i = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %42, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !287
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i.i, label %sw.bb93.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb93.i.rcu_read_lock.exit.i.i_crit_edge:       ; preds = %sw.bb93.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb93.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.103, i32 noundef 696, ptr noundef nonnull @.str.104) #11
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %sw.bb93.i.rcu_read_lock.exit.i.i_crit_edge
  %call.i142.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i142.i)
  %tobool.not.i.i52 = icmp eq i32 %call.i142.i, 0
  br i1 %tobool.not.i.i52, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end.i143.i_crit_edge

rcu_read_lock.exit.i.i.do.end.i143.i_crit_edge:   ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i143.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i143.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i143.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i143.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b89.i.i = load i1, ptr @dlm_receive_ack.__warned, align 1
  br i1 %.b89.i.i, label %land.lhs.true3.i.i.do.end.i143.i_crit_edge, label %if.then.i.i53

land.lhs.true3.i.i.do.end.i143.i_crit_edge:       ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i143.i

if.then.i.i53:                                    ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dlm_receive_ack.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 431, ptr noundef nonnull @.str.7) #11
  br label %do.end.i143.i

do.end.i143.i:                                    ; preds = %if.then.i.i53, %land.lhs.true3.i.i.do.end.i143.i_crit_edge, %land.lhs.true.i.i.do.end.i143.i_crit_edge, %rcu_read_lock.exit.i.i.do.end.i143.i_crit_edge
  %send_queue.i.i = getelementptr inbounds %struct.midcomms_node, ptr %call1.i44, i32 0, i32 4
  %43 = ptrtoint ptr %send_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pn101.i.i = load volatile ptr, ptr %send_queue.i.i, align 4
  %cmp.not102.i.i = icmp eq ptr %.pn101.i.i, %send_queue.i.i
  br i1 %cmp.not102.i.i, label %do.end.i143.i.for.end.i.i_crit_edge, label %do.end.i143.i.for.body.i.i_crit_edge

do.end.i143.i.for.body.i.i_crit_edge:             ; preds = %do.end.i143.i
  br label %for.body.i.i

do.end.i143.i.for.end.i.i_crit_edge:              ; preds = %do.end.i143.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i143.i.for.body.i.i_crit_edge
  %.pn103.i.i = phi ptr [ %.pn.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %.pn101.i.i, %do.end.i143.i.for.body.i.i_crit_edge ]
  %seq10.i.i = getelementptr i8, ptr %.pn103.i.i, i32 -12
  %44 = ptrtoint ptr %seq10.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %seq10.i.i, align 4
  %sub.i.i.i = sub i32 %45, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then12.i.i, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

if.then12.i.i:                                    ; preds = %for.body.i.i
  %ack_rcv.i.i = getelementptr i8, ptr %.pn103.i.i, i32 -8
  %46 = ptrtoint ptr %ack_rcv.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ack_rcv.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %47, null
  br i1 %tobool13.not.i.i, label %if.then12.i.i.for.inc.i.i_crit_edge, label %if.then14.i.i

if.then12.i.i.for.inc.i.i_crit_edge:              ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.then14.i.i:                                    ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %47(ptr noundef nonnull %call1.i44) #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then14.i.i, %if.then12.i.i.for.inc.i.i_crit_edge
  %48 = ptrtoint ptr %.pn103.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i.i = load volatile ptr, ptr %.pn103.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %send_queue.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.for.end.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge, %do.end.i143.i.for.end.i.i_crit_edge
  %send_queue_lock.i.i = getelementptr inbounds %struct.midcomms_node, ptr %call1.i44, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %send_queue_lock.i.i) #11
  %call28.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i.i)
  %tobool29.not.i.i = icmp eq i32 %call28.i.i, 0
  br i1 %tobool29.not.i.i, label %land.lhs.true30.i.i, label %for.end.i.i.do.end38.i144.i_crit_edge

for.end.i.i.do.end38.i144.i_crit_edge:            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38.i144.i

land.lhs.true30.i.i:                              ; preds = %for.end.i.i
  %call31.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %land.lhs.true30.i.i.do.end38.i144.i_crit_edge, label %land.lhs.true33.i.i

land.lhs.true30.i.i.do.end38.i144.i_crit_edge:    ; preds = %land.lhs.true30.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38.i144.i

land.lhs.true33.i.i:                              ; preds = %land.lhs.true30.i.i
  %.b8688.i.i = load i1, ptr @dlm_receive_ack.__warned.92, align 1
  br i1 %.b8688.i.i, label %land.lhs.true33.i.i.do.end38.i144.i_crit_edge, label %if.then35.i.i

land.lhs.true33.i.i.do.end38.i144.i_crit_edge:    ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end38.i144.i

if.then35.i.i:                                    ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dlm_receive_ack.__warned.92, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 442, ptr noundef nonnull @.str.7) #11
  br label %do.end38.i144.i

do.end38.i144.i:                                  ; preds = %if.then35.i.i, %land.lhs.true33.i.i.do.end38.i144.i_crit_edge, %land.lhs.true30.i.i.do.end38.i144.i_crit_edge, %for.end.i.i.do.end38.i144.i_crit_edge
  %49 = ptrtoint ptr %send_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn87104.i.i = load volatile ptr, ptr %send_queue.i.i, align 4
  %cmp51.not105.i.i = icmp eq ptr %.pn87104.i.i, %send_queue.i.i
  br i1 %cmp51.not105.i.i, label %do.end38.i144.i.for.end68.i.i_crit_edge, label %for.body52.lr.ph.i.i

do.end38.i144.i.for.end68.i.i_crit_edge:          ; preds = %do.end38.i144.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end68.i.i

for.body52.lr.ph.i.i:                             ; preds = %do.end38.i144.i
  %send_queue_cnt.i.i.i = getelementptr inbounds %struct.midcomms_node, ptr %call1.i44, i32 0, i32 6
  br label %for.body52.i.i

for.body52.i.i:                                   ; preds = %dlm_mhandle_delete.exit.i.i.for.body52.i.i_crit_edge, %for.body52.lr.ph.i.i
  %.pn87106.i.i = phi ptr [ %.pn87104.i.i, %for.body52.lr.ph.i.i ], [ %.pn87.i.i, %dlm_mhandle_delete.exit.i.i.for.body52.i.i_crit_edge ]
  %seq53.i.i = getelementptr i8, ptr %.pn87106.i.i, i32 -12
  %50 = ptrtoint ptr %seq53.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %seq53.i.i, align 4
  %sub.i90.i.i = sub i32 %51, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i90.i.i)
  %cmp.i91.i.i = icmp slt i32 %sub.i90.i.i, 0
  br i1 %cmp.i91.i.i, label %if.then55.i.i, label %for.body52.i.i.for.end68.i.i_crit_edge

for.body52.i.i.for.end68.i.i_crit_edge:           ; preds = %for.body52.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end68.i.i

if.then55.i.i:                                    ; preds = %for.body52.i.i
  %call.i.i2.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn87106.i.i) #11
  br i1 %call.i.i2.i.i.i, label %if.end.i.i.i.i.i, label %if.then55.i.i.dlm_mhandle_delete.exit.i.i_crit_edge

if.then55.i.i.dlm_mhandle_delete.exit.i.i_crit_edge: ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_mhandle_delete.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then55.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i.i = getelementptr i8, ptr %.pn87106.i.i, i32 4
  %52 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %54 = ptrtoint ptr %.pn87106.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %.pn87106.i.i, align 4
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev1.i.i.i.i.i.i, align 4
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %55, ptr %53, align 4
  br label %dlm_mhandle_delete.exit.i.i

dlm_mhandle_delete.exit.i.i:                      ; preds = %if.end.i.i.i.i.i, %if.then55.i.i.dlm_mhandle_delete.exit.i.i_crit_edge
  %prev.i.i.i.i = getelementptr i8, ptr %.pn87106.i.i, i32 4
  %58 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_queue_cnt.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %send_queue_cnt.i.i.i, i32 1, i32 3, i32 1) #11
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_queue_cnt.i.i.i, ptr %send_queue_cnt.i.i.i, i32 1, ptr elementtype(i32) %send_queue_cnt.i.i.i) #11, !srcloc !288
  %rcu.i.i.i = getelementptr i8, ptr %.pn87106.i.i, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull @dlm_mhandle_release) #11
  %60 = ptrtoint ptr %.pn87106.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn87.i.i = load volatile ptr, ptr %.pn87106.i.i, align 4
  %cmp51.not.i.i = icmp eq ptr %.pn87.i.i, %send_queue.i.i
  br i1 %cmp51.not.i.i, label %dlm_mhandle_delete.exit.i.i.for.end68.i.i_crit_edge, label %dlm_mhandle_delete.exit.i.i.for.body52.i.i_crit_edge

dlm_mhandle_delete.exit.i.i.for.body52.i.i_crit_edge: ; preds = %dlm_mhandle_delete.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body52.i.i

dlm_mhandle_delete.exit.i.i.for.end68.i.i_crit_edge: ; preds = %dlm_mhandle_delete.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end68.i.i

for.end68.i.i:                                    ; preds = %dlm_mhandle_delete.exit.i.i.for.end68.i.i_crit_edge, %for.body52.i.i.for.end68.i.i_crit_edge, %do.end38.i144.i.for.end68.i.i_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %send_queue_lock.i.i) #11
  %call.i92.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i92.i.i, label %for.end68.i.i.dlm_receive_ack.exit.i_crit_edge, label %land.lhs.true.i95.i.i

for.end68.i.i.dlm_receive_ack.exit.i_crit_edge:   ; preds = %for.end68.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_receive_ack.exit.i

land.lhs.true.i95.i.i:                            ; preds = %for.end68.i.i
  %call1.i93.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i93.i.i)
  %tobool.not.i94.i.i = icmp eq i32 %call1.i93.i.i, 0
  br i1 %tobool.not.i94.i.i, label %land.lhs.true.i95.i.i.dlm_receive_ack.exit.i_crit_edge, label %land.lhs.true2.i97.i.i

land.lhs.true.i95.i.i.dlm_receive_ack.exit.i_crit_edge: ; preds = %land.lhs.true.i95.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_receive_ack.exit.i

land.lhs.true2.i97.i.i:                           ; preds = %land.lhs.true.i95.i.i
  %.b4.i96.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i96.i.i, label %land.lhs.true2.i97.i.i.dlm_receive_ack.exit.i_crit_edge, label %if.then.i98.i.i

land.lhs.true2.i97.i.i.dlm_receive_ack.exit.i_crit_edge: ; preds = %land.lhs.true2.i97.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_receive_ack.exit.i

if.then.i98.i.i:                                  ; preds = %land.lhs.true2.i97.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.103, i32 noundef 724, ptr noundef nonnull @.str.105) #11
  br label %dlm_receive_ack.exit.i

dlm_receive_ack.exit.i:                           ; preds = %if.then.i98.i.i, %land.lhs.true2.i97.i.i.dlm_receive_ack.exit.i_crit_edge, %land.lhs.true.i95.i.i.dlm_receive_ack.exit.i_crit_edge, %for.end68.i.i.dlm_receive_ack.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !289
  %61 = tail call i32 @llvm.read_register.i32(metadata !276) #11
  %and.i.i.i.i.i99.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i.i.i99.i.i to ptr
  %preempt_count.i.i.i.i100.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i.i.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i.i.i100.i.i, align 4
  %sub.i.i.i.i.i = add i32 %64, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i100.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  br label %out.i

do.end98.i:                                       ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i54 = zext i8 %12 to i32
  %call102.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %conv.i54, i32 noundef %nodeid) #14
  br label %out.i

out.i:                                            ; preds = %do.end98.i, %dlm_receive_ack.exit.i, %sw.epilog92.i, %do.end88.i, %do.end80.i, %do.end68.i, %do.end56.i, %do.end40.i, %if.end26.i, %do.end.i50, %sw.bb12.out.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i43)
  %tobool.not.i145.i = icmp ult i32 %call.i.i43, 2
  br i1 %tobool.not.i145.i, label %out.i.dlm_midcomms_receive_buffer_3_2.exit_crit_edge, label %land.rhs.i.i56

out.i.dlm_midcomms_receive_buffer_3_2.exit_crit_edge: ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_midcomms_receive_buffer_3_2.exit

land.rhs.i.i56:                                   ; preds = %out.i
  %.b1.i.i55 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i.i55, label %land.rhs.i.i56.dlm_midcomms_receive_buffer_3_2.exit_crit_edge, label %if.then.i146.i, !prof !286

land.rhs.i.i56.dlm_midcomms_receive_buffer_3_2.exit_crit_edge: ; preds = %land.rhs.i.i56
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_midcomms_receive_buffer_3_2.exit

if.then.i146.i:                                   ; preds = %land.rhs.i.i56
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %dlm_midcomms_receive_buffer_3_2.exit

dlm_midcomms_receive_buffer_3_2.exit:             ; preds = %if.then.i146.i, %land.rhs.i.i56.dlm_midcomms_receive_buffer_3_2.exit_crit_edge, %out.i.dlm_midcomms_receive_buffer_3_2.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %call.i.i43) #11
  br label %sw.epilog

do.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %65 = tail call i32 @llvm.bswap.i32(i32 %6)
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %65, i32 noundef %nodeid) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end15, %dlm_midcomms_receive_buffer_3_2.exit, %sw.epilog.i, %do.end10.i, %do.end.i, %srcu_read_unlock.exit.i
  %add = add i32 %ret.064, %conv
  %sub = sub i32 %len.addr.065, %conv
  %add.ptr = getelementptr i8, ptr %ptr.060, i32 %conv
  %cmp = icmp ugt i32 %sub, 15
  br i1 %cmp, label %sw.epilog.while.body_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup:                                          ; preds = %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -74, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %ret.064, %if.end.cleanup_crit_edge ], [ %add, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_midcomms_receive_done(i32 noundef %nodeid) local_unnamed_addr #0 align 64 {
entry:
  %ppc.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @nodes_srcu) #11
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  %and.i.i = and i32 %nodeid, 31
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.do.end.i.i_crit_edge

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b37.i.i = load i1, ptr @__find_node.__warned, align 1
  br i1 %.b37.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__find_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 276, ptr noundef nonnull @.str.7) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  %arrayidx.i.i = getelementptr [32 x %struct.hlist_head], ptr @node_hash, i32 0, i32 %and.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %1, null
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -184
  %tobool12.not4144.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool12.not41.i.i = or i1 %tobool10.not.i.i, %tobool12.not4144.i.i
  br i1 %tobool12.not41.i.i, label %do.end.i.i.if.then_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.if.then_crit_edge:                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %node.042.i.i = phi ptr [ %add.ptr27.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %2 = ptrtoint ptr %node.042.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node.042.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %nodeid)
  %cmp.i.i = icmp eq i32 %3, %nodeid
  br i1 %cmp.i.i, label %if.end, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hlist.i.i = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hlist.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %5, null
  %add.ptr27.i.i = getelementptr i8, ptr %5, i32 -184
  %tobool12.not45.i.i = icmp eq ptr %add.ptr27.i.i, null
  %tobool12.not.i.i = or i1 %tobool23.not.i.i, %tobool12.not45.i.i
  br i1 %tobool12.not.i.i, label %for.inc.i.i.if.then_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.then_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %for.inc.i.i.if.then_crit_edge, %do.end.i.i.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %if.then.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

if.then.srcu_read_unlock.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %if.then
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !286

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %if.then.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %call.i) #11
  br label %cleanup

if.end:                                           ; preds = %for.body.i.i
  %version = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 196610, i32 %7)
  %cond = icmp eq i32 %7, 196610
  br i1 %cond, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i25 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i25, label %sw.default.srcu_read_unlock.exit29_crit_edge, label %land.rhs.i27

sw.default.srcu_read_unlock.exit29_crit_edge:     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit29

land.rhs.i27:                                     ; preds = %sw.default
  %.b1.i26 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i26, label %land.rhs.i27.srcu_read_unlock.exit29_crit_edge, label %if.then.i28, !prof !286

land.rhs.i27.srcu_read_unlock.exit29_crit_edge:   ; preds = %land.rhs.i27
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit29

if.then.i28:                                      ; preds = %land.rhs.i27
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit29

srcu_read_unlock.exit29:                          ; preds = %if.then.i28, %land.rhs.i27.srcu_read_unlock.exit29_crit_edge, %sw.default.srcu_read_unlock.exit29_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %call.i) #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %flags = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 7
  %call2 = tail call i32 @_test_and_clear_bit(i32 noundef 4, ptr noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i30 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i30, label %if.then4.srcu_read_unlock.exit34_crit_edge, label %land.rhs.i32

if.then4.srcu_read_unlock.exit34_crit_edge:       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit34

land.rhs.i32:                                     ; preds = %if.then4
  %.b1.i31 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i31, label %land.rhs.i32.srcu_read_unlock.exit34_crit_edge, label %if.then.i33, !prof !286

land.rhs.i32.srcu_read_unlock.exit34_crit_edge:   ; preds = %land.rhs.i32
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit34

if.then.i33:                                      ; preds = %land.rhs.i32
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit34

srcu_read_unlock.exit34:                          ; preds = %if.then.i33, %land.rhs.i32.srcu_read_unlock.exit34_crit_edge, %if.then4.srcu_read_unlock.exit34_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %call.i) #11
  br label %cleanup

if.end5:                                          ; preds = %sw.epilog
  %state_lock = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %state_lock) #11
  %state = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 9
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cond13 = icmp eq i32 %9, 2
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #11
  br i1 %cond13, label %sw.bb, label %if.end5.sw.epilog11_crit_edge

if.end5.sw.epilog11_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog11

sw.bb:                                            ; preds = %if.end5
  %10 = ptrtoint ptr %node.042.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node.042.i.i, align 4
  %seq_next = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %seq_next to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seq_next, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppc.i) #11
  %14 = ptrtoint ptr %ppc.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %ppc.i, align 4, !annotation !290
  %call.i35 = call ptr @dlm_lowcomms_new_msg(i32 noundef %11, i32 noundef 16, i32 noundef 3136, ptr noundef nonnull %ppc.i, ptr noundef null, ptr noundef null) #11
  %tobool.not.i36 = icmp eq ptr %call.i35, null
  br i1 %tobool.not.i36, label %sw.bb.dlm_send_ack.exit_crit_edge, label %if.end.i

sw.bb.dlm_send_ack.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_send_ack.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %ppc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ppc.i, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 196610, ptr %16, align 4
  %call1.i = call i32 @dlm_our_nodeid() #11
  %h_nodeid.i = getelementptr inbounds %struct.dlm_header, ptr %16, i32 0, i32 2
  %18 = ptrtoint ptr %h_nodeid.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call1.i, ptr %h_nodeid.i, align 4
  %h_length.i = getelementptr inbounds %struct.dlm_header, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %h_length.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 16, ptr %h_length.i, align 4
  %h_cmd.i = getelementptr inbounds %struct.dlm_header, ptr %16, i32 0, i32 4
  %20 = ptrtoint ptr %h_cmd.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 4, ptr %h_cmd.i, align 2
  %u.i = getelementptr inbounds %struct.dlm_header, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %13, ptr %u.i, align 4
  call void @header_out(ptr noundef %16) #11
  call void @dlm_lowcomms_commit_msg(ptr noundef nonnull %call.i35) #11
  call void @dlm_lowcomms_put_msg(ptr noundef nonnull %call.i35) #11
  br label %dlm_send_ack.exit

dlm_send_ack.exit:                                ; preds = %if.end.i, %sw.bb.dlm_send_ack.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppc.i) #11
  br label %sw.epilog11

sw.epilog11:                                      ; preds = %dlm_send_ack.exit, %if.end5.sw.epilog11_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i37 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i37, label %sw.epilog11.srcu_read_unlock.exit41_crit_edge, label %land.rhs.i39

sw.epilog11.srcu_read_unlock.exit41_crit_edge:    ; preds = %sw.epilog11
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit41

land.rhs.i39:                                     ; preds = %sw.epilog11
  %.b1.i38 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i38, label %land.rhs.i39.srcu_read_unlock.exit41_crit_edge, label %if.then.i40, !prof !286

land.rhs.i39.srcu_read_unlock.exit41_crit_edge:   ; preds = %land.rhs.i39
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit41

if.then.i40:                                      ; preds = %land.rhs.i39
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit41

srcu_read_unlock.exit41:                          ; preds = %if.then.i40, %land.rhs.i39.srcu_read_unlock.exit41_crit_edge, %sw.epilog11.srcu_read_unlock.exit41_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %srcu_read_unlock.exit41, %srcu_read_unlock.exit34, %srcu_read_unlock.exit29, %srcu_read_unlock.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nodeid2node(i32 noundef %nodeid, i32 noundef %alloc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %nodeid, 31
  %call.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b37.i = load i1, ptr @__find_node.__warned, align 1
  br i1 %.b37.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__find_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 276, ptr noundef nonnull @.str.7) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %arrayidx.i = getelementptr [32 x %struct.hlist_head], ptr @node_hash, i32 0, i32 %and.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i = icmp eq ptr %1, null
  %add.ptr.i = getelementptr i8, ptr %1, i32 -184
  %tobool12.not4144.i = icmp eq ptr %add.ptr.i, null
  %tobool12.not41.i = or i1 %tobool10.not.i, %tobool12.not4144.i
  br i1 %tobool12.not41.i, label %do.end.i.__find_node.exit_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.__find_node.exit_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__find_node.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %node.042.i = phi ptr [ %add.ptr27.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %do.end.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %node.042.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node.042.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %nodeid)
  %cmp.i = icmp eq i32 %3, %nodeid
  br i1 %cmp.i, label %for.body.i.cleanup_crit_edge, label %for.inc.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %hlist.i = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i, i32 0, i32 13
  %4 = ptrtoint ptr %hlist.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hlist.i, align 4
  %tobool23.not.i = icmp eq ptr %5, null
  %add.ptr27.i = getelementptr i8, ptr %5, i32 -184
  %tobool12.not45.i = icmp eq ptr %add.ptr27.i, null
  %tobool12.not.i = or i1 %tobool23.not.i, %tobool12.not45.i
  br i1 %tobool12.not.i, label %for.inc.i.__find_node.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.__find_node.exit_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %__find_node.exit

__find_node.exit:                                 ; preds = %for.inc.i.__find_node.exit_crit_edge, %do.end.i.__find_node.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alloc)
  %tobool2.not = icmp eq i32 %alloc, 0
  br i1 %tobool2.not, label %__find_node.exit.cleanup_crit_edge, label %if.end

__find_node.exit.cleanup_crit_edge:               ; preds = %__find_node.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %__find_node.exit
  %and.i.i = and i32 %alloc, 4194321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.i, label %if.end.kmalloc.exit_crit_edge, label %if.end.i.i, !prof !286

if.end.kmalloc.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %kmalloc.exit

if.end.i.i:                                       ; preds = %if.end
  %and2.i.i = and i32 %alloc, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.kmalloc.exit_crit_edge

if.end.i.i.kmalloc.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %kmalloc.exit

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %and6.i.i = and i32 %alloc, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool7.not.i.i = icmp eq i32 %and6.i.i, 0
  %..i.i = select i1 %tobool7.not.i.i, i32 1, i32 2
  br label %kmalloc.exit

kmalloc.exit:                                     ; preds = %if.end5.i.i, %if.end.i.i.kmalloc.exit_crit_edge, %if.end.kmalloc.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end.kmalloc.exit_crit_edge ], [ 3, %if.end.i.i.kmalloc.exit_crit_edge ], [ %..i.i, %if.end5.i.i ]
  %arrayidx6.i = getelementptr [4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 %retval.0.i.i, i32 8
  %6 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx6.i, align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef %alloc, i32 noundef 200) #15
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %kmalloc.exit.cleanup_crit_edge, label %if.end6

kmalloc.exit.cleanup_crit_edge:                   ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %kmalloc.exit
  %8 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %nodeid, ptr %call7.i, align 8
  %state_lock = getelementptr inbounds %struct.midcomms_node, ptr %call7.i, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %state_lock, ptr noundef nonnull @.str.97, ptr noundef nonnull @nodeid2node.__key, i16 noundef signext 3) #11
  %send_queue_lock = getelementptr inbounds %struct.midcomms_node, ptr %call7.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %send_queue_lock, ptr noundef nonnull @.str.99, ptr noundef nonnull @nodeid2node.__key.98, i16 noundef signext 3) #11
  %send_queue_cnt = getelementptr inbounds %struct.midcomms_node, ptr %call7.i, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_queue_cnt, i32 noundef 4) #11
  %9 = ptrtoint ptr %send_queue_cnt to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile i32 0, ptr %send_queue_cnt, align 4
  %send_queue = getelementptr inbounds %struct.midcomms_node, ptr %call7.i, i32 0, i32 4
  %10 = ptrtoint ptr %send_queue to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %send_queue, ptr %send_queue, align 8
  %prev.i = getelementptr inbounds %struct.midcomms_node, ptr %call7.i, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %send_queue, ptr %prev.i, align 4
  %shutdown_wait = getelementptr inbounds %struct.midcomms_node, ptr %call7.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %shutdown_wait, ptr noundef nonnull @.str.101, ptr noundef nonnull @nodeid2node.__key.100) #11
  %users = getelementptr inbounds %struct.midcomms_node, ptr %call7.i, i32 0, i32 11
  %12 = ptrtoint ptr %users to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %users, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @midcomms_node_reset.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nodeid2node, %if.then.i46)) #11
          to label %midcomms_node_reset.exit [label %if.then.i46], !srcloc !291

if.then.i46:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %call7.i, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @midcomms_node_reset.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.107, i32 noundef %14) #11
  br label %midcomms_node_reset.exit

midcomms_node_reset.exit:                         ; preds = %if.then.i46, %if.end6
  %seq_next.i = getelementptr inbounds %struct.midcomms_node, ptr %call7.i, i32 0, i32 3
  %15 = ptrtoint ptr %seq_next.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %seq_next.i, align 4
  %seq_send.i = getelementptr inbounds %struct.midcomms_node, ptr %call7.i, i32 0, i32 2
  %16 = ptrtoint ptr %seq_send.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %seq_send.i, align 8
  %version.i = getelementptr inbounds %struct.midcomms_node, ptr %call7.i, i32 0, i32 1
  %17 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %version.i, align 4
  %flags.i = getelementptr inbounds %struct.midcomms_node, ptr %call7.i, i32 0, i32 7
  %18 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %flags.i, align 8
  tail call fastcc void @dlm_send_queue_flush(ptr noundef nonnull %call7.i) #11
  %state.i = getelementptr inbounds %struct.midcomms_node, ptr %call7.i, i32 0, i32 9
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %state.i, align 8
  tail call void @__wake_up(ptr noundef %shutdown_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  tail call void @_raw_spin_lock(ptr noundef nonnull @nodes_lock) #11
  %call.i48 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool.not.i49 = icmp eq i32 %call.i48, 0
  br i1 %tobool.not.i49, label %land.lhs.true.i52, label %midcomms_node_reset.exit.do.end.i61_crit_edge

midcomms_node_reset.exit.do.end.i61_crit_edge:    ; preds = %midcomms_node_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i61

land.lhs.true.i52:                                ; preds = %midcomms_node_reset.exit
  %call1.i50 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool2.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool2.not.i51, label %land.lhs.true.i52.do.end.i61_crit_edge, label %land.lhs.true3.i54

land.lhs.true.i52.do.end.i61_crit_edge:           ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i61

land.lhs.true3.i54:                               ; preds = %land.lhs.true.i52
  %.b37.i53 = load i1, ptr @__find_node.__warned, align 1
  br i1 %.b37.i53, label %land.lhs.true3.i54.do.end.i61_crit_edge, label %if.then.i55

land.lhs.true3.i54.do.end.i61_crit_edge:          ; preds = %land.lhs.true3.i54
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i61

if.then.i55:                                      ; preds = %land.lhs.true3.i54
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__find_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 276, ptr noundef nonnull @.str.7) #11
  br label %do.end.i61

do.end.i61:                                       ; preds = %if.then.i55, %land.lhs.true3.i54.do.end.i61_crit_edge, %land.lhs.true.i52.do.end.i61_crit_edge, %midcomms_node_reset.exit.do.end.i61_crit_edge
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %arrayidx.i, align 4
  %tobool10.not.i57 = icmp eq ptr %21, null
  %add.ptr.i58 = getelementptr i8, ptr %21, i32 -184
  %tobool12.not4144.i59 = icmp eq ptr %add.ptr.i58, null
  %tobool12.not41.i60 = or i1 %tobool10.not.i57, %tobool12.not4144.i59
  br i1 %tobool12.not41.i60, label %do.end.i61.if.end19_crit_edge, label %do.end.i61.for.body.i64_crit_edge

do.end.i61.for.body.i64_crit_edge:                ; preds = %do.end.i61
  br label %for.body.i64

do.end.i61.if.end19_crit_edge:                    ; preds = %do.end.i61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

for.body.i64:                                     ; preds = %for.inc.i70.for.body.i64_crit_edge, %do.end.i61.for.body.i64_crit_edge
  %node.042.i62 = phi ptr [ %add.ptr27.i67, %for.inc.i70.for.body.i64_crit_edge ], [ %add.ptr.i58, %do.end.i61.for.body.i64_crit_edge ]
  %22 = ptrtoint ptr %node.042.i62 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node.042.i62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %nodeid)
  %cmp.i63 = icmp eq i32 %23, %nodeid
  br i1 %cmp.i63, label %if.then18, label %for.inc.i70

for.inc.i70:                                      ; preds = %for.body.i64
  %hlist.i65 = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i62, i32 0, i32 13
  %24 = ptrtoint ptr %hlist.i65 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %hlist.i65, align 4
  %tobool23.not.i66 = icmp eq ptr %25, null
  %add.ptr27.i67 = getelementptr i8, ptr %25, i32 -184
  %tobool12.not45.i68 = icmp eq ptr %add.ptr27.i67, null
  %tobool12.not.i69 = or i1 %tobool23.not.i66, %tobool12.not45.i68
  br i1 %tobool12.not.i69, label %for.inc.i70.if.end19_crit_edge, label %for.inc.i70.for.body.i64_crit_edge

for.inc.i70.for.body.i64_crit_edge:               ; preds = %for.inc.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i64

for.inc.i70.if.end19_crit_edge:                   ; preds = %for.inc.i70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then18:                                        ; preds = %for.body.i64
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nodes_lock) #11
  tail call void @kfree(ptr noundef nonnull %call7.i) #11
  br label %cleanup

if.end19:                                         ; preds = %for.inc.i70.if.end19_crit_edge, %do.end.i61.if.end19_crit_edge
  %hlist = getelementptr inbounds %struct.midcomms_node, ptr %call7.i, i32 0, i32 13
  %26 = ptrtoint ptr %hlist to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %21, ptr %hlist, align 8
  %pprev.i = getelementptr inbounds %struct.midcomms_node, ptr %call7.i, i32 0, i32 13, i32 1
  %27 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %arrayidx.i, ptr %pprev.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !292
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %hlist, ptr %arrayidx.i, align 4
  br i1 %tobool10.not.i57, label %if.end19.hlist_add_head_rcu.exit_crit_edge, label %do.body49.i

if.end19.hlist_add_head_rcu.exit_crit_edge:       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_add_head_rcu.exit

do.body49.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  %pprev51.i = getelementptr inbounds %struct.hlist_node, ptr %21, i32 0, i32 1
  %29 = ptrtoint ptr %pprev51.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %hlist, ptr %pprev51.i, align 4
  br label %hlist_add_head_rcu.exit

hlist_add_head_rcu.exit:                          ; preds = %do.body49.i, %if.end19.hlist_add_head_rcu.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nodes_lock) #11
  %call20 = tail call ptr @dlm_create_debug_comms_file(i32 noundef %nodeid, ptr noundef nonnull %call7.i) #11
  %debugfs = getelementptr inbounds %struct.midcomms_node, ptr %call7.i, i32 0, i32 12
  %30 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call20, ptr %debugfs, align 4
  br label %cleanup

cleanup:                                          ; preds = %hlist_add_head_rcu.exit, %if.then18, %kmalloc.exit.cleanup_crit_edge, %__find_node.exit.cleanup_crit_edge, %for.body.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %node.042.i62, %if.then18 ], [ %call7.i, %hlist_add_head_rcu.exit ], [ null, %__find_node.exit.cleanup_crit_edge ], [ null, %kmalloc.exit.cleanup_crit_edge ], [ %node.042.i, %for.body.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_midcomms_unack_msg_resend(i32 noundef %nodeid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i55 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @nodes_srcu) #11
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  %and.i.i = and i32 %nodeid, 31
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.do.end.i.i_crit_edge

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b37.i.i = load i1, ptr @__find_node.__warned, align 1
  br i1 %.b37.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__find_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 276, ptr noundef nonnull @.str.7) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  %arrayidx.i.i = getelementptr [32 x %struct.hlist_head], ptr @node_hash, i32 0, i32 %and.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %1, null
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -184
  %tobool12.not4144.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool12.not41.i.i = or i1 %tobool10.not.i.i, %tobool12.not4144.i.i
  br i1 %tobool12.not41.i.i, label %do.end.i.i.if.then_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.if.then_crit_edge:                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %node.042.i.i = phi ptr [ %add.ptr27.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %2 = ptrtoint ptr %node.042.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node.042.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %nodeid)
  %cmp.i.i = icmp eq i32 %3, %nodeid
  br i1 %cmp.i.i, label %if.end, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hlist.i.i = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hlist.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %5, null
  %add.ptr27.i.i = getelementptr i8, ptr %5, i32 -184
  %tobool12.not45.i.i = icmp eq ptr %add.ptr27.i.i, null
  %tobool12.not.i.i = or i1 %tobool23.not.i.i, %tobool12.not45.i.i
  br i1 %tobool12.not.i.i, label %for.inc.i.i.if.then_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.then_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then

if.then:                                          ; preds = %for.inc.i.i.if.then_crit_edge, %do.end.i.i.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i55)
  %tobool.not.i56 = icmp ult i32 %call.i55, 2
  br i1 %tobool.not.i56, label %if.then.cleanup_crit_edge, label %land.rhs.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs.i:                                       ; preds = %if.then
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup_crit_edge, label %land.rhs.i.cleanup.sink.split_crit_edge, !prof !286

land.rhs.i.cleanup.sink.split_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %for.body.i.i
  %version = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 196610, i32 %7)
  %cond = icmp eq i32 %7, 196610
  br i1 %cond, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i55)
  %tobool.not.i58 = icmp ult i32 %call.i55, 2
  br i1 %tobool.not.i58, label %sw.default.cleanup_crit_edge, label %land.rhs.i60

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs.i60:                                     ; preds = %sw.default
  %.b1.i59 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i59, label %land.rhs.i60.cleanup_crit_edge, label %land.rhs.i60.cleanup.sink.split_crit_edge, !prof !286

land.rhs.i60.cleanup.sink.split_crit_edge:        ; preds = %land.rhs.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.rhs.i60.cleanup_crit_edge:                   ; preds = %land.rhs.i60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %8 = tail call i32 @llvm.read_register.i32(metadata !276) #11
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !287
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %sw.epilog.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.epilog.rcu_read_lock.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.epilog
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.103, i32 noundef 696, ptr noundef nonnull @.str.104) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.epilog.rcu_read_lock.exit_crit_edge
  %call2 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b54 = load i1, ptr @dlm_midcomms_unack_msg_resend.__warned, align 1
  br i1 %.b54, label %land.lhs.true6.do.end_crit_edge, label %if.then8

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then8:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dlm_midcomms_unack_msg_resend.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1006, ptr noundef nonnull @.str.7) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %send_queue = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %send_queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn80 = load volatile ptr, ptr %send_queue, align 4
  %cmp.not81 = icmp eq ptr %.pn80, %send_queue
  br i1 %cmp.not81, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn82 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn80, %do.end.for.body_crit_edge ]
  %committed = getelementptr i8, ptr %.pn82, i32 -16
  %13 = ptrtoint ptr %committed to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %committed, align 4, !range !293
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.end17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %msg = getelementptr i8, ptr %.pn82, i32 -20
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %msg, align 4
  %call18 = tail call i32 @dlm_lowcomms_resend_msg(ptr noundef %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.end17.for.inc_crit_edge

if.end17.for.inc_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then20:                                        ; preds = %if.end17
  %call21 = tail call i32 @___ratelimit(ptr noundef nonnull @dlm_midcomms_unack_msg_resend._rs, ptr noundef nonnull @__func__.dlm_midcomms_unack_msg_resend) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then20.for.inc_crit_edge, label %do.end26

if.then20.for.inc_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end26:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #13
  %seq = getelementptr i8, ptr %.pn82, i32 -12
  %17 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seq, align 4
  %19 = ptrtoint ptr %node.042.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %node.042.i.i, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %18, i32 noundef %20) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end26, %if.then20.for.inc_crit_edge, %if.end17.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %21 = ptrtoint ptr %.pn82 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load volatile ptr, ptr %.pn82, align 4
  %cmp.not = icmp eq ptr %.pn, %send_queue
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i63 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i63, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i66

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i66:                                ; preds = %for.end
  %call1.i64 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool.not.i65, label %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i68

land.lhs.true.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i68:                               ; preds = %land.lhs.true.i66
  %.b4.i67 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i67, label %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, label %if.then.i69

land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i69:                                      ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.103, i32 noundef 724, ptr noundef nonnull @.str.105) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i69, %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !289
  %22 = tail call i32 @llvm.read_register.i32(metadata !276) #11
  %and.i.i.i.i.i70 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i.i.i70 to ptr
  %preempt_count.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i.i.i71, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i71, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i55)
  %tobool.not.i72 = icmp ult i32 %call.i55, 2
  br i1 %tobool.not.i72, label %rcu_read_unlock.exit.cleanup_crit_edge, label %land.rhs.i74

rcu_read_unlock.exit.cleanup_crit_edge:           ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.rhs.i74:                                     ; preds = %rcu_read_unlock.exit
  %.b1.i73 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i73, label %land.rhs.i74.cleanup_crit_edge, label %land.rhs.i74.cleanup.sink.split_crit_edge, !prof !286

land.rhs.i74.cleanup.sink.split_crit_edge:        ; preds = %land.rhs.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.rhs.i74.cleanup_crit_edge:                   ; preds = %land.rhs.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.rhs.i74.cleanup.sink.split_crit_edge, %land.rhs.i60.cleanup.sink.split_crit_edge, %land.rhs.i.cleanup.sink.split_crit_edge
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.rhs.i74.cleanup_crit_edge, %rcu_read_unlock.exit.cleanup_crit_edge, %land.rhs.i60.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %call.i55) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_lowcomms_resend_msg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dlm_midcomms_get_mhandle(i32 noundef %nodeid, i32 noundef %len, i32 noundef %allocation, ptr noundef %ppc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @nodes_srcu) #11
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  %and.i.i = and i32 %nodeid, 31
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %entry.do.end.i.i_crit_edge

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b37.i.i = load i1, ptr @__find_node.__warned, align 1
  br i1 %.b37.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__find_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 276, ptr noundef nonnull @.str.7) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  %arrayidx.i.i = getelementptr [32 x %struct.hlist_head], ptr @node_hash, i32 0, i32 %and.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %1, null
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -184
  %tobool12.not4144.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool12.not41.i.i = or i1 %tobool10.not.i.i, %tobool12.not4144.i.i
  br i1 %tobool12.not41.i.i, label %do.end.i.i.land.end_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.land.end_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %node.042.i.i = phi ptr [ %add.ptr27.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %2 = ptrtoint ptr %node.042.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node.042.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %nodeid)
  %cmp.i.i = icmp eq i32 %3, %nodeid
  br i1 %cmp.i.i, label %if.end36, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hlist.i.i = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hlist.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %5, null
  %add.ptr27.i.i = getelementptr i8, ptr %5, i32 -184
  %tobool12.not45.i.i = icmp eq ptr %add.ptr27.i.i, null
  %tobool12.not.i.i = or i1 %tobool23.not.i.i, %tobool12.not45.i.i
  br i1 %tobool12.not.i.i, label %for.inc.i.i.land.end_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.land.end_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.end

land.end:                                         ; preds = %for.inc.i.i.land.end_crit_edge, %do.end.i.i.land.end_crit_edge
  %.b139 = load i1, ptr @dlm_midcomms_get_mhandle.__already_done, align 1
  br i1 %.b139, label %land.end.err_crit_edge, label %if.then7, !prof !286

land.end.err_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.then7:                                         ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dlm_midcomms_get_mhandle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1076, i32 noundef 9, ptr noundef null) #11
  br label %err

if.end36:                                         ; preds = %for.body.i.i
  %flags = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool39.not = icmp eq i32 %8, 0
  br i1 %tobool39.not, label %if.end36.if.end61_crit_edge, label %do.end55, !prof !286

if.end36.if.end61_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

do.end55:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1081, i32 noundef 9, ptr noundef null) #11
  br label %if.end61

if.end61:                                         ; preds = %do.end55, %if.end36.if.end61_crit_edge
  %call69 = tail call ptr @dlm_allocate_mhandle() #11
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %if.end61.err_crit_edge, label %if.end72

if.end61.err_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end72:                                         ; preds = %if.end61
  %committed = getelementptr inbounds %struct.dlm_mhandle, ptr %call69, i32 0, i32 4
  %9 = ptrtoint ptr %committed to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %committed, align 4
  %ack_rcv = getelementptr inbounds %struct.dlm_mhandle, ptr %call69, i32 0, i32 6
  %10 = ptrtoint ptr %ack_rcv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ack_rcv, align 4
  %idx73 = getelementptr inbounds %struct.dlm_mhandle, ptr %call69, i32 0, i32 7
  %11 = ptrtoint ptr %idx73 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i, ptr %idx73, align 4
  %node74 = getelementptr inbounds %struct.dlm_mhandle, ptr %call69, i32 0, i32 1
  %12 = ptrtoint ptr %node74 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %node.042.i.i, ptr %node74, align 4
  %version = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %version, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %14, label %sw.default [
    i32 196609, label %sw.bb
    i32 196610, label %sw.bb79
  ]

sw.bb:                                            ; preds = %if.end72
  %call75 = tail call ptr @dlm_lowcomms_new_msg(i32 noundef %nodeid, i32 noundef %len, i32 noundef %allocation, ptr noundef %ppc, ptr noundef null, ptr noundef null) #11
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.then77, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then77:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dlm_free_mhandle(ptr noundef nonnull %call69) #11
  br label %err

sw.bb79:                                          ; preds = %if.end72
  %add.i = add i32 %len, 24
  %call.i140 = tail call ptr @dlm_lowcomms_new_msg(i32 noundef %nodeid, i32 noundef %add.i, i32 noundef %allocation, ptr noundef %ppc, ptr noundef nonnull @midcomms_new_msg_cb, ptr noundef nonnull %call69) #11
  %tobool.not.i = icmp eq ptr %call.i140, null
  br i1 %tobool.not.i, label %if.then82, label %dlm_midcomms_get_msg_3_2.exit

dlm_midcomms_get_msg_3_2.exit:                    ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %ppc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ppc, align 4
  %opts1.i = getelementptr inbounds %struct.dlm_mhandle, ptr %call69, i32 0, i32 2
  %18 = ptrtoint ptr %opts1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %opts1.i, align 4
  %conv.i = trunc i32 %len to i16
  %seq.i = getelementptr inbounds %struct.dlm_mhandle, ptr %call69, i32 0, i32 5
  %19 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %seq.i, align 4
  %h_cmd.i.i = getelementptr inbounds %struct.dlm_header, ptr %17, i32 0, i32 4
  %21 = ptrtoint ptr %h_cmd.i.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 3, ptr %h_cmd.i.i, align 2
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 196610, ptr %17, align 4
  %call.i.i141 = tail call i32 @dlm_our_nodeid() #11
  %h_nodeid.i.i = getelementptr inbounds %struct.dlm_header, ptr %17, i32 0, i32 2
  %23 = ptrtoint ptr %h_nodeid.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i.i141, ptr %h_nodeid.i.i, align 4
  %add.i.i = add i16 %conv.i, 24
  %h_length.i.i = getelementptr inbounds %struct.dlm_header, ptr %17, i32 0, i32 3
  %24 = ptrtoint ptr %h_length.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %add.i.i, ptr %h_length.i.i, align 4
  %u.i.i = getelementptr inbounds %struct.dlm_header, ptr %17, i32 0, i32 1
  %25 = ptrtoint ptr %u.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %20, ptr %u.i.i, align 4
  tail call void @header_out(ptr noundef %17) #11
  %26 = ptrtoint ptr %ppc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ppc, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 24
  store ptr %add.ptr.i, ptr %ppc, align 4
  %28 = ptrtoint ptr %call69 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr.i, ptr %call69, align 4
  br label %sw.epilog

if.then82:                                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dlm_free_mhandle(ptr noundef nonnull %call69) #11
  br label %err

sw.default:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dlm_free_mhandle(ptr noundef nonnull %call69) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1113, i32 noundef 9, ptr noundef null) #11
  br label %err

sw.epilog:                                        ; preds = %dlm_midcomms_get_msg_3_2.exit, %sw.bb.sw.epilog_crit_edge
  %msg.0 = phi ptr [ %call.i140, %dlm_midcomms_get_msg_3_2.exit ], [ %call75, %sw.bb.sw.epilog_crit_edge ]
  %msg110 = getelementptr inbounds %struct.dlm_mhandle, ptr %call69, i32 0, i32 3
  %29 = ptrtoint ptr %msg110 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.0, ptr %msg110, align 4
  br label %cleanup

err:                                              ; preds = %sw.default, %if.then82, %if.then77, %if.end61.err_crit_edge, %if.then7, %land.end.err_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i142 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i142, label %err.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

err.srcu_read_unlock.exit_crit_edge:              ; preds = %err
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %err
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !286

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %err.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %srcu_read_unlock.exit, %sw.epilog
  %retval.0 = phi ptr [ null, %srcu_read_unlock.exit ], [ %call69, %sw.epilog ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_allocate_mhandle() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_lowcomms_new_msg(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_free_mhandle(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_midcomms_commit_mhandle(ptr noundef %mh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.dlm_mhandle, ptr %mh, i32 0, i32 1
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %version = getelementptr inbounds %struct.midcomms_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %version, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %3, label %sw.default [
    i32 196609, label %sw.bb
    i32 196610, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  %idx = getelementptr inbounds %struct.dlm_mhandle, ptr %mh, i32 0, i32 7
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %tobool.not.i = icmp ult i32 %6, 2
  br i1 %tobool.not.i, label %sw.bb.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

sw.bb.srcu_read_unlock.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %sw.bb
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !286

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %sw.bb.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %6) #11
  %msg = getelementptr inbounds %struct.dlm_mhandle, ptr %mh, i32 0, i32 3
  %7 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %msg, align 4
  tail call void @dlm_lowcomms_commit_msg(ptr noundef %8) #11
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msg, align 4
  tail call void @dlm_lowcomms_put_msg(ptr noundef %10) #11
  tail call void @dlm_free_mhandle(ptr noundef %mh) #11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %11 = ptrtoint ptr %mh to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mh, align 4
  %h_cmd.i = getelementptr inbounds %struct.dlm_header, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %h_cmd.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %h_cmd.i, align 2
  %opts.i = getelementptr inbounds %struct.dlm_mhandle, ptr %mh, i32 0, i32 2
  %15 = ptrtoint ptr %opts.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %opts.i, align 4
  %o_nextcmd.i = getelementptr inbounds %struct.dlm_opts, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %o_nextcmd.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %14, ptr %o_nextcmd.i, align 4
  %committed.i = getelementptr inbounds %struct.dlm_mhandle, ptr %mh, i32 0, i32 4
  %18 = ptrtoint ptr %committed.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %committed.i, align 4
  %msg.i = getelementptr inbounds %struct.dlm_mhandle, ptr %mh, i32 0, i32 3
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %msg.i, align 4
  tail call void @dlm_lowcomms_commit_msg(ptr noundef %20) #11
  %idx3 = getelementptr inbounds %struct.dlm_mhandle, ptr %mh, i32 0, i32 7
  %21 = ptrtoint ptr %idx3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %idx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %22)
  %tobool.not.i27 = icmp ult i32 %22, 2
  br i1 %tobool.not.i27, label %sw.bb2.srcu_read_unlock.exit31_crit_edge, label %land.rhs.i29

sw.bb2.srcu_read_unlock.exit31_crit_edge:         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit31

land.rhs.i29:                                     ; preds = %sw.bb2
  %.b1.i28 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i28, label %land.rhs.i29.srcu_read_unlock.exit31_crit_edge, label %if.then.i30, !prof !286

land.rhs.i29.srcu_read_unlock.exit31_crit_edge:   ; preds = %land.rhs.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit31

if.then.i30:                                      ; preds = %land.rhs.i29
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit31

srcu_read_unlock.exit31:                          ; preds = %if.then.i30, %land.rhs.i29.srcu_read_unlock.exit31_crit_edge, %sw.bb2.srcu_read_unlock.exit31_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %22) #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %idx4 = getelementptr inbounds %struct.dlm_mhandle, ptr %mh, i32 0, i32 7
  %23 = ptrtoint ptr %idx4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %idx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %tobool.not.i32 = icmp ult i32 %24, 2
  br i1 %tobool.not.i32, label %sw.default.srcu_read_unlock.exit36_crit_edge, label %land.rhs.i34

sw.default.srcu_read_unlock.exit36_crit_edge:     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit36

land.rhs.i34:                                     ; preds = %sw.default
  %.b1.i33 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i33, label %land.rhs.i34.srcu_read_unlock.exit36_crit_edge, label %if.then.i35, !prof !286

land.rhs.i34.srcu_read_unlock.exit36_crit_edge:   ; preds = %land.rhs.i34
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit36

if.then.i35:                                      ; preds = %land.rhs.i34
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit36

srcu_read_unlock.exit36:                          ; preds = %if.then.i35, %land.rhs.i34.srcu_read_unlock.exit36_crit_edge, %sw.default.srcu_read_unlock.exit36_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %24) #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1156, i32 noundef 9, ptr noundef null) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %srcu_read_unlock.exit36, %srcu_read_unlock.exit31, %srcu_read_unlock.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lowcomms_commit_msg(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lowcomms_put_msg(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_midcomms_start() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @node_hash, i32 0, i32 128)
  %call = tail call i32 @dlm_lowcomms_start() #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_lowcomms_start() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_midcomms_add_member(i32 noundef %nodeid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dlm_our_nodeid() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %nodeid)
  %cmp = icmp eq i32 %call, %nodeid
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @nodes_srcu) #11
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  %call2 = tail call fastcc ptr @nodeid2node(i32 noundef %nodeid, i32 noundef 3136)
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %if.then3.cleanup.sink.split_crit_edge, label %land.rhs.i

if.then3.cleanup.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.rhs.i:                                       ; preds = %if.then3
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup.sink.split_crit_edge, label %land.rhs.i.cleanup.sink.split.sink.split_crit_edge, !prof !286

land.rhs.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split

land.rhs.i.cleanup.sink.split_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %state_lock = getelementptr inbounds %struct.midcomms_node, ptr %call2, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %state_lock) #11
  %users = getelementptr inbounds %struct.midcomms_node, ptr %call2, i32 0, i32 11
  %0 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool5.not = icmp eq i32 %1, 0
  br i1 %tobool5.not, label %do.body, label %if.end4.if.end43_crit_edge

if.end4.if.end43_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

do.body:                                          ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_midcomms_add_member.__UNIQUE_ID_ddebug619, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_midcomms_add_member, %if.then11)) #11
          to label %do.end [label %if.then11], !srcloc !291

if.then11:                                        ; preds = %do.body
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call2, align 4
  %state = getelementptr inbounds %struct.midcomms_node, ptr %call2, i32 0, i32 9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 7
  br i1 %6, label %switch.lookup, label %if.then11.dlm_state_str.exit_crit_edge

if.then11.dlm_state_str.exit_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit

switch.lookup:                                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_midcomms_add_member, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dlm_state_str.exit

dlm_state_str.exit:                               ; preds = %switch.lookup, %if.then11.dlm_state_str.exit_crit_edge
  %retval.0.i87 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.28, %if.then11.dlm_state_str.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_midcomms_add_member.__UNIQUE_ID_ddebug619, ptr noundef nonnull @.str.12, i32 noundef %3, ptr noundef nonnull %retval.0.i87) #11
  br label %do.end

do.end:                                           ; preds = %dlm_state_str.exit, %do.body
  %state15 = getelementptr inbounds %struct.midcomms_node, ptr %call2, i32 0, i32 9
  %8 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state15, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %9, label %do.end38 [
    i32 2, label %do.end.if.end43_crit_edge
    i32 1, label %sw.bb
  ]

do.end.if.end43_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end43

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %state15, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_midcomms_add_member.__UNIQUE_ID_ddebug620, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_midcomms_add_member, %if.then29)) #11
          to label %if.end43 [label %if.then29], !srcloc !291

if.then29:                                        ; preds = %sw.bb
  %12 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call2, align 4
  %14 = ptrtoint ptr %state15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state15, align 4
  %switch.tableidx106 = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx106)
  %16 = icmp ult i32 %switch.tableidx106, 7
  br i1 %16, label %switch.lookup105, label %if.then29.dlm_state_str.exit96_crit_edge

if.then29.dlm_state_str.exit96_crit_edge:         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit96

switch.lookup105:                                 ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep107 = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_midcomms_add_member.123, i32 0, i32 %switch.tableidx106
  %17 = ptrtoint ptr %switch.gep107 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load108 = load ptr, ptr %switch.gep107, align 4
  br label %dlm_state_str.exit96

dlm_state_str.exit96:                             ; preds = %switch.lookup105, %if.then29.dlm_state_str.exit96_crit_edge
  %retval.0.i95 = phi ptr [ %switch.load108, %switch.lookup105 ], [ @.str.28, %if.then29.dlm_state_str.exit96_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_midcomms_add_member.__UNIQUE_ID_ddebug620, ptr noundef nonnull @.str.13, i32 noundef %13, ptr noundef nonnull %retval.0.i95) #11
  br label %if.end43

do.end38:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %18 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call2, align 4
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %19) #14
  tail call fastcc void @midcomms_node_reset(ptr noundef nonnull %call2)
  %20 = ptrtoint ptr %state15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %state15, align 4
  br label %if.end43

if.end43:                                         ; preds = %do.end38, %dlm_state_str.exit96, %sw.bb, %do.end.if.end43_crit_edge, %if.end4.if.end43_crit_edge
  %21 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %users, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %users, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_midcomms_add_member.__UNIQUE_ID_ddebug621, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_midcomms_add_member, %if.then57)) #11
          to label %do.end61 [label %if.then57], !srcloc !291

if.then57:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %users, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_midcomms_add_member.__UNIQUE_ID_ddebug621, ptr noundef nonnull @.str.15, i32 noundef %nodeid, i32 noundef %24) #11
  br label %do.end61

do.end61:                                         ; preds = %if.then57, %if.end43
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i97 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i97, label %do.end61.cleanup.sink.split_crit_edge, label %land.rhs.i99

do.end61.cleanup.sink.split_crit_edge:            ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.rhs.i99:                                     ; preds = %do.end61
  %.b1.i98 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i98, label %land.rhs.i99.cleanup.sink.split_crit_edge, label %land.rhs.i99.cleanup.sink.split.sink.split_crit_edge, !prof !286

land.rhs.i99.cleanup.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split

land.rhs.i99.cleanup.sink.split_crit_edge:        ; preds = %land.rhs.i99
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %land.rhs.i99.cleanup.sink.split.sink.split_crit_edge, %land.rhs.i.cleanup.sink.split.sink.split_crit_edge
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %land.rhs.i99.cleanup.sink.split_crit_edge, %do.end61.cleanup.sink.split_crit_edge, %land.rhs.i.cleanup.sink.split_crit_edge, %if.then3.cleanup.sink.split_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_our_nodeid() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @midcomms_node_reset(ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @midcomms_node_reset.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@midcomms_node_reset, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !291

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @midcomms_node_reset.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.107, i32 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %seq_next = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 3
  %2 = ptrtoint ptr %seq_next to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %seq_next, align 4
  %seq_send = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 2
  %3 = ptrtoint ptr %seq_send to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %seq_send, align 4
  %version = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 1
  %4 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %version, align 4
  %flags = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 7
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %flags, align 4
  tail call fastcc void @dlm_send_queue_flush(ptr noundef %node)
  %state = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 9
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %state, align 4
  %shutdown_wait = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %shutdown_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_midcomms_remove_member(i32 noundef %nodeid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dlm_our_nodeid() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %nodeid)
  %cmp = icmp eq i32 %call, %nodeid
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @nodes_srcu) #11
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  %and.i.i = and i32 %nodeid, 31
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end.do.end.i.i_crit_edge

if.end.do.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b37.i.i = load i1, ptr @__find_node.__warned, align 1
  br i1 %.b37.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__find_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 276, ptr noundef nonnull @.str.7) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.end.do.end.i.i_crit_edge
  %arrayidx.i.i = getelementptr [32 x %struct.hlist_head], ptr @node_hash, i32 0, i32 %and.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %1, null
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -184
  %tobool12.not4144.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool12.not41.i.i = or i1 %tobool10.not.i.i, %tobool12.not4144.i.i
  br i1 %tobool12.not41.i.i, label %do.end.i.i.if.then3_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.if.then3_crit_edge:                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %node.042.i.i = phi ptr [ %add.ptr27.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %2 = ptrtoint ptr %node.042.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node.042.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %nodeid)
  %cmp.i.i = icmp eq i32 %3, %nodeid
  br i1 %cmp.i.i, label %if.end4, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hlist.i.i = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hlist.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %5, null
  %add.ptr27.i.i = getelementptr i8, ptr %5, i32 -184
  %tobool12.not45.i.i = icmp eq ptr %add.ptr27.i.i, null
  %tobool12.not.i.i = or i1 %tobool23.not.i.i, %tobool12.not45.i.i
  br i1 %tobool12.not.i.i, label %for.inc.i.i.if.then3_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.then3_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then3

if.then3:                                         ; preds = %for.inc.i.i.if.then3_crit_edge, %do.end.i.i.if.then3_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %if.then3.cleanup.sink.split_crit_edge, label %land.rhs.i

if.then3.cleanup.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.rhs.i:                                       ; preds = %if.then3
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.cleanup.sink.split_crit_edge, label %land.rhs.i.cleanup.sink.split.sink.split_crit_edge, !prof !286

land.rhs.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split

land.rhs.i.cleanup.sink.split_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end4:                                          ; preds = %for.body.i.i
  %state_lock = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %state_lock) #11
  %users = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 11
  %6 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %users, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %users, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_midcomms_remove_member.__UNIQUE_ID_ddebug622, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_midcomms_remove_member, %if.then9)) #11
          to label %do.end [label %if.then9], !srcloc !291

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %users, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_midcomms_remove_member.__UNIQUE_ID_ddebug622, ptr noundef nonnull @.str.17, i32 noundef %nodeid, i32 noundef %9) #11
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end4
  %10 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp13 = icmp eq i32 %11, 0
  br i1 %cmp13, label %do.body15, label %do.end.if.end61_crit_edge

do.end.if.end61_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

do.body15:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_midcomms_remove_member.__UNIQUE_ID_ddebug623, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_midcomms_remove_member, %if.then27)) #11
          to label %do.end32 [label %if.then27], !srcloc !291

if.then27:                                        ; preds = %do.body15
  %12 = ptrtoint ptr %node.042.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %node.042.i.i, align 4
  %state = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  %switch.tableidx = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 7
  br i1 %16, label %switch.lookup, label %if.then27.dlm_state_str.exit_crit_edge

if.then27.dlm_state_str.exit_crit_edge:           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit

switch.lookup:                                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_midcomms_remove_member, i32 0, i32 %switch.tableidx
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dlm_state_str.exit

dlm_state_str.exit:                               ; preds = %switch.lookup, %if.then27.dlm_state_str.exit_crit_edge
  %retval.0.i91 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.28, %if.then27.dlm_state_str.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_midcomms_remove_member.__UNIQUE_ID_ddebug623, ptr noundef nonnull @.str.18, i32 noundef %13, ptr noundef nonnull %retval.0.i91) #11
  br label %do.end32

do.end32:                                         ; preds = %dlm_state_str.exit, %do.body15
  %state33 = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %state33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state33, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %19, label %do.end57 [
    i32 2, label %do.end32.if.end61_crit_edge
    i32 5, label %sw.bb
    i32 6, label %do.end32.if.end61_crit_edge126
    i32 1, label %do.end32.if.end61_crit_edge127
  ]

do.end32.if.end61_crit_edge127:                   ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

do.end32.if.end61_crit_edge126:                   ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

do.end32.if.end61_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end61

sw.bb:                                            ; preds = %do.end32
  %21 = ptrtoint ptr %state33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 6, ptr %state33, align 4
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_midcomms_remove_member.__UNIQUE_ID_ddebug624, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_midcomms_remove_member, %if.then48)) #11
          to label %send_fin [label %if.then48], !srcloc !291

if.then48:                                        ; preds = %sw.bb
  %22 = ptrtoint ptr %node.042.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %node.042.i.i, align 4
  %24 = ptrtoint ptr %state33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state33, align 4
  %switch.tableidx121 = add i32 %25, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx121)
  %26 = icmp ult i32 %switch.tableidx121, 7
  br i1 %26, label %switch.lookup120, label %if.then48.dlm_state_str.exit100_crit_edge

if.then48.dlm_state_str.exit100_crit_edge:        ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit100

switch.lookup120:                                 ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep122 = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_midcomms_remove_member.124, i32 0, i32 %switch.tableidx121
  %27 = ptrtoint ptr %switch.gep122 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load123 = load ptr, ptr %switch.gep122, align 4
  br label %dlm_state_str.exit100

dlm_state_str.exit100:                            ; preds = %switch.lookup120, %if.then48.dlm_state_str.exit100_crit_edge
  %retval.0.i99 = phi ptr [ %switch.load123, %switch.lookup120 ], [ @.str.28, %if.then48.dlm_state_str.exit100_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_midcomms_remove_member.__UNIQUE_ID_ddebug624, ptr noundef nonnull @.str.19, i32 noundef %23, ptr noundef nonnull %retval.0.i99) #11
  br label %send_fin

do.end57:                                         ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #13
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.16, i32 noundef %19) #14
  br label %if.end61

if.end61:                                         ; preds = %do.end57, %do.end32.if.end61_crit_edge, %do.end32.if.end61_crit_edge126, %do.end32.if.end61_crit_edge127, %do.end.if.end61_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i101 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i101, label %if.end61.cleanup.sink.split_crit_edge, label %land.rhs.i103

if.end61.cleanup.sink.split_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.rhs.i103:                                    ; preds = %if.end61
  %.b1.i102 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i102, label %land.rhs.i103.cleanup.sink.split_crit_edge, label %land.rhs.i103.cleanup.sink.split.sink.split_crit_edge, !prof !286

land.rhs.i103.cleanup.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split

land.rhs.i103.cleanup.sink.split_crit_edge:       ; preds = %land.rhs.i103
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

send_fin:                                         ; preds = %dlm_state_str.exit100, %sw.bb
  %flags = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags) #11
  tail call fastcc void @dlm_send_fin(ptr noundef nonnull %node.042.i.i, ptr noundef nonnull @dlm_pas_fin_ack_rcv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i106 = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i106, label %send_fin.cleanup.sink.split_crit_edge, label %land.rhs.i108

send_fin.cleanup.sink.split_crit_edge:            ; preds = %send_fin
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.rhs.i108:                                    ; preds = %send_fin
  %.b1.i107 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i107, label %land.rhs.i108.cleanup.sink.split_crit_edge, label %land.rhs.i108.cleanup.sink.split.sink.split_crit_edge, !prof !286

land.rhs.i108.cleanup.sink.split.sink.split_crit_edge: ; preds = %land.rhs.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split.sink.split

land.rhs.i108.cleanup.sink.split_crit_edge:       ; preds = %land.rhs.i108
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split.sink.split:                    ; preds = %land.rhs.i108.cleanup.sink.split.sink.split_crit_edge, %land.rhs.i103.cleanup.sink.split.sink.split_crit_edge, %land.rhs.i.cleanup.sink.split.sink.split_crit_edge
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %land.rhs.i108.cleanup.sink.split_crit_edge, %send_fin.cleanup.sink.split_crit_edge, %land.rhs.i103.cleanup.sink.split_crit_edge, %if.end61.cleanup.sink.split_crit_edge, %land.rhs.i.cleanup.sink.split_crit_edge, %if.then3.cleanup.sink.split_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %call.i) #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlm_send_fin(ptr noundef %node, ptr noundef %ack_rcv) unnamed_addr #0 align 64 {
entry:
  %ppc = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppc) #11
  %0 = ptrtoint ptr %ppc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ppc, align 4, !annotation !290
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node, align 4
  %call = call ptr @dlm_midcomms_get_mhandle(i32 noundef %2, i32 noundef 16, i32 noundef 3136, ptr noundef nonnull %ppc)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %ack_rcv1 = getelementptr inbounds %struct.dlm_mhandle, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %ack_rcv1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ack_rcv, ptr %ack_rcv1, align 4
  %4 = ptrtoint ptr %ppc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ppc, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196610, ptr %5, align 4
  %call2 = call i32 @dlm_our_nodeid() #11
  %h_nodeid = getelementptr inbounds %struct.dlm_header, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %h_nodeid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2, ptr %h_nodeid, align 4
  %h_length = getelementptr inbounds %struct.dlm_header, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %h_length to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 16, ptr %h_length, align 4
  %h_cmd = getelementptr inbounds %struct.dlm_header, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %h_cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 5, ptr %h_cmd, align 2
  call void @header_out(ptr noundef %5) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_send_fin.__UNIQUE_ID_ddebug601, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_send_fin, %if.then7)) #11
          to label %do.end [label %if.then7], !srcloc !291

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_send_fin.__UNIQUE_ID_ddebug601, ptr noundef nonnull @.str.111, i32 noundef %11) #11
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  call void @dlm_midcomms_commit_mhandle(ptr noundef nonnull %call)
  %flags = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 7
  call void @_set_bit(i32 noundef 2, ptr noundef %flags) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppc) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlm_pas_fin_ack_rcv(ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %state_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_pas_fin_ack_rcv.__UNIQUE_ID_ddebug606, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_pas_fin_ack_rcv, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !291

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 4
  %state = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 7
  br i1 %4, label %switch.lookup, label %if.then.dlm_state_str.exit_crit_edge

if.then.dlm_state_str.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_pas_fin_ack_rcv, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dlm_state_str.exit

dlm_state_str.exit:                               ; preds = %switch.lookup, %if.then.dlm_state_str.exit_crit_edge
  %retval.0.i46 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.28, %if.then.dlm_state_str.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_pas_fin_ack_rcv.__UNIQUE_ID_ddebug606, ptr noundef nonnull @.str.113, i32 noundef %1, ptr noundef nonnull %retval.0.i46) #11
  br label %do.end

do.end:                                           ; preds = %dlm_state_str.exit, %entry
  %state4 = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 9
  %6 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state4, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %7, label %sw.default [
    i32 6, label %sw.bb
    i32 1, label %do.end.sw.epilog_crit_edge
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @midcomms_node_reset.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_pas_fin_ack_rcv, %if.then.i)) #11
          to label %midcomms_node_reset.exit [label %if.then.i], !srcloc !291

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %node, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @midcomms_node_reset.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.107, i32 noundef %10) #11
  br label %midcomms_node_reset.exit

midcomms_node_reset.exit:                         ; preds = %if.then.i, %sw.bb
  %seq_next.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 3
  %11 = ptrtoint ptr %seq_next.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %seq_next.i, align 4
  %seq_send.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 2
  %12 = ptrtoint ptr %seq_send.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %seq_send.i, align 4
  %version.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 1
  %13 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %version.i, align 4
  %flags.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 7
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %flags.i, align 4
  tail call fastcc void @dlm_send_queue_flush(ptr noundef %node) #11
  %15 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %state4, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #11
  %16 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state4, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.112, i32 noundef %17) #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 473, i32 noundef 9, ptr noundef null) #11
  br label %return

sw.epilog:                                        ; preds = %midcomms_node_reset.exit, %do.end.sw.epilog_crit_edge
  %shutdown_wait = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %shutdown_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #11
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dlm_midcomms_shutdown() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @close_lock, i32 noundef 0) #11
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @nodes_srcu) #11
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  br label %do.body

do.body:                                          ; preds = %for.inc32.do.body_crit_edge, %entry
  %i.050 = phi i32 [ 0, %entry ], [ %inc, %for.inc32.do.body_crit_edge ]
  %call1 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b44 = load i1, ptr @dlm_midcomms_shutdown.__warned, align 1
  br i1 %.b44, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dlm_midcomms_shutdown.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 1383, ptr noundef nonnull @.str.7) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %arrayidx = getelementptr [32 x %struct.hlist_head], ptr @node_hash, i32 0, i32 %i.050
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %tobool11.not = icmp eq ptr %1, null
  %add.ptr = getelementptr i8, ptr %1, i32 -184
  %tobool14.not4851 = icmp eq ptr %add.ptr, null
  %tobool14.not48 = or i1 %tobool11.not, %tobool14.not4851
  br i1 %tobool14.not48, label %do.end.for.inc32_crit_edge, label %do.end.for.body15_crit_edge

do.end.for.body15_crit_edge:                      ; preds = %do.end
  br label %for.body15

do.end.for.inc32_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc32

for.body15:                                       ; preds = %hlist_del_rcu.exit.for.body15_crit_edge, %do.end.for.body15_crit_edge
  %node.049 = phi ptr [ %add.ptr28, %hlist_del_rcu.exit.for.body15_crit_edge ], [ %add.ptr, %do.end.for.body15_crit_edge ]
  tail call fastcc void @midcomms_shutdown(ptr noundef nonnull %node.049)
  %debugfs = getelementptr inbounds %struct.midcomms_node, ptr %node.049, i32 0, i32 12
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs, align 4
  tail call void @dlm_delete_debug_comms_file(ptr noundef %3) #11
  tail call void @_raw_spin_lock(ptr noundef nonnull @nodes_lock) #11
  %hlist = getelementptr inbounds %struct.midcomms_node, ptr %node.049, i32 0, i32 13
  %4 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hlist, align 4
  %pprev2.i.i = getelementptr inbounds %struct.midcomms_node, ptr %node.049, i32 0, i32 13, i32 1
  %6 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pprev2.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %5, ptr %7, align 4
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %for.body15.hlist_del_rcu.exit_crit_edge, label %do.body13.i.i

for.body15.hlist_del_rcu.exit_crit_edge:          ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del_rcu.exit

do.body13.i.i:                                    ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %pprev14.i.i, align 4
  br label %hlist_del_rcu.exit

hlist_del_rcu.exit:                               ; preds = %do.body13.i.i, %for.body15.hlist_del_rcu.exit_crit_edge
  %10 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @nodes_lock) #11
  %rcu = getelementptr inbounds %struct.midcomms_node, ptr %node.049, i32 0, i32 14
  tail call void @call_srcu(ptr noundef nonnull @nodes_srcu, ptr noundef %rcu, ptr noundef nonnull @midcomms_node_release) #11
  %11 = ptrtoint ptr %hlist to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %hlist, align 4
  %tobool24.not = icmp eq ptr %12, null
  %add.ptr28 = getelementptr i8, ptr %12, i32 -184
  %tobool14.not52 = icmp eq ptr %add.ptr28, null
  %tobool14.not = or i1 %tobool24.not, %tobool14.not52
  br i1 %tobool14.not, label %hlist_del_rcu.exit.for.inc32_crit_edge, label %hlist_del_rcu.exit.for.body15_crit_edge

hlist_del_rcu.exit.for.body15_crit_edge:          ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body15

hlist_del_rcu.exit.for.inc32_crit_edge:           ; preds = %hlist_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc32

for.inc32:                                        ; preds = %hlist_del_rcu.exit.for.inc32_crit_edge, %do.end.for.inc32_crit_edge
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end33, label %for.inc32.do.body_crit_edge

for.inc32.do.body_crit_edge:                      ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

for.end33:                                        ; preds = %for.inc32
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %for.end33.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

for.end33.srcu_read_unlock.exit_crit_edge:        ; preds = %for.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %for.end33
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !286

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %for.end33.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %call.i) #11
  tail call void @mutex_unlock(ptr noundef nonnull @close_lock) #11
  tail call void @dlm_lowcomms_shutdown() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @midcomms_shutdown(ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 196610, i32 %1)
  %cond = icmp eq i32 %1, 196610
  br i1 %cond, label %sw.epilog, label %entry.cleanup137_crit_edge

entry.cleanup137_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup137

sw.epilog:                                        ; preds = %entry
  %state_lock = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %state_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @midcomms_shutdown.__UNIQUE_ID_ddebug625, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@midcomms_shutdown, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !291

if.then:                                          ; preds = %sw.epilog
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node, align 4
  %state = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %switch.tableidx = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %6 = icmp ult i32 %switch.tableidx, 7
  br i1 %6, label %switch.lookup, label %if.then.dlm_state_str.exit_crit_edge

if.then.dlm_state_str.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.midcomms_shutdown, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dlm_state_str.exit

dlm_state_str.exit:                               ; preds = %switch.lookup, %if.then.dlm_state_str.exit_crit_edge
  %retval.0.i184 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.28, %if.then.dlm_state_str.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @midcomms_shutdown.__UNIQUE_ID_ddebug625, ptr noundef nonnull @.str.117, i32 noundef %3, ptr noundef nonnull %retval.0.i184) #11
  br label %do.end

do.end:                                           ; preds = %dlm_state_str.exit, %sw.epilog
  %state4 = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 9
  %8 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state4, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %9, label %do.end.sw.epilog28_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb25
  ]

do.end.sw.epilog28_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog28

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3, ptr %state4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @midcomms_shutdown.__UNIQUE_ID_ddebug626, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@midcomms_shutdown, %if.then18)) #11
          to label %sw.epilog28 [label %if.then18], !srcloc !291

if.then18:                                        ; preds = %sw.bb
  %12 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %node, align 4
  %14 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state4, align 4
  %switch.tableidx235 = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx235)
  %16 = icmp ult i32 %switch.tableidx235, 7
  br i1 %16, label %switch.lookup234, label %if.then18.dlm_state_str.exit193_crit_edge

if.then18.dlm_state_str.exit193_crit_edge:        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit193

switch.lookup234:                                 ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep236 = getelementptr inbounds [7 x ptr], ptr @switch.table.midcomms_shutdown.125, i32 0, i32 %switch.tableidx235
  %17 = ptrtoint ptr %switch.gep236 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load237 = load ptr, ptr %switch.gep236, align 4
  br label %dlm_state_str.exit193

dlm_state_str.exit193:                            ; preds = %switch.lookup234, %if.then18.dlm_state_str.exit193_crit_edge
  %retval.0.i192 = phi ptr [ %switch.load237, %switch.lookup234 ], [ @.str.28, %if.then18.dlm_state_str.exit193_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @midcomms_shutdown.__UNIQUE_ID_ddebug626, ptr noundef nonnull @.str.19, i32 noundef %13, ptr noundef nonnull %retval.0.i192) #11
  br label %sw.epilog28

sw.bb25:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #11
  br label %cleanup137

sw.epilog28:                                      ; preds = %dlm_state_str.exit193, %sw.bb, %do.end.sw.epilog28_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #11
  %18 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp = icmp eq i32 %19, 3
  br i1 %cmp, label %if.then31, label %sw.epilog28.if.end33_crit_edge

sw.epilog28.if.end33_crit_edge:                   ; preds = %sw.epilog28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.then31:                                        ; preds = %sw.epilog28
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @dlm_send_fin(ptr noundef %node, ptr noundef nonnull @dlm_act_fin_ack_rcv)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %sw.epilog28.if.end33_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 1363) #11
  %20 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp42 = icmp eq i32 %21, 1
  br i1 %cmp42, label %if.end33.lor.lhs.false_crit_edge, label %lor.rhs

if.end33.lor.lhs.false_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

lor.rhs:                                          ; preds = %if.end33
  %flags = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 7
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags, align 4
  %24 = and i32 %23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool44.not = icmp eq i32 %24, 0
  br i1 %tobool44.not, label %if.then58, label %lor.rhs.lor.lhs.false_crit_edge

lor.rhs.lor.lhs.false_crit_edge:                  ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

if.then58:                                        ; preds = %lor.rhs
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %25 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %shutdown_wait = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 8
  %call61230 = call i32 @prepare_to_wait_event(ptr noundef %shutdown_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %26 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp64231 = icmp eq i32 %27, 1
  br i1 %cmp64231, label %if.then58.if.end91.thread224_crit_edge, label %if.then58.lor.end69_crit_edge

if.then58.lor.end69_crit_edge:                    ; preds = %if.then58
  br label %lor.end69

if.then58.if.end91.thread224_crit_edge:           ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91.thread224

lor.end69:                                        ; preds = %cleanup.lor.end69_crit_edge, %if.then58.lor.end69_crit_edge
  %__ret59.0232 = phi i32 [ %call88, %cleanup.lor.end69_crit_edge ], [ 18000, %if.then58.lor.end69_crit_edge ]
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %flags, align 4
  %30 = and i32 %29, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool68.not = icmp eq i32 %30, 0
  br i1 %tobool68.not, label %31, label %lor.end69.if.end91.thread224_crit_edge

lor.end69.if.end91.thread224_crit_edge:           ; preds = %lor.end69
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91.thread224

if.end91.thread224:                               ; preds = %cleanup.if.end91.thread224_crit_edge, %lor.end69.if.end91.thread224_crit_edge, %if.then58.if.end91.thread224_crit_edge
  call void @finish_wait(ptr noundef %shutdown_wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %lor.lhs.false

31:                                               ; preds = %lor.end69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret59.0232)
  %tobool80.not = icmp eq i32 %__ret59.0232, 0
  br i1 %tobool80.not, label %if.end91, label %cleanup

cleanup:                                          ; preds = %31
  %call88 = call i32 @schedule_timeout(i32 noundef %__ret59.0232) #11
  %call61 = call i32 @prepare_to_wait_event(ptr noundef %shutdown_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %32 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state4, align 4
  %cmp64 = icmp eq i32 %33, 1
  br i1 %cmp64, label %cleanup.if.end91.thread224_crit_edge, label %cleanup.lor.end69_crit_edge

cleanup.lor.end69_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.end69

cleanup.if.end91.thread224_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end91.thread224

if.end91:                                         ; preds = %31
  call void @__sanitizer_cov_trace_pc() #13
  call void @finish_wait(ptr noundef %shutdown_wait, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %do.body98

lor.lhs.false:                                    ; preds = %if.end91.thread224, %lor.rhs.lor.lhs.false_crit_edge, %if.end33.lor.lhs.false_crit_edge
  %flags94 = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 7
  %34 = ptrtoint ptr %flags94 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags94, align 4
  %36 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool96.not = icmp eq i32 %36, 0
  br i1 %tobool96.not, label %do.body118, label %lor.lhs.false.do.body98_crit_edge

lor.lhs.false.do.body98_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body98

do.body98:                                        ; preds = %lor.lhs.false.do.body98_crit_edge, %if.end91
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @midcomms_shutdown.__UNIQUE_ID_ddebug627, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@midcomms_shutdown, %if.then110)) #11
          to label %do.end116 [label %if.then110], !srcloc !291

if.then110:                                       ; preds = %do.body98
  %37 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %node, align 4
  %39 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state4, align 4
  %switch.tableidx239 = add i32 %40, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx239)
  %41 = icmp ult i32 %switch.tableidx239, 7
  br i1 %41, label %switch.lookup238, label %if.then110.dlm_state_str.exit202_crit_edge

if.then110.dlm_state_str.exit202_crit_edge:       ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit202

switch.lookup238:                                 ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep240 = getelementptr inbounds [7 x ptr], ptr @switch.table.midcomms_shutdown.126, i32 0, i32 %switch.tableidx239
  %42 = ptrtoint ptr %switch.gep240 to i32
  call void @__asan_load4_noabort(i32 %42)
  %switch.load241 = load ptr, ptr %switch.gep240, align 4
  br label %dlm_state_str.exit202

dlm_state_str.exit202:                            ; preds = %switch.lookup238, %if.then110.dlm_state_str.exit202_crit_edge
  %retval.0.i201 = phi ptr [ %switch.load241, %switch.lookup238 ], [ @.str.28, %if.then110.dlm_state_str.exit202_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @midcomms_shutdown.__UNIQUE_ID_ddebug627, ptr noundef nonnull @.str.118, i32 noundef %38, ptr noundef nonnull %retval.0.i201) #11
  br label %do.end116

do.end116:                                        ; preds = %dlm_state_str.exit202, %do.body98
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @midcomms_node_reset.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@midcomms_shutdown, %if.then.i)) #11
          to label %midcomms_node_reset.exit [label %if.then.i], !srcloc !291

if.then.i:                                        ; preds = %do.end116
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %node, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @midcomms_node_reset.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.107, i32 noundef %44) #11
  br label %midcomms_node_reset.exit

midcomms_node_reset.exit:                         ; preds = %if.then.i, %do.end116
  %seq_next.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 3
  %45 = ptrtoint ptr %seq_next.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %seq_next.i, align 4
  %seq_send.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 2
  %46 = ptrtoint ptr %seq_send.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %seq_send.i, align 4
  %47 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %version, align 4
  %flags.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 7
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %flags.i, align 4
  call fastcc void @dlm_send_queue_flush(ptr noundef %node) #11
  %49 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %state4, align 4
  %shutdown_wait.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 8
  call void @__wake_up(ptr noundef %shutdown_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %cleanup137

do.body118:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @midcomms_shutdown.__UNIQUE_ID_ddebug628, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@midcomms_shutdown, %if.then130)) #11
          to label %cleanup137 [label %if.then130], !srcloc !291

if.then130:                                       ; preds = %do.body118
  %50 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %node, align 4
  %52 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %state4, align 4
  %switch.tableidx243 = add i32 %53, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx243)
  %54 = icmp ult i32 %switch.tableidx243, 7
  br i1 %54, label %switch.lookup242, label %if.then130.dlm_state_str.exit211_crit_edge

if.then130.dlm_state_str.exit211_crit_edge:       ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit211

switch.lookup242:                                 ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep244 = getelementptr inbounds [7 x ptr], ptr @switch.table.midcomms_shutdown.127, i32 0, i32 %switch.tableidx243
  %55 = ptrtoint ptr %switch.gep244 to i32
  call void @__asan_load4_noabort(i32 %55)
  %switch.load245 = load ptr, ptr %switch.gep244, align 4
  br label %dlm_state_str.exit211

dlm_state_str.exit211:                            ; preds = %switch.lookup242, %if.then130.dlm_state_str.exit211_crit_edge
  %retval.0.i210 = phi ptr [ %switch.load245, %switch.lookup242 ], [ @.str.28, %if.then130.dlm_state_str.exit211_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @midcomms_shutdown.__UNIQUE_ID_ddebug628, ptr noundef nonnull @.str.119, i32 noundef %51, ptr noundef nonnull %retval.0.i210) #11
  br label %cleanup137

cleanup137:                                       ; preds = %dlm_state_str.exit211, %do.body118, %midcomms_node_reset.exit, %sw.bb25, %entry.cleanup137_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_delete_debug_comms_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_srcu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midcomms_node_release(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %send_queue_cnt = getelementptr i8, ptr %rcu, i32 -124
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %send_queue_cnt, i32 noundef 4) #11
  %0 = ptrtoint ptr %send_queue_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %send_queue_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !286

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1315, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %rcu, i32 -192
  tail call void @kfree(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_lowcomms_shutdown() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_midcomms_close(i32 noundef %nodeid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dlm_our_nodeid() #11
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %nodeid)
  %cmp = icmp eq i32 %call, %nodeid
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__srcu_read_lock(ptr noundef nonnull @nodes_srcu) #11
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  %and.i.i = and i32 %nodeid, 31
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.end.do.end.i.i_crit_edge

if.end.do.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b37.i.i = load i1, ptr @__find_node.__warned, align 1
  br i1 %.b37.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__find_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 276, ptr noundef nonnull @.str.7) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %if.end.do.end.i.i_crit_edge
  %arrayidx.i.i = getelementptr [32 x %struct.hlist_head], ptr @node_hash, i32 0, i32 %and.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %1, null
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -184
  %tobool12.not4144.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool12.not41.i.i = or i1 %tobool10.not.i.i, %tobool12.not4144.i.i
  br i1 %tobool12.not41.i.i, label %do.end.i.i.if.end4_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.if.end4_crit_edge:                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %node.042.i.i = phi ptr [ %add.ptr27.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %2 = ptrtoint ptr %node.042.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node.042.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %nodeid)
  %cmp.i.i = icmp eq i32 %3, %nodeid
  br i1 %cmp.i.i, label %if.then3, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hlist.i.i = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %hlist.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %5, null
  %add.ptr27.i.i = getelementptr i8, ptr %5, i32 -184
  %tobool12.not45.i.i = icmp eq ptr %add.ptr27.i.i, null
  %tobool12.not.i.i = or i1 %tobool23.not.i.i, %tobool12.not45.i.i
  br i1 %tobool12.not.i.i, label %for.inc.i.i.if.end4_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.if.end4_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %flags = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 1, ptr noundef %flags) #11
  %shutdown_wait = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %shutdown_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.inc.i.i.if.end4_crit_edge, %do.end.i.i.if.end4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %tobool.not.i = icmp ult i32 %call.i, 2
  br i1 %tobool.not.i, label %if.end4.srcu_read_unlock.exit_crit_edge, label %land.rhs.i

if.end4.srcu_read_unlock.exit_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

land.rhs.i:                                       ; preds = %if.end4
  %.b1.i = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.srcu_read_unlock.exit_crit_edge, label %if.then.i, !prof !286

land.rhs.i.srcu_read_unlock.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit

srcu_read_unlock.exit:                            ; preds = %if.then.i, %land.rhs.i.srcu_read_unlock.exit_crit_edge, %if.end4.srcu_read_unlock.exit_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %call.i) #11
  tail call void @synchronize_srcu(ptr noundef nonnull @nodes_srcu) #11
  %call.i27 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @nodes_srcu) #11
  tail call fastcc void @rcu_lock_acquire(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @mutex_lock_nested(ptr noundef nonnull @close_lock, i32 noundef 0) #11
  %call.i.i29 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29)
  %tobool.not.i.i30 = icmp eq i32 %call.i.i29, 0
  br i1 %tobool.not.i.i30, label %land.lhs.true.i.i33, label %srcu_read_unlock.exit.do.end.i.i42_crit_edge

srcu_read_unlock.exit.do.end.i.i42_crit_edge:     ; preds = %srcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i42

land.lhs.true.i.i33:                              ; preds = %srcu_read_unlock.exit
  %call1.i.i31 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i31)
  %tobool2.not.i.i32 = icmp eq i32 %call1.i.i31, 0
  br i1 %tobool2.not.i.i32, label %land.lhs.true.i.i33.do.end.i.i42_crit_edge, label %land.lhs.true3.i.i35

land.lhs.true.i.i33.do.end.i.i42_crit_edge:       ; preds = %land.lhs.true.i.i33
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i42

land.lhs.true3.i.i35:                             ; preds = %land.lhs.true.i.i33
  %.b37.i.i34 = load i1, ptr @__find_node.__warned, align 1
  br i1 %.b37.i.i34, label %land.lhs.true3.i.i35.do.end.i.i42_crit_edge, label %if.then.i.i36

land.lhs.true3.i.i35.do.end.i.i42_crit_edge:      ; preds = %land.lhs.true3.i.i35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i42

if.then.i.i36:                                    ; preds = %land.lhs.true3.i.i35
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__find_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 276, ptr noundef nonnull @.str.7) #11
  br label %do.end.i.i42

do.end.i.i42:                                     ; preds = %if.then.i.i36, %land.lhs.true3.i.i35.do.end.i.i42_crit_edge, %land.lhs.true.i.i33.do.end.i.i42_crit_edge, %srcu_read_unlock.exit.do.end.i.i42_crit_edge
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool10.not.i.i38 = icmp eq ptr %7, null
  %add.ptr.i.i39 = getelementptr i8, ptr %7, i32 -184
  %tobool12.not4144.i.i40 = icmp eq ptr %add.ptr.i.i39, null
  %tobool12.not41.i.i41 = or i1 %tobool10.not.i.i38, %tobool12.not4144.i.i40
  br i1 %tobool12.not41.i.i41, label %do.end.i.i42.if.then8_crit_edge, label %do.end.i.i42.for.body.i.i45_crit_edge

do.end.i.i42.for.body.i.i45_crit_edge:            ; preds = %do.end.i.i42
  br label %for.body.i.i45

do.end.i.i42.if.then8_crit_edge:                  ; preds = %do.end.i.i42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

for.body.i.i45:                                   ; preds = %for.inc.i.i51.for.body.i.i45_crit_edge, %do.end.i.i42.for.body.i.i45_crit_edge
  %node.042.i.i43 = phi ptr [ %add.ptr27.i.i48, %for.inc.i.i51.for.body.i.i45_crit_edge ], [ %add.ptr.i.i39, %do.end.i.i42.for.body.i.i45_crit_edge ]
  %8 = ptrtoint ptr %node.042.i.i43 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node.042.i.i43, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %nodeid)
  %cmp.i.i44 = icmp eq i32 %9, %nodeid
  br i1 %cmp.i.i44, label %if.end10, label %for.inc.i.i51

for.inc.i.i51:                                    ; preds = %for.body.i.i45
  %hlist.i.i46 = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i43, i32 0, i32 13
  %10 = ptrtoint ptr %hlist.i.i46 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hlist.i.i46, align 4
  %tobool23.not.i.i47 = icmp eq ptr %11, null
  %add.ptr27.i.i48 = getelementptr i8, ptr %11, i32 -184
  %tobool12.not45.i.i49 = icmp eq ptr %add.ptr27.i.i48, null
  %tobool12.not.i.i50 = or i1 %tobool23.not.i.i47, %tobool12.not45.i.i49
  br i1 %tobool12.not.i.i50, label %for.inc.i.i51.if.then8_crit_edge, label %for.inc.i.i51.for.body.i.i45_crit_edge

for.inc.i.i51.for.body.i.i45_crit_edge:           ; preds = %for.inc.i.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i45

for.inc.i.i51.if.then8_crit_edge:                 ; preds = %for.inc.i.i51
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then8

if.then8:                                         ; preds = %for.inc.i.i51.if.then8_crit_edge, %do.end.i.i42.if.then8_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @close_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i27)
  %tobool.not.i55 = icmp ult i32 %call.i27, 2
  br i1 %tobool.not.i55, label %if.then8.srcu_read_unlock.exit59_crit_edge, label %land.rhs.i57

if.then8.srcu_read_unlock.exit59_crit_edge:       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit59

land.rhs.i57:                                     ; preds = %if.then8
  %.b1.i56 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i56, label %land.rhs.i57.srcu_read_unlock.exit59_crit_edge, label %if.then.i58, !prof !286

land.rhs.i57.srcu_read_unlock.exit59_crit_edge:   ; preds = %land.rhs.i57
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit59

if.then.i58:                                      ; preds = %land.rhs.i57
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit59

srcu_read_unlock.exit59:                          ; preds = %if.then.i58, %land.rhs.i57.srcu_read_unlock.exit59_crit_edge, %if.then8.srcu_read_unlock.exit59_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %call.i27) #11
  %call9 = tail call i32 @dlm_lowcomms_close(i32 noundef %nodeid) #11
  br label %cleanup

if.end10:                                         ; preds = %for.body.i.i45
  %call11 = tail call i32 @dlm_lowcomms_close(i32 noundef %nodeid) #11
  %state_lock = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i43, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %state_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @midcomms_node_reset.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_midcomms_close, %if.then.i60)) #11
          to label %midcomms_node_reset.exit [label %if.then.i60], !srcloc !291

if.then.i60:                                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %node.042.i.i43 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %node.042.i.i43, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @midcomms_node_reset.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.107, i32 noundef %13) #11
  br label %midcomms_node_reset.exit

midcomms_node_reset.exit:                         ; preds = %if.then.i60, %if.end10
  %seq_next.i = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i43, i32 0, i32 3
  %14 = ptrtoint ptr %seq_next.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %seq_next.i, align 4
  %seq_send.i = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i43, i32 0, i32 2
  %15 = ptrtoint ptr %seq_send.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %seq_send.i, align 4
  %version.i = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i43, i32 0, i32 1
  %16 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %version.i, align 4
  %flags.i = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i43, i32 0, i32 7
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %flags.i, align 4
  tail call fastcc void @dlm_send_queue_flush(ptr noundef nonnull %node.042.i.i43) #11
  %state.i = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i43, i32 0, i32 9
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %state.i, align 4
  %shutdown_wait.i = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i43, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %shutdown_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i27)
  %tobool.not.i61 = icmp ult i32 %call.i27, 2
  br i1 %tobool.not.i61, label %midcomms_node_reset.exit.srcu_read_unlock.exit65_crit_edge, label %land.rhs.i63

midcomms_node_reset.exit.srcu_read_unlock.exit65_crit_edge: ; preds = %midcomms_node_reset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit65

land.rhs.i63:                                     ; preds = %midcomms_node_reset.exit
  %.b1.i62 = load i1, ptr @srcu_read_unlock.__already_done, align 1
  br i1 %.b1.i62, label %land.rhs.i63.srcu_read_unlock.exit65_crit_edge, label %if.then.i64, !prof !286

land.rhs.i63.srcu_read_unlock.exit65_crit_edge:   ; preds = %land.rhs.i63
  call void @__sanitizer_cov_trace_pc() #13
  br label %srcu_read_unlock.exit65

if.then.i64:                                      ; preds = %land.rhs.i63
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @srcu_read_unlock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.102, i32 noundef 189, i32 noundef 9, ptr noundef null) #11
  br label %srcu_read_unlock.exit65

srcu_read_unlock.exit65:                          ; preds = %if.then.i64, %land.rhs.i63.srcu_read_unlock.exit65_crit_edge, %midcomms_node_reset.exit.srcu_read_unlock.exit65_crit_edge
  tail call fastcc void @rcu_lock_release(ptr noundef getelementptr inbounds (%struct.srcu_struct, ptr @nodes_srcu, i32 0, i32 16)) #11
  tail call void @__srcu_read_unlock(ptr noundef nonnull @nodes_srcu, i32 noundef %call.i27) #11
  tail call void @mutex_unlock(ptr noundef nonnull @close_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %srcu_read_unlock.exit65, %srcu_read_unlock.exit59, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %srcu_read_unlock.exit65 ], [ %call9, %srcu_read_unlock.exit59 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dlm_lowcomms_close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dlm_midcomms_rawmsg_send(ptr noundef %node, ptr noundef %buf, i32 noundef %buflen) local_unnamed_addr #0 align 64 {
entry:
  %rd = alloca %struct.dlm_rawmsg_data, align 4
  %msgbuf = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rd) #11
  %0 = getelementptr inbounds %struct.dlm_rawmsg_data, ptr %rd, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %msgbuf) #11
  %1 = ptrtoint ptr %msgbuf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %msgbuf, align 4, !annotation !290
  %2 = ptrtoint ptr %rd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %node, ptr %rd, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %buf, ptr %0, align 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %node, align 4
  %call = call ptr @dlm_lowcomms_new_msg(i32 noundef %5, i32 noundef %buflen, i32 noundef 3136, ptr noundef nonnull %msgbuf, ptr noundef nonnull @midcomms_new_rawmsg_cb, ptr noundef nonnull %rd) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %msgbuf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msgbuf, align 4
  %8 = call ptr @memcpy(ptr %7, ptr %buf, i32 %buflen)
  call void @dlm_lowcomms_commit_msg(ptr noundef nonnull %call) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %msgbuf) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rd) #11
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @midcomms_new_rawmsg_cb(ptr nocapture noundef readonly %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %buf = getelementptr inbounds %struct.dlm_rawmsg_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777984, i32 %3)
  %cond = icmp eq i32 %3, 16777984
  br i1 %cond, label %entry.sw.epilog3_crit_edge, label %sw.default

entry.sw.epilog3_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog3

sw.default:                                       ; preds = %entry
  %h_cmd = getelementptr inbounds %struct.dlm_header, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %h_cmd to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %h_cmd, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cond4 = icmp eq i8 %5, 3
  br i1 %cond4, label %sw.bb, label %sw.default.sw.epilog3_crit_edge

sw.default.sw.epilog3_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog3

sw.bb:                                            ; preds = %sw.default
  %u = getelementptr inbounds %struct.dlm_header, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.sw.epilog3_crit_edge

sw.bb.sw.epilog3_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog3

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %seq_send = getelementptr inbounds %struct.midcomms_node, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %seq_send to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seq_send, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %seq_send, align 4
  %12 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %u, align 4
  br label %sw.epilog3

sw.epilog3:                                       ; preds = %if.then, %sw.bb.sw.epilog3_crit_edge, %sw.default.sw.epilog3_crit_edge, %entry.sw.epilog3_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dlm_midcomms_recv_node_lookup(i32 noundef %nodeid, ptr nocapture noundef readonly %p, i16 noundef zeroext %msglen, ptr nocapture noundef readonly %cb) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %h_cmd = getelementptr inbounds %struct.dlm_header, ptr %p, i32 0, i32 4
  %0 = ptrtoint ptr %h_cmd to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %h_cmd, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cond = icmp eq i8 %1, 2
  br i1 %cond, label %sw.bb, label %entry.sw.epilog61_crit_edge

entry.sw.epilog61_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog61

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 48, i16 %msglen)
  %cmp = icmp ult i16 %msglen, 48
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %conv1 = zext i16 %msglen to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %conv1, i32 noundef %nodeid) #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %rc_type = getelementptr inbounds %struct.dlm_rcom, ptr %p, i32 0, i32 1
  %2 = ptrtoint ptr %rc_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rc_type, align 8
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %4, label %if.end.sw.epilog61_crit_edge [
    i32 2, label %if.end.sw.bb7_crit_edge
    i32 6, label %if.end.sw.bb7_crit_edge167
    i32 1, label %if.end.sw.bb7_crit_edge168
    i32 5, label %if.end.sw.bb7_crit_edge169
  ]

if.end.sw.bb7_crit_edge169:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end.sw.bb7_crit_edge168:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end.sw.bb7_crit_edge167:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7

if.end.sw.epilog61_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog61

sw.bb7:                                           ; preds = %if.end.sw.bb7_crit_edge, %if.end.sw.bb7_crit_edge167, %if.end.sw.bb7_crit_edge168, %if.end.sw.bb7_crit_edge169
  %and.i.i = and i32 %nodeid, 31
  %call.i.i = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %sw.bb7.do.end.i.i_crit_edge

sw.bb7.do.end.i.i_crit_edge:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %sw.bb7
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true3.i.i

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

land.lhs.true3.i.i:                               ; preds = %land.lhs.true.i.i
  %.b37.i.i = load i1, ptr @__find_node.__warned, align 1
  br i1 %.b37.i.i, label %land.lhs.true3.i.i.do.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true3.i.i.do.end.i.i_crit_edge:          ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true3.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__find_node.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 276, ptr noundef nonnull @.str.7) #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true3.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i.do.end.i.i_crit_edge, %sw.bb7.do.end.i.i_crit_edge
  %arrayidx.i.i = getelementptr [32 x %struct.hlist_head], ptr @node_hash, i32 0, i32 %and.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %tobool10.not.i.i = icmp eq ptr %7, null
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 -184
  %tobool12.not4144.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool12.not41.i.i = or i1 %tobool10.not.i.i, %tobool12.not4144.i.i
  br i1 %tobool12.not41.i.i, label %do.end.i.i.sw.epilog61_crit_edge, label %do.end.i.i.for.body.i.i_crit_edge

do.end.i.i.for.body.i.i_crit_edge:                ; preds = %do.end.i.i
  br label %for.body.i.i

do.end.i.i.sw.epilog61_crit_edge:                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog61

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %do.end.i.i.for.body.i.i_crit_edge
  %node.042.i.i = phi ptr [ %add.ptr27.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %add.ptr.i.i, %do.end.i.i.for.body.i.i_crit_edge ]
  %8 = ptrtoint ptr %node.042.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node.042.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %nodeid)
  %cmp.i.i = icmp eq i32 %9, %nodeid
  br i1 %cmp.i.i, label %if.then9, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %hlist.i.i = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 13
  %10 = ptrtoint ptr %hlist.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %hlist.i.i, align 4
  %tobool23.not.i.i = icmp eq ptr %11, null
  %add.ptr27.i.i = getelementptr i8, ptr %11, i32 -184
  %tobool12.not45.i.i = icmp eq ptr %add.ptr27.i.i, null
  %tobool12.not.i.i = or i1 %tobool23.not.i.i, %tobool12.not45.i.i
  br i1 %tobool12.not.i.i, label %for.inc.i.i.sw.epilog61_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.sw.epilog61_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog61

if.then9:                                         ; preds = %for.body.i.i
  %state_lock = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %state_lock) #11
  %state = getelementptr inbounds %struct.midcomms_node, ptr %node.042.i.i, i32 0, i32 9
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp10.not = icmp eq i32 %13, 2
  br i1 %cmp10.not, label %if.then9.if.end26_crit_edge, label %do.body13

if.then9.if.end26_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

do.body13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_midcomms_recv_node_lookup.__UNIQUE_ID_ddebug612, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_midcomms_recv_node_lookup, %if.then19)) #11
          to label %if.end26 [label %if.then19], !srcloc !291

if.then19:                                        ; preds = %do.body13
  %14 = ptrtoint ptr %node.042.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %node.042.i.i, align 4
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  %switch.tableidx = add i32 %17, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %18 = icmp ult i32 %switch.tableidx, 7
  br i1 %18, label %switch.lookup, label %if.then19.dlm_state_str.exit_crit_edge

if.then19.dlm_state_str.exit_crit_edge:           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit

switch.lookup:                                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_midcomms_recv_node_lookup, i32 0, i32 %switch.tableidx
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dlm_state_str.exit

dlm_state_str.exit:                               ; preds = %switch.lookup, %if.then19.dlm_state_str.exit_crit_edge
  %retval.0.i142 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.28, %if.then19.dlm_state_str.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_midcomms_recv_node_lookup.__UNIQUE_ID_ddebug612, ptr noundef nonnull @.str.36, i32 noundef %15, ptr noundef nonnull %retval.0.i142) #11
  br label %if.end26

if.end26:                                         ; preds = %dlm_state_str.exit, %do.body13, %if.then9.if.end26_crit_edge
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %21, label %do.end51 [
    i32 1, label %sw.bb28
    i32 2, label %if.end26.sw.epilog_crit_edge
  ]

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %state, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_midcomms_recv_node_lookup.__UNIQUE_ID_ddebug613, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_midcomms_recv_node_lookup, %if.then42)) #11
          to label %sw.epilog [label %if.then42], !srcloc !291

if.then42:                                        ; preds = %sw.bb28
  %24 = ptrtoint ptr %node.042.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %node.042.i.i, align 4
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 4
  %switch.tableidx162 = add i32 %27, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx162)
  %28 = icmp ult i32 %switch.tableidx162, 7
  br i1 %28, label %switch.lookup161, label %if.then42.dlm_state_str.exit151_crit_edge

if.then42.dlm_state_str.exit151_crit_edge:        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit151

switch.lookup161:                                 ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep163 = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_midcomms_recv_node_lookup.128, i32 0, i32 %switch.tableidx162
  %29 = ptrtoint ptr %switch.gep163 to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load164 = load ptr, ptr %switch.gep163, align 4
  br label %dlm_state_str.exit151

dlm_state_str.exit151:                            ; preds = %switch.lookup161, %if.then42.dlm_state_str.exit151_crit_edge
  %retval.0.i150 = phi ptr [ %switch.load164, %switch.lookup161 ], [ @.str.28, %if.then42.dlm_state_str.exit151_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_midcomms_recv_node_lookup.__UNIQUE_ID_ddebug613, ptr noundef nonnull @.str.13, i32 noundef %25, ptr noundef nonnull %retval.0.i150) #11
  br label %sw.epilog

do.end51:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %node.042.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %node.042.i.i, align 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %31) #14
  tail call fastcc void @midcomms_node_reset(ptr noundef nonnull %node.042.i.i)
  %32 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end51, %dlm_state_str.exit151, %sw.bb28, %if.end26.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #11
  br label %sw.epilog61

sw.epilog61:                                      ; preds = %sw.epilog, %for.inc.i.i.sw.epilog61_crit_edge, %do.end.i.i.sw.epilog61_crit_edge, %if.end.sw.epilog61_crit_edge, %entry.sw.epilog61_crit_edge
  %allocation.0 = phi i32 [ 0, %if.end.sw.epilog61_crit_edge ], [ 0, %entry.sw.epilog61_crit_edge ], [ 3136, %sw.epilog ], [ 3136, %do.end.i.i.sw.epilog61_crit_edge ], [ 3136, %for.inc.i.i.sw.epilog61_crit_edge ]
  %call62 = tail call fastcc ptr @nodeid2node(i32 noundef %nodeid, i32 noundef %allocation.0)
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.then64, label %if.end102

if.then64:                                        ; preds = %sw.epilog61
  %33 = ptrtoint ptr %h_cmd to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %h_cmd, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %34)
  %cond110 = icmp eq i8 %34, 3
  br i1 %cond110, label %sw.bb67, label %sw.default89

sw.bb67:                                          ; preds = %if.then64
  call void @__sanitizer_cov_trace_const_cmp2(i16 24, i16 %msglen)
  %cmp69 = icmp ult i16 %msglen, 24
  br i1 %cmp69, label %do.end74, label %if.end78

do.end74:                                         ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #13
  %conv68 = zext i16 %msglen to i32
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv68, i32 noundef %nodeid) #14
  br label %cleanup

if.end78:                                         ; preds = %sw.bb67
  %call79 = tail call i32 @___ratelimit(ptr noundef nonnull @dlm_midcomms_recv_node_lookup._rs, ptr noundef nonnull @.str.35) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end78.cleanup_crit_edge, label %do.end84

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end84:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  %o_nextcmd = getelementptr inbounds %struct.dlm_opts, ptr %p, i32 0, i32 1
  %35 = ptrtoint ptr %o_nextcmd to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %o_nextcmd, align 8
  %conv86 = zext i8 %36 to i32
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv86, i32 noundef %nodeid) #14
  br label %cleanup

sw.default89:                                     ; preds = %if.then64
  %call90 = tail call i32 @___ratelimit(ptr noundef nonnull @dlm_midcomms_recv_node_lookup._rs.45, ptr noundef nonnull @.str.35) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %sw.default89.cleanup_crit_edge, label %do.end95

sw.default89.cleanup_crit_edge:                   ; preds = %sw.default89
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end95:                                         ; preds = %sw.default89
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %h_cmd to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %h_cmd, align 2
  %conv98 = zext i8 %38 to i32
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %conv98, i32 noundef %nodeid) #14
  br label %cleanup

if.end102:                                        ; preds = %sw.epilog61
  call void @__sanitizer_cov_trace_pc() #13
  %call103 = tail call i32 %cb(ptr noundef nonnull %call62) #11, !callees !294
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %cmp104 = icmp slt i32 %call103, 0
  %.call62 = select i1 %cmp104, ptr null, ptr %call62
  br label %cleanup

cleanup:                                          ; preds = %if.end102, %do.end95, %sw.default89.cleanup_crit_edge, %do.end84, %if.end78.cleanup_crit_edge, %do.end74, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end74 ], [ null, %sw.default89.cleanup_crit_edge ], [ null, %do.end95 ], [ null, %if.end78.cleanup_crit_edge ], [ null, %do.end84 ], [ %.call62, %if.end102 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_midcomms_version_check_3_1(ptr nocapture noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 196609, label %entry.return_crit_edge
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 196609, ptr %version, align 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %node, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef 196609, i32 noundef %5) #14
  br label %return

sw.default:                                       ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @dlm_midcomms_version_check_3_1._rs, ptr noundef nonnull @.str.50) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %sw.default.return_crit_edge, label %do.end4

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end4:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node, align 4
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %version, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef 196609, i32 noundef %7, i32 noundef %9) #14
  br label %return

return:                                           ; preds = %do.end4, %sw.default.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.end4 ], [ -1, %sw.default.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dlm_receive_buffer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dlm_midcomms_version_check_3_2(ptr nocapture noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %version = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 1
  %0 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %version, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 196610, label %entry.return_crit_edge
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %version to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 196610, ptr %version, align 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %node, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef 196610, i32 noundef %5) #14
  br label %return

sw.default:                                       ; preds = %entry
  %call2 = tail call i32 @___ratelimit(ptr noundef nonnull @dlm_midcomms_version_check_3_2._rs, ptr noundef nonnull @.str.72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %sw.default.return_crit_edge, label %do.end4

sw.default.return_crit_edge:                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end4:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node, align 4
  %8 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %version, align 4
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef 196610, i32 noundef %7, i32 noundef %9) #14
  br label %return

return:                                           ; preds = %do.end4, %sw.default.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %do.end4 ], [ -1, %sw.default.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlm_midcomms_receive_buffer(ptr noundef %p, ptr noundef %node, i32 noundef %seq) unnamed_addr #0 align 64 {
entry:
  %ppc.i273 = alloca ptr, align 4
  %ppc.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_next = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 3
  %0 = ptrtoint ptr %seq_next to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seq_next, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %seq)
  %cmp = icmp eq i32 %1, %seq
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %inc = add i32 %seq, 1
  %2 = ptrtoint ptr %seq_next to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %seq_next, align 4
  %h_cmd = getelementptr inbounds %struct.dlm_header, ptr %p, i32 0, i32 4
  %3 = ptrtoint ptr %h_cmd to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %h_cmd, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %4)
  %cond = icmp eq i8 %4, 5
  br i1 %cond, label %sw.bb, label %sw.default124

sw.bb:                                            ; preds = %if.then
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %node, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppc.i) #11
  %7 = ptrtoint ptr %ppc.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %ppc.i, align 4, !annotation !290
  %call.i = call ptr @dlm_lowcomms_new_msg(i32 noundef %6, i32 noundef 16, i32 noundef 3136, ptr noundef nonnull %ppc.i, ptr noundef null, ptr noundef null) #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %sw.bb.dlm_send_ack.exit_crit_edge, label %if.end.i

sw.bb.dlm_send_ack.exit_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_send_ack.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %ppc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ppc.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196610, ptr %9, align 4
  %call1.i = call i32 @dlm_our_nodeid() #11
  %h_nodeid.i = getelementptr inbounds %struct.dlm_header, ptr %9, i32 0, i32 2
  %11 = ptrtoint ptr %h_nodeid.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call1.i, ptr %h_nodeid.i, align 4
  %h_length.i = getelementptr inbounds %struct.dlm_header, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %h_length.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 16, ptr %h_length.i, align 4
  %h_cmd.i = getelementptr inbounds %struct.dlm_header, ptr %9, i32 0, i32 4
  %13 = ptrtoint ptr %h_cmd.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %h_cmd.i, align 2
  %u.i = getelementptr inbounds %struct.dlm_header, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %inc, ptr %u.i, align 4
  call void @header_out(ptr noundef %9) #11
  call void @dlm_lowcomms_commit_msg(ptr noundef nonnull %call.i) #11
  call void @dlm_lowcomms_put_msg(ptr noundef nonnull %call.i) #11
  br label %dlm_send_ack.exit

dlm_send_ack.exit:                                ; preds = %if.end.i, %sw.bb.dlm_send_ack.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppc.i) #11
  %state_lock = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 10
  call void @_raw_spin_lock(ptr noundef %state_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug607, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_midcomms_receive_buffer, %if.then6)) #11
          to label %do.end [label %if.then6], !srcloc !291

if.then6:                                         ; preds = %dlm_send_ack.exit
  %15 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %node, align 4
  %state = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 9
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %switch.tableidx = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %19 = icmp ult i32 %switch.tableidx, 7
  br i1 %19, label %switch.lookup, label %if.then6.dlm_state_str.exit_crit_edge

if.then6.dlm_state_str.exit_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit

switch.lookup:                                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_midcomms_receive_buffer, i32 0, i32 %switch.tableidx
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dlm_state_str.exit

dlm_state_str.exit:                               ; preds = %switch.lookup, %if.then6.dlm_state_str.exit_crit_edge
  %retval.0.i236 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.28, %if.then6.dlm_state_str.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug607, ptr noundef nonnull @.str.87, i32 noundef %16, ptr noundef nonnull %retval.0.i236) #11
  br label %do.end

do.end:                                           ; preds = %dlm_state_str.exit, %dlm_send_ack.exit
  %state9 = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 9
  %21 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state9, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %22, label %sw.default [
    i32 2, label %sw.bb10
    i32 3, label %sw.bb54
    i32 4, label %sw.bb74
    i32 6, label %do.end.sw.epilog_crit_edge
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end
  %24 = ptrtoint ptr %state9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 5, ptr %state9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug608, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_midcomms_receive_buffer, %if.then24)) #11
          to label %do.end29 [label %if.then24], !srcloc !291

if.then24:                                        ; preds = %sw.bb10
  %25 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %node, align 4
  %27 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state9, align 4
  %switch.tableidx289 = add i32 %28, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx289)
  %29 = icmp ult i32 %switch.tableidx289, 7
  br i1 %29, label %switch.lookup288, label %if.then24.dlm_state_str.exit245_crit_edge

if.then24.dlm_state_str.exit245_crit_edge:        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit245

switch.lookup288:                                 ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep290 = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_midcomms_receive_buffer.129, i32 0, i32 %switch.tableidx289
  %30 = ptrtoint ptr %switch.gep290 to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load291 = load ptr, ptr %switch.gep290, align 4
  br label %dlm_state_str.exit245

dlm_state_str.exit245:                            ; preds = %switch.lookup288, %if.then24.dlm_state_str.exit245_crit_edge
  %retval.0.i244 = phi ptr [ %switch.load291, %switch.lookup288 ], [ @.str.28, %if.then24.dlm_state_str.exit245_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug608, ptr noundef nonnull @.str.13, i32 noundef %26, ptr noundef nonnull %retval.0.i244) #11
  br label %do.end29

do.end29:                                         ; preds = %dlm_state_str.exit245, %sw.bb10
  %users = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 11
  %31 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp30 = icmp eq i32 %32, 0
  br i1 %cmp30, label %if.then32, label %do.end29.sw.epilog_crit_edge

do.end29.sw.epilog_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

if.then32:                                        ; preds = %do.end29
  %33 = ptrtoint ptr %state9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 6, ptr %state9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug609, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_midcomms_receive_buffer, %if.then46)) #11
          to label %do.end51 [label %if.then46], !srcloc !291

if.then46:                                        ; preds = %if.then32
  %34 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %node, align 4
  %36 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %state9, align 4
  %switch.tableidx293 = add i32 %37, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx293)
  %38 = icmp ult i32 %switch.tableidx293, 7
  br i1 %38, label %switch.lookup292, label %if.then46.dlm_state_str.exit254_crit_edge

if.then46.dlm_state_str.exit254_crit_edge:        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit254

switch.lookup292:                                 ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep294 = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_midcomms_receive_buffer.130, i32 0, i32 %switch.tableidx293
  %39 = ptrtoint ptr %switch.gep294 to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load295 = load ptr, ptr %switch.gep294, align 4
  br label %dlm_state_str.exit254

dlm_state_str.exit254:                            ; preds = %switch.lookup292, %if.then46.dlm_state_str.exit254_crit_edge
  %retval.0.i253 = phi ptr [ %switch.load295, %switch.lookup292 ], [ @.str.28, %if.then46.dlm_state_str.exit254_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug609, ptr noundef nonnull @.str.88, i32 noundef %35, ptr noundef nonnull %retval.0.i253) #11
  br label %do.end51

do.end51:                                         ; preds = %dlm_state_str.exit254, %if.then32
  call void @_raw_spin_unlock(ptr noundef %state_lock) #11
  %flags181 = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 7
  call void @_set_bit(i32 noundef 3, ptr noundef %flags181) #11
  call fastcc void @dlm_send_fin(ptr noundef %node, ptr noundef nonnull @dlm_pas_fin_ack_rcv)
  br label %return

sw.bb54:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %state9 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 7, ptr %state9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug610, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_midcomms_receive_buffer, %if.then68)) #11
          to label %sw.epilog [label %if.then68], !srcloc !291

if.then68:                                        ; preds = %sw.bb54
  %41 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %node, align 4
  %43 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state9, align 4
  %switch.tableidx297 = add i32 %44, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx297)
  %45 = icmp ult i32 %switch.tableidx297, 7
  br i1 %45, label %switch.lookup296, label %if.then68.dlm_state_str.exit263_crit_edge

if.then68.dlm_state_str.exit263_crit_edge:        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit263

switch.lookup296:                                 ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep298 = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_midcomms_receive_buffer.131, i32 0, i32 %switch.tableidx297
  %46 = ptrtoint ptr %switch.gep298 to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load299 = load ptr, ptr %switch.gep298, align 4
  br label %dlm_state_str.exit263

dlm_state_str.exit263:                            ; preds = %switch.lookup296, %if.then68.dlm_state_str.exit263_crit_edge
  %retval.0.i262 = phi ptr [ %switch.load299, %switch.lookup296 ], [ @.str.28, %if.then68.dlm_state_str.exit263_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug610, ptr noundef nonnull @.str.13, i32 noundef %42, ptr noundef nonnull %retval.0.i262) #11
  br label %sw.epilog

sw.bb74:                                          ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @midcomms_node_reset.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_midcomms_receive_buffer, %if.then.i)) #11
          to label %midcomms_node_reset.exit [label %if.then.i], !srcloc !291

if.then.i:                                        ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #13
  %47 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %node, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @midcomms_node_reset.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.107, i32 noundef %48) #11
  br label %midcomms_node_reset.exit

midcomms_node_reset.exit:                         ; preds = %if.then.i, %sw.bb74
  %49 = ptrtoint ptr %seq_next to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %seq_next, align 4
  %seq_send.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 2
  %50 = ptrtoint ptr %seq_send.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %seq_send.i, align 4
  %version.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 1
  %51 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %version.i, align 4
  %flags.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 7
  %52 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %flags.i, align 4
  call fastcc void @dlm_send_queue_flush(ptr noundef %node) #11
  %53 = ptrtoint ptr %state9 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %state9, align 4
  %shutdown_wait.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 8
  call void @__wake_up(ptr noundef %shutdown_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug611, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_midcomms_receive_buffer, %if.then87)) #11
          to label %do.end92 [label %if.then87], !srcloc !291

if.then87:                                        ; preds = %midcomms_node_reset.exit
  %54 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %node, align 4
  %56 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %state9, align 4
  %switch.tableidx301 = add i32 %57, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx301)
  %58 = icmp ult i32 %switch.tableidx301, 7
  br i1 %58, label %switch.lookup300, label %if.then87.dlm_state_str.exit272_crit_edge

if.then87.dlm_state_str.exit272_crit_edge:        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit272

switch.lookup300:                                 ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep302 = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_midcomms_receive_buffer.132, i32 0, i32 %switch.tableidx301
  %59 = ptrtoint ptr %switch.gep302 to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load303 = load ptr, ptr %switch.gep302, align 4
  br label %dlm_state_str.exit272

dlm_state_str.exit272:                            ; preds = %switch.lookup300, %if.then87.dlm_state_str.exit272_crit_edge
  %retval.0.i271 = phi ptr [ %switch.load303, %switch.lookup300 ], [ @.str.28, %if.then87.dlm_state_str.exit272_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug611, ptr noundef nonnull @.str.13, i32 noundef %55, ptr noundef nonnull %retval.0.i271) #11
  br label %do.end92

do.end92:                                         ; preds = %dlm_state_str.exit272, %midcomms_node_reset.exit
  call void @__wake_up(ptr noundef %shutdown_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock(ptr noundef %state_lock) #11
  %60 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state9, align 4
  %call98 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.86, i32 noundef %61) #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 530, i32 noundef 9, ptr noundef null) #11
  br label %return

sw.epilog:                                        ; preds = %do.end92, %dlm_state_str.exit263, %sw.bb54, %do.end29.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  call void @_raw_spin_unlock(ptr noundef %state_lock) #11
  %flags = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 7
  call void @_set_bit(i32 noundef 3, ptr noundef %flags) #11
  br label %return

sw.default124:                                    ; preds = %if.then
  %flags126 = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 7
  %62 = ptrtoint ptr %flags126 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %flags126, align 4
  %64 = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool128.not = icmp eq i32 %64, 0
  br i1 %tobool128.not, label %sw.default124.if.end150_crit_edge, label %do.end144, !prof !286

sw.default124.if.end150_crit_edge:                ; preds = %sw.default124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

do.end144:                                        ; preds = %sw.default124
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 538, i32 noundef 9, ptr noundef null) #11
  br label %if.end150

if.end150:                                        ; preds = %do.end144, %sw.default124.if.end150_crit_edge
  %65 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %node, align 4
  tail call void @dlm_receive_buffer(ptr noundef %p, i32 noundef %66) #11
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags126) #11
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %seq)
  %cmp162 = icmp ugt i32 %1, %seq
  br i1 %cmp162, label %if.then164, label %if.else.if.end168_crit_edge

if.else.if.end168_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end168

if.then164:                                       ; preds = %if.else
  %67 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %node, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ppc.i273) #11
  %69 = ptrtoint ptr %ppc.i273 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 -1 to ptr), ptr %ppc.i273, align 4, !annotation !290
  %call.i274 = call ptr @dlm_lowcomms_new_msg(i32 noundef %68, i32 noundef 16, i32 noundef 3136, ptr noundef nonnull %ppc.i273, ptr noundef null, ptr noundef null) #11
  %tobool.not.i275 = icmp eq ptr %call.i274, null
  br i1 %tobool.not.i275, label %if.then164.dlm_send_ack.exit282_crit_edge, label %if.end.i281

if.then164.dlm_send_ack.exit282_crit_edge:        ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_send_ack.exit282

if.end.i281:                                      ; preds = %if.then164
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %ppc.i273 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ppc.i273, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 196610, ptr %71, align 4
  %call1.i276 = call i32 @dlm_our_nodeid() #11
  %h_nodeid.i277 = getelementptr inbounds %struct.dlm_header, ptr %71, i32 0, i32 2
  %73 = ptrtoint ptr %h_nodeid.i277 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call1.i276, ptr %h_nodeid.i277, align 4
  %h_length.i278 = getelementptr inbounds %struct.dlm_header, ptr %71, i32 0, i32 3
  %74 = ptrtoint ptr %h_length.i278 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 16, ptr %h_length.i278, align 4
  %h_cmd.i279 = getelementptr inbounds %struct.dlm_header, ptr %71, i32 0, i32 4
  %75 = ptrtoint ptr %h_cmd.i279 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 4, ptr %h_cmd.i279, align 2
  %u.i280 = getelementptr inbounds %struct.dlm_header, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %u.i280 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %1, ptr %u.i280, align 4
  call void @header_out(ptr noundef %71) #11
  call void @dlm_lowcomms_commit_msg(ptr noundef nonnull %call.i274) #11
  call void @dlm_lowcomms_put_msg(ptr noundef nonnull %call.i274) #11
  br label %dlm_send_ack.exit282

dlm_send_ack.exit282:                             ; preds = %if.end.i281, %if.then164.dlm_send_ack.exit282_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ppc.i273) #11
  br label %if.end168

if.end168:                                        ; preds = %dlm_send_ack.exit282, %if.else.if.end168_crit_edge
  %call169 = call i32 @___ratelimit(ptr noundef nonnull @dlm_midcomms_receive_buffer._rs, ptr noundef nonnull @.str.86) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end168.return_crit_edge, label %do.end174

if.end168.return_crit_edge:                       ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

do.end174:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #13
  %77 = ptrtoint ptr %seq_next to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %seq_next, align 4
  %79 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %node, align 4
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, i32 noundef %seq, i32 noundef %78, i32 noundef %80) #14
  br label %return

return:                                           ; preds = %do.end174, %if.end168.return_crit_edge, %if.end150, %sw.epilog, %sw.default, %do.end51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlm_mhandle_release(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcu, i32 -40
  %msg = getelementptr i8, ptr %rcu, i32 -28
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  tail call void @dlm_lowcomms_put_msg(ptr noundef %1) #11
  tail call void @dlm_free_mhandle(ptr noundef %add.ptr) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dlm_create_debug_comms_file(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @header_out(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @midcomms_new_msg_cb(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %node = getelementptr inbounds %struct.dlm_mhandle, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %send_queue_cnt = getelementptr inbounds %struct.midcomms_node, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_queue_cnt, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %send_queue_cnt, i32 1, i32 3, i32 1) #11
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_queue_cnt, ptr %send_queue_cnt, i32 1, ptr elementtype(i32) %send_queue_cnt) #11, !srcloc !295
  %3 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %node, align 4
  %send_queue_lock = getelementptr inbounds %struct.midcomms_node, ptr %4, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %send_queue_lock) #11
  %list = getelementptr inbounds %struct.dlm_mhandle, ptr %data, i32 0, i32 8
  %5 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %node, align 4
  %send_queue = getelementptr inbounds %struct.midcomms_node, ptr %6, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.midcomms_node, ptr %6, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i12 = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %8, ptr noundef %send_queue) #11
  br i1 %call.i.i12, label %if.end.i.i, label %entry.list_add_tail_rcu.exit_crit_edge

entry.list_add_tail_rcu.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail_rcu.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %send_queue, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.dlm_mhandle, ptr %data, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %8, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !296
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list, ptr %8, align 4
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %list, ptr %prev.i, align 4
  br label %list_add_tail_rcu.exit

list_add_tail_rcu.exit:                           ; preds = %if.end.i.i, %entry.list_add_tail_rcu.exit_crit_edge
  %13 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %node, align 4
  %send_queue_lock4 = getelementptr inbounds %struct.midcomms_node, ptr %14, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %send_queue_lock4) #11
  %15 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %node, align 4
  %seq_send = getelementptr inbounds %struct.midcomms_node, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %seq_send to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %seq_send, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %seq_send, align 4
  %seq = getelementptr inbounds %struct.dlm_mhandle, ptr %data, i32 0, i32 5
  %19 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %seq, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dlm_send_queue_flush(ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_send_queue_flush.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_send_queue_flush, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !291

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_send_queue_flush.__UNIQUE_ID_ddebug597, ptr noundef nonnull @.str.109, i32 noundef %1) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !276) #11
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !287
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %do.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

do.end.rcu_read_lock.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %do.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.103, i32 noundef 696, ptr noundef nonnull @.str.104) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %do.end.rcu_read_lock.exit_crit_edge
  %send_queue_lock = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %send_queue_lock) #11
  %call4 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end13_crit_edge

rcu_read_lock.exit.do.end13_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call6 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true8

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

land.lhs.true8:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @dlm_send_queue_flush.__warned, align 1
  br i1 %.b37, label %land.lhs.true8.do.end13_crit_edge, label %if.then10

land.lhs.true8.do.end13_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end13

if.then10:                                        ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @dlm_send_queue_flush.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 308, ptr noundef nonnull @.str.7) #11
  br label %do.end13

do.end13:                                         ; preds = %if.then10, %land.lhs.true8.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %rcu_read_lock.exit.do.end13_crit_edge
  %send_queue = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 4
  %6 = ptrtoint ptr %send_queue to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn48 = load volatile ptr, ptr %send_queue, align 4
  %cmp.not49 = icmp eq ptr %.pn48, %send_queue
  br i1 %cmp.not49, label %do.end13.for.end_crit_edge, label %for.body.lr.ph

do.end13.for.end_crit_edge:                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end13
  %send_queue_cnt.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %dlm_mhandle_delete.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn50 = phi ptr [ %.pn48, %for.body.lr.ph ], [ %.pn, %dlm_mhandle_delete.exit.for.body_crit_edge ]
  %call.i.i2.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn50) #11
  br i1 %call.i.i2.i, label %if.end.i.i.i, label %for.body.dlm_mhandle_delete.exit_crit_edge

for.body.dlm_mhandle_delete.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_mhandle_delete.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %.pn50, i32 4
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn50, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %dlm_mhandle_delete.exit

dlm_mhandle_delete.exit:                          ; preds = %if.end.i.i.i, %for.body.dlm_mhandle_delete.exit_crit_edge
  %prev.i.i = getelementptr i8, ptr %.pn50, i32 4
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %send_queue_cnt.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %send_queue_cnt.i, i32 1, i32 3, i32 1) #11
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %send_queue_cnt.i, ptr %send_queue_cnt.i, i32 1, ptr elementtype(i32) %send_queue_cnt.i) #11, !srcloc !288
  %rcu.i = getelementptr i8, ptr %.pn50, i32 8
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @dlm_mhandle_release) #11
  %15 = ptrtoint ptr %.pn50 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load volatile ptr, ptr %.pn50, align 4
  %cmp.not = icmp eq ptr %.pn, %send_queue
  br i1 %cmp.not, label %dlm_mhandle_delete.exit.for.end_crit_edge, label %dlm_mhandle_delete.exit.for.body_crit_edge

dlm_mhandle_delete.exit.for.body_crit_edge:       ; preds = %dlm_mhandle_delete.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

dlm_mhandle_delete.exit.for.end_crit_edge:        ; preds = %dlm_mhandle_delete.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %dlm_mhandle_delete.exit.for.end_crit_edge, %do.end13.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %send_queue_lock) #11
  %call.i38 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i38, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i41

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i41:                                ; preds = %for.end
  %call1.i39 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39)
  %tobool.not.i40 = icmp eq i32 %call1.i39, 0
  br i1 %tobool.not.i40, label %land.lhs.true.i41.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i43

land.lhs.true.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i43:                               ; preds = %land.lhs.true.i41
  %.b4.i42 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i42, label %land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge, label %if.then.i44

land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i44:                                      ; preds = %land.lhs.true2.i43
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.103, i32 noundef 724, ptr noundef nonnull @.str.105) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i44, %land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i41.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !289
  %16 = tail call i32 @llvm.read_register.i32(metadata !276) #11
  %and.i.i.i.i.i45 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i45 to ptr
  %preempt_count.i.i.i.i46 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i46, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i46, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dlm_act_fin_ack_rcv(ptr noundef %node) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %state_lock) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_act_fin_ack_rcv.__UNIQUE_ID_ddebug616, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_act_fin_ack_rcv, %if.then)) #11
          to label %do.end [label %if.then], !srcloc !291

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 4
  %state = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 7
  br i1 %4, label %switch.lookup, label %if.then.dlm_state_str.exit_crit_edge

if.then.dlm_state_str.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_act_fin_ack_rcv, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dlm_state_str.exit

dlm_state_str.exit:                               ; preds = %switch.lookup, %if.then.dlm_state_str.exit_crit_edge
  %retval.0.i97 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.28, %if.then.dlm_state_str.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_act_fin_ack_rcv.__UNIQUE_ID_ddebug616, ptr noundef nonnull @.str.121, i32 noundef %1, ptr noundef nonnull %retval.0.i97) #11
  br label %do.end

do.end:                                           ; preds = %dlm_state_str.exit, %entry
  %state4 = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 9
  %6 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state4, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %7, label %sw.default [
    i32 3, label %sw.bb
    i32 7, label %sw.bb24
    i32 1, label %sw.bb43
  ]

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %state4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_act_fin_ack_rcv.__UNIQUE_ID_ddebug617, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_act_fin_ack_rcv, %if.then18)) #11
          to label %sw.epilog [label %if.then18], !srcloc !291

if.then18:                                        ; preds = %sw.bb
  %10 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node, align 4
  %12 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state4, align 4
  %switch.tableidx120 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx120)
  %14 = icmp ult i32 %switch.tableidx120, 7
  br i1 %14, label %switch.lookup119, label %if.then18.dlm_state_str.exit106_crit_edge

if.then18.dlm_state_str.exit106_crit_edge:        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit106

switch.lookup119:                                 ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep121 = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_act_fin_ack_rcv.133, i32 0, i32 %switch.tableidx120
  %15 = ptrtoint ptr %switch.gep121 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load122 = load ptr, ptr %switch.gep121, align 4
  br label %dlm_state_str.exit106

dlm_state_str.exit106:                            ; preds = %switch.lookup119, %if.then18.dlm_state_str.exit106_crit_edge
  %retval.0.i105 = phi ptr [ %switch.load122, %switch.lookup119 ], [ @.str.28, %if.then18.dlm_state_str.exit106_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_act_fin_ack_rcv.__UNIQUE_ID_ddebug617, ptr noundef nonnull @.str.13, i32 noundef %11, ptr noundef nonnull %retval.0.i105) #11
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @midcomms_node_reset.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_act_fin_ack_rcv, %if.then.i)) #11
          to label %midcomms_node_reset.exit [label %if.then.i], !srcloc !291

if.then.i:                                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %node, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @midcomms_node_reset.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.107, i32 noundef %17) #11
  br label %midcomms_node_reset.exit

midcomms_node_reset.exit:                         ; preds = %if.then.i, %sw.bb24
  %seq_next.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 3
  %18 = ptrtoint ptr %seq_next.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %seq_next.i, align 4
  %seq_send.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 2
  %19 = ptrtoint ptr %seq_send.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %seq_send.i, align 4
  %version.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 1
  %20 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %version.i, align 4
  %flags.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 7
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %flags.i, align 4
  tail call fastcc void @dlm_send_queue_flush(ptr noundef %node) #11
  %22 = ptrtoint ptr %state4 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %state4, align 4
  %shutdown_wait.i = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %shutdown_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dlm_act_fin_ack_rcv.__UNIQUE_ID_ddebug618, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dlm_act_fin_ack_rcv, %if.then37)) #11
          to label %do.end42 [label %if.then37], !srcloc !291

if.then37:                                        ; preds = %midcomms_node_reset.exit
  %23 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %node, align 4
  %25 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state4, align 4
  %switch.tableidx124 = add i32 %26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx124)
  %27 = icmp ult i32 %switch.tableidx124, 7
  br i1 %27, label %switch.lookup123, label %if.then37.dlm_state_str.exit115_crit_edge

if.then37.dlm_state_str.exit115_crit_edge:        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %dlm_state_str.exit115

switch.lookup123:                                 ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep125 = getelementptr inbounds [7 x ptr], ptr @switch.table.dlm_act_fin_ack_rcv.134, i32 0, i32 %switch.tableidx124
  %28 = ptrtoint ptr %switch.gep125 to i32
  call void @__asan_load4_noabort(i32 %28)
  %switch.load126 = load ptr, ptr %switch.gep125, align 4
  br label %dlm_state_str.exit115

dlm_state_str.exit115:                            ; preds = %switch.lookup123, %if.then37.dlm_state_str.exit115_crit_edge
  %retval.0.i114 = phi ptr [ %switch.load126, %switch.lookup123 ], [ @.str.28, %if.then37.dlm_state_str.exit115_crit_edge ]
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dlm_act_fin_ack_rcv.__UNIQUE_ID_ddebug618, ptr noundef nonnull @.str.13, i32 noundef %24, ptr noundef nonnull %retval.0.i114) #11
  br label %do.end42

do.end42:                                         ; preds = %dlm_state_str.exit115, %midcomms_node_reset.exit
  tail call void @__wake_up(ptr noundef %shutdown_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %sw.epilog

sw.bb43:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %shutdown_wait44 = getelementptr inbounds %struct.midcomms_node, ptr %node, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %shutdown_wait44, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #11
  %29 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state4, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.120, i32 noundef %30) #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1197, i32 noundef 9, ptr noundef null) #11
  br label %return

sw.epilog:                                        ; preds = %sw.bb43, %do.end42, %dlm_state_str.exit106, %sw.bb
  tail call void @_raw_spin_unlock(ptr noundef %state_lock) #11
  br label %return

return:                                           ; preds = %sw.epilog, %sw.default
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !32, !34, !35, !36, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !53, !55, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !95, !97, !98, !100, !101, !102, !104, !105, !106, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !182, !183, !185, !187, !189, !190, !192, !193, !194, !195, !197, !199, !200, !201, !202, !203, !204, !206, !207, !209, !210, !212, !213, !215, !217, !218, !220, !221, !222, !224, !225, !227, !228, !229, !231, !232, !233, !235, !237, !238, !239, !241, !242, !243, !245, !246, !248, !249, !250, !252, !253, !254, !256, !258, !259, !261, !262, !264, !265, !266, !268, !270, !272, !273, !275}
!llvm.named.register.sp = !{!276}
!llvm.module.flags = !{!277, !278, !279, !280, !281, !282, !283, !284}
!llvm.ident = !{!285}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/dlm/midcomms.c", i32 226, i32 27}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../fs/dlm/midcomms.c", i32 908, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dlm_process_incoming_buffer._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @dlm_process_incoming_buffer._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../fs/dlm/midcomms.c", i32 927, i32 4}
!10 = !{ptr @dlm_process_incoming_buffer._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @dlm_process_incoming_buffer._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../fs/dlm/midcomms.c", i32 1006, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../fs/dlm/midcomms.c", i32 1012, i32 4}
!17 = !{ptr @dlm_midcomms_unack_msg_resend._rs, !16, !"_rs", i1 false, i1 false}
!18 = !{ptr @__func__.dlm_midcomms_unack_msg_resend, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @dlm_midcomms_unack_msg_resend._entry, !16, !"_entry", i1 false, i1 false}
!21 = !{ptr @dlm_midcomms_unack_msg_resend._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../fs/dlm/midcomms.c", i32 1076, i32 3}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../fs/dlm/midcomms.c", i32 1220, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @dlm_midcomms_add_member.__UNIQUE_ID_ddebug619, !25, !"__UNIQUE_ID_ddebug619", i1 false, i1 false}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../fs/dlm/midcomms.c", i32 1227, i32 4}
!31 = !{ptr @dlm_midcomms_add_member.__UNIQUE_ID_ddebug620, !30, !"__UNIQUE_ID_ddebug620", i1 false, i1 false}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../fs/dlm/midcomms.c", i32 1235, i32 4}
!34 = !{ptr @dlm_midcomms_add_member._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @dlm_midcomms_add_member._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../fs/dlm/midcomms.c", i32 1245, i32 2}
!38 = !{ptr @dlm_midcomms_add_member.__UNIQUE_ID_ddebug621, !37, !"__UNIQUE_ID_ddebug621", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../fs/dlm/midcomms.c", i32 1268, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dlm_midcomms_remove_member.__UNIQUE_ID_ddebug622, !40, !"__UNIQUE_ID_ddebug622", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../fs/dlm/midcomms.c", i32 1275, i32 3}
!45 = !{ptr @dlm_midcomms_remove_member.__UNIQUE_ID_ddebug623, !44, !"__UNIQUE_ID_ddebug623", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../fs/dlm/midcomms.c", i32 1285, i32 4}
!48 = !{ptr @dlm_midcomms_remove_member.__UNIQUE_ID_ddebug624, !47, !"__UNIQUE_ID_ddebug624", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../fs/dlm/midcomms.c", i32 1295, i32 4}
!51 = !{ptr @dlm_midcomms_remove_member._entry, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @dlm_midcomms_remove_member._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../fs/dlm/midcomms.c", i32 1383, i32 3}
!55 = !{ptr @node_hash, !56, !"node_hash", i1 false, i1 false}
!56 = !{!"../fs/dlm/midcomms.c", i32 212, i32 26}
!57 = !{ptr @__pcpu_unique_nodes_srcu_srcu_data, !58, !"__pcpu_unique_nodes_srcu_srcu_data", i1 false, i1 false}
!58 = !{!"../fs/dlm/midcomms.c", i32 214, i32 1}
!59 = !{ptr @nodes_srcu_srcu_data, !58, !"nodes_srcu_srcu_data", i1 false, i1 false}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../fs/dlm/midcomms.c", i32 234, i32 10}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../fs/dlm/midcomms.c", i32 236, i32 10}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../fs/dlm/midcomms.c", i32 238, i32 10}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../fs/dlm/midcomms.c", i32 240, i32 10}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../fs/dlm/midcomms.c", i32 242, i32 10}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../fs/dlm/midcomms.c", i32 244, i32 10}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../fs/dlm/midcomms.c", i32 246, i32 10}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../fs/dlm/midcomms.c", i32 248, i32 10}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../fs/dlm/midcomms.c", i32 864, i32 4}
!78 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @dlm_midcomms_receive_buffer_3_1._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @dlm_midcomms_receive_buffer_3_1._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../fs/dlm/midcomms.c", i32 871, i32 3}
!83 = !{ptr @dlm_midcomms_receive_buffer_3_1._entry.31, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @dlm_midcomms_receive_buffer_3_1._entry_ptr.33, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../fs/dlm/midcomms.c", i32 572, i32 4}
!87 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @dlm_midcomms_recv_node_lookup._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @dlm_midcomms_recv_node_lookup._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../fs/dlm/midcomms.c", i32 589, i32 6}
!92 = !{ptr @dlm_midcomms_recv_node_lookup.__UNIQUE_ID_ddebug612, !91, !"__UNIQUE_ID_ddebug612", i1 false, i1 false}
!93 = !{ptr @dlm_midcomms_recv_node_lookup.__UNIQUE_ID_ddebug613, !94, !"__UNIQUE_ID_ddebug613", i1 false, i1 false}
!94 = !{!"../fs/dlm/midcomms.c", i32 595, i32 6}
!95 = !{ptr @dlm_midcomms_recv_node_lookup._entry.37, !96, !"_entry", i1 false, i1 false}
!96 = !{!"../fs/dlm/midcomms.c", i32 605, i32 6}
!97 = !{ptr @dlm_midcomms_recv_node_lookup._entry_ptr.38, !96, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../fs/dlm/midcomms.c", i32 631, i32 5}
!100 = !{ptr @dlm_midcomms_recv_node_lookup._entry.39, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @dlm_midcomms_recv_node_lookup._entry_ptr.41, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @dlm_midcomms_recv_node_lookup._rs, !103, !"_rs", i1 false, i1 false}
!103 = !{!"../fs/dlm/midcomms.c", i32 636, i32 4}
!104 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @dlm_midcomms_recv_node_lookup._entry.42, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @dlm_midcomms_recv_node_lookup._entry_ptr.44, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @dlm_midcomms_recv_node_lookup._rs.45, !108, !"_rs", i1 false, i1 false}
!108 = !{!"../fs/dlm/midcomms.c", i32 640, i32 4}
!109 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @dlm_midcomms_recv_node_lookup._entry.46, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @dlm_midcomms_recv_node_lookup._entry_ptr.48, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../fs/dlm/midcomms.c", i32 829, i32 3}
!114 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @dlm_midcomms_version_check_3_1._entry, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @dlm_midcomms_version_check_3_1._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @dlm_midcomms_version_check_3_1._rs, !118, !"_rs", i1 false, i1 false}
!118 = !{!"../fs/dlm/midcomms.c", i32 835, i32 3}
!119 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @dlm_midcomms_version_check_3_1._entry.51, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @dlm_midcomms_version_check_3_1._entry_ptr.53, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../fs/dlm/midcomms.c", i32 754, i32 4}
!124 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @dlm_midcomms_receive_buffer_3_2._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @dlm_midcomms_receive_buffer_3_2._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @dlm_midcomms_receive_buffer_3_2._entry.56, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../fs/dlm/midcomms.c", i32 767, i32 4}
!129 = !{ptr @dlm_midcomms_receive_buffer_3_2._entry_ptr.57, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../fs/dlm/midcomms.c", i32 780, i32 5}
!132 = !{ptr @dlm_midcomms_receive_buffer_3_2._entry.58, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @dlm_midcomms_receive_buffer_3_2._entry_ptr.60, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../fs/dlm/midcomms.c", i32 788, i32 5}
!136 = !{ptr @dlm_midcomms_receive_buffer_3_2._entry.61, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @dlm_midcomms_receive_buffer_3_2._entry_ptr.63, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.65, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../fs/dlm/midcomms.c", i32 796, i32 5}
!140 = !{ptr @dlm_midcomms_receive_buffer_3_2._entry.64, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @dlm_midcomms_receive_buffer_3_2._entry_ptr.66, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../fs/dlm/midcomms.c", i32 803, i32 4}
!144 = !{ptr @dlm_midcomms_receive_buffer_3_2._entry.67, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @dlm_midcomms_receive_buffer_3_2._entry_ptr.69, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @dlm_midcomms_receive_buffer_3_2._entry.70, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../fs/dlm/midcomms.c", i32 815, i32 3}
!148 = !{ptr @dlm_midcomms_receive_buffer_3_2._entry_ptr.71, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.72, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../fs/dlm/midcomms.c", i32 660, i32 3}
!151 = !{ptr @dlm_midcomms_version_check_3_2._entry, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @dlm_midcomms_version_check_3_2._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @dlm_midcomms_version_check_3_2._rs, !154, !"_rs", i1 false, i1 false}
!154 = !{!"../fs/dlm/midcomms.c", i32 666, i32 3}
!155 = !{ptr @dlm_midcomms_version_check_3_2._entry.73, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @dlm_midcomms_version_check_3_2._entry_ptr.74, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.75, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../fs/dlm/midcomms.c", i32 692, i32 4}
!159 = !{ptr @.str.76, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @dlm_opts_check_msglen._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @dlm_opts_check_msglen._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../fs/dlm/midcomms.c", i32 700, i32 4}
!164 = !{ptr @dlm_opts_check_msglen._entry.77, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @dlm_opts_check_msglen._entry_ptr.79, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.81, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../fs/dlm/midcomms.c", i32 708, i32 4}
!168 = !{ptr @dlm_opts_check_msglen._entry.80, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @dlm_opts_check_msglen._entry_ptr.82, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.84, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../fs/dlm/midcomms.c", i32 715, i32 3}
!172 = !{ptr @dlm_opts_check_msglen._entry.83, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @dlm_opts_check_msglen._entry_ptr.85, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.86, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../fs/dlm/midcomms.c", i32 492, i32 4}
!176 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug607, !175, !"__UNIQUE_ID_ddebug607", i1 false, i1 false}
!178 = !{ptr @dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug608, !179, !"__UNIQUE_ID_ddebug608", i1 false, i1 false}
!179 = !{!"../fs/dlm/midcomms.c", i32 498, i32 5}
!180 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../fs/dlm/midcomms.c", i32 506, i32 6}
!182 = !{ptr @dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug609, !181, !"__UNIQUE_ID_ddebug609", i1 false, i1 false}
!183 = !{ptr @dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug610, !184, !"__UNIQUE_ID_ddebug610", i1 false, i1 false}
!184 = !{!"../fs/dlm/midcomms.c", i32 514, i32 5}
!185 = !{ptr @dlm_midcomms_receive_buffer.__UNIQUE_ID_ddebug611, !186, !"__UNIQUE_ID_ddebug611", i1 false, i1 false}
!186 = !{!"../fs/dlm/midcomms.c", i32 519, i32 5}
!187 = !{ptr @dlm_midcomms_receive_buffer._entry, !188, !"_entry", i1 false, i1 false}
!188 = !{!"../fs/dlm/midcomms.c", i32 528, i32 5}
!189 = !{ptr @dlm_midcomms_receive_buffer._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @dlm_midcomms_receive_buffer._rs, !191, !"_rs", i1 false, i1 false}
!191 = !{!"../fs/dlm/midcomms.c", i32 550, i32 3}
!192 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @dlm_midcomms_receive_buffer._entry.89, !191, !"_entry", i1 false, i1 false}
!194 = !{ptr @dlm_midcomms_receive_buffer._entry_ptr.91, !191, !"_entry_ptr", i1 false, i1 false}
!195 = distinct !{null, !196, !"__warned", i1 false, i1 false}
!196 = !{!"../fs/dlm/midcomms.c", i32 431, i32 2}
!197 = distinct !{null, !198, !"__warned", i1 false, i1 false}
!198 = !{!"../fs/dlm/midcomms.c", i32 442, i32 2}
!199 = !{ptr @.str.93, !58, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.94, !58, !"<string literal>", i1 false, i1 false}
!201 = !{ptr @.str.95, !58, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.96, !58, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @nodes_srcu, !58, !"nodes_srcu", i1 false, i1 false}
!204 = !{ptr @nodeid2node.__key, !205, !"__key", i1 false, i1 false}
!205 = !{!"../fs/dlm/midcomms.c", i32 343, i32 2}
!206 = !{ptr @.str.97, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @nodeid2node.__key.98, !208, !"__key", i1 false, i1 false}
!208 = !{!"../fs/dlm/midcomms.c", i32 344, i32 2}
!209 = !{ptr @.str.99, !208, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @nodeid2node.__key.100, !211, !"__key", i1 false, i1 false}
!211 = !{!"../fs/dlm/midcomms.c", i32 347, i32 2}
!212 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!213 = distinct !{null, !214, !"__warned", i1 false, i1 false}
!214 = !{!"../fs/dlm/midcomms.c", i32 276, i32 2}
!215 = distinct !{null, !216, !"__already_done", i1 false, i1 false}
!216 = !{!"../include/linux/srcu.h", i32 189, i32 2}
!217 = !{ptr @.str.102, !216, !"<string literal>", i1 false, i1 false}
!218 = distinct !{null, !219, !"__warned", i1 false, i1 false}
!219 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!220 = !{ptr @.str.103, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.104, !219, !"<string literal>", i1 false, i1 false}
!222 = distinct !{null, !223, !"__warned", i1 false, i1 false}
!223 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!224 = !{ptr @.str.105, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.106, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../fs/dlm/midcomms.c", i32 317, i32 2}
!227 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @midcomms_node_reset.__UNIQUE_ID_ddebug600, !226, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!229 = !{ptr @.str.108, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../fs/dlm/midcomms.c", i32 304, i32 2}
!231 = !{ptr @.str.109, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @dlm_send_queue_flush.__UNIQUE_ID_ddebug597, !230, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!233 = distinct !{null, !234, !"__warned", i1 false, i1 false}
!234 = !{!"../fs/dlm/midcomms.c", i32 308, i32 2}
!235 = !{ptr @.str.110, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../fs/dlm/midcomms.c", i32 419, i32 2}
!237 = !{ptr @.str.111, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @dlm_send_fin.__UNIQUE_ID_ddebug601, !236, !"__UNIQUE_ID_ddebug601", i1 false, i1 false}
!239 = !{ptr @.str.112, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../fs/dlm/midcomms.c", i32 457, i32 2}
!241 = !{ptr @.str.113, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @dlm_pas_fin_ack_rcv.__UNIQUE_ID_ddebug606, !240, !"__UNIQUE_ID_ddebug606", i1 false, i1 false}
!243 = !{ptr @dlm_pas_fin_ack_rcv._entry, !244, !"_entry", i1 false, i1 false}
!244 = !{!"../fs/dlm/midcomms.c", i32 471, i32 3}
!245 = !{ptr @dlm_pas_fin_ack_rcv._entry_ptr, !244, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.114, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../fs/dlm/midcomms.c", i32 222, i32 8}
!248 = !{ptr @.str.115, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @close_lock, !247, !"close_lock", i1 false, i1 false}
!250 = !{ptr @.str.116, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../fs/dlm/midcomms.c", i32 1332, i32 2}
!252 = !{ptr @.str.117, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @midcomms_shutdown.__UNIQUE_ID_ddebug625, !251, !"__UNIQUE_ID_ddebug625", i1 false, i1 false}
!254 = !{ptr @midcomms_shutdown.__UNIQUE_ID_ddebug626, !255, !"__UNIQUE_ID_ddebug626", i1 false, i1 false}
!255 = !{!"../fs/dlm/midcomms.c", i32 1337, i32 3}
!256 = !{ptr @.str.118, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../fs/dlm/midcomms.c", i32 1365, i32 3}
!258 = !{ptr @midcomms_shutdown.__UNIQUE_ID_ddebug627, !257, !"__UNIQUE_ID_ddebug627", i1 false, i1 false}
!259 = !{ptr @.str.119, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../fs/dlm/midcomms.c", i32 1371, i32 2}
!261 = !{ptr @midcomms_shutdown.__UNIQUE_ID_ddebug628, !260, !"__UNIQUE_ID_ddebug628", i1 false, i1 false}
!262 = !{ptr @.str.120, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../fs/dlm/midcomms.c", i32 1174, i32 2}
!264 = !{ptr @.str.121, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @dlm_act_fin_ack_rcv.__UNIQUE_ID_ddebug616, !263, !"__UNIQUE_ID_ddebug616", i1 false, i1 false}
!266 = !{ptr @dlm_act_fin_ack_rcv.__UNIQUE_ID_ddebug617, !267, !"__UNIQUE_ID_ddebug617", i1 false, i1 false}
!267 = !{!"../fs/dlm/midcomms.c", i32 1180, i32 3}
!268 = !{ptr @dlm_act_fin_ack_rcv.__UNIQUE_ID_ddebug618, !269, !"__UNIQUE_ID_ddebug618", i1 false, i1 false}
!269 = !{!"../fs/dlm/midcomms.c", i32 1185, i32 3}
!270 = !{ptr @dlm_act_fin_ack_rcv._entry, !271, !"_entry", i1 false, i1 false}
!271 = !{!"../fs/dlm/midcomms.c", i32 1195, i32 3}
!272 = !{ptr @dlm_act_fin_ack_rcv._entry_ptr, !271, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.122, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../fs/dlm/midcomms.c", i32 213, i32 8}
!275 = !{ptr @nodes_lock, !274, !"nodes_lock", i1 false, i1 false}
!276 = !{!"sp"}
!277 = !{i32 1, !"wchar_size", i32 2}
!278 = !{i32 1, !"min_enum_size", i32 4}
!279 = !{i32 8, !"branch-target-enforcement", i32 0}
!280 = !{i32 8, !"sign-return-address", i32 0}
!281 = !{i32 8, !"sign-return-address-all", i32 0}
!282 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!283 = !{i32 7, !"uwtable", i32 1}
!284 = !{i32 7, !"frame-pointer", i32 2}
!285 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!286 = !{!"branch_weights", i32 2000, i32 1}
!287 = !{i64 2149774109}
!288 = !{i64 2148573710, i64 2148573736, i64 2148573765, i64 2148573799, i64 2148573830, i64 2148573853}
!289 = !{i64 2149774375}
!290 = !{!"auto-init"}
!291 = !{i64 2149053120, i64 2149053125, i64 2149053138, i64 2149053182, i64 2149053216, i64 2149053237}
!292 = !{i64 2149875720}
!293 = !{i8 0, i8 2}
!294 = !{ptr @dlm_midcomms_version_check_3_1, ptr @dlm_midcomms_version_check_3_2}
!295 = !{i64 2148571245, i64 2148571271, i64 2148571300, i64 2148571334, i64 2148571365, i64 2148571388}
!296 = !{i64 2149799501}
