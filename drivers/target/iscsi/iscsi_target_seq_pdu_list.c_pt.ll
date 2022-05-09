; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/iscsi_target_seq_pdu_list.c_pt.bc'
source_filename = "../drivers/target/iscsi/iscsi_target_seq_pdu_list.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iscsi_cmd = type { i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, [52 x i8], %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.timer_list, ptr, ptr, [5 x %struct.kvec], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.se_cmd, [98 x i8], i32, [4 x i8], ptr, i32, i32, i32, [124 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kvec = type { ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.iscsi_conn = type { %struct.wait_queue_head, i8, i8, i8, i8, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, %struct.delayed_work, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.completion, i32, ptr, %struct.list_head, [52 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.71 }
%union.anon.71 = type { ptr, [124 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.iscsi_session = type { i8, [6 x i8], i32, i8, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, i32, %struct.atomic_t, %struct.list_head, i32, [8 x i8], i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.timer_list, ptr, ptr, ptr, [12 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iscsi_sess_ops = type { [224 x i8], [256 x i8], [224 x i8], [256 x i8], [256 x i8], i16, i16, i8, i8, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.iscsi_node_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.iscsi_conn_ops = type { i8, i8, i32, i32, i32, i32 }
%struct.iscsi_pdu = type { i32, i32, i8, i32, i32, i32, i32, i32, [96 x i8] }
%struct.iscsi_seq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }

@iscsit_build_pdu_and_seq_lists._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Unable to allocate struct iscsi_seq list\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"iscsit_build_pdu_and_seq_lists\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/target/iscsi/iscsi_target_seq_pdu_list.c\00", [47 x i8] zeroinitializer }, align 32
@iscsit_build_pdu_and_seq_lists._entry_ptr = internal global ptr @iscsit_build_pdu_and_seq_lists._entry, section ".printk_index", align 4
@iscsit_build_pdu_and_seq_lists._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Unable to allocate struct iscsi_pdu list.\0A\00", [51 x i8] zeroinitializer }, align 32
@iscsit_build_pdu_and_seq_lists._entry_ptr.5 = internal global ptr @iscsit_build_pdu_and_seq_lists._entry.3, section ".printk_index", align 4
@iscsit_get_pdu_holder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013struct iscsi_cmd->pdu_list is NULL!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iscsit_get_pdu_holder\00", [42 x i8] zeroinitializer }, align 32
@iscsit_get_pdu_holder._entry_ptr = internal global ptr @iscsit_get_pdu_holder._entry, section ".printk_index", align 4
@iscsit_get_pdu_holder._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013Unable to locate PDU holder for ITT: 0x%08x, Offset: %u, Length: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@iscsit_get_pdu_holder._entry_ptr.10 = internal global ptr @iscsit_get_pdu_holder._entry.8, section ".printk_index", align 4
@iscsit_get_pdu_holder_for_seq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.11, ptr @.str.2, i32 594, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iscsit_get_pdu_holder_for_seq\00", [34 x i8] zeroinitializer }, align 32
@iscsit_get_pdu_holder_for_seq._entry_ptr = internal global ptr @iscsit_get_pdu_holder_for_seq._entry, section ".printk_index", align 4
@iscsit_get_pdu_holder_for_seq.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iscsi_target_mod\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"pdu[i].seq_no: %d, pdu[i].pdu_send_order: %d, pdu[i].offset: %d, pdu[i].length: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@iscsit_get_pdu_holder_for_seq._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.2, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013Command ITT: 0x%08x unable to locate struct iscsi_pdu for cmd->pdu_send_order: %u.\0A\00", [42 x i8] zeroinitializer }, align 32
@iscsit_get_pdu_holder_for_seq._entry_ptr.16 = internal global ptr @iscsit_get_pdu_holder_for_seq._entry.14, section ".printk_index", align 4
@iscsit_get_pdu_holder_for_seq._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.2, i32 628, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013struct iscsi_seq is NULL!\0A\00", [35 x i8] zeroinitializer }, align 32
@iscsit_get_pdu_holder_for_seq._entry_ptr.19 = internal global ptr @iscsit_get_pdu_holder_for_seq._entry.17, section ".printk_index", align 4
@iscsit_get_pdu_holder_for_seq.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.11, ptr @.str.2, ptr @.str.20, i8 0, i8 -98, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"seq->pdu_start: %d, seq->pdu_count: %d, seq->seq_no: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@iscsit_get_pdu_holder_for_seq._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.2, i32 642, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013Command ITT: 0x%08x seq->pdu_send_order: %u equals seq->pdu_count: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@iscsit_get_pdu_holder_for_seq._entry_ptr.23 = internal global ptr @iscsit_get_pdu_holder_for_seq._entry.21, section ".printk_index", align 4
@iscsit_get_pdu_holder_for_seq._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.11, ptr @.str.2, i32 655, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\013Command ITT: 0x%08x unable to locate iscsi_pdu_t for seq->pdu_send_order: %u.\0A\00", [47 x i8] zeroinitializer }, align 32
@iscsit_get_pdu_holder_for_seq._entry_ptr.26 = internal global ptr @iscsit_get_pdu_holder_for_seq._entry.24, section ".printk_index", align 4
@iscsit_get_seq_holder._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013struct iscsi_cmd->seq_list is NULL!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iscsit_get_seq_holder\00", [42 x i8] zeroinitializer }, align 32
@iscsit_get_seq_holder._entry_ptr = internal global ptr @iscsit_get_seq_holder._entry, section ".printk_index", align 4
@iscsit_get_seq_holder.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"seq_list[i].orig_offset: %d, seq_list[i].xfer_len: %d, seq_list[i].seq_no %u\0A\00", [50 x i8] zeroinitializer }, align 32
@iscsit_get_seq_holder._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.2, i32 688, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013Unable to locate Sequence holder for ITT: 0x%08x, Offset: %u, Length: %u\0A\00", [52 x i8] zeroinitializer }, align 32
@iscsit_get_seq_holder._entry_ptr.32 = internal global ptr @iscsit_get_seq_holder._entry.30, section ".printk_index", align 4
@iscsit_randomize_seq_lists._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Unable to allocate memory for random array.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iscsit_randomize_seq_lists\00", [37 x i8] zeroinitializer }, align 32
@iscsit_randomize_seq_lists._entry_ptr = internal global ptr @iscsit_randomize_seq_lists._entry, section ".printk_index", align 4
@iscsit_randomize_pdu_lists._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.35, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iscsit_randomize_pdu_lists\00", [37 x i8] zeroinitializer }, align 32
@iscsit_randomize_pdu_lists._entry_ptr = internal global ptr @iscsit_randomize_pdu_lists._entry, section ".printk_index", align 4
@iscsit_randomize_pdu_lists._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.35, ptr @.str.2, i32 155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iscsit_randomize_pdu_lists._entry_ptr.37 = internal global ptr @iscsit_randomize_pdu_lists._entry.36, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 3, i64 4]
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 540, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 550, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 570, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 580, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 594, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 603, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 622, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 628, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 632, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 639, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 653, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 670, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 675, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 686, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 186, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 134, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private constant [52 x i8] c"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 154, i32 4 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @iscsit_build_pdu_and_seq_lists._entry, ptr @iscsit_build_pdu_and_seq_lists._entry.3, ptr @iscsit_build_pdu_and_seq_lists._entry_ptr, ptr @iscsit_build_pdu_and_seq_lists._entry_ptr.5, ptr @iscsit_get_pdu_holder._entry, ptr @iscsit_get_pdu_holder._entry.8, ptr @iscsit_get_pdu_holder._entry_ptr, ptr @iscsit_get_pdu_holder._entry_ptr.10, ptr @iscsit_get_pdu_holder_for_seq._entry, ptr @iscsit_get_pdu_holder_for_seq._entry.14, ptr @iscsit_get_pdu_holder_for_seq._entry.17, ptr @iscsit_get_pdu_holder_for_seq._entry.21, ptr @iscsit_get_pdu_holder_for_seq._entry.24, ptr @iscsit_get_pdu_holder_for_seq._entry_ptr, ptr @iscsit_get_pdu_holder_for_seq._entry_ptr.16, ptr @iscsit_get_pdu_holder_for_seq._entry_ptr.19, ptr @iscsit_get_pdu_holder_for_seq._entry_ptr.23, ptr @iscsit_get_pdu_holder_for_seq._entry_ptr.26, ptr @iscsit_get_seq_holder._entry, ptr @iscsit_get_seq_holder._entry.30, ptr @iscsit_get_seq_holder._entry_ptr, ptr @iscsit_get_seq_holder._entry_ptr.32, ptr @iscsit_randomize_pdu_lists._entry, ptr @iscsit_randomize_pdu_lists._entry.36, ptr @iscsit_randomize_pdu_lists._entry_ptr, ptr @iscsit_randomize_pdu_lists._entry_ptr.37, ptr @iscsit_randomize_seq_lists._entry, ptr @iscsit_randomize_seq_lists._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_build_pdu_and_seq_lists._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_build_pdu_and_seq_lists._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_get_pdu_holder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_get_pdu_holder._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_get_pdu_holder_for_seq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_get_pdu_holder_for_seq._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_get_pdu_holder_for_seq._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_get_pdu_holder_for_seq._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_get_pdu_holder_for_seq._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_get_seq_holder._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_get_seq_holder._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_randomize_seq_lists._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_randomize_pdu_lists._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_randomize_pdu_lists._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_build_pdu_and_seq_lists(ptr noundef %cmd, i32 noundef %immediate_data_length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %sess2 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %2 = ptrtoint ptr %sess2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sess2, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %3, i32 0, i32 47
  %4 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sess_ops, align 8
  %DataSequenceInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %DataSequenceInOrder to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %DataSequenceInOrder, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %DataPDUInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %DataPDUInOrder to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %DataPDUInOrder, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %data_direction = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 46
  %10 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_direction, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp = icmp eq i32 %11, 3
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call = tail call ptr @iscsit_tpg_get_node_attrib(ptr noundef %3) #6
  %12 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_direction, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp10 = icmp eq i32 %13, 2
  br i1 %cmp10, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %random_datain_pdu_offsets = getelementptr inbounds %struct.iscsi_node_attrib, ptr %call, i32 0, i32 5
  %14 = ptrtoint ptr %random_datain_pdu_offsets to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %random_datain_pdu_offsets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp ne i32 %15, 0
  %spec.select = zext i1 %tobool14.not to i32
  %random_datain_seq_offsets = getelementptr inbounds %struct.iscsi_node_attrib, ptr %call, i32 0, i32 6
  %16 = ptrtoint ptr %random_datain_seq_offsets to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %random_datain_seq_offsets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool17.not = icmp eq i32 %17, 0
  %or20 = or i32 %spec.select, 2
  %spec.select246 = select i1 %tobool17.not, i32 %spec.select, i32 %or20
  br label %if.end66

if.else:                                          ; preds = %if.end8
  %random_r2t_offsets = getelementptr inbounds %struct.iscsi_node_attrib, ptr %call, i32 0, i32 7
  %18 = ptrtoint ptr %random_r2t_offsets to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %random_r2t_offsets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool24.not = icmp eq i32 %19, 0
  %spec.select242 = select i1 %tobool24.not, i32 0, i32 8
  %immediate_data = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 6
  %20 = ptrtoint ptr %immediate_data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %immediate_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool29.not = icmp eq i8 %21, 0
  %unsolicited_data = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 12
  %22 = ptrtoint ptr %unsolicited_data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %unsolicited_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool31.not = icmp eq i8 %23, 0
  br i1 %tobool29.not, label %land.lhs.true30, label %land.lhs.true38

land.lhs.true30:                                  ; preds = %if.else
  br i1 %tobool31.not, label %land.lhs.true30.if.end66_crit_edge, label %land.lhs.true46

land.lhs.true30.if.end66_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

land.lhs.true38:                                  ; preds = %if.else
  br i1 %tobool31.not, label %land.lhs.true38.if.end66_crit_edge, label %land.lhs.true56

land.lhs.true38.if.end66_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

land.lhs.true46:                                  ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %unsolicited_data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %unsolicited_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool49.not = icmp eq i8 %25, 0
  %spec.select243 = select i1 %tobool49.not, i32 0, i32 3
  br label %if.end66

land.lhs.true56:                                  ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %unsolicited_data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %unsolicited_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool59.not = icmp eq i8 %27, 0
  %spec.select244 = select i1 %tobool59.not, i32 0, i32 4
  br label %if.end66

if.end66:                                         ; preds = %land.lhs.true56, %land.lhs.true46, %land.lhs.true38.if.end66_crit_edge, %land.lhs.true30.if.end66_crit_edge, %if.then12
  %bl.sroa.0.0 = phi i32 [ 2, %land.lhs.true30.if.end66_crit_edge ], [ 2, %land.lhs.true38.if.end66_crit_edge ], [ 2, %land.lhs.true46 ], [ 2, %land.lhs.true56 ], [ 1, %if.then12 ]
  %bl.sroa.8.2 = phi i32 [ %spec.select242, %land.lhs.true30.if.end66_crit_edge ], [ %spec.select242, %land.lhs.true38.if.end66_crit_edge ], [ %spec.select242, %land.lhs.true46 ], [ %spec.select242, %land.lhs.true56 ], [ %spec.select246, %if.then12 ]
  %bl.sroa.19.0 = phi i32 [ 1, %land.lhs.true30.if.end66_crit_edge ], [ 2, %land.lhs.true38.if.end66_crit_edge ], [ %spec.select243, %land.lhs.true46 ], [ %spec.select244, %land.lhs.true56 ], [ 1, %if.then12 ]
  %bl.sroa.29.0 = phi i32 [ %immediate_data_length, %land.lhs.true30.if.end66_crit_edge ], [ %immediate_data_length, %land.lhs.true38.if.end66_crit_edge ], [ %immediate_data_length, %land.lhs.true46 ], [ %immediate_data_length, %land.lhs.true56 ], [ 0, %if.then12 ]
  %28 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %conn1, align 8
  %data_direction.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 6
  %30 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp.i = icmp eq i32 %31, 1
  %conn_ops.i = getelementptr inbounds %struct.iscsi_conn, ptr %29, i32 0, i32 59
  %32 = ptrtoint ptr %conn_ops.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %conn_ops.i, align 16
  %MaxXmitDataSegmentLength.i = getelementptr inbounds %struct.iscsi_conn_ops, ptr %33, i32 0, i32 3
  %MaxRecvDataSegmentLength.i = getelementptr inbounds %struct.iscsi_conn_ops, ptr %33, i32 0, i32 2
  %mdsl.0.in.i = select i1 %cmp.i, ptr %MaxXmitDataSegmentLength.i, ptr %MaxRecvDataSegmentLength.i
  %34 = ptrtoint ptr %mdsl.0.in.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %mdsl.0.i = load i32, ptr %mdsl.0.in.i, align 4
  %35 = add nsw i32 %bl.sroa.19.0, -2
  %switch.and.i = and i32 %35, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %36 = zext i1 %switch.selectcmp.i to i32
  %.off.i = add nsw i32 %bl.sroa.19.0, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then15.i, label %if.end66.if.end18.i_crit_edge

if.end66.if.end18.i_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18.i

if.then15.i:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %data_length.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %37 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data_length.i, align 4
  %sess.i = getelementptr inbounds %struct.iscsi_conn, ptr %29, i32 0, i32 68
  %39 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sess.i, align 4
  %sess_ops.i = getelementptr inbounds %struct.iscsi_session, ptr %40, i32 0, i32 47
  %41 = ptrtoint ptr %sess_ops.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sess_ops.i, align 8
  %FirstBurstLength.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %42, i32 0, i32 10
  %43 = ptrtoint ptr %FirstBurstLength.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %FirstBurstLength.i, align 4
  %45 = tail call i32 @llvm.umin.i32(i32 %38, i32 %44) #6
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %if.end66.if.end18.i_crit_edge
  %unsolicited_data_length.0.i = phi i32 [ %45, %if.then15.i ], [ 0, %if.end66.if.end18.i_crit_edge ]
  %data_length20.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %46 = ptrtoint ptr %data_length20.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_length20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp21156160.not.i = icmp eq i32 %47, 0
  br i1 %cmp21156160.not.i, label %if.end18.i.iscsit_determine_counts_for_list.exit_crit_edge, label %while.body.lr.ph.lr.ph.i

if.end18.i.iscsit_determine_counts_for_list.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iscsit_determine_counts_for_list.exit

while.body.lr.ph.lr.ph.i:                         ; preds = %if.end18.i
  %sess47.i = getelementptr inbounds %struct.iscsi_conn, ptr %29, i32 0, i32 68
  br label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge, %while.body.lr.ph.lr.ph.i
  %pdu_count.0 = phi i32 [ 0, %while.body.lr.ph.lr.ph.i ], [ %add.i, %while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge ]
  %seq_count.0 = phi i32 [ 1, %while.body.lr.ph.lr.ph.i ], [ %seq_count.3, %while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge ]
  %check_immediate.1.ph164.i = phi i32 [ %36, %while.body.lr.ph.lr.ph.i ], [ 0, %while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge ]
  %unsolicited_data_length.1.ph163.i = phi i32 [ %unsolicited_data_length.0.i, %while.body.lr.ph.lr.ph.i ], [ %unsolicited_data_length.1.ph.be.i, %while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge ]
  %offset.0.ph162.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.i ], [ %offset.0.ph.be.i, %while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge ]
  %burstlength.0.ph161.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.i ], [ %burstlength.0.ph.be.i, %while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge ]
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %pdu_count.1 = phi i32 [ %pdu_count.0, %while.body.lr.ph.i ], [ %add.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %seq_count.1 = phi i32 [ %seq_count.0, %while.body.lr.ph.i ], [ %seq_count.2, %while.cond.backedge.i.while.body.i_crit_edge ]
  %check_immediate.1159.i = phi i32 [ %check_immediate.1.ph164.i, %while.body.lr.ph.i ], [ 0, %while.cond.backedge.i.while.body.i_crit_edge ]
  %unsolicited_data_length.1158.i = phi i32 [ %unsolicited_data_length.1.ph163.i, %while.body.lr.ph.i ], [ %unsolicited_data_length.1.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %offset.0157.i = phi i32 [ %offset.0.ph162.i, %while.body.lr.ph.i ], [ %offset.0.be.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %add.i = add i32 %pdu_count.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_immediate.1159.i)
  %tobool.not.i = icmp eq i32 %check_immediate.1159.i, 0
  br i1 %tobool.not.i, label %if.end29.i, label %if.then22.i

if.then22.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %add23.i = add i32 %offset.0157.i, %bl.sroa.29.0
  %add24.i = add i32 %seq_count.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unsolicited_data_length.1158.i)
  %tobool25.not.i = icmp eq i32 %unsolicited_data_length.1158.i, 0
  %sub.i = sub i32 %unsolicited_data_length.1158.i, %bl.sroa.29.0
  %spec.select245 = select i1 %tobool25.not.i, i32 0, i32 %sub.i
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end63.i, %if.then22.i
  %seq_count.2 = phi i32 [ %seq_count.1, %if.end63.i ], [ %add24.i, %if.then22.i ]
  %offset.0.be.i = phi i32 [ %add67.i, %if.end63.i ], [ %add23.i, %if.then22.i ]
  %unsolicited_data_length.1.be.i = phi i32 [ %sub65.i, %if.end63.i ], [ %spec.select245, %if.then22.i ]
  %cmp21.i = icmp ult i32 %offset.0.be.i, %47
  br i1 %cmp21.i, label %while.cond.backedge.i.while.body.i_crit_edge, label %while.cond.backedge.i.iscsit_determine_counts_for_list.exit_crit_edge

while.cond.backedge.i.iscsit_determine_counts_for_list.exit_crit_edge: ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iscsit_determine_counts_for_list.exit

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end29.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unsolicited_data_length.1158.i)
  %cmp30.not.i = icmp eq i32 %unsolicited_data_length.1158.i, 0
  %add67.i = add i32 %offset.0157.i, %mdsl.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add67.i, i32 %47)
  %cmp70.not.i = icmp ult i32 %add67.i, %47
  br i1 %cmp30.not.i, label %if.end66.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end29.i
  br i1 %cmp70.not.i, label %if.end45.i, label %if.then31.i.iscsit_determine_counts_for_list.exit_crit_edge

if.then31.i.iscsit_determine_counts_for_list.exit_crit_edge: ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iscsit_determine_counts_for_list.exit

if.end45.i:                                       ; preds = %if.then31.i
  %48 = ptrtoint ptr %sess47.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sess47.i, align 4
  %sess_ops48.i = getelementptr inbounds %struct.iscsi_session, ptr %49, i32 0, i32 47
  %50 = ptrtoint ptr %sess_ops48.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sess_ops48.i, align 8
  %FirstBurstLength49.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %51, i32 0, i32 10
  %52 = ptrtoint ptr %FirstBurstLength49.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %FirstBurstLength49.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add67.i, i32 %53)
  %cmp50.not.i = icmp ult i32 %add67.i, %53
  br i1 %cmp50.not.i, label %if.end63.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub55.neg.i = add i32 %offset.0157.i, %unsolicited_data_length.1158.i
  %sub56.i = sub i32 %sub55.neg.i, %53
  br label %while.cond.outer.backedge.sink.split.i

while.cond.outer.backedge.sink.split.i:           ; preds = %if.then81.i, %if.then51.i
  %offset.0.ph.be.ph.i = phi i32 [ %53, %if.then51.i ], [ %add86.i, %if.then81.i ]
  %unsolicited_data_length.1.ph.be.ph.i = phi i32 [ %sub56.i, %if.then51.i ], [ 0, %if.then81.i ]
  %add62.i = add i32 %seq_count.1, 1
  br label %while.cond.outer.backedge.i

while.cond.outer.backedge.i:                      ; preds = %if.end76.i.while.cond.outer.backedge.i_crit_edge, %while.cond.outer.backedge.sink.split.i
  %seq_count.3 = phi i32 [ %seq_count.1, %if.end76.i.while.cond.outer.backedge.i_crit_edge ], [ %add62.i, %while.cond.outer.backedge.sink.split.i ]
  %burstlength.0.ph.be.i = phi i32 [ %add77.i, %if.end76.i.while.cond.outer.backedge.i_crit_edge ], [ 0, %while.cond.outer.backedge.sink.split.i ]
  %offset.0.ph.be.i = phi i32 [ %add67.i, %if.end76.i.while.cond.outer.backedge.i_crit_edge ], [ %offset.0.ph.be.ph.i, %while.cond.outer.backedge.sink.split.i ]
  %unsolicited_data_length.1.ph.be.i = phi i32 [ 0, %if.end76.i.while.cond.outer.backedge.i_crit_edge ], [ %unsolicited_data_length.1.ph.be.ph.i, %while.cond.outer.backedge.sink.split.i ]
  %cmp21156.i = icmp ult i32 %offset.0.ph.be.i, %47
  br i1 %cmp21156.i, label %while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge, label %while.cond.outer.backedge.i.iscsit_determine_counts_for_list.exit_crit_edge

while.cond.outer.backedge.i.iscsit_determine_counts_for_list.exit_crit_edge: ; preds = %while.cond.outer.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iscsit_determine_counts_for_list.exit

while.cond.outer.backedge.i.while.body.lr.ph.i_crit_edge: ; preds = %while.cond.outer.backedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph.i

if.end63.i:                                       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub65.i = sub i32 %unsolicited_data_length.1158.i, %mdsl.0.i
  br label %while.cond.backedge.i

if.end66.i:                                       ; preds = %if.end29.i
  br i1 %cmp70.not.i, label %if.end76.i, label %if.end66.i.iscsit_determine_counts_for_list.exit_crit_edge

if.end66.i.iscsit_determine_counts_for_list.exit_crit_edge: ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %iscsit_determine_counts_for_list.exit

if.end76.i:                                       ; preds = %if.end66.i
  %add77.i = add i32 %burstlength.0.ph161.i, %mdsl.0.i
  %54 = ptrtoint ptr %sess47.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sess47.i, align 4
  %sess_ops79.i = getelementptr inbounds %struct.iscsi_session, ptr %55, i32 0, i32 47
  %56 = ptrtoint ptr %sess_ops79.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sess_ops79.i, align 8
  %MaxBurstLength.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %57, i32 0, i32 9
  %58 = ptrtoint ptr %MaxBurstLength.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %MaxBurstLength.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add77.i, i32 %59)
  %cmp80.not.i = icmp ult i32 %add77.i, %59
  br i1 %cmp80.not.i, label %if.end76.i.while.cond.outer.backedge.i_crit_edge, label %if.then81.i

if.end76.i.while.cond.outer.backedge.i_crit_edge: ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.outer.backedge.i

if.then81.i:                                      ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub85.i = sub i32 %offset.0157.i, %burstlength.0.ph161.i
  %add86.i = add i32 %sub85.i, %59
  br label %while.cond.outer.backedge.sink.split.i

iscsit_determine_counts_for_list.exit:            ; preds = %if.end66.i.iscsit_determine_counts_for_list.exit_crit_edge, %while.cond.outer.backedge.i.iscsit_determine_counts_for_list.exit_crit_edge, %if.then31.i.iscsit_determine_counts_for_list.exit_crit_edge, %while.cond.backedge.i.iscsit_determine_counts_for_list.exit_crit_edge, %if.end18.i.iscsit_determine_counts_for_list.exit_crit_edge
  %pdu_count.2 = phi i32 [ 0, %if.end18.i.iscsit_determine_counts_for_list.exit_crit_edge ], [ %add.i, %while.cond.backedge.i.iscsit_determine_counts_for_list.exit_crit_edge ], [ %add.i, %if.then31.i.iscsit_determine_counts_for_list.exit_crit_edge ], [ %add.i, %while.cond.outer.backedge.i.iscsit_determine_counts_for_list.exit_crit_edge ], [ %add.i, %if.end66.i.iscsit_determine_counts_for_list.exit_crit_edge ]
  %seq_count.4 = phi i32 [ 1, %if.end18.i.iscsit_determine_counts_for_list.exit_crit_edge ], [ %seq_count.1, %if.then31.i.iscsit_determine_counts_for_list.exit_crit_edge ], [ %seq_count.2, %while.cond.backedge.i.iscsit_determine_counts_for_list.exit_crit_edge ], [ %seq_count.1, %if.end66.i.iscsit_determine_counts_for_list.exit_crit_edge ], [ %seq_count.3, %while.cond.outer.backedge.i.iscsit_determine_counts_for_list.exit_crit_edge ]
  %60 = ptrtoint ptr %sess2 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sess2, align 4
  %sess_ops68 = getelementptr inbounds %struct.iscsi_session, ptr %61, i32 0, i32 47
  %62 = ptrtoint ptr %sess_ops68 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sess_ops68, align 8
  %DataSequenceInOrder69 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %63, i32 0, i32 15
  %64 = ptrtoint ptr %DataSequenceInOrder69 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %DataSequenceInOrder69, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool70.not = icmp eq i8 %65, 0
  br i1 %tobool70.not, label %if.then71, label %iscsit_determine_counts_for_list.exit.if.end78_crit_edge

iscsit_determine_counts_for_list.exit.if.end78_crit_edge: ; preds = %iscsit_determine_counts_for_list.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then71:                                        ; preds = %iscsit_determine_counts_for_list.exit
  %66 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %seq_count.4, i32 128) #6
  %67 = extractvalue { i32, i1 } %66, 1
  br i1 %67, label %if.then71.do.end_crit_edge, label %if.end7.i.i, !prof !79

if.then71.do.end_crit_edge:                       ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end7.i.i:                                      ; preds = %if.then71
  %68 = extractvalue { i32, i1 } %66, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %68, i32 noundef 2848) #9
  %tobool73.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool73.not, label %if.end7.i.i.do.end_crit_edge, label %if.end76

if.end7.i.i.do.end_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end7.i.i.do.end_crit_edge, %if.then71.do.end_crit_edge
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end76:                                         ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %seq_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 63
  %69 = ptrtoint ptr %seq_list to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call8.i.i, ptr %seq_list, align 4
  %seq_count77 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 35
  %70 = ptrtoint ptr %seq_count77 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %seq_count.4, ptr %seq_count77, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.end76, %iscsit_determine_counts_for_list.exit.if.end78_crit_edge
  %seq.0 = phi ptr [ null, %iscsit_determine_counts_for_list.exit.if.end78_crit_edge ], [ %call8.i.i, %if.end76 ]
  %71 = ptrtoint ptr %sess2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sess2, align 4
  %sess_ops80 = getelementptr inbounds %struct.iscsi_session, ptr %72, i32 0, i32 47
  %73 = ptrtoint ptr %sess_ops80 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sess_ops80, align 8
  %DataPDUInOrder81 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %74, i32 0, i32 14
  %75 = ptrtoint ptr %DataPDUInOrder81 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %DataPDUInOrder81, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool82.not = icmp eq i8 %76, 0
  br i1 %tobool82.not, label %if.then83, label %if.end78.if.end94_crit_edge

if.end78.if.end94_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end94

if.then83:                                        ; preds = %if.end78
  %77 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %pdu_count.2, i32 128) #6
  %78 = extractvalue { i32, i1 } %77, 1
  br i1 %78, label %if.then83.do.end89_crit_edge, label %if.end7.i.i158, !prof !79

if.then83.do.end89_crit_edge:                     ; preds = %if.then83
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end89

if.end7.i.i158:                                   ; preds = %if.then83
  %79 = extractvalue { i32, i1 } %77, 0
  %call8.i.i157 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %79, i32 noundef 2848) #9
  %tobool85.not = icmp eq ptr %call8.i.i157, null
  br i1 %tobool85.not, label %if.end7.i.i158.do.end89_crit_edge, label %if.end92

if.end7.i.i158.do.end89_crit_edge:                ; preds = %if.end7.i.i158
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end89

do.end89:                                         ; preds = %if.end7.i.i158.do.end89_crit_edge, %if.then83.do.end89_crit_edge
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  tail call void @kfree(ptr noundef %seq.0) #6
  br label %cleanup

if.end92:                                         ; preds = %if.end7.i.i158
  call void @__sanitizer_cov_trace_pc() #8
  %pdu_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 61
  %80 = ptrtoint ptr %pdu_list to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call8.i.i157, ptr %pdu_list, align 4
  %pdu_count93 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 31
  %81 = ptrtoint ptr %pdu_count93 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %pdu_count.2, ptr %pdu_count93, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.end92, %if.end78.if.end94_crit_edge
  %82 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %conn1, align 8
  %pdu_list.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 61
  %84 = ptrtoint ptr %pdu_list.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdu_list.i, align 4
  %seq_list.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 63
  %86 = ptrtoint ptr %seq_list.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %seq_list.i, align 4
  %88 = ptrtoint ptr %data_direction.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %data_direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp.i163 = icmp eq i32 %89, 1
  %conn_ops.i164 = getelementptr inbounds %struct.iscsi_conn, ptr %83, i32 0, i32 59
  %90 = ptrtoint ptr %conn_ops.i164 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %conn_ops.i164, align 16
  %MaxXmitDataSegmentLength.i165 = getelementptr inbounds %struct.iscsi_conn_ops, ptr %91, i32 0, i32 3
  %MaxRecvDataSegmentLength.i166 = getelementptr inbounds %struct.iscsi_conn_ops, ptr %91, i32 0, i32 2
  %mdsl.0.in.i167 = select i1 %cmp.i163, ptr %MaxXmitDataSegmentLength.i165, ptr %MaxRecvDataSegmentLength.i166
  %92 = ptrtoint ptr %mdsl.0.in.i167 to i32
  call void @__asan_load4_noabort(i32 %92)
  %mdsl.0.i168 = load i32, ptr %mdsl.0.in.i167, align 4
  %sess.i169 = getelementptr inbounds %struct.iscsi_conn, ptr %83, i32 0, i32 68
  %93 = ptrtoint ptr %sess.i169 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %sess.i169, align 4
  %sess_ops.i170 = getelementptr inbounds %struct.iscsi_session, ptr %94, i32 0, i32 47
  %95 = ptrtoint ptr %sess_ops.i170 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sess_ops.i170, align 8
  %DataPDUInOrder.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %96, i32 0, i32 14
  %97 = ptrtoint ptr %DataPDUInOrder.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %DataPDUInOrder.i, align 2
  %DataSequenceInOrder.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %96, i32 0, i32 15
  %99 = ptrtoint ptr %DataSequenceInOrder.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %DataSequenceInOrder.i, align 1
  %101 = ptrtoint ptr %data_length20.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %data_length20.i, align 4
  br i1 %switch.i, label %if.then22.i178, label %if.end94.if.end28.i_crit_edge

if.end94.if.end28.i_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then22.i178:                                   ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #8
  %FirstBurstLength.i177 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %96, i32 0, i32 10
  %103 = ptrtoint ptr %FirstBurstLength.i177 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %FirstBurstLength.i177, align 4
  %105 = tail call i32 @llvm.umin.i32(i32 %102, i32 %104) #6
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then22.i178, %if.end94.if.end28.i_crit_edge
  %unsolicited_data_length.0.i179 = phi i32 [ %105, %if.then22.i178 ], [ 0, %if.end94.if.end28.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp31628635643.not.i = icmp eq i32 %102, 0
  br i1 %cmp31628635643.not.i, label %if.end28.i.while.end.i_crit_edge, label %while.body.lr.ph.lr.ph.lr.ph.i

if.end28.i.while.end.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.lr.ph.lr.ph.lr.ph.i:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i180 = icmp eq i8 %98, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool38.not.i = icmp eq i8 %100, 0
  br label %while.body.lr.ph.lr.ph.i182

while.body.lr.ph.lr.ph.i182:                      ; preds = %while.cond.outer.backedge.i194.while.body.lr.ph.lr.ph.i182_crit_edge, %while.body.lr.ph.lr.ph.lr.ph.i
  %offset.0.neg627634652.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph.i ], [ %offset.0.neg627634.i, %while.cond.outer.backedge.i194.while.body.lr.ph.lr.ph.i182_crit_edge ]
  %unsolicited_data_length.1.ph651.i = phi i32 [ %unsolicited_data_length.0.i179, %while.body.lr.ph.lr.ph.lr.ph.i ], [ %unsolicited_data_length.1.ph.be.i193, %while.cond.outer.backedge.i194.while.body.lr.ph.lr.ph.i182_crit_edge ]
  %seq_no.0.ph650.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph.i ], [ %seq_no.0.ph.be.i, %while.cond.outer.backedge.i194.while.body.lr.ph.lr.ph.i182_crit_edge ]
  %pdu_count.0.ph649.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph.i ], [ %pdu_count.0.ph.be.i, %while.cond.outer.backedge.i194.while.body.lr.ph.lr.ph.i182_crit_edge ]
  %i.0.ph648.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph.i ], [ %i.0.ph.be.i, %while.cond.outer.backedge.i194.while.body.lr.ph.lr.ph.i182_crit_edge ]
  %offset.0.ph647.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph.i ], [ %offset.0.ph.be.i192, %while.cond.outer.backedge.i194.while.body.lr.ph.lr.ph.i182_crit_edge ]
  %burstlength.0.ph645.i = phi i32 [ 0, %while.body.lr.ph.lr.ph.lr.ph.i ], [ %burstlength.0.ph.be.i191, %while.cond.outer.backedge.i194.while.body.lr.ph.lr.ph.i182_crit_edge ]
  %check_immediate.1.ph644.i = phi i32 [ %36, %while.body.lr.ph.lr.ph.lr.ph.i ], [ 0, %while.cond.outer.backedge.i194.while.body.lr.ph.lr.ph.i182_crit_edge ]
  br label %while.body.lr.ph.i183

while.body.lr.ph.i183:                            ; preds = %if.end66.i187.while.body.lr.ph.i183_crit_edge, %while.body.lr.ph.lr.ph.i182
  %offset.0.neg627642.i = phi i32 [ %offset.0.neg627634652.i, %while.body.lr.ph.lr.ph.i182 ], [ %offset.0.neg627.i, %if.end66.i187.while.body.lr.ph.i183_crit_edge ]
  %unsolicited_data_length.1.ph607641.i = phi i32 [ %unsolicited_data_length.1.ph651.i, %while.body.lr.ph.lr.ph.i182 ], [ %spec.select.i, %if.end66.i187.while.body.lr.ph.i183_crit_edge ]
  %seq_no.0.ph606640.i = phi i32 [ %seq_no.0.ph650.i, %while.body.lr.ph.lr.ph.i182 ], [ %inc68.i, %if.end66.i187.while.body.lr.ph.i183_crit_edge ]
  %pdu_count.0.ph605639.i = phi i32 [ %pdu_count.0.ph649.i, %while.body.lr.ph.lr.ph.i182 ], [ 0, %if.end66.i187.while.body.lr.ph.i183_crit_edge ]
  %i.0.ph604638.i = phi i32 [ %i.0.ph648.i, %while.body.lr.ph.lr.ph.i182 ], [ %i.1.i, %if.end66.i187.while.body.lr.ph.i183_crit_edge ]
  %offset.0.ph603637.i = phi i32 [ %offset.0.ph647.i, %while.body.lr.ph.lr.ph.i182 ], [ %add.i185, %if.end66.i187.while.body.lr.ph.i183_crit_edge ]
  %check_immediate.1.ph602636.i = phi i32 [ %check_immediate.1.ph644.i, %while.body.lr.ph.lr.ph.i182 ], [ 0, %if.end66.i187.while.body.lr.ph.i183_crit_edge ]
  %offset34.i = getelementptr %struct.iscsi_pdu, ptr %85, i32 %i.0.ph604638.i, i32 5
  %seq_no36.i = getelementptr %struct.iscsi_pdu, ptr %85, i32 %i.0.ph604638.i, i32 7
  %pdu_start.i = getelementptr %struct.iscsi_seq, ptr %87, i32 %seq_no.0.ph606640.i, i32 7
  %seq_no44.i = getelementptr %struct.iscsi_seq, ptr %87, i32 %seq_no.0.ph606640.i, i32 14
  %offset46.i = getelementptr %struct.iscsi_seq, ptr %87, i32 %seq_no.0.ph606640.i, i32 9
  %orig_offset.i = getelementptr %struct.iscsi_seq, ptr %87, i32 %seq_no.0.ph606640.i, i32 10
  %type86.i = getelementptr %struct.iscsi_pdu, ptr %85, i32 %i.0.ph604638.i, i32 1
  %length91.i = getelementptr %struct.iscsi_pdu, ptr %85, i32 %i.0.ph604638.i, i32 4
  %type96.i = getelementptr %struct.iscsi_seq, ptr %87, i32 %seq_no.0.ph606640.i, i32 2
  %pdu_count98.i = getelementptr %struct.iscsi_seq, ptr %87, i32 %seq_no.0.ph606640.i, i32 8
  %xfer_len104.i = getelementptr %struct.iscsi_seq, ptr %87, i32 %seq_no.0.ph606640.i, i32 15
  br label %while.body.i184

while.body.i184:                                  ; preds = %while.cond.backedge.i190.while.body.i184_crit_edge, %while.body.lr.ph.i183
  %offset.0.neg633.i = phi i32 [ %offset.0.neg627642.i, %while.body.lr.ph.i183 ], [ %offset.0.neg.i, %while.cond.backedge.i190.while.body.i184_crit_edge ]
  %unsolicited_data_length.1632.i = phi i32 [ %unsolicited_data_length.1.ph607641.i, %while.body.lr.ph.i183 ], [ %unsolicited_data_length.1.be.i189, %while.cond.backedge.i190.while.body.i184_crit_edge ]
  %pdu_count.0631.i = phi i32 [ %pdu_count.0.ph605639.i, %while.body.lr.ph.i183 ], [ %inc.i, %while.cond.backedge.i190.while.body.i184_crit_edge ]
  %offset.0630.i = phi i32 [ %offset.0.ph603637.i, %while.body.lr.ph.i183 ], [ %offset.0.be.i188, %while.cond.backedge.i190.while.body.i184_crit_edge ]
  %check_immediate.1629.i = phi i32 [ %check_immediate.1.ph602636.i, %while.body.lr.ph.i183 ], [ 0, %while.cond.backedge.i190.while.body.i184_crit_edge ]
  %inc.i = add i32 %pdu_count.0631.i, 1
  br i1 %tobool.not.i180, label %if.then33.i, label %while.body.i184.if.end37.i_crit_edge

while.body.i184.if.end37.i_crit_edge:             ; preds = %while.body.i184
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then33.i:                                      ; preds = %while.body.i184
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %offset34.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %offset.0630.i, ptr %offset34.i, align 4
  %107 = ptrtoint ptr %seq_no36.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %seq_no.0.ph606640.i, ptr %seq_no36.i, align 4
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then33.i, %while.body.i184.if.end37.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pdu_count.0631.i)
  %cmp39.i = icmp eq i32 %pdu_count.0631.i, 0
  %or.cond.i = select i1 %tobool38.not.i, i1 %cmp39.i, i1 false
  br i1 %or.cond.i, label %if.then41.i, label %if.end37.i.if.end48.i_crit_edge

if.end37.i.if.end48.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48.i

if.then41.i:                                      ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %pdu_start.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %i.0.ph604638.i, ptr %pdu_start.i, align 4
  %109 = ptrtoint ptr %seq_no44.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %seq_no.0.ph606640.i, ptr %seq_no44.i, align 8
  %110 = ptrtoint ptr %offset46.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %offset.0630.i, ptr %offset46.i, align 4
  %111 = ptrtoint ptr %orig_offset.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %offset.0630.i, ptr %orig_offset.i, align 8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then41.i, %if.end37.i.if.end48.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_immediate.1629.i)
  %tobool49.not.i = icmp eq i32 %check_immediate.1629.i, 0
  br i1 %tobool49.not.i, label %if.end73.i, label %if.then50.i

if.then50.i:                                      ; preds = %if.end48.i
  br i1 %tobool.not.i180, label %if.then52.i, label %if.then50.i.if.end57.i_crit_edge

if.then50.i.if.end57.i_crit_edge:                 ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end57.i

if.then52.i:                                      ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #8
  %112 = ptrtoint ptr %type86.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 1, ptr %type86.i, align 4
  %inc55.i = add i32 %i.0.ph604638.i, 1
  %113 = ptrtoint ptr %length91.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %bl.sroa.29.0, ptr %length91.i, align 16
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.then52.i, %if.then50.i.if.end57.i_crit_edge
  %i.1.i = phi i32 [ %i.0.ph604638.i, %if.then50.i.if.end57.i_crit_edge ], [ %inc55.i, %if.then52.i ]
  br i1 %tobool38.not.i, label %if.then59.i, label %if.end57.i.if.end66.i187_crit_edge

if.end57.i.if.end66.i187_crit_edge:               ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i187

if.then59.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #8
  %114 = ptrtoint ptr %type96.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 1, ptr %type96.i, align 8
  %115 = ptrtoint ptr %pdu_count98.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %pdu_count98.i, align 32
  %116 = ptrtoint ptr %xfer_len104.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %bl.sroa.29.0, ptr %xfer_len104.i, align 4
  br label %if.end66.i187

if.end66.i187:                                    ; preds = %if.then59.i, %if.end57.i.if.end66.i187_crit_edge
  %add.i185 = add i32 %offset.0630.i, %bl.sroa.29.0
  %inc68.i = add i32 %seq_no.0.ph606640.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unsolicited_data_length.1632.i)
  %tobool69.not.i = icmp eq i32 %unsolicited_data_length.1632.i, 0
  %sub.i186 = sub i32 %unsolicited_data_length.1632.i, %bl.sroa.29.0
  %spec.select.i = select i1 %tobool69.not.i, i32 0, i32 %sub.i186
  %offset.0.neg627.i = sub i32 0, %add.i185
  %117 = ptrtoint ptr %data_length20.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %data_length20.i, align 4
  %cmp31628.i = icmp ult i32 %add.i185, %118
  br i1 %cmp31628.i, label %if.end66.i187.while.body.lr.ph.i183_crit_edge, label %if.end66.i187.while.end.i_crit_edge

if.end66.i187.while.end.i_crit_edge:              ; preds = %if.end66.i187
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end66.i187.while.body.lr.ph.i183_crit_edge:    ; preds = %if.end66.i187
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph.i183

if.end73.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %unsolicited_data_length.1632.i)
  %cmp74.not.i = icmp eq i32 %unsolicited_data_length.1632.i, 0
  %add172.i = add i32 %offset.0630.i, %mdsl.0.i168
  %119 = ptrtoint ptr %data_length20.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %data_length20.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add172.i, i32 %120)
  %cmp175.not.i = icmp ult i32 %add172.i, %120
  br i1 %cmp74.not.i, label %if.end171.i, label %if.then76.i

if.then76.i:                                      ; preds = %if.end73.i
  br i1 %cmp175.not.i, label %if.end114.i, label %if.then82.i

if.then82.i:                                      ; preds = %if.then76.i
  br i1 %tobool.not.i180, label %if.then84.i, label %if.then82.i.if.end92.i_crit_edge

if.then82.i.if.end92.i_crit_edge:                 ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92.i

if.then84.i:                                      ; preds = %if.then82.i
  call void @__sanitizer_cov_trace_pc() #8
  %121 = ptrtoint ptr %type86.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 2, ptr %type86.i, align 4
  %122 = ptrtoint ptr %data_length20.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %data_length20.i, align 4
  %sub89.i = sub i32 %123, %offset.0630.i
  %124 = ptrtoint ptr %length91.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %sub89.i, ptr %length91.i, align 16
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then84.i, %if.then82.i.if.end92.i_crit_edge
  br i1 %tobool38.not.i, label %if.then94.i, label %if.end92.i.if.end105.i_crit_edge

if.end92.i.if.end105.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105.i

if.then94.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  %125 = ptrtoint ptr %type96.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 2, ptr %type96.i, align 8
  %126 = ptrtoint ptr %pdu_count98.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %inc.i, ptr %pdu_count98.i, align 32
  %127 = ptrtoint ptr %data_length20.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %data_length20.i, align 4
  %sub101.i = add i32 %offset.0.neg633.i, %burstlength.0.ph645.i
  %add102.i = add i32 %sub101.i, %128
  %129 = ptrtoint ptr %xfer_len104.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %add102.i, ptr %xfer_len104.i, align 4
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then94.i, %if.end92.i.if.end105.i_crit_edge
  %130 = ptrtoint ptr %data_length20.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %data_length20.i, align 4
  %sub108.neg.i = add i32 %offset.0630.i, %unsolicited_data_length.1632.i
  %sub109.i = sub i32 %sub108.neg.i, %131
  br label %while.cond.backedge.i190

while.cond.backedge.i190:                         ; preds = %if.end200.i, %if.end105.i
  %offset.0.be.i188 = phi i32 [ %131, %if.end105.i ], [ %177, %if.end200.i ]
  %unsolicited_data_length.1.be.i189 = phi i32 [ %sub109.i, %if.end105.i ], [ 0, %if.end200.i ]
  %offset.0.neg.i = sub i32 0, %offset.0.be.i188
  %132 = ptrtoint ptr %data_length20.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %data_length20.i, align 4
  %cmp31.i = icmp ult i32 %offset.0.be.i188, %133
  br i1 %cmp31.i, label %while.cond.backedge.i190.while.body.i184_crit_edge, label %while.cond.backedge.i190.while.end.i_crit_edge

while.cond.backedge.i190.while.end.i_crit_edge:   ; preds = %while.cond.backedge.i190
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.cond.backedge.i190.while.body.i184_crit_edge: ; preds = %while.cond.backedge.i190
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i184

if.end114.i:                                      ; preds = %if.then76.i
  %134 = ptrtoint ptr %sess.i169 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %sess.i169, align 4
  %sess_ops117.i = getelementptr inbounds %struct.iscsi_session, ptr %135, i32 0, i32 47
  %136 = ptrtoint ptr %sess_ops117.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %sess_ops117.i, align 8
  %FirstBurstLength118.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %137, i32 0, i32 10
  %138 = ptrtoint ptr %FirstBurstLength118.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %FirstBurstLength118.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add172.i, i32 %139)
  %cmp119.not.i = icmp ult i32 %add172.i, %139
  br i1 %cmp119.not.i, label %if.end159.i, label %if.then121.i

if.then121.i:                                     ; preds = %if.end114.i
  br i1 %tobool.not.i180, label %if.then123.i, label %if.then121.i.if.end133.i_crit_edge

if.then121.i.if.end133.i_crit_edge:               ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end133.i

if.then123.i:                                     ; preds = %if.then121.i
  call void @__sanitizer_cov_trace_pc() #8
  %140 = ptrtoint ptr %type86.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 2, ptr %type86.i, align 4
  %141 = ptrtoint ptr %sess.i169 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %sess.i169, align 4
  %sess_ops127.i = getelementptr inbounds %struct.iscsi_session, ptr %142, i32 0, i32 47
  %143 = ptrtoint ptr %sess_ops127.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %sess_ops127.i, align 8
  %FirstBurstLength128.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %144, i32 0, i32 10
  %145 = ptrtoint ptr %FirstBurstLength128.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %FirstBurstLength128.i, align 4
  %sub129.i = sub i32 %146, %offset.0630.i
  %inc130.i = add i32 %i.0.ph604638.i, 1
  %147 = ptrtoint ptr %length91.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %sub129.i, ptr %length91.i, align 16
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.then123.i, %if.then121.i.if.end133.i_crit_edge
  %i.2.i = phi i32 [ %i.0.ph604638.i, %if.then121.i.if.end133.i_crit_edge ], [ %inc130.i, %if.then123.i ]
  br i1 %tobool38.not.i, label %if.then135.i, label %if.end133.i.if.end147.i_crit_edge

if.end133.i.if.end147.i_crit_edge:                ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end147.i

if.then135.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #8
  %148 = ptrtoint ptr %type96.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 2, ptr %type96.i, align 8
  %149 = ptrtoint ptr %pdu_count98.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %inc.i, ptr %pdu_count98.i, align 32
  %150 = ptrtoint ptr %sess.i169 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %sess.i169, align 4
  %sess_ops141.i = getelementptr inbounds %struct.iscsi_session, ptr %151, i32 0, i32 47
  %152 = ptrtoint ptr %sess_ops141.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %sess_ops141.i, align 8
  %FirstBurstLength142.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %153, i32 0, i32 10
  %154 = ptrtoint ptr %FirstBurstLength142.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %FirstBurstLength142.i, align 4
  %sub143.i = add i32 %offset.0.neg633.i, %burstlength.0.ph645.i
  %add144.i = add i32 %sub143.i, %155
  %156 = ptrtoint ptr %xfer_len104.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %add144.i, ptr %xfer_len104.i, align 4
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.then135.i, %if.end133.i.if.end147.i_crit_edge
  %157 = ptrtoint ptr %sess.i169 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %sess.i169, align 4
  %sess_ops149.i = getelementptr inbounds %struct.iscsi_session, ptr %158, i32 0, i32 47
  %159 = ptrtoint ptr %sess_ops149.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %sess_ops149.i, align 8
  %FirstBurstLength150.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %160, i32 0, i32 10
  %161 = ptrtoint ptr %FirstBurstLength150.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %FirstBurstLength150.i, align 4
  %sub151.neg.i = add i32 %offset.0630.i, %unsolicited_data_length.1632.i
  %sub152.i = sub i32 %sub151.neg.i, %162
  %inc158.i = add i32 %seq_no.0.ph606640.i, 1
  br label %while.cond.outer.backedge.i194

while.cond.outer.backedge.i194:                   ; preds = %if.then246.i, %if.end244.i.while.cond.outer.backedge.i194_crit_edge, %if.end237.i, %if.end167.i, %if.end147.i
  %burstlength.0.ph.be.i191 = phi i32 [ 0, %if.end237.i ], [ %add168.i, %if.end167.i ], [ 0, %if.end147.i ], [ %add206.i, %if.then246.i ], [ %add206.i, %if.end244.i.while.cond.outer.backedge.i194_crit_edge ]
  %offset.0.ph.be.i192 = phi i32 [ %add242.i, %if.end237.i ], [ %add172.i, %if.end167.i ], [ %162, %if.end147.i ], [ %add172.i, %if.then246.i ], [ %add172.i, %if.end244.i.while.cond.outer.backedge.i194_crit_edge ]
  %i.0.ph.be.i = phi i32 [ %i.4.i, %if.end237.i ], [ %i.3.i, %if.end167.i ], [ %i.2.i, %if.end147.i ], [ %inc249.i, %if.then246.i ], [ %i.0.ph604638.i, %if.end244.i.while.cond.outer.backedge.i194_crit_edge ]
  %pdu_count.0.ph.be.i = phi i32 [ 0, %if.end237.i ], [ %inc.i, %if.end167.i ], [ 0, %if.end147.i ], [ %inc.i, %if.then246.i ], [ %inc.i, %if.end244.i.while.cond.outer.backedge.i194_crit_edge ]
  %seq_no.0.ph.be.i = phi i32 [ %inc243.i, %if.end237.i ], [ %seq_no.0.ph606640.i, %if.end167.i ], [ %inc158.i, %if.end147.i ], [ %seq_no.0.ph606640.i, %if.then246.i ], [ %seq_no.0.ph606640.i, %if.end244.i.while.cond.outer.backedge.i194_crit_edge ]
  %unsolicited_data_length.1.ph.be.i193 = phi i32 [ 0, %if.end237.i ], [ %sub170.i, %if.end167.i ], [ %sub152.i, %if.end147.i ], [ 0, %if.then246.i ], [ 0, %if.end244.i.while.cond.outer.backedge.i194_crit_edge ]
  %offset.0.neg627634.i = sub i32 0, %offset.0.ph.be.i192
  %163 = ptrtoint ptr %data_length20.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %data_length20.i, align 4
  %cmp31628635.i = icmp ult i32 %offset.0.ph.be.i192, %164
  br i1 %cmp31628635.i, label %while.cond.outer.backedge.i194.while.body.lr.ph.lr.ph.i182_crit_edge, label %while.cond.outer.backedge.i194.while.end.i_crit_edge

while.cond.outer.backedge.i194.while.end.i_crit_edge: ; preds = %while.cond.outer.backedge.i194
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.cond.outer.backedge.i194.while.body.lr.ph.lr.ph.i182_crit_edge: ; preds = %while.cond.outer.backedge.i194
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.lr.ph.lr.ph.i182

if.end159.i:                                      ; preds = %if.end114.i
  br i1 %tobool.not.i180, label %if.then161.i, label %if.end159.i.if.end167.i_crit_edge

if.end159.i.if.end167.i_crit_edge:                ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end167.i

if.then161.i:                                     ; preds = %if.end159.i
  call void @__sanitizer_cov_trace_pc() #8
  %165 = ptrtoint ptr %type86.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 2, ptr %type86.i, align 4
  %inc164.i = add i32 %i.0.ph604638.i, 1
  %166 = ptrtoint ptr %length91.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %mdsl.0.i168, ptr %length91.i, align 16
  br label %if.end167.i

if.end167.i:                                      ; preds = %if.then161.i, %if.end159.i.if.end167.i_crit_edge
  %i.3.i = phi i32 [ %i.0.ph604638.i, %if.end159.i.if.end167.i_crit_edge ], [ %inc164.i, %if.then161.i ]
  %add168.i = add i32 %burstlength.0.ph645.i, %mdsl.0.i168
  %sub170.i = sub i32 %unsolicited_data_length.1632.i, %mdsl.0.i168
  br label %while.cond.outer.backedge.i194

if.end171.i:                                      ; preds = %if.end73.i
  br i1 %cmp175.not.i, label %if.end205.i, label %if.then177.i

if.then177.i:                                     ; preds = %if.end171.i
  br i1 %tobool.not.i180, label %if.then179.i, label %if.then177.i.if.end187.i_crit_edge

if.then177.i.if.end187.i_crit_edge:               ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end187.i

if.then179.i:                                     ; preds = %if.then177.i
  call void @__sanitizer_cov_trace_pc() #8
  %167 = ptrtoint ptr %type86.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 3, ptr %type86.i, align 4
  %168 = ptrtoint ptr %data_length20.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %data_length20.i, align 4
  %sub184.i = sub i32 %169, %offset.0630.i
  %170 = ptrtoint ptr %length91.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %sub184.i, ptr %length91.i, align 16
  br label %if.end187.i

if.end187.i:                                      ; preds = %if.then179.i, %if.then177.i.if.end187.i_crit_edge
  br i1 %tobool38.not.i, label %if.then189.i, label %if.end187.i.if.end200.i_crit_edge

if.end187.i.if.end200.i_crit_edge:                ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end200.i

if.then189.i:                                     ; preds = %if.end187.i
  call void @__sanitizer_cov_trace_pc() #8
  %171 = ptrtoint ptr %type96.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 3, ptr %type96.i, align 8
  %172 = ptrtoint ptr %pdu_count98.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %inc.i, ptr %pdu_count98.i, align 32
  %173 = ptrtoint ptr %data_length20.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %data_length20.i, align 4
  %sub196.i = add i32 %offset.0.neg633.i, %burstlength.0.ph645.i
  %add197.i = add i32 %sub196.i, %174
  %175 = ptrtoint ptr %xfer_len104.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %add197.i, ptr %xfer_len104.i, align 4
  br label %if.end200.i

if.end200.i:                                      ; preds = %if.then189.i, %if.end187.i.if.end200.i_crit_edge
  %176 = ptrtoint ptr %data_length20.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %data_length20.i, align 4
  br label %while.cond.backedge.i190

if.end205.i:                                      ; preds = %if.end171.i
  %add206.i = add i32 %burstlength.0.ph645.i, %mdsl.0.i168
  %178 = ptrtoint ptr %sess.i169 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %sess.i169, align 4
  %sess_ops208.i = getelementptr inbounds %struct.iscsi_session, ptr %179, i32 0, i32 47
  %180 = ptrtoint ptr %sess_ops208.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %sess_ops208.i, align 8
  %MaxBurstLength.i195 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %181, i32 0, i32 9
  %182 = ptrtoint ptr %MaxBurstLength.i195 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %MaxBurstLength.i195, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add206.i, i32 %183)
  %cmp209.not.i = icmp ult i32 %add206.i, %183
  br i1 %cmp209.not.i, label %if.end244.i, label %if.then211.i

if.then211.i:                                     ; preds = %if.end205.i
  br i1 %tobool.not.i180, label %if.then213.i, label %if.then211.i.if.end223.i_crit_edge

if.then211.i.if.end223.i_crit_edge:               ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end223.i

if.then213.i:                                     ; preds = %if.then211.i
  call void @__sanitizer_cov_trace_pc() #8
  %184 = ptrtoint ptr %type86.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 3, ptr %type86.i, align 4
  %185 = ptrtoint ptr %sess.i169 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %sess.i169, align 4
  %sess_ops217.i = getelementptr inbounds %struct.iscsi_session, ptr %186, i32 0, i32 47
  %187 = ptrtoint ptr %sess_ops217.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %sess_ops217.i, align 8
  %MaxBurstLength218.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %188, i32 0, i32 9
  %189 = ptrtoint ptr %MaxBurstLength218.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %MaxBurstLength218.i, align 4
  %sub219.i = sub i32 %190, %burstlength.0.ph645.i
  %inc220.i = add i32 %i.0.ph604638.i, 1
  %191 = ptrtoint ptr %length91.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %sub219.i, ptr %length91.i, align 16
  br label %if.end223.i

if.end223.i:                                      ; preds = %if.then213.i, %if.then211.i.if.end223.i_crit_edge
  %i.4.i = phi i32 [ %i.0.ph604638.i, %if.then211.i.if.end223.i_crit_edge ], [ %inc220.i, %if.then213.i ]
  br i1 %tobool38.not.i, label %if.then225.i, label %if.end223.i.if.end237.i_crit_edge

if.end223.i.if.end237.i_crit_edge:                ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end237.i

if.then225.i:                                     ; preds = %if.end223.i
  call void @__sanitizer_cov_trace_pc() #8
  %192 = ptrtoint ptr %type96.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 3, ptr %type96.i, align 8
  %193 = ptrtoint ptr %pdu_count98.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 %inc.i, ptr %pdu_count98.i, align 32
  %194 = ptrtoint ptr %sess.i169 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %sess.i169, align 4
  %sess_ops231.i = getelementptr inbounds %struct.iscsi_session, ptr %195, i32 0, i32 47
  %196 = ptrtoint ptr %sess_ops231.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %sess_ops231.i, align 8
  %MaxBurstLength232.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %197, i32 0, i32 9
  %198 = ptrtoint ptr %MaxBurstLength232.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %MaxBurstLength232.i, align 4
  %200 = ptrtoint ptr %xfer_len104.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %199, ptr %xfer_len104.i, align 4
  br label %if.end237.i

if.end237.i:                                      ; preds = %if.then225.i, %if.end223.i.if.end237.i_crit_edge
  %201 = ptrtoint ptr %sess.i169 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %sess.i169, align 4
  %sess_ops239.i = getelementptr inbounds %struct.iscsi_session, ptr %202, i32 0, i32 47
  %203 = ptrtoint ptr %sess_ops239.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %sess_ops239.i, align 8
  %MaxBurstLength240.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %204, i32 0, i32 9
  %205 = ptrtoint ptr %MaxBurstLength240.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %MaxBurstLength240.i, align 4
  %sub241.i = sub i32 %offset.0630.i, %burstlength.0.ph645.i
  %add242.i = add i32 %sub241.i, %206
  %inc243.i = add i32 %seq_no.0.ph606640.i, 1
  br label %while.cond.outer.backedge.i194

if.end244.i:                                      ; preds = %if.end205.i
  br i1 %tobool.not.i180, label %if.then246.i, label %if.end244.i.while.cond.outer.backedge.i194_crit_edge

if.end244.i.while.cond.outer.backedge.i194_crit_edge: ; preds = %if.end244.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.outer.backedge.i194

if.then246.i:                                     ; preds = %if.end244.i
  call void @__sanitizer_cov_trace_pc() #8
  %207 = ptrtoint ptr %type86.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 3, ptr %type86.i, align 4
  %inc249.i = add i32 %i.0.ph604638.i, 1
  %208 = ptrtoint ptr %length91.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %mdsl.0.i168, ptr %length91.i, align 16
  br label %while.cond.outer.backedge.i194

while.end.i:                                      ; preds = %while.cond.outer.backedge.i194.while.end.i_crit_edge, %while.cond.backedge.i190.while.end.i_crit_edge, %if.end66.i187.while.end.i_crit_edge, %if.end28.i.while.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool255.not.i = icmp eq i8 %100, 0
  br i1 %tobool255.not.i, label %if.then256.i, label %while.end.i.if.end295.i_crit_edge

while.end.i.if.end295.i_crit_edge:                ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end295.i

if.then256.i:                                     ; preds = %while.end.i
  %and.i = and i32 %bl.sroa.0.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool258.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool258.not.i, label %if.else273.i, label %if.then259.i

if.then259.i:                                     ; preds = %if.then256.i
  %and260.i = and i32 %bl.sroa.8.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260.i)
  %tobool261.not.i = icmp eq i32 %and260.i, 0
  br i1 %tobool261.not.i, label %if.else269.i, label %if.then262.i

if.then262.i:                                     ; preds = %if.then259.i
  %conv264.i = trunc i32 %bl.sroa.19.0 to i8
  %call.i = tail call fastcc i32 @iscsit_randomize_seq_lists(ptr noundef %cmd, i8 noundef zeroext %conv264.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp265.i = icmp slt i32 %call.i, 0
  br i1 %cmp265.i, label %if.then262.i.cleanup_crit_edge, label %if.then262.i.if.end295.i_crit_edge

if.then262.i.if.end295.i_crit_edge:               ; preds = %if.then262.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end295.i

if.then262.i.cleanup_crit_edge:                   ; preds = %if.then262.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else269.i:                                     ; preds = %if.then259.i
  %seq_count1.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 35
  %209 = ptrtoint ptr %seq_count1.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %seq_count1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %cmp1.not.i.i = icmp eq i32 %210, 0
  br i1 %cmp1.not.i.i, label %if.else269.i.if.end295.i_crit_edge, label %if.else269.i.for.body.i.i_crit_edge

if.else269.i.for.body.i.i_crit_edge:              ; preds = %if.else269.i
  br label %for.body.i.i

if.else269.i.if.end295.i_crit_edge:               ; preds = %if.else269.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end295.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.else269.i.for.body.i.i_crit_edge
  %seq_count.04.i.i = phi i32 [ %seq_count.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.else269.i.for.body.i.i_crit_edge ]
  %i.02.i.i = phi i32 [ %inc6.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.else269.i.for.body.i.i_crit_edge ]
  %211 = ptrtoint ptr %seq_list.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %seq_list.i, align 4
  %type2.i.i = getelementptr %struct.iscsi_seq, ptr %212, i32 %i.02.i.i, i32 2
  %213 = ptrtoint ptr %type2.i.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %type2.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %214)
  %cmp3.not.i.i = icmp eq i32 %214, 3
  br i1 %cmp3.not.i.i, label %if.end.i.i196, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end.i.i196:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i = add i32 %seq_count.04.i.i, 1
  %seq_send_order.i.i = getelementptr %struct.iscsi_seq, ptr %212, i32 %i.02.i.i, i32 13
  %215 = ptrtoint ptr %seq_send_order.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %seq_count.04.i.i, ptr %seq_send_order.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i196, %for.body.i.i.for.inc.i.i_crit_edge
  %seq_count.1.i.i = phi i32 [ %seq_count.04.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %inc.i.i, %if.end.i.i196 ]
  %inc6.i.i = add nuw i32 %i.02.i.i, 1
  %216 = ptrtoint ptr %seq_count1.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %seq_count1.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc6.i.i, %217
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end295.i_crit_edge

for.inc.i.i.if.end295.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end295.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

if.else273.i:                                     ; preds = %if.then256.i
  %and275.i = and i32 %bl.sroa.0.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and275.i)
  %tobool276.not.i = icmp eq i32 %and275.i, 0
  br i1 %tobool276.not.i, label %if.else273.i.if.end295.i_crit_edge, label %if.then277.i

if.else273.i.if.end295.i_crit_edge:               ; preds = %if.else273.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end295.i

if.then277.i:                                     ; preds = %if.else273.i
  %and279.i = and i32 %bl.sroa.8.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279.i)
  %tobool280.not.i = icmp eq i32 %and279.i, 0
  br i1 %tobool280.not.i, label %if.else289.i, label %if.then281.i

if.then281.i:                                     ; preds = %if.then277.i
  %conv283.i = trunc i32 %bl.sroa.19.0 to i8
  %call284.i = tail call fastcc i32 @iscsit_randomize_seq_lists(ptr noundef %cmd, i8 noundef zeroext %conv283.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284.i)
  %cmp285.i = icmp slt i32 %call284.i, 0
  br i1 %cmp285.i, label %if.then281.i.cleanup_crit_edge, label %if.then281.i.if.end295.i_crit_edge

if.then281.i.if.end295.i_crit_edge:               ; preds = %if.then281.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end295.i

if.then281.i.cleanup_crit_edge:                   ; preds = %if.then281.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else289.i:                                     ; preds = %if.then277.i
  %seq_count1.i556.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 35
  %218 = ptrtoint ptr %seq_count1.i556.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %seq_count1.i556.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %cmp1.not.i557.i = icmp eq i32 %219, 0
  br i1 %cmp1.not.i557.i, label %if.else289.i.if.end295.i_crit_edge, label %if.else289.i.for.body.i564.i_crit_edge

if.else289.i.for.body.i564.i_crit_edge:           ; preds = %if.else289.i
  br label %for.body.i564.i

if.else289.i.if.end295.i_crit_edge:               ; preds = %if.else289.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end295.i

for.body.i564.i:                                  ; preds = %for.inc.i571.i.for.body.i564.i_crit_edge, %if.else289.i.for.body.i564.i_crit_edge
  %seq_count.04.i560.i = phi i32 [ %seq_count.1.i568.i, %for.inc.i571.i.for.body.i564.i_crit_edge ], [ 0, %if.else289.i.for.body.i564.i_crit_edge ]
  %i.02.i561.i = phi i32 [ %inc6.i569.i, %for.inc.i571.i.for.body.i564.i_crit_edge ], [ 0, %if.else289.i.for.body.i564.i_crit_edge ]
  %220 = ptrtoint ptr %seq_list.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %seq_list.i, align 4
  %type2.i562.i = getelementptr %struct.iscsi_seq, ptr %221, i32 %i.02.i561.i, i32 2
  %222 = ptrtoint ptr %type2.i562.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %type2.i562.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %223)
  %cmp3.not.i563.i = icmp eq i32 %223, 3
  br i1 %cmp3.not.i563.i, label %if.end.i567.i, label %for.body.i564.i.for.inc.i571.i_crit_edge

for.body.i564.i.for.inc.i571.i_crit_edge:         ; preds = %for.body.i564.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i571.i

if.end.i567.i:                                    ; preds = %for.body.i564.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i565.i = add i32 %seq_count.04.i560.i, 1
  %seq_send_order.i566.i = getelementptr %struct.iscsi_seq, ptr %221, i32 %i.02.i561.i, i32 13
  %224 = ptrtoint ptr %seq_send_order.i566.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %seq_count.04.i560.i, ptr %seq_send_order.i566.i, align 4
  br label %for.inc.i571.i

for.inc.i571.i:                                   ; preds = %if.end.i567.i, %for.body.i564.i.for.inc.i571.i_crit_edge
  %seq_count.1.i568.i = phi i32 [ %seq_count.04.i560.i, %for.body.i564.i.for.inc.i571.i_crit_edge ], [ %inc.i565.i, %if.end.i567.i ]
  %inc6.i569.i = add nuw i32 %i.02.i561.i, 1
  %225 = ptrtoint ptr %seq_count1.i556.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %seq_count1.i556.i, align 4
  %cmp.i570.i = icmp ult i32 %inc6.i569.i, %226
  br i1 %cmp.i570.i, label %for.inc.i571.i.for.body.i564.i_crit_edge, label %for.inc.i571.i.if.end295.i_crit_edge

for.inc.i571.i.if.end295.i_crit_edge:             ; preds = %for.inc.i571.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end295.i

for.inc.i571.i.for.body.i564.i_crit_edge:         ; preds = %for.inc.i571.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i564.i

if.end295.i:                                      ; preds = %for.inc.i571.i.if.end295.i_crit_edge, %if.else289.i.if.end295.i_crit_edge, %if.then281.i.if.end295.i_crit_edge, %if.else273.i.if.end295.i_crit_edge, %for.inc.i.i.if.end295.i_crit_edge, %if.else269.i.if.end295.i_crit_edge, %if.then262.i.if.end295.i_crit_edge, %while.end.i.if.end295.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool296.not.i = icmp eq i8 %98, 0
  br i1 %tobool296.not.i, label %if.then297.i, label %if.end295.i.cleanup_crit_edge

if.end295.i.cleanup_crit_edge:                    ; preds = %if.end295.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then297.i:                                     ; preds = %if.end295.i
  %and299.i = and i32 %bl.sroa.0.0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and299.i)
  %tobool300.not.i = icmp eq i32 %and299.i, 0
  br i1 %tobool300.not.i, label %if.else317.i, label %if.else313.i

if.else313.i:                                     ; preds = %if.then297.i
  %pdu_count.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 31
  %227 = ptrtoint ptr %pdu_count.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %pdu_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %228)
  %cmp1.not.i573.i = icmp eq i32 %228, 0
  br i1 %cmp1.not.i573.i, label %if.else313.i.if.end338.i_crit_edge, label %if.else313.i.redo.preheader.i.i_crit_edge

if.else313.i.redo.preheader.i.i_crit_edge:        ; preds = %if.else313.i
  br label %redo.preheader.i.i

if.else313.i.if.end338.i_crit_edge:               ; preds = %if.else313.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end338.i

redo.preheader.i.i:                               ; preds = %redo.preheader.i.i.redo.preheader.i.i_crit_edge, %if.else313.i.redo.preheader.i.i_crit_edge
  %seq_no.04.i.i = phi i32 [ %232, %redo.preheader.i.i.redo.preheader.i.i_crit_edge ], [ 0, %if.else313.i.redo.preheader.i.i_crit_edge ]
  %pdu_send_order.03.i.i = phi i32 [ %inc.i575.i, %redo.preheader.i.i.redo.preheader.i.i_crit_edge ], [ 0, %if.else313.i.redo.preheader.i.i_crit_edge ]
  %i.02.i574.i = phi i32 [ %inc7.i.i, %redo.preheader.i.i.redo.preheader.i.i_crit_edge ], [ 0, %if.else313.i.redo.preheader.i.i_crit_edge ]
  %229 = ptrtoint ptr %pdu_list.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %pdu_list.i, align 4
  %seq_no1.i.i = getelementptr %struct.iscsi_pdu, ptr %230, i32 %i.02.i574.i, i32 7
  %231 = ptrtoint ptr %seq_no1.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %seq_no1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %232, i32 %seq_no.04.i.i)
  %cmp2.peel.i.i = icmp eq i32 %232, %seq_no.04.i.i
  %spec.select712.i = select i1 %cmp2.peel.i.i, i32 %pdu_send_order.03.i.i, i32 0
  %inc.i575.i = add i32 %spec.select712.i, 1
  %pdu_send_order5.i.i = getelementptr %struct.iscsi_pdu, ptr %230, i32 %i.02.i574.i, i32 6
  %233 = ptrtoint ptr %pdu_send_order5.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %spec.select712.i, ptr %pdu_send_order5.i.i, align 8
  %inc7.i.i = add nuw i32 %i.02.i574.i, 1
  %234 = ptrtoint ptr %pdu_count.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %pdu_count.i.i, align 4
  %cmp.i576.i = icmp ult i32 %inc7.i.i, %235
  br i1 %cmp.i576.i, label %redo.preheader.i.i.redo.preheader.i.i_crit_edge, label %redo.preheader.i.i.if.end338.i_crit_edge

redo.preheader.i.i.if.end338.i_crit_edge:         ; preds = %redo.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end338.i

redo.preheader.i.i.redo.preheader.i.i_crit_edge:  ; preds = %redo.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %redo.preheader.i.i

if.else317.i:                                     ; preds = %if.then297.i
  %and319.i = and i32 %bl.sroa.0.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and319.i)
  %tobool320.not.i = icmp eq i32 %and319.i, 0
  br i1 %tobool320.not.i, label %if.else317.i.if.end338.i_crit_edge, label %if.then321.i

if.else317.i.if.end338.i_crit_edge:               ; preds = %if.else317.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end338.i

if.then321.i:                                     ; preds = %if.else317.i
  %and323.i = and i32 %bl.sroa.8.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and323.i)
  %tobool324.not.i = icmp eq i32 %and323.i, 0
  br i1 %tobool324.not.i, label %if.else333.i, label %if.then325.i

if.then325.i:                                     ; preds = %if.then321.i
  %call328.i = tail call fastcc i32 @iscsit_randomize_pdu_lists(ptr noundef %cmd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call328.i)
  %cmp329.i = icmp slt i32 %call328.i, 0
  br i1 %cmp329.i, label %if.then325.i.cleanup_crit_edge, label %if.then325.i.if.end338.i_crit_edge

if.then325.i.if.end338.i_crit_edge:               ; preds = %if.then325.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end338.i

if.then325.i.cleanup_crit_edge:                   ; preds = %if.then325.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else333.i:                                     ; preds = %if.then321.i
  %pdu_count.i577.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 31
  %236 = ptrtoint ptr %pdu_count.i577.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %pdu_count.i577.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %237)
  %cmp1.not.i578.i = icmp eq i32 %237, 0
  br i1 %cmp1.not.i578.i, label %if.else333.i.if.end338.i_crit_edge, label %if.else333.i.redo.preheader.i586.i_crit_edge

if.else333.i.redo.preheader.i586.i_crit_edge:     ; preds = %if.else333.i
  br label %redo.preheader.i586.i

if.else333.i.if.end338.i_crit_edge:               ; preds = %if.else333.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end338.i

redo.preheader.i586.i:                            ; preds = %redo.preheader.i586.i.redo.preheader.i586.i_crit_edge, %if.else333.i.redo.preheader.i586.i_crit_edge
  %seq_no.04.i581.i = phi i32 [ %241, %redo.preheader.i586.i.redo.preheader.i586.i_crit_edge ], [ 0, %if.else333.i.redo.preheader.i586.i_crit_edge ]
  %pdu_send_order.03.i582.i = phi i32 [ %inc.i592.i, %redo.preheader.i586.i.redo.preheader.i586.i_crit_edge ], [ 0, %if.else333.i.redo.preheader.i586.i_crit_edge ]
  %i.02.i583.i = phi i32 [ %inc7.i594.i, %redo.preheader.i586.i.redo.preheader.i586.i_crit_edge ], [ 0, %if.else333.i.redo.preheader.i586.i_crit_edge ]
  %238 = ptrtoint ptr %pdu_list.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %pdu_list.i, align 4
  %seq_no1.i584.i = getelementptr %struct.iscsi_pdu, ptr %239, i32 %i.02.i583.i, i32 7
  %240 = ptrtoint ptr %seq_no1.i584.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %seq_no1.i584.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %241, i32 %seq_no.04.i581.i)
  %cmp2.peel.i585.i = icmp eq i32 %241, %seq_no.04.i581.i
  %spec.select713.i = select i1 %cmp2.peel.i585.i, i32 %pdu_send_order.03.i582.i, i32 0
  %inc.i592.i = add i32 %spec.select713.i, 1
  %pdu_send_order5.i593.i = getelementptr %struct.iscsi_pdu, ptr %239, i32 %i.02.i583.i, i32 6
  %242 = ptrtoint ptr %pdu_send_order5.i593.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %spec.select713.i, ptr %pdu_send_order5.i593.i, align 8
  %inc7.i594.i = add nuw i32 %i.02.i583.i, 1
  %243 = ptrtoint ptr %pdu_count.i577.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %pdu_count.i577.i, align 4
  %cmp.i595.i = icmp ult i32 %inc7.i594.i, %244
  br i1 %cmp.i595.i, label %redo.preheader.i586.i.redo.preheader.i586.i_crit_edge, label %redo.preheader.i586.i.if.end338.i_crit_edge

redo.preheader.i586.i.if.end338.i_crit_edge:      ; preds = %redo.preheader.i586.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end338.i

redo.preheader.i586.i.redo.preheader.i586.i_crit_edge: ; preds = %redo.preheader.i586.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %redo.preheader.i586.i

if.end338.i:                                      ; preds = %redo.preheader.i586.i.if.end338.i_crit_edge, %if.else333.i.if.end338.i_crit_edge, %if.then325.i.if.end338.i_crit_edge, %if.else317.i.if.end338.i_crit_edge, %redo.preheader.i.i.if.end338.i_crit_edge, %if.else313.i.if.end338.i_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end338.i, %if.then325.i.cleanup_crit_edge, %if.end295.i.cleanup_crit_edge, %if.then281.i.cleanup_crit_edge, %if.then262.i.cleanup_crit_edge, %do.end89, %do.end, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end89 ], [ -12, %do.end ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -1, %if.then262.i.cleanup_crit_edge ], [ -1, %if.then281.i.cleanup_crit_edge ], [ -1, %if.then325.i.cleanup_crit_edge ], [ 0, %if.end338.i ], [ 0, %if.end295.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_tpg_get_node_attrib(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_pdu_holder(ptr nocapture noundef readonly %cmd, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdu_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 61
  %0 = ptrtoint ptr %pdu_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdu_list, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %pdu_count = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 31
  %2 = ptrtoint ptr %pdu_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pdu_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp28.not = icmp eq i32 %3, 0
  br i1 %cmp28.not, label %for.cond.preheader.do.end13_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.end13_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.029 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %offset3 = getelementptr %struct.iscsi_pdu, ptr %1, i32 %i.029, i32 5
  %4 = ptrtoint ptr %offset3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %offset3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %offset)
  %cmp4 = icmp eq i32 %5, %offset
  br i1 %cmp4, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %length6 = getelementptr %struct.iscsi_pdu, ptr %1, i32 %i.029, i32 4
  %6 = ptrtoint ptr %length6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length6, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %length)
  %cmp7 = icmp eq i32 %7, %length
  br i1 %cmp7, label %cleanup.loopexit, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.029, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.inc.do.end13_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end13

do.end13:                                         ; preds = %for.inc.do.end13_crit_edge, %for.cond.preheader.do.end13_crit_edge
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %8 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %init_task_tag, align 32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %9, i32 noundef %offset, i32 noundef %length) #10
  br label %cleanup

cleanup.loopexit:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2.le = getelementptr %struct.iscsi_pdu, ptr %1, i32 %i.029
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %do.end13, %do.end
  %retval.0 = phi ptr [ null, %do.end13 ], [ null, %do.end ], [ %arrayidx2.le, %cleanup.loopexit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_pdu_holder_for_seq(ptr nocapture noundef %cmd, ptr noundef %seq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdu_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 61
  %0 = ptrtoint ptr %pdu_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdu_list, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %2 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn1, align 8
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 68
  %4 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sess, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %5, i32 0, i32 47
  %6 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sess_ops, align 8
  %DataSequenceInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %DataSequenceInOrder to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %DataSequenceInOrder, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.else, label %redo.preheader

redo.preheader:                                   ; preds = %if.end
  %pdu_start = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 33
  %seq_no6 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 36
  %pdu_send_order24 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 32
  %pdu_count = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 31
  br label %redo

redo:                                             ; preds = %for.end.redo_crit_edge, %redo.preheader
  %10 = ptrtoint ptr %pdu_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdu_list, align 4
  %12 = ptrtoint ptr %pdu_start to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pdu_start, align 4
  %arrayidx = getelementptr %struct.iscsi_pdu, ptr %11, i32 %13
  %seq_no175 = getelementptr %struct.iscsi_pdu, ptr %11, i32 %13, i32 7
  %14 = ptrtoint ptr %seq_no175 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seq_no175, align 4
  %16 = ptrtoint ptr %seq_no6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %seq_no6, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp.not176 = icmp eq i32 %15, %17
  br i1 %cmp.not176, label %redo.for.end_crit_edge, label %redo.do.body7_crit_edge

redo.do.body7_crit_edge:                          ; preds = %redo
  br label %do.body7

redo.for.end_crit_edge:                           ; preds = %redo
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond:                                         ; preds = %do.end21
  %inc30 = add i32 %i.0177, 1
  %arrayidx5 = getelementptr %struct.iscsi_pdu, ptr %arrayidx, i32 %inc30
  %seq_no = getelementptr inbounds %struct.iscsi_pdu, ptr %arrayidx5, i32 0, i32 7
  %18 = ptrtoint ptr %seq_no to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %seq_no, align 4
  %20 = ptrtoint ptr %seq_no6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %seq_no6, align 16
  %cmp.not = icmp eq i32 %19, %21
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.cond.do.body7_crit_edge

for.cond.do.body7_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body7

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body7:                                         ; preds = %for.cond.do.body7_crit_edge, %redo.do.body7_crit_edge
  %seq_no179 = phi ptr [ %seq_no, %for.cond.do.body7_crit_edge ], [ %seq_no175, %redo.do.body7_crit_edge ]
  %arrayidx5178 = phi ptr [ %arrayidx5, %for.cond.do.body7_crit_edge ], [ %arrayidx, %redo.do.body7_crit_edge ]
  %i.0177 = phi i32 [ %inc30, %for.cond.do.body7_crit_edge ], [ 0, %redo.do.body7_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_get_pdu_holder_for_seq.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_get_pdu_holder_for_seq, %if.then13)) #6
          to label %do.end21 [label %if.then13], !srcloc !80

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %seq_no179 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %seq_no179, align 4
  %pdu_send_order = getelementptr inbounds %struct.iscsi_pdu, ptr %arrayidx5178, i32 0, i32 6
  %24 = ptrtoint ptr %pdu_send_order to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pdu_send_order, align 8
  %offset = getelementptr inbounds %struct.iscsi_pdu, ptr %arrayidx5178, i32 0, i32 5
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %offset, align 4
  %length = getelementptr inbounds %struct.iscsi_pdu, ptr %arrayidx5178, i32 0, i32 4
  %28 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_get_pdu_holder_for_seq.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.13, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29) #6
  br label %do.end21

do.end21:                                         ; preds = %if.then13, %do.body7
  %pdu_send_order23 = getelementptr inbounds %struct.iscsi_pdu, ptr %arrayidx5178, i32 0, i32 6
  %30 = ptrtoint ptr %pdu_send_order23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pdu_send_order23, align 8
  %32 = ptrtoint ptr %pdu_send_order24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pdu_send_order24, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp25 = icmp eq i32 %31, %33
  br i1 %cmp25, label %if.then26, label %for.cond

if.then26:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %31, 1
  %34 = ptrtoint ptr %pdu_send_order24 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %inc, ptr %pdu_send_order24, align 32
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %redo.for.end_crit_edge
  %.lcssa = phi i32 [ %15, %redo.for.end_crit_edge ], [ %19, %for.cond.for.end_crit_edge ]
  %35 = ptrtoint ptr %pdu_send_order24 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pdu_send_order24, align 32
  %37 = ptrtoint ptr %pdu_start to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pdu_start, align 4
  %add = add i32 %38, %36
  store i32 %add, ptr %pdu_start, align 4
  store i32 0, ptr %pdu_send_order24, align 32
  %inc35 = add i32 %.lcssa, 1
  %39 = ptrtoint ptr %seq_no6 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %inc35, ptr %seq_no6, align 16
  %40 = ptrtoint ptr %pdu_count to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pdu_count, align 4
  %cmp37 = icmp ult i32 %add, %41
  br i1 %cmp37, label %for.end.redo_crit_edge, label %do.end42

for.end.redo_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %redo

do.end42:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %42 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %init_task_tag, align 32
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %43, i32 noundef 0) #10
  br label %cleanup

if.else:                                          ; preds = %if.end
  %tobool46.not = icmp eq ptr %seq, null
  br i1 %tobool46.not, label %do.end50, label %do.body54

do.end50:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %cleanup

do.body54:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_get_pdu_holder_for_seq.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_get_pdu_holder_for_seq, %if.then66)) #6
          to label %do.end72 [label %if.then66], !srcloc !80

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #8
  %pdu_start67 = getelementptr inbounds %struct.iscsi_seq, ptr %seq, i32 0, i32 7
  %44 = ptrtoint ptr %pdu_start67 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pdu_start67, align 4
  %pdu_count68 = getelementptr inbounds %struct.iscsi_seq, ptr %seq, i32 0, i32 8
  %46 = ptrtoint ptr %pdu_count68 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pdu_count68, align 32
  %seq_no69 = getelementptr inbounds %struct.iscsi_seq, ptr %seq, i32 0, i32 14
  %48 = ptrtoint ptr %seq_no69 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %seq_no69, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_get_pdu_holder_for_seq.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.20, i32 noundef %45, i32 noundef %47, i32 noundef %49) #6
  br label %do.end72

do.end72:                                         ; preds = %if.then66, %do.body54
  %50 = ptrtoint ptr %pdu_list to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdu_list, align 4
  %pdu_start74 = getelementptr inbounds %struct.iscsi_seq, ptr %seq, i32 0, i32 7
  %52 = ptrtoint ptr %pdu_start74 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pdu_start74, align 4
  %arrayidx75 = getelementptr %struct.iscsi_pdu, ptr %51, i32 %53
  %pdu_send_order76 = getelementptr inbounds %struct.iscsi_seq, ptr %seq, i32 0, i32 11
  %54 = ptrtoint ptr %pdu_send_order76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pdu_send_order76, align 4
  %pdu_count77 = getelementptr inbounds %struct.iscsi_seq, ptr %seq, i32 0, i32 8
  %56 = ptrtoint ptr %pdu_count77 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pdu_count77, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %57)
  %cmp78 = icmp eq i32 %55, %57
  br i1 %cmp78, label %do.end82, label %for.cond89.preheader

for.cond89.preheader:                             ; preds = %do.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp91180.not = icmp eq i32 %57, 0
  br i1 %cmp91180.not, label %for.cond89.preheader.do.end107_crit_edge, label %for.cond89.preheader.for.body92_crit_edge

for.cond89.preheader.for.body92_crit_edge:        ; preds = %for.cond89.preheader
  br label %for.body92

for.cond89.preheader.do.end107_crit_edge:         ; preds = %for.cond89.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end107

do.end82:                                         ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  %init_task_tag84 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %58 = ptrtoint ptr %init_task_tag84 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %init_task_tag84, align 32
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %59, i32 noundef %55, i32 noundef %55) #10
  br label %cleanup

for.cond89:                                       ; preds = %for.body92
  %inc103 = add nuw i32 %i.1181, 1
  %exitcond.not = icmp eq i32 %inc103, %57
  br i1 %exitcond.not, label %for.cond89.do.end107_crit_edge, label %for.cond89.for.body92_crit_edge

for.cond89.for.body92_crit_edge:                  ; preds = %for.cond89
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body92

for.cond89.do.end107_crit_edge:                   ; preds = %for.cond89
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end107

for.body92:                                       ; preds = %for.cond89.for.body92_crit_edge, %for.cond89.preheader.for.body92_crit_edge
  %i.1181 = phi i32 [ %inc103, %for.cond89.for.body92_crit_edge ], [ 0, %for.cond89.preheader.for.body92_crit_edge ]
  %arrayidx93 = getelementptr %struct.iscsi_pdu, ptr %arrayidx75, i32 %i.1181
  %pdu_send_order94 = getelementptr inbounds %struct.iscsi_pdu, ptr %arrayidx93, i32 0, i32 6
  %60 = ptrtoint ptr %pdu_send_order94 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pdu_send_order94, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %55)
  %cmp96 = icmp eq i32 %61, %55
  br i1 %cmp96, label %if.then97, label %for.cond89

if.then97:                                        ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #8
  %inc99 = add i32 %55, 1
  %62 = ptrtoint ptr %pdu_send_order76 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %inc99, ptr %pdu_send_order76, align 4
  br label %cleanup

do.end107:                                        ; preds = %for.cond89.do.end107_crit_edge, %for.cond89.preheader.do.end107_crit_edge
  %init_task_tag109 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %63 = ptrtoint ptr %init_task_tag109 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %init_task_tag109, align 32
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %64, i32 noundef %55) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end107, %if.then97, %do.end82, %do.end50, %do.end42, %if.then26, %do.end
  %retval.0 = phi ptr [ %arrayidx5178, %if.then26 ], [ null, %do.end42 ], [ null, %do.end82 ], [ %arrayidx93, %if.then97 ], [ null, %do.end107 ], [ null, %do.end50 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_seq_holder(ptr nocapture noundef readonly %cmd, i32 noundef %offset, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 63
  %0 = ptrtoint ptr %seq_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seq_list, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %seq_count = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 35
  %2 = ptrtoint ptr %seq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp52.not = icmp eq i32 %3, 0
  br i1 %cmp52.not, label %for.cond.preheader.do.end30_crit_edge, label %do.body1.lr.ph

for.cond.preheader.do.end30_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

do.body1.lr.ph:                                   ; preds = %for.cond.preheader
  %add22 = add i32 %length, %offset
  br label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %cleanup

do.body1:                                         ; preds = %for.inc.do.body1_crit_edge, %do.body1.lr.ph
  %i.053 = phi i32 [ 0, %do.body1.lr.ph ], [ %inc, %for.inc.do.body1_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_get_seq_holder.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_get_seq_holder, %if.then7)) #6
          to label %do.end15 [label %if.then7], !srcloc !80

if.then7:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %seq_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %seq_list, align 4
  %orig_offset = getelementptr %struct.iscsi_seq, ptr %5, i32 %i.053, i32 10
  %6 = ptrtoint ptr %orig_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %orig_offset, align 8
  %xfer_len = getelementptr %struct.iscsi_seq, ptr %5, i32 %i.053, i32 15
  %8 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xfer_len, align 4
  %seq_no = getelementptr %struct.iscsi_seq, ptr %5, i32 %i.053, i32 14
  %10 = ptrtoint ptr %seq_no to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seq_no, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_get_seq_holder.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.29, i32 noundef %7, i32 noundef %9, i32 noundef %11) #6
  br label %do.end15

do.end15:                                         ; preds = %if.then7, %do.body1
  %12 = ptrtoint ptr %seq_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %seq_list, align 4
  %orig_offset18 = getelementptr %struct.iscsi_seq, ptr %13, i32 %i.053, i32 10
  %14 = ptrtoint ptr %orig_offset18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %orig_offset18, align 8
  %xfer_len21 = getelementptr %struct.iscsi_seq, ptr %13, i32 %i.053, i32 15
  %16 = ptrtoint ptr %xfer_len21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %xfer_len21, align 4
  %add = add i32 %17, %15
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %add22)
  %cmp23.not = icmp ult i32 %add, %add22
  br i1 %cmp23.not, label %for.inc, label %if.then24

if.then24:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx17 = getelementptr %struct.iscsi_seq, ptr %13, i32 %i.053
  br label %cleanup

for.inc:                                          ; preds = %do.end15
  %inc = add nuw i32 %i.053, 1
  %18 = ptrtoint ptr %seq_count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %seq_count, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.inc.do.body1_crit_edge, label %for.inc.do.end30_crit_edge

for.inc.do.end30_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end30

for.inc.do.body1_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1

do.end30:                                         ; preds = %for.inc.do.end30_crit_edge, %for.cond.preheader.do.end30_crit_edge
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %20 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %init_task_tag, align 32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %21, i32 noundef %offset, i32 noundef %length) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.then24, %do.end
  %retval.0 = phi ptr [ %arrayidx17, %if.then24 ], [ null, %do.end30 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsit_randomize_seq_lists(ptr nocapture noundef readonly %cmd, i8 noundef zeroext %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %seq_count1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 35
  %0 = ptrtoint ptr %seq_count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seq_count1, align 4
  %2 = zext i8 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %type, label %entry.if.end10_crit_edge [
    i8 2, label %entry.if.then_crit_edge
    i8 3, label %entry.if.then_crit_edge57
    i8 4, label %if.then9
  ]

entry.if.then_crit_edge57:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge57
  %dec = add i32 %1, -1
  br label %if.end10

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %1, -2
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then, %entry.if.end10_crit_edge
  %seq_count.0 = phi i32 [ %dec, %if.then ], [ %sub, %if.then9 ], [ %1, %entry.if.end10_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seq_count.0)
  %tobool.not = icmp eq i32 %seq_count.0, 0
  br i1 %tobool.not, label %if.end10.cleanup_crit_edge, label %if.end12

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end10
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %seq_count.0, i32 4) #6
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %if.end12.do.end_crit_edge, label %if.end7.i.i, !prof !79

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end7.i.i:                                      ; preds = %if.end12
  %5 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %5, i32 noundef 3520) #9
  %tobool13.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool13.not, label %if.end7.i.i.do.end_crit_edge, label %if.end16

if.end7.i.i.do.end_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end7.i.i.do.end_crit_edge, %if.end12.do.end_crit_edge
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end7.i.i
  tail call fastcc void @iscsit_create_random_array(ptr noundef nonnull %call8.i.i, i32 noundef %seq_count.0)
  %6 = ptrtoint ptr %seq_count1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %seq_count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1853.not = icmp eq i32 %7, 0
  br i1 %cmp1853.not, label %if.end16.for.end_crit_edge, label %for.body.lr.ph

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end16
  %seq_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 63
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.056 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc.for.body_crit_edge ]
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc28, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %seq_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %seq_list, align 4
  %type20 = getelementptr %struct.iscsi_seq, ptr %9, i32 %i.054, i32 2
  %10 = ptrtoint ptr %type20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp21.not = icmp eq i32 %11, 3
  br i1 %cmp21.not, label %if.end24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end24:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %j.056, 1
  %arrayidx25 = getelementptr i32, ptr %call8.i.i, i32 %j.056
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx25, align 4
  %seq_send_order = getelementptr %struct.iscsi_seq, ptr %9, i32 %i.054, i32 13
  %14 = ptrtoint ptr %seq_send_order to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %seq_send_order, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end24, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %j.056, %for.body.for.inc_crit_edge ], [ %inc, %if.end24 ]
  %inc28 = add nuw i32 %i.054, 1
  %15 = ptrtoint ptr %seq_count1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %seq_count1, align 4
  %cmp18 = icmp ult i32 %inc28, %16
  br i1 %cmp18, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %do.end ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsit_randomize_pdu_lists(ptr nocapture noundef readonly %cmd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pdu_count1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 31
  %0 = ptrtoint ptr %pdu_count1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pdu_count1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp60.not = icmp eq i32 %1, 0
  br i1 %cmp60.not, label %entry.cleanup_crit_edge, label %redo.preheader.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

redo.preheader.lr.ph:                             ; preds = %entry
  %pdu_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 61
  br label %redo.preheader

redo.preheader:                                   ; preds = %if.then.redo.preheader_crit_edge, %redo.preheader.lr.ph
  %seq_offset.065 = phi i32 [ 0, %redo.preheader.lr.ph ], [ %seq_offset.1.lcssa, %if.then.redo.preheader_crit_edge ]
  %seq_no.064 = phi i32 [ 0, %redo.preheader.lr.ph ], [ %seq_no.1.lcssa, %if.then.redo.preheader_crit_edge ]
  %seq_count.063 = phi i32 [ 0, %redo.preheader.lr.ph ], [ %inc, %if.then.redo.preheader_crit_edge ]
  %pdu_count.061 = phi i32 [ 0, %redo.preheader.lr.ph ], [ %inc17, %if.then.redo.preheader_crit_edge ]
  %2 = ptrtoint ptr %pdu_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdu_list, align 4
  %seq_no253 = getelementptr %struct.iscsi_pdu, ptr %3, i32 %pdu_count.061, i32 7
  %4 = ptrtoint ptr %seq_no253 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seq_no253, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %seq_no.064)
  %cmp354 = icmp eq i32 %5, %seq_no.064
  br i1 %cmp354, label %redo.preheader.if.then_crit_edge, label %redo.preheader.if.end_crit_edge

redo.preheader.if.end_crit_edge:                  ; preds = %redo.preheader
  br label %if.end

redo.preheader.if.then_crit_edge:                 ; preds = %redo.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %for.end.if.then_crit_edge, %redo.preheader.if.then_crit_edge
  %seq_count.1.lcssa = phi i32 [ %seq_count.063, %redo.preheader.if.then_crit_edge ], [ 0, %for.end.if.then_crit_edge ]
  %seq_no.1.lcssa = phi i32 [ %seq_no.064, %redo.preheader.if.then_crit_edge ], [ %inc15, %for.end.if.then_crit_edge ]
  %seq_offset.1.lcssa = phi i32 [ %seq_offset.065, %redo.preheader.if.then_crit_edge ], [ %add14, %for.end.if.then_crit_edge ]
  %inc = add i32 %seq_count.1.lcssa, 1
  %inc17 = add nuw i32 %pdu_count.061, 1
  %6 = ptrtoint ptr %pdu_count1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pdu_count1, align 4
  %cmp = icmp ult i32 %inc17, %7
  br i1 %cmp, label %if.then.redo.preheader_crit_edge, label %for.end18

if.then.redo.preheader_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %redo.preheader

if.end:                                           ; preds = %for.end.if.end_crit_edge, %redo.preheader.if.end_crit_edge
  %seq_offset.157 = phi i32 [ %add14, %for.end.if.end_crit_edge ], [ %seq_offset.065, %redo.preheader.if.end_crit_edge ]
  %seq_no.156 = phi i32 [ %inc15, %for.end.if.end_crit_edge ], [ %seq_no.064, %redo.preheader.if.end_crit_edge ]
  %seq_count.155 = phi i32 [ 0, %for.end.if.end_crit_edge ], [ %seq_count.063, %redo.preheader.if.end_crit_edge ]
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %seq_count.155, i32 4) #6
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %if.end.do.end_crit_edge, label %if.end7.i.i, !prof !79

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end7.i.i:                                      ; preds = %if.end
  %10 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.do.end_crit_edge, label %if.end6

if.end7.i.i.do.end_crit_edge:                     ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %if.end7.i.i.do.end_crit_edge, %if.end.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end6:                                          ; preds = %if.end7.i.i
  tail call fastcc void @iscsit_create_random_array(ptr noundef nonnull %call8.i.i, i32 noundef %seq_count.155)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %seq_count.155)
  %cmp851.not = icmp eq i32 %seq_count.155, 0
  br i1 %cmp851.not, label %if.end6.for.end_crit_edge, label %if.end6.for.body9_crit_edge

if.end6.for.body9_crit_edge:                      ; preds = %if.end6
  br label %for.body9

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %if.end6.for.body9_crit_edge
  %i.052 = phi i32 [ %inc13, %for.body9.for.body9_crit_edge ], [ 0, %if.end6.for.body9_crit_edge ]
  %arrayidx10 = getelementptr i32, ptr %call8.i.i, i32 %i.052
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx10, align 4
  %13 = ptrtoint ptr %pdu_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdu_list, align 4
  %add = add i32 %i.052, %seq_offset.157
  %pdu_send_order = getelementptr %struct.iscsi_pdu, ptr %14, i32 %add, i32 6
  %15 = ptrtoint ptr %pdu_send_order to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %12, ptr %pdu_send_order, align 8
  %inc13 = add nuw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc13, %seq_count.155
  br i1 %exitcond.not, label %for.body9.for.end_crit_edge, label %for.body9.for.body9_crit_edge

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9

for.body9.for.end_crit_edge:                      ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body9.for.end_crit_edge, %if.end6.for.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #6
  %add14 = add i32 %seq_offset.157, %seq_count.155
  %inc15 = add i32 %seq_no.156, 1
  %16 = ptrtoint ptr %pdu_list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdu_list, align 4
  %seq_no2 = getelementptr %struct.iscsi_pdu, ptr %17, i32 %pdu_count.061, i32 7
  %18 = ptrtoint ptr %seq_no2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %seq_no2, align 4
  %cmp3 = icmp eq i32 %19, %inc15
  br i1 %cmp3, label %for.end.if.then_crit_edge, label %for.end.if.end_crit_edge

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

for.end.if.then_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

for.end18:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %tobool19.not = icmp eq i32 %inc, 0
  br i1 %tobool19.not, label %for.end18.cleanup_crit_edge, label %if.then20

for.end18.cleanup_crit_edge:                      ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then20:                                        ; preds = %for.end18
  %20 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc, i32 4) #6
  %21 = extractvalue { i32, i1 } %20, 1
  br i1 %21, label %if.then20.do.end26_crit_edge, label %if.end7.i.i31, !prof !79

if.then20.do.end26_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

if.end7.i.i31:                                    ; preds = %if.then20
  %22 = extractvalue { i32, i1 } %20, 0
  %call8.i.i30 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3520) #9
  %tobool22.not = icmp eq ptr %call8.i.i30, null
  br i1 %tobool22.not, label %if.end7.i.i31.do.end26_crit_edge, label %for.body32.preheader

if.end7.i.i31.do.end26_crit_edge:                 ; preds = %if.end7.i.i31
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end26

do.end26:                                         ; preds = %if.end7.i.i31.do.end26_crit_edge, %if.then20.do.end26_crit_edge
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #10
  br label %cleanup

for.body32.preheader:                             ; preds = %if.end7.i.i31
  tail call fastcc void @iscsit_create_random_array(ptr noundef nonnull %call8.i.i30, i32 noundef %inc)
  %pdu_list34 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 61
  br label %for.body32

for.body32:                                       ; preds = %for.body32.for.body32_crit_edge, %for.body32.preheader
  %i.168 = phi i32 [ %inc39, %for.body32.for.body32_crit_edge ], [ 0, %for.body32.preheader ]
  %arrayidx33 = getelementptr i32, ptr %call8.i.i30, i32 %i.168
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx33, align 4
  %25 = ptrtoint ptr %pdu_list34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdu_list34, align 4
  %add35 = add i32 %i.168, %seq_offset.1.lcssa
  %pdu_send_order37 = getelementptr %struct.iscsi_pdu, ptr %26, i32 %add35, i32 6
  %27 = ptrtoint ptr %pdu_send_order37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %24, ptr %pdu_send_order37, align 8
  %inc39 = add nuw i32 %i.168, 1
  %exitcond69.not = icmp eq i32 %i.168, %seq_count.1.lcssa
  br i1 %exitcond69.not, label %for.end40, label %for.body32.for.body32_crit_edge

for.body32.for.body32_crit_edge:                  ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body32

for.end40:                                        ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call8.i.i30) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end40, %do.end26, %for.end18.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end ], [ -12, %do.end26 ], [ 0, %for.end40 ], [ 0, %for.end18.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iscsit_create_random_array(ptr nocapture noundef %array, i32 noundef %count) unnamed_addr #0 align 64 {
entry:
  %j = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %j) #6
  %0 = ptrtoint ptr %j to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %j, align 4, !annotation !81
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp = icmp eq i32 %count, 1
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp153.not = icmp eq i32 %count, 0
  br i1 %cmp153.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.redo.preheader_crit_edge

for.cond.preheader.redo.preheader_crit_edge:      ; preds = %for.cond.preheader
  br label %redo.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %array to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %array, align 4
  br label %cleanup

redo.preheader:                                   ; preds = %for.end.redo.preheader_crit_edge, %for.cond.preheader.redo.preheader_crit_edge
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.end.redo.preheader_crit_edge ], [ 1, %for.cond.preheader.redo.preheader_crit_edge ]
  %i.054 = phi i32 [ %add, %for.end.redo.preheader_crit_edge ], [ 0, %for.cond.preheader.redo.preheader_crit_edge ]
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv, i32 1)
  call void @get_random_bytes(ptr noundef nonnull %j, i32 noundef 4) #6
  %2 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %j, align 4
  %sub48 = sub i32 10001, %3
  %rem49 = urem i32 %sub48, %count
  store i32 %rem49, ptr %j, align 4
  %add = add nuw i32 %i.054, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %i.054)
  %cmp342 = icmp ult i32 %i.054, 2147483647
  br i1 %cmp342, label %redo.preheader.for.body4.lr.ph_crit_edge, label %redo.preheader.for.end_crit_edge

redo.preheader.for.end_crit_edge:                 ; preds = %redo.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

redo.preheader.for.body4.lr.ph_crit_edge:         ; preds = %redo.preheader
  br label %for.body4.lr.ph

for.cond14.preheader:                             ; preds = %for.end
  br i1 %cmp153.not, label %for.cond14.preheader.cleanup_crit_edge, label %for.cond14.preheader.for.body16_crit_edge

for.cond14.preheader.for.body16_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body16

for.cond14.preheader.cleanup_crit_edge:           ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

redo.loopexit:                                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %j to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %7, ptr %j, align 4
  call void @get_random_bytes(ptr noundef nonnull %j, i32 noundef 4) #6
  %5 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %j, align 4
  %sub = sub i32 10001, %6
  %rem = urem i32 %sub, %count
  store i32 %rem, ptr %j, align 4
  br label %for.body4.lr.ph

for.body4.lr.ph:                                  ; preds = %redo.loopexit, %redo.preheader.for.body4.lr.ph_crit_edge
  %j.promoted51 = phi i32 [ %rem, %redo.loopexit ], [ %rem49, %redo.preheader.for.body4.lr.ph_crit_edge ]
  %7 = or i32 %j.promoted51, -2147483648
  br label %for.body4

for.cond2:                                        ; preds = %for.body4
  %inc = add nuw nsw i32 %k.044, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.cond2.for.end_crit_edge, label %for.cond2.for.body4_crit_edge

for.cond2.for.body4_crit_edge:                    ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body4

for.body4:                                        ; preds = %for.cond2.for.body4_crit_edge, %for.body4.lr.ph
  %k.044 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.cond2.for.body4_crit_edge ]
  %arrayidx5 = getelementptr i32, ptr %array, i32 %k.044
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp slt i32 %9, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp7 = icmp eq i32 %9, %7
  %or.cond = select i1 %tobool.not, i1 %cmp7, i1 false
  br i1 %or.cond, label %redo.loopexit, label %for.cond2

for.cond2.for.end_crit_edge:                      ; preds = %for.cond2
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %j to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %j, align 4
  br label %for.end

for.end:                                          ; preds = %for.cond2.for.end_crit_edge, %redo.preheader.for.end_crit_edge
  %11 = ptrtoint ptr %j to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %j, align 4
  %arrayidx10 = getelementptr i32, ptr %array, i32 %i.054
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx10, align 4
  %indvars.iv.next = add i32 %indvars.iv, 1
  %exitcond58.not = icmp eq i32 %add, %count
  br i1 %exitcond58.not, label %for.cond14.preheader, label %for.end.redo.preheader_crit_edge

for.end.redo.preheader_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %redo.preheader

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.cond14.preheader.for.body16_crit_edge
  %i.156 = phi i32 [ %inc20, %for.body16.for.body16_crit_edge ], [ 0, %for.cond14.preheader.for.body16_crit_edge ]
  %arrayidx17 = getelementptr i32, ptr %array, i32 %i.156
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx17, align 4
  %and18 = and i32 %15, 2147483647
  store i32 %and18, ptr %arrayidx17, align 4
  %inc20 = add nuw i32 %i.156, 1
  %exitcond59.not = icmp eq i32 %inc20, %count
  br i1 %exitcond59.not, label %for.body16.cleanup_crit_edge, label %for.body16.for.body16_crit_edge

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body16

for.body16.cleanup_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body16.cleanup_crit_edge, %for.cond14.preheader.cleanup_crit_edge, %if.then, %for.cond.preheader.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %j) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !63, !65, !66, !67, !69}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 540, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @iscsit_build_pdu_and_seq_lists._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @iscsit_build_pdu_and_seq_lists._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 550, i32 4}
!8 = !{ptr @iscsit_build_pdu_and_seq_lists._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @iscsit_build_pdu_and_seq_lists._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 570, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @iscsit_get_pdu_holder._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @iscsit_get_pdu_holder._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 580, i32 2}
!17 = !{ptr @iscsit_get_pdu_holder._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @iscsit_get_pdu_holder._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 594, i32 3}
!21 = !{ptr @iscsit_get_pdu_holder_for_seq._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @iscsit_get_pdu_holder_for_seq._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 603, i32 4}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @iscsit_get_pdu_holder_for_seq.__UNIQUE_ID_ddebug225, !24, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 622, i32 3}
!29 = !{ptr @iscsit_get_pdu_holder_for_seq._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @iscsit_get_pdu_holder_for_seq._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 628, i32 4}
!33 = !{ptr @iscsit_get_pdu_holder_for_seq._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @iscsit_get_pdu_holder_for_seq._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 632, i32 3}
!37 = !{ptr @iscsit_get_pdu_holder_for_seq.__UNIQUE_ID_ddebug226, !36, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 639, i32 4}
!40 = !{ptr @iscsit_get_pdu_holder_for_seq._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @iscsit_get_pdu_holder_for_seq._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 653, i32 3}
!44 = !{ptr @iscsit_get_pdu_holder_for_seq._entry.24, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @iscsit_get_pdu_holder_for_seq._entry_ptr.26, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 670, i32 3}
!48 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @iscsit_get_seq_holder._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @iscsit_get_seq_holder._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 675, i32 3}
!53 = !{ptr @iscsit_get_seq_holder.__UNIQUE_ID_ddebug227, !52, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!54 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 686, i32 2}
!56 = !{ptr @iscsit_get_seq_holder._entry.30, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @iscsit_get_seq_holder._entry_ptr.32, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.33, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 186, i32 3}
!60 = !{ptr @.str.34, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @iscsit_randomize_seq_lists._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @iscsit_randomize_seq_lists._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 134, i32 4}
!65 = !{ptr @iscsit_randomize_pdu_lists._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @iscsit_randomize_pdu_lists._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @iscsit_randomize_pdu_lists._entry.36, !68, !"_entry", i1 false, i1 false}
!68 = !{!"../drivers/target/iscsi/iscsi_target_seq_pdu_list.c", i32 154, i32 4}
!69 = !{ptr @iscsit_randomize_pdu_lists._entry_ptr.37, !68, !"_entry_ptr", i1 false, i1 false}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"branch_weights", i32 1, i32 2000}
!80 = !{i64 2148216673, i64 2148216678, i64 2148216691, i64 2148216735, i64 2148216769, i64 2148216790}
!81 = !{!"auto-init"}
