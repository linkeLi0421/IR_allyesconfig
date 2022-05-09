; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/iscsi_target_erl2.c_pt.bc'
source_filename = "../drivers/target/iscsi/iscsi_target_erl2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iscsi_cmd = type { i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, [52 x i8], %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.timer_list, ptr, ptr, [5 x %struct.kvec], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.se_cmd, [98 x i8], i32, [4 x i8], ptr, i32, i32, i32, [124 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.iscsi_conn_ops = type { i8, i8, i32, i32, i32, i32 }
%struct.iscsi_session = type { i8, [6 x i8], i32, i8, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, i32, %struct.atomic_t, %struct.list_head, i32, [8 x i8], i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.timer_list, ptr, ptr, ptr, [12 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iscsi_sess_ops = type { [224 x i8], [256 x i8], [224 x i8], [256 x i8], [256 x i8], i16, i16, i8, i8, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.iscsi_conn_recovery = type { i16, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, ptr, %struct.list_head, [124 x i8] }

@iscsit_remove_active_connection_recovery_entry.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iscsi_target_mod\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"iscsit_remove_active_connection_recovery_entry\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/target/iscsi/iscsi_target_erl2.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Decremented connection recovery count to %u for SID: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@iscsit_remove_cmd_from_connection_recovery._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013struct iscsi_conn_recovery pointer for ITT: 0x%08x is NULL!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"iscsit_remove_cmd_from_connection_recovery\00", [53 x i8] zeroinitializer }, align 32
@iscsit_remove_cmd_from_connection_recovery._entry_ptr = internal global ptr @iscsit_remove_cmd_from_connection_recovery._entry, section ".printk_index", align 4
@iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"iscsit_discard_cr_cmds_by_expstatsn\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Dropping Acknowledged ITT: 0x%08x, StatSN: 0x%08x, CID: %hu.\0A\00", [34 x i8] zeroinitializer }, align 32
@iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Dropped %u total acknowledged commands on CID: %hu less than old ExpStatSN: 0x%08x\0A\00", [44 x i8] zeroinitializer }, align 32
@iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.9, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"No commands to be reassigned for failed connection CID: %hu on SID: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"iSCSI connection recovery successful for CID: %hu on SID: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@iscsit_discard_unacknowledged_ooo_cmdsns_for_conn.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 70, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"iscsit_discard_unacknowledged_ooo_cmdsns_for_conn\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"Dropping unacknowledged CmdSN: 0x%08x during connection recovery on CID: %hu\0A\00", [50 x i8] zeroinitializer }, align 32
@iscsit_discard_unacknowledged_ooo_cmdsns_for_conn.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.13, i8 0, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Dropped %u total unacknowledged commands on CID: %hu for ExpCmdSN: 0x%08x.\0A\00", [52 x i8] zeroinitializer }, align 32
@iscsit_prepare_cmds_for_reallegiance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 322, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013Unable to allocate memory for struct iscsi_conn_recovery.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"iscsit_prepare_cmds_for_reallegiance\00", [59 x i8] zeroinitializer }, align 32
@iscsit_prepare_cmds_for_reallegiance._entry_ptr = internal global ptr @iscsit_prepare_cmds_for_reallegiance._entry, section ".printk_index", align 4
@iscsit_prepare_cmds_for_reallegiance.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&cr->conn_recovery_cmd_lock\00", [36 x i8] zeroinitializer }, align 32
@iscsit_prepare_cmds_for_reallegiance.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.17, i8 0, i8 86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Not performing reallegiance on Opcode: 0x%02x, ITT: 0x%08x, CmdSN: 0x%08x, CID: %hu\0A\00", [43 x i8] zeroinitializer }, align 32
@iscsit_prepare_cmds_for_reallegiance.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.18, i8 0, i8 94, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"Preparing Opcode: 0x%02x, ITT: 0x%08x, CmdSN: 0x%08x, StatSN: 0x%08x, CID: %hu for reallegiance.\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iscsit_attach_inactive_connection_recovery_entry.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 24, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"iscsit_attach_inactive_connection_recovery_entry\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Incremented connection recovery count to %u for SID: %u\0A\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 31, i64 41]
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 178, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 206, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 235, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 247, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 252, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 257, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 281, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 301, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 321, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 327, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 342, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 375, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [44 x i8] c"../drivers/target/iscsi/iscsi_target_erl2.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 95, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @iscsit_prepare_cmds_for_reallegiance._entry, ptr @iscsit_prepare_cmds_for_reallegiance._entry_ptr, ptr @iscsit_remove_cmd_from_connection_recovery._entry, ptr @iscsit_remove_cmd_from_connection_recovery._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @iscsit_prepare_cmds_for_reallegiance.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_remove_cmd_from_connection_recovery._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_prepare_cmds_for_reallegiance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_prepare_cmds_for_reallegiance.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_create_conn_recovery_datain_values(ptr nocapture noundef %cmd, i32 noundef %exp_data_sn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %next_burst_len = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 42
  %2 = ptrtoint ptr %next_burst_len to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %next_burst_len, align 8
  %read_data_done = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 39
  %3 = ptrtoint ptr %read_data_done to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %read_data_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %exp_data_sn)
  %cmp32.not = icmp eq i32 %exp_data_sn, 0
  br i1 %cmp32.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %conn_ops = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 59
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %data_sn.033 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %4 = ptrtoint ptr %next_burst_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_burst_len, align 8
  %6 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %conn_ops, align 16
  %MaxRecvDataSegmentLength = getelementptr inbounds %struct.iscsi_conn_ops, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %MaxRecvDataSegmentLength to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %MaxRecvDataSegmentLength, align 4
  %add = add i32 %9, %5
  %10 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sess, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %11, i32 0, i32 47
  %12 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sess_ops, align 8
  %MaxBurstLength = getelementptr inbounds %struct.iscsi_sess_ops, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %MaxBurstLength to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %MaxBurstLength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %15)
  %cmp3 = icmp ult i32 %add, %15
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %read_data_done to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %read_data_done, align 4
  %add7 = add i32 %17, %9
  store i32 %add7, ptr %read_data_done, align 4
  %18 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conn_ops, align 16
  %MaxRecvDataSegmentLength9 = getelementptr inbounds %struct.iscsi_conn_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %MaxRecvDataSegmentLength9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %MaxRecvDataSegmentLength9, align 4
  %add11 = add i32 %21, %5
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %sub = sub i32 %15, %5
  %22 = ptrtoint ptr %read_data_done to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %read_data_done, align 4
  %add17 = add i32 %sub, %23
  store i32 %add17, ptr %read_data_done, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ 0, %if.else ], [ %add11, %if.then ]
  %24 = ptrtoint ptr %next_burst_len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %storemerge, ptr %next_burst_len, align 8
  %inc = add nuw i32 %data_sn.033, 1
  %exitcond.not = icmp eq i32 %inc, %exp_data_sn
  br i1 %exitcond.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_create_conn_recovery_dataout_values(ptr nocapture noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %data_sn = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 21
  %2 = ptrtoint ptr %data_sn to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data_sn, align 4
  %next_burst_len = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 42
  %3 = ptrtoint ptr %next_burst_len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %next_burst_len, align 8
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %write_data_done2 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  %4 = ptrtoint ptr %write_data_done2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_data_done2, align 128
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %write_data_done.0 = phi i32 [ 0, %entry ], [ %add, %while.body.while.cond_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %write_data_done.0)
  %cmp = icmp ugt i32 %5, %write_data_done.0
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond
  %6 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sess, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %7, i32 0, i32 47
  %8 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sess_ops, align 8
  %MaxBurstLength = getelementptr inbounds %struct.iscsi_sess_ops, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %MaxBurstLength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %MaxBurstLength, align 4
  %add = add i32 %11, %write_data_done.0
  %cmp4.not = icmp ugt i32 %add, %5
  br i1 %cmp4.not, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %12 = ptrtoint ptr %write_data_done2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %write_data_done.0, ptr %write_data_done2, align 128
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_inactive_connection_recovery_entry(ptr noundef %sess, i16 noundef zeroext %cid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_i_lock = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %cr_i_lock) #5
  %cr_inactive_list = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 36
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %cr_inactive_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %cr_inactive_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %cr.0 = getelementptr i8, ptr %.pn, i32 -124
  %1 = ptrtoint ptr %cr.0 to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %cr.0, align 128
  %cmp4 = icmp eq i16 %2, %cid
  br i1 %cmp4, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %cr.0.le = getelementptr i8, ptr %.pn, i32 -124
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %cr.0.le, %if.then ], [ null, %for.cond.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %cr_i_lock) #5
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_free_connection_recovery_entries(ptr noundef %sess) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_a_lock = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %cr_a_lock) #5
  %cr_active_list = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 35
  %0 = ptrtoint ptr %cr_active_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cr_active_list, align 4
  %cmp.not169 = icmp eq ptr %1, %cr_active_list
  br i1 %cmp.not169, label %entry.for.end39_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end39

for.body:                                         ; preds = %for.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in170 = phi ptr [ %.pn173, %for.end.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %cr.0172 = getelementptr i8, ptr %.pn.in170, i32 -124
  %2 = ptrtoint ptr %.pn.in170 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn173 = load ptr, ptr %.pn.in170, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in170) #5
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in170, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in170 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in170, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in170 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in170, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in170, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cr_a_lock) #5
  %conn_recovery_cmd_lock = getelementptr i8, ptr %.pn.in170, i32 -96
  tail call void @_raw_spin_lock(ptr noundef %conn_recovery_cmd_lock) #5
  %conn_recovery_cmd_list = getelementptr i8, ptr %.pn.in170, i32 -104
  %11 = ptrtoint ptr %conn_recovery_cmd_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn_recovery_cmd_list, align 4
  %cmp20.not164 = icmp eq ptr %12, %conn_recovery_cmd_list
  br i1 %cmp20.not164, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body22_crit_edge

list_del.exit.for.body22_crit_edge:               ; preds = %list_del.exit
  br label %for.body22

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body22:                                       ; preds = %list_del_init.exit.for.body22_crit_edge, %list_del.exit.for.body22_crit_edge
  %.pn143.in165 = phi ptr [ %.pn143, %list_del_init.exit.for.body22_crit_edge ], [ %12, %list_del.exit.for.body22_crit_edge ]
  %cmd.0 = getelementptr i8, ptr %.pn143.in165, i32 -580
  %13 = ptrtoint ptr %.pn143.in165 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn143 = load ptr, ptr %.pn143.in165, align 4
  %call.i.i148 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn143.in165) #5
  br i1 %call.i.i148, label %if.end.i.i151, label %for.body22.list_del_init.exit_crit_edge

for.body22.list_del_init.exit_crit_edge:          ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i151:                                    ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i149 = getelementptr inbounds %struct.list_head, ptr %.pn143.in165, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i149 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i149, align 4
  %16 = ptrtoint ptr %.pn143.in165 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn143.in165, align 4
  %prev1.i.i.i150 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i150 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i150, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i151, %for.body22.list_del_init.exit_crit_edge
  %20 = ptrtoint ptr %.pn143.in165 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %.pn143.in165, ptr %.pn143.in165, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn143.in165, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %.pn143.in165, ptr %prev.i3.i, align 4
  %conn = getelementptr i8, ptr %.pn143.in165, i32 -12
  %22 = ptrtoint ptr %conn to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %conn, align 8
  tail call void @_raw_spin_unlock(ptr noundef %conn_recovery_cmd_lock) #5
  tail call void @iscsit_free_cmd(ptr noundef %cmd.0, i1 noundef zeroext true) #5
  tail call void @_raw_spin_lock(ptr noundef %conn_recovery_cmd_lock) #5
  %cmp20.not = icmp eq ptr %.pn143, %conn_recovery_cmd_list
  br i1 %cmp20.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body22_crit_edge

list_del_init.exit.for.body22_crit_edge:          ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body22

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %conn_recovery_cmd_lock) #5
  tail call void @_raw_spin_lock(ptr noundef %cr_a_lock) #5
  tail call void @kfree(ptr noundef %cr.0172) #5
  %cmp.not = icmp eq ptr %.pn173, %cr_active_list
  br i1 %cmp.not, label %for.end.for.end39_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end.for.end39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end39

for.end39:                                        ; preds = %for.end.for.end39_crit_edge, %entry.for.end39_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cr_a_lock) #5
  %cr_i_lock = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %cr_i_lock) #5
  %cr_inactive_list = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 36
  %23 = ptrtoint ptr %cr_inactive_list to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cr_inactive_list, align 4
  %cmp53.not179 = icmp eq ptr %24, %cr_inactive_list
  br i1 %cmp53.not179, label %for.end39.for.end94_crit_edge, label %for.end39.for.body55_crit_edge

for.end39.for.body55_crit_edge:                   ; preds = %for.end39
  br label %for.body55

for.end39.for.end94_crit_edge:                    ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end94

for.body55:                                       ; preds = %for.end85.for.body55_crit_edge, %for.end39.for.body55_crit_edge
  %.pn141.in180 = phi ptr [ %.pn141183, %for.end85.for.body55_crit_edge ], [ %24, %for.end39.for.body55_crit_edge ]
  %cr.1182 = getelementptr i8, ptr %.pn141.in180, i32 -124
  %25 = ptrtoint ptr %.pn141.in180 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn141183 = load ptr, ptr %.pn141.in180, align 4
  %call.i.i152 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn141.in180) #5
  br i1 %call.i.i152, label %if.end.i.i155, label %for.body55.list_del.exit157_crit_edge

for.body55.list_del.exit157_crit_edge:            ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit157

if.end.i.i155:                                    ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i153 = getelementptr inbounds %struct.list_head, ptr %.pn141.in180, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i153 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i153, align 4
  %28 = ptrtoint ptr %.pn141.in180 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %.pn141.in180, align 4
  %prev1.i.i.i154 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i154 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i154, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit157

list_del.exit157:                                 ; preds = %if.end.i.i155, %for.body55.list_del.exit157_crit_edge
  %32 = ptrtoint ptr %.pn141.in180 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn141.in180, align 4
  %prev.i156 = getelementptr inbounds %struct.list_head, ptr %.pn141.in180, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i156 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i156, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cr_i_lock) #5
  %conn_recovery_cmd_lock58 = getelementptr i8, ptr %.pn141.in180, i32 -96
  tail call void @_raw_spin_lock(ptr noundef %conn_recovery_cmd_lock58) #5
  %conn_recovery_cmd_list60 = getelementptr i8, ptr %.pn141.in180, i32 -104
  %34 = ptrtoint ptr %conn_recovery_cmd_list60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %conn_recovery_cmd_list60, align 4
  %cmp72.not174 = icmp eq ptr %35, %conn_recovery_cmd_list60
  br i1 %cmp72.not174, label %list_del.exit157.for.end85_crit_edge, label %list_del.exit157.for.body74_crit_edge

list_del.exit157.for.body74_crit_edge:            ; preds = %list_del.exit157
  br label %for.body74

list_del.exit157.for.end85_crit_edge:             ; preds = %list_del.exit157
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end85

for.body74:                                       ; preds = %list_del_init.exit163.for.body74_crit_edge, %list_del.exit157.for.body74_crit_edge
  %.pn142.in175 = phi ptr [ %.pn142, %list_del_init.exit163.for.body74_crit_edge ], [ %35, %list_del.exit157.for.body74_crit_edge ]
  %cmd.1 = getelementptr i8, ptr %.pn142.in175, i32 -580
  %36 = ptrtoint ptr %.pn142.in175 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn142 = load ptr, ptr %.pn142.in175, align 4
  %call.i.i158 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn142.in175) #5
  br i1 %call.i.i158, label %if.end.i.i161, label %for.body74.list_del_init.exit163_crit_edge

for.body74.list_del_init.exit163_crit_edge:       ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit163

if.end.i.i161:                                    ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i159 = getelementptr inbounds %struct.list_head, ptr %.pn142.in175, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i159 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i159, align 4
  %39 = ptrtoint ptr %.pn142.in175 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %.pn142.in175, align 4
  %prev1.i.i.i160 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i160 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i160, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del_init.exit163

list_del_init.exit163:                            ; preds = %if.end.i.i161, %for.body74.list_del_init.exit163_crit_edge
  %43 = ptrtoint ptr %.pn142.in175 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %.pn142.in175, ptr %.pn142.in175, align 4
  %prev.i3.i162 = getelementptr inbounds %struct.list_head, ptr %.pn142.in175, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i3.i162 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %.pn142.in175, ptr %prev.i3.i162, align 4
  %conn76 = getelementptr i8, ptr %.pn142.in175, i32 -12
  %45 = ptrtoint ptr %conn76 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %conn76, align 8
  tail call void @_raw_spin_unlock(ptr noundef %conn_recovery_cmd_lock58) #5
  tail call void @iscsit_free_cmd(ptr noundef %cmd.1, i1 noundef zeroext true) #5
  tail call void @_raw_spin_lock(ptr noundef %conn_recovery_cmd_lock58) #5
  %cmp72.not = icmp eq ptr %.pn142, %conn_recovery_cmd_list60
  br i1 %cmp72.not, label %list_del_init.exit163.for.end85_crit_edge, label %list_del_init.exit163.for.body74_crit_edge

list_del_init.exit163.for.body74_crit_edge:       ; preds = %list_del_init.exit163
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body74

list_del_init.exit163.for.end85_crit_edge:        ; preds = %list_del_init.exit163
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end85

for.end85:                                        ; preds = %list_del_init.exit163.for.end85_crit_edge, %list_del.exit157.for.end85_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %conn_recovery_cmd_lock58) #5
  tail call void @_raw_spin_lock(ptr noundef %cr_i_lock) #5
  tail call void @kfree(ptr noundef %cr.1182) #5
  %cmp53.not = icmp eq ptr %.pn141183, %cr_inactive_list
  br i1 %cmp53.not, label %for.end85.for.end94_crit_edge, label %for.end85.for.body55_crit_edge

for.end85.for.body55_crit_edge:                   ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body55

for.end85.for.end94_crit_edge:                    ; preds = %for.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end94

for.end94:                                        ; preds = %for.end85.for.end94_crit_edge, %for.end39.for.end94_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cr_i_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_free_cmd(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_remove_active_connection_recovery_entry(ptr noundef %cr, ptr noundef %sess) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cr_a_lock = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %cr_a_lock) #5
  %cr_list = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %cr, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cr_list) #5
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %cr, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %cr_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cr_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %cr_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %cr_list, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %cr, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %conn_recovery_count = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 5
  %8 = ptrtoint ptr %conn_recovery_count to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %conn_recovery_count, align 16
  %dec = add i16 %9, -1
  store i16 %dec, ptr %conn_recovery_count, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_remove_active_connection_recovery_entry.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_remove_active_connection_recovery_entry, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !58

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %conn_recovery_count to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %conn_recovery_count, align 16
  %conv = zext i16 %11 to i32
  %sid = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 15
  %12 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sid, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_remove_active_connection_recovery_entry.__UNIQUE_ID_ddebug222, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %13) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %list_del.exit
  tail call void @_raw_spin_unlock(ptr noundef %cr_a_lock) #5
  tail call void @kfree(ptr noundef %cr) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_remove_cmd_from_connection_recovery(ptr noundef %cmd, ptr nocapture readnone %sess) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cr1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 67
  %0 = ptrtoint ptr %cr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cr1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %2 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_task_tag, align 32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %3) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/iscsi/iscsi_target_erl2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #5, !srcloc !59
  unreachable

if.end:                                           ; preds = %entry
  %i_conn_node = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 69
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %i_conn_node) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del_init.exit_crit_edge

if.end.list_del_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 69, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i_conn_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end.list_del_init.exit_crit_edge
  %10 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %i_conn_node, ptr %i_conn_node, align 4
  %prev.i3.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 69, i32 1
  %11 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %i_conn_node, ptr %prev.i3.i, align 4
  %cmd_count = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %cmd_count to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd_count, align 4
  %dec = add i32 %13, -1
  store i32 %dec, ptr %cmd_count, align 4
  ret i32 %dec
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_discard_cr_cmds_by_expstatsn(ptr noundef %cr, i32 noundef %exp_statsn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %cr, i32 0, i32 8
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 8
  %conn_recovery_cmd_lock = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %cr, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %conn_recovery_cmd_lock) #5
  %conn_recovery_cmd_list = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %cr, i32 0, i32 5
  %2 = ptrtoint ptr %conn_recovery_cmd_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn_recovery_cmd_list, align 4
  %cmp.not165 = icmp eq ptr %3, %conn_recovery_cmd_list
  br i1 %cmp.not165, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %dropped_count.0168 = phi i32 [ %dropped_count.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %.pn.in166 = phi ptr [ %.pn170, %for.inc.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %cmd.0169 = getelementptr i8, ptr %.pn.in166, i32 -580
  %4 = ptrtoint ptr %.pn.in166 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn170 = load ptr, ptr %.pn.in166, align 4
  %deferred_i_state = getelementptr i8, ptr %.pn.in166, i32 -572
  %5 = ptrtoint ptr %deferred_i_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %deferred_i_state, align 8
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %6, label %for.body.for.inc_crit_edge [
    i32 31, label %for.body.lor.lhs.false_crit_edge
    i32 41, label %for.body.lor.lhs.false_crit_edge176
  ]

for.body.lor.lhs.false_crit_edge176:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge176
  %stat_sn = getelementptr i8, ptr %.pn.in166, i32 -532
  %8 = ptrtoint ptr %stat_sn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_sn, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %exp_statsn)
  %cmp11.not = icmp ult i32 %9, %exp_statsn
  br i1 %cmp11.not, label %if.end, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %inc = add i32 %dropped_count.0168, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_discard_cr_cmds_by_expstatsn, %if.then16)) #5
          to label %do.end [label %if.then16], !srcloc !58

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag = getelementptr i8, ptr %.pn.in166, i32 -548
  %10 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %init_task_tag, align 32
  %12 = ptrtoint ptr %stat_sn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stat_sn, align 16
  %14 = ptrtoint ptr %cr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cr, align 128
  %conv = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.7, i32 noundef %11, i32 noundef %13, i32 noundef %conv) #5
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.end
  %cr1.i = getelementptr i8, ptr %.pn.in166, i32 -8
  %16 = ptrtoint ptr %cr1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cr1.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag.i = getelementptr i8, ptr %.pn.in166, i32 -548
  %18 = ptrtoint ptr %init_task_tag.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %init_task_tag.i, align 32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %19) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/target/iscsi/iscsi_target_erl2.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #5, !srcloc !59
  unreachable

if.end.i:                                         ; preds = %do.end
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in166) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.iscsit_remove_cmd_from_connection_recovery.exit_crit_edge

if.end.i.iscsit_remove_cmd_from_connection_recovery.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iscsit_remove_cmd_from_connection_recovery.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i = getelementptr i8, ptr %.pn.in166, i32 4
  %20 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i, align 4
  %22 = ptrtoint ptr %.pn.in166 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %.pn.in166, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %iscsit_remove_cmd_from_connection_recovery.exit

iscsit_remove_cmd_from_connection_recovery.exit:  ; preds = %if.end.i.i.i, %if.end.i.iscsit_remove_cmd_from_connection_recovery.exit_crit_edge
  %26 = ptrtoint ptr %.pn.in166 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %.pn.in166, ptr %.pn.in166, align 4
  %prev.i3.i.i = getelementptr i8, ptr %.pn.in166, i32 4
  %27 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %.pn.in166, ptr %prev.i3.i.i, align 4
  %cmd_count.i = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %17, i32 0, i32 1
  %28 = ptrtoint ptr %cmd_count.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cmd_count.i, align 4
  %dec.i = add i32 %29, -1
  store i32 %dec.i, ptr %cmd_count.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %conn_recovery_cmd_lock) #5
  tail call void @iscsit_free_cmd(ptr noundef %cmd.0169, i1 noundef zeroext true) #5
  tail call void @_raw_spin_lock(ptr noundef %conn_recovery_cmd_lock) #5
  br label %for.inc

for.inc:                                          ; preds = %iscsit_remove_cmd_from_connection_recovery.exit, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %dropped_count.1 = phi i32 [ %dropped_count.0168, %lor.lhs.false.for.inc_crit_edge ], [ %inc, %iscsit_remove_cmd_from_connection_recovery.exit ], [ %dropped_count.0168, %for.body.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %.pn170, %conn_recovery_cmd_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %dropped_count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %dropped_count.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %conn_recovery_cmd_lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_discard_cr_cmds_by_expstatsn, %if.then40)) #5
          to label %do.end45 [label %if.then40], !srcloc !58

if.then40:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %cr to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %cr, align 128
  %conv42 = zext i16 %31 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.8, i32 noundef %dropped_count.0.lcssa, i32 noundef %conv42, i32 noundef %exp_statsn) #5
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %for.end
  %cmd_count = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %cr, i32 0, i32 1
  %32 = ptrtoint ptr %cmd_count to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmd_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool46.not = icmp eq i32 %33, 0
  br i1 %tobool46.not, label %do.body48, label %if.else

do.body48:                                        ; preds = %do.end45
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_discard_cr_cmds_by_expstatsn, %if.then60)) #5
          to label %do.end65 [label %if.then60], !srcloc !58

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %cr to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %cr, align 128
  %conv62 = zext i16 %35 to i32
  %sid = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 15
  %36 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sid, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.9, i32 noundef %conv62, i32 noundef %37) #5
  br label %do.end65

do.end65:                                         ; preds = %if.then60, %do.body48
  %cr_i_lock.i = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %cr_i_lock.i) #5
  %cr_list.i = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %cr, i32 0, i32 9
  %call.i.i.i133 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cr_list.i) #5
  br i1 %call.i.i.i133, label %if.end.i.i.i136, label %do.end65.iscsit_remove_inactive_connection_recovery_entry.exit_crit_edge

do.end65.iscsit_remove_inactive_connection_recovery_entry.exit_crit_edge: ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %iscsit_remove_inactive_connection_recovery_entry.exit

if.end.i.i.i136:                                  ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i134 = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %cr, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %prev.i.i.i134 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i.i134, align 4
  %40 = ptrtoint ptr %cr_list.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cr_list.i, align 4
  %prev1.i.i.i.i135 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i.i135 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i.i135, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %iscsit_remove_inactive_connection_recovery_entry.exit

iscsit_remove_inactive_connection_recovery_entry.exit: ; preds = %if.end.i.i.i136, %do.end65.iscsit_remove_inactive_connection_recovery_entry.exit_crit_edge
  %44 = ptrtoint ptr %cr_list.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %cr_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %cr, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cr_i_lock.i) #5
  %cr_a_lock.i = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %cr_a_lock.i) #5
  %cr_active_list.i = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 35
  %prev.i.i138 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 35, i32 1
  %46 = ptrtoint ptr %prev.i.i138 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i138, align 4
  %call.i.i.i139 = tail call zeroext i1 @__list_add_valid(ptr noundef %cr_list.i, ptr noundef %47, ptr noundef %cr_active_list.i) #5
  br i1 %call.i.i.i139, label %if.end.i.i.i140, label %iscsit_remove_inactive_connection_recovery_entry.exit.iscsit_attach_active_connection_recovery_entry.exit_crit_edge

iscsit_remove_inactive_connection_recovery_entry.exit.iscsit_attach_active_connection_recovery_entry.exit_crit_edge: ; preds = %iscsit_remove_inactive_connection_recovery_entry.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %iscsit_attach_active_connection_recovery_entry.exit

if.end.i.i.i140:                                  ; preds = %iscsit_remove_inactive_connection_recovery_entry.exit
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %prev.i.i138 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %cr_list.i, ptr %prev.i.i138, align 4
  %49 = ptrtoint ptr %cr_list.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %cr_active_list.i, ptr %cr_list.i, align 4
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %cr_list.i, ptr %47, align 4
  br label %iscsit_attach_active_connection_recovery_entry.exit

iscsit_attach_active_connection_recovery_entry.exit: ; preds = %if.end.i.i.i140, %iscsit_remove_inactive_connection_recovery_entry.exit.iscsit_attach_active_connection_recovery_entry.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cr_a_lock.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_discard_cr_cmds_by_expstatsn, %if.then79)) #5
          to label %do.end85 [label %if.then79], !srcloc !58

if.then79:                                        ; preds = %iscsit_attach_active_connection_recovery_entry.exit
  call void @__sanitizer_cov_trace_pc() #7
  %52 = ptrtoint ptr %cr to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %cr, align 128
  %conv81 = zext i16 %53 to i32
  %sid82 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 15
  %54 = ptrtoint ptr %sid82 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sid82, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.10, i32 noundef %conv81, i32 noundef %55) #5
  br label %do.end85

do.end85:                                         ; preds = %if.then79, %iscsit_attach_active_connection_recovery_entry.exit
  %call86 = tail call i32 @iscsit_remove_active_connection_recovery_entry(ptr noundef %cr, ptr noundef %1)
  br label %if.end88

if.else:                                          ; preds = %do.end45
  %cr_i_lock.i141 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %cr_i_lock.i141) #5
  %cr_list.i142 = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %cr, i32 0, i32 9
  %call.i.i.i143 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cr_list.i142) #5
  br i1 %call.i.i.i143, label %if.end.i.i.i146, label %if.else.iscsit_remove_inactive_connection_recovery_entry.exit148_crit_edge

if.else.iscsit_remove_inactive_connection_recovery_entry.exit148_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %iscsit_remove_inactive_connection_recovery_entry.exit148

if.end.i.i.i146:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i.i144 = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %cr, i32 0, i32 9, i32 1
  %56 = ptrtoint ptr %prev.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i.i.i144, align 4
  %58 = ptrtoint ptr %cr_list.i142 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cr_list.i142, align 4
  %prev1.i.i.i.i145 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i.i145 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev1.i.i.i.i145, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %59, ptr %57, align 4
  br label %iscsit_remove_inactive_connection_recovery_entry.exit148

iscsit_remove_inactive_connection_recovery_entry.exit148: ; preds = %if.end.i.i.i146, %if.else.iscsit_remove_inactive_connection_recovery_entry.exit148_crit_edge
  %62 = ptrtoint ptr %cr_list.i142 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 256 to ptr), ptr %cr_list.i142, align 4
  %prev.i.i147 = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %cr, i32 0, i32 9, i32 1
  %63 = ptrtoint ptr %prev.i.i147 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i147, align 4
  tail call void @_raw_spin_unlock(ptr noundef %cr_i_lock.i141) #5
  %cr_a_lock.i149 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 38
  tail call void @_raw_spin_lock(ptr noundef %cr_a_lock.i149) #5
  %cr_active_list.i151 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 35
  %prev.i.i152 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 35, i32 1
  %64 = ptrtoint ptr %prev.i.i152 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i152, align 4
  %call.i.i.i153 = tail call zeroext i1 @__list_add_valid(ptr noundef %cr_list.i142, ptr noundef %65, ptr noundef %cr_active_list.i151) #5
  br i1 %call.i.i.i153, label %if.end.i.i.i155, label %iscsit_remove_inactive_connection_recovery_entry.exit148.iscsit_attach_active_connection_recovery_entry.exit156_crit_edge

iscsit_remove_inactive_connection_recovery_entry.exit148.iscsit_attach_active_connection_recovery_entry.exit156_crit_edge: ; preds = %iscsit_remove_inactive_connection_recovery_entry.exit148
  call void @__sanitizer_cov_trace_pc() #7
  br label %iscsit_attach_active_connection_recovery_entry.exit156

if.end.i.i.i155:                                  ; preds = %iscsit_remove_inactive_connection_recovery_entry.exit148
  call void @__sanitizer_cov_trace_pc() #7
  %66 = ptrtoint ptr %prev.i.i152 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %cr_list.i142, ptr %prev.i.i152, align 4
  %67 = ptrtoint ptr %cr_list.i142 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %cr_active_list.i151, ptr %cr_list.i142, align 4
  %68 = ptrtoint ptr %prev.i.i147 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev.i.i147, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %cr_list.i142, ptr %65, align 4
  br label %iscsit_attach_active_connection_recovery_entry.exit156

iscsit_attach_active_connection_recovery_entry.exit156: ; preds = %if.end.i.i.i155, %iscsit_remove_inactive_connection_recovery_entry.exit148.iscsit_attach_active_connection_recovery_entry.exit156_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %cr_a_lock.i149) #5
  br label %if.end88

if.end88:                                         ; preds = %iscsit_attach_active_connection_recovery_entry.exit156, %do.end85
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_discard_unacknowledged_ooo_cmdsns_for_conn(ptr noundef %conn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %cmdsn_mutex = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %cmdsn_mutex, i32 noundef 0) #5
  %sess_ooo_cmdsn_list = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %sess_ooo_cmdsn_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sess_ooo_cmdsn_list, align 8
  %cmp.not109 = icmp eq ptr %3, %sess_ooo_cmdsn_list
  br i1 %cmp.not109, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cid8 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dropped_count.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %dropped_count.1, %for.inc.for.body_crit_edge ]
  %.pn.in110 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn113, %for.inc.for.body_crit_edge ]
  %ooo_cmdsn.0112 = getelementptr i8, ptr %.pn.in110, i32 -20
  %4 = ptrtoint ptr %.pn.in110 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn113 = load ptr, ptr %.pn.in110, align 4
  %5 = ptrtoint ptr %ooo_cmdsn.0112 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %ooo_cmdsn.0112, align 128
  %7 = ptrtoint ptr %cid8 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cid8, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp10.not = icmp eq i16 %6, %8
  br i1 %cmp10.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %inc = add i32 %dropped_count.0111, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_discard_unacknowledged_ooo_cmdsns_for_conn.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_discard_unacknowledged_ooo_cmdsns_for_conn, %if.then16)) #5
          to label %do.end [label %if.then16], !srcloc !58

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %cmdsn = getelementptr i8, ptr %.pn.in110, i32 -12
  %9 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmdsn, align 8
  %11 = ptrtoint ptr %cid8 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %cid8, align 2
  %conv18 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_discard_unacknowledged_ooo_cmdsns_for_conn.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.12, i32 noundef %10, i32 noundef %conv18) #5
  br label %do.end

do.end:                                           ; preds = %if.then16, %if.end
  tail call void @iscsit_remove_ooo_cmdsn(ptr noundef %1, ptr noundef %ooo_cmdsn.0112) #5
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %dropped_count.1 = phi i32 [ %dropped_count.0111, %for.body.for.inc_crit_edge ], [ %inc, %do.end ]
  %cmp.not = icmp eq ptr %.pn113, %sess_ooo_cmdsn_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %dropped_count.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %dropped_count.1, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %cmdsn_mutex) #5
  %cmd_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 46
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #5
  %conn_cmd_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 56
  %13 = ptrtoint ptr %conn_cmd_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %conn_cmd_list, align 8
  %cmp37.not116 = icmp eq ptr %14, %conn_cmd_list
  br i1 %cmp37.not116, label %for.end.for.end54_crit_edge, label %for.end.for.body41_crit_edge

for.end.for.body41_crit_edge:                     ; preds = %for.end
  br label %for.body41

for.end.for.end54_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end54

for.body41:                                       ; preds = %for.inc48.for.body41_crit_edge, %for.end.for.body41_crit_edge
  %.pn99.in117 = phi ptr [ %.pn99120, %for.inc48.for.body41_crit_edge ], [ %14, %for.end.for.body41_crit_edge ]
  %cmd.0119 = getelementptr i8, ptr %.pn99.in117, i32 -580
  %15 = ptrtoint ptr %.pn99.in117 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn99120 = load ptr, ptr %.pn99.in117, align 4
  %cmd_flags = getelementptr i8, ptr %.pn99.in117, i32 -552
  %16 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %for.body41.for.inc48_crit_edge, label %if.end44

for.body41.for.inc48_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc48

if.end44:                                         ; preds = %for.body41
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn99.in117) #5
  br i1 %call.i.i, label %if.end.i.i, label %if.end44.list_del_init.exit_crit_edge

if.end44.list_del_init.exit_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn99.in117, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %.pn99.in117 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn99.in117, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end44.list_del_init.exit_crit_edge
  %24 = ptrtoint ptr %.pn99.in117 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %.pn99.in117, ptr %.pn99.in117, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn99.in117, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %.pn99.in117, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #5
  tail call void @iscsit_free_cmd(ptr noundef %cmd.0119, i1 noundef zeroext true) #5
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #5
  br label %for.inc48

for.inc48:                                        ; preds = %list_del_init.exit, %for.body41.for.inc48_crit_edge
  %cmp37.not = icmp eq ptr %.pn99120, %conn_cmd_list
  br i1 %cmp37.not, label %for.inc48.for.end54_crit_edge, label %for.inc48.for.body41_crit_edge

for.inc48.for.body41_crit_edge:                   ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body41

for.inc48.for.end54_crit_edge:                    ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end54

for.end54:                                        ; preds = %for.inc48.for.end54_crit_edge, %for.end.for.end54_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_discard_unacknowledged_ooo_cmdsns_for_conn.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_discard_unacknowledged_ooo_cmdsns_for_conn, %if.then68)) #5
          to label %do.end73 [label %if.then68], !srcloc !58

if.then68:                                        ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #7
  %cid69 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %26 = ptrtoint ptr %cid69 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %cid69, align 2
  %conv70 = zext i16 %27 to i32
  %exp_cmd_sn = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %exp_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %exp_cmd_sn, align 128
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_discard_unacknowledged_ooo_cmdsns_for_conn.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.13, i32 noundef %dropped_count.0.lcssa, i32 noundef %conv70, i32 noundef %29) #5
  br label %do.end73

do.end73:                                         ; preds = %if.then68, %for.end54
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_remove_ooo_cmdsn(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_prepare_cmds_for_reallegiance(ptr noundef %conn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cr_list = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %call7.i.i, i32 0, i32 9
  %1 = ptrtoint ptr %cr_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %cr_list, ptr %cr_list, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %call7.i.i, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cr_list, ptr %prev.i, align 8
  %conn_recovery_cmd_list = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %conn_recovery_cmd_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %conn_recovery_cmd_list, ptr %conn_recovery_cmd_list, align 4
  %prev.i172 = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %call7.i.i, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev.i172 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %conn_recovery_cmd_list, ptr %prev.i172, align 8
  %conn_recovery_cmd_lock = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %call7.i.i, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %conn_recovery_cmd_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @iscsit_prepare_cmds_for_reallegiance.__key, i16 noundef signext 3) #5
  %cmd_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 46
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #5
  %conn_cmd_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 56
  %5 = ptrtoint ptr %conn_cmd_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %conn_cmd_list, align 8
  %cmp.not193 = icmp eq ptr %6, %conn_cmd_list
  br i1 %cmp.not193, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %cid = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cmd_count.0198 = phi i32 [ 0, %for.body.lr.ph ], [ %cmd_count.1, %for.inc.for.body_crit_edge ]
  %.pn.in194 = phi ptr [ %6, %for.body.lr.ph ], [ %.pn202, %for.inc.for.body_crit_edge ]
  %cmd.0200 = getelementptr i8, ptr %.pn.in194, i32 -580
  %7 = ptrtoint ptr %.pn.in194 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn202 = load ptr, ptr %.pn.in194, align 4
  %iscsi_opcode = getelementptr i8, ptr %.pn.in194, i32 -562
  %8 = ptrtoint ptr %iscsi_opcode to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %iscsi_opcode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %switch = icmp ult i8 %9, 2
  br i1 %switch, label %if.end37, label %do.body20

do.body20:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_prepare_cmds_for_reallegiance.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_prepare_cmds_for_reallegiance, %if.then27)) #5
          to label %do.end33 [label %if.then27], !srcloc !58

if.then27:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %iscsi_opcode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iscsi_opcode, align 2
  %conv29 = zext i8 %11 to i32
  %init_task_tag = getelementptr i8, ptr %.pn.in194, i32 -548
  %12 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %init_task_tag, align 32
  %cmd_sn = getelementptr i8, ptr %.pn.in194, i32 -540
  %14 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd_sn, align 8
  %16 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %cid, align 2
  %conv30 = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_prepare_cmds_for_reallegiance.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.17, i32 noundef %conv29, i32 noundef %13, i32 noundef %15, i32 noundef %conv30) #5
  br label %do.end33

do.end33:                                         ; preds = %if.then27, %do.body20
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in194) #5
  br i1 %call.i.i, label %if.end.i.i, label %do.end33.list_del_init.exit_crit_edge

do.end33.list_del_init.exit_crit_edge:            ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in194, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %.pn.in194 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn.in194, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end33.list_del_init.exit_crit_edge
  %24 = ptrtoint ptr %.pn.in194 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %.pn.in194, ptr %.pn.in194, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in194, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %.pn.in194, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #5
  tail call void @iscsit_free_cmd(ptr noundef %cmd.0200, i1 noundef zeroext true) #5
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #5
  br label %for.inc

if.end37:                                         ; preds = %for.body
  %cmd_flags = getelementptr i8, ptr %.pn.in194, i32 -552
  %26 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  br i1 %tobool38.not, label %land.lhs.true39, label %if.end37.if.end49_crit_edge

if.end37.if.end49_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

land.lhs.true39:                                  ; preds = %if.end37
  %immediate_cmd = getelementptr i8, ptr %.pn.in194, i32 -564
  %28 = ptrtoint ptr %immediate_cmd to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %immediate_cmd, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool40.not = icmp eq i8 %29, 0
  br i1 %tobool40.not, label %land.lhs.true41, label %land.lhs.true39.if.end49_crit_edge

land.lhs.true39.if.end49_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

land.lhs.true41:                                  ; preds = %land.lhs.true39
  %cmd_sn42 = getelementptr i8, ptr %.pn.in194, i32 -540
  %30 = ptrtoint ptr %cmd_sn42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cmd_sn42, align 8
  %32 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sess, align 4
  %exp_cmd_sn = getelementptr inbounds %struct.iscsi_session, ptr %33, i32 0, i32 12
  %34 = ptrtoint ptr %exp_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %exp_cmd_sn, align 128
  %36 = xor i32 %31, -1
  %37 = add i32 %35, %36
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %tobool44.not = icmp sgt i32 %37, -1
  br i1 %tobool44.not, label %land.lhs.true41.if.end49_crit_edge, label %if.then45

land.lhs.true41.if.end49_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then45:                                        ; preds = %land.lhs.true41
  %call.i.i173 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in194) #5
  br i1 %call.i.i173, label %if.end.i.i176, label %if.then45.list_del_init.exit178_crit_edge

if.then45.list_del_init.exit178_crit_edge:        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit178

if.end.i.i176:                                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i174 = getelementptr inbounds %struct.list_head, ptr %.pn.in194, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i174 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i174, align 4
  %40 = ptrtoint ptr %.pn.in194 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %.pn.in194, align 4
  %prev1.i.i.i175 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i175 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i175, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del_init.exit178

list_del_init.exit178:                            ; preds = %if.end.i.i176, %if.then45.list_del_init.exit178_crit_edge
  %44 = ptrtoint ptr %.pn.in194 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %.pn.in194, ptr %.pn.in194, align 4
  %prev.i3.i177 = getelementptr inbounds %struct.list_head, ptr %.pn.in194, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i3.i177 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %.pn.in194, ptr %prev.i3.i177, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #5
  tail call void @iscsit_free_cmd(ptr noundef %cmd.0200, i1 noundef zeroext true) #5
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #5
  br label %for.inc

if.end49:                                         ; preds = %land.lhs.true41.if.end49_crit_edge, %land.lhs.true39.if.end49_crit_edge, %if.end37.if.end49_crit_edge
  %inc = add i32 %cmd_count.0198, 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_prepare_cmds_for_reallegiance.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_prepare_cmds_for_reallegiance, %if.then62)) #5
          to label %do.end71 [label %if.then62], !srcloc !58

if.then62:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %iscsi_opcode to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %iscsi_opcode, align 2
  %conv64 = zext i8 %47 to i32
  %init_task_tag65 = getelementptr i8, ptr %.pn.in194, i32 -548
  %48 = ptrtoint ptr %init_task_tag65 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %init_task_tag65, align 32
  %cmd_sn66 = getelementptr i8, ptr %.pn.in194, i32 -540
  %50 = ptrtoint ptr %cmd_sn66 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cmd_sn66, align 8
  %stat_sn = getelementptr i8, ptr %.pn.in194, i32 -532
  %52 = ptrtoint ptr %stat_sn to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %stat_sn, align 16
  %54 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %cid, align 2
  %conv68 = zext i16 %55 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_prepare_cmds_for_reallegiance.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.18, i32 noundef %conv64, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef %conv68) #5
  br label %do.end71

do.end71:                                         ; preds = %if.then62, %if.end49
  %i_state = getelementptr i8, ptr %.pn.in194, i32 -568
  %56 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %i_state, align 4
  %deferred_i_state = getelementptr i8, ptr %.pn.in194, i32 -572
  %58 = ptrtoint ptr %deferred_i_state to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %deferred_i_state, align 8
  store i32 8, ptr %i_state, align 4
  %data_direction = getelementptr i8, ptr %.pn.in194, i32 -428
  %59 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %data_direction, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp73 = icmp eq i32 %60, 1
  br i1 %cmp73, label %if.then75, label %do.end71.if.end76_crit_edge

do.end71.if.end76_crit_edge:                      ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then75:                                        ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @iscsit_stop_dataout_timer(ptr noundef %cmd.0200) #5
  br label %if.end76

if.end76:                                         ; preds = %if.then75, %do.end71.if.end76_crit_edge
  %61 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sess, align 4
  %sess78 = getelementptr i8, ptr %.pn.in194, i32 -4
  %63 = ptrtoint ptr %sess78 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %62, ptr %sess78, align 64
  %call.i.i179 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in194) #5
  br i1 %call.i.i179, label %if.end.i.i182, label %if.end76.list_del_init.exit184_crit_edge

if.end76.list_del_init.exit184_crit_edge:         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_del_init.exit184

if.end.i.i182:                                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  %prev.i.i180 = getelementptr inbounds %struct.list_head, ptr %.pn.in194, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i180 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i180, align 4
  %66 = ptrtoint ptr %.pn.in194 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %.pn.in194, align 4
  %prev1.i.i.i181 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i181 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i181, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del_init.exit184

list_del_init.exit184:                            ; preds = %if.end.i.i182, %if.end76.list_del_init.exit184_crit_edge
  %70 = ptrtoint ptr %.pn.in194 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %.pn.in194, ptr %.pn.in194, align 4
  %prev.i3.i183 = getelementptr inbounds %struct.list_head, ptr %.pn.in194, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i3.i183 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %.pn.in194, ptr %prev.i3.i183, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #5
  tail call void @iscsit_free_all_datain_reqs(ptr noundef %cmd.0200) #5
  %se_cmd = getelementptr i8, ptr %.pn.in194, i32 12
  %call81 = tail call zeroext i1 @transport_wait_for_tasks(ptr noundef %se_cmd) #5
  tail call void @_raw_spin_lock(ptr noundef %conn_recovery_cmd_lock) #5
  %72 = ptrtoint ptr %prev.i172 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i172, align 8
  %call.i.i186 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in194, ptr noundef %73, ptr noundef %conn_recovery_cmd_list) #5
  br i1 %call.i.i186, label %if.end.i.i187, label %list_del_init.exit184.list_add_tail.exit_crit_edge

list_del_init.exit184.list_add_tail.exit_crit_edge: ; preds = %list_del_init.exit184
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit

if.end.i.i187:                                    ; preds = %list_del_init.exit184
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %prev.i172 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %.pn.in194, ptr %prev.i172, align 8
  %75 = ptrtoint ptr %.pn.in194 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %conn_recovery_cmd_list, ptr %.pn.in194, align 4
  %76 = ptrtoint ptr %prev.i3.i183 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev.i3.i183, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %.pn.in194, ptr %73, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i187, %list_del_init.exit184.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %conn_recovery_cmd_lock) #5
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #5
  %cr87 = getelementptr i8, ptr %.pn.in194, i32 -8
  %78 = ptrtoint ptr %cr87 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call7.i.i, ptr %cr87, align 4
  %conn88 = getelementptr i8, ptr %.pn.in194, i32 -12
  %79 = ptrtoint ptr %conn88 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %conn88, align 8
  br label %for.inc

for.inc:                                          ; preds = %list_add_tail.exit, %list_del_init.exit178, %list_del_init.exit
  %cmd_count.1 = phi i32 [ %cmd_count.0198, %list_del_init.exit ], [ %inc, %list_add_tail.exit ], [ %cmd_count.0198, %list_del_init.exit178 ]
  %cmp.not = icmp eq ptr %.pn202, %conn_cmd_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %cmd_count.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %cmd_count.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #5
  %cid95 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %80 = ptrtoint ptr %cid95 to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %cid95, align 2
  %82 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %call7.i.i, align 128
  %cmd_count97 = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %call7.i.i, i32 0, i32 1
  %83 = ptrtoint ptr %cmd_count97 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %cmd_count.0.lcssa, ptr %cmd_count97, align 4
  %conn_ops = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 59
  %84 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %conn_ops, align 16
  %MaxRecvDataSegmentLength = getelementptr inbounds %struct.iscsi_conn_ops, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %MaxRecvDataSegmentLength to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %MaxRecvDataSegmentLength, align 4
  %maxrecvdatasegmentlength = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %call7.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %maxrecvdatasegmentlength to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %maxrecvdatasegmentlength, align 8
  %MaxXmitDataSegmentLength = getelementptr inbounds %struct.iscsi_conn_ops, ptr %85, i32 0, i32 3
  %89 = ptrtoint ptr %MaxXmitDataSegmentLength to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %MaxXmitDataSegmentLength, align 4
  %maxxmitdatasegmentlength = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %call7.i.i, i32 0, i32 3
  %91 = ptrtoint ptr %maxxmitdatasegmentlength to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %maxxmitdatasegmentlength, align 4
  %sess99 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %92 = ptrtoint ptr %sess99 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sess99, align 4
  %sess100 = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %call7.i.i, i32 0, i32 8
  %94 = ptrtoint ptr %sess100 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %sess100, align 8
  %cr_i_lock.i = getelementptr inbounds %struct.iscsi_session, ptr %93, i32 0, i32 39
  tail call void @_raw_spin_lock(ptr noundef %cr_i_lock.i) #5
  %cr_inactive_list.i = getelementptr inbounds %struct.iscsi_session, ptr %93, i32 0, i32 36
  %prev.i.i188 = getelementptr inbounds %struct.iscsi_session, ptr %93, i32 0, i32 36, i32 1
  %95 = ptrtoint ptr %prev.i.i188 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i.i188, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cr_list, ptr noundef %96, ptr noundef %cr_inactive_list.i) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.list_add_tail.exit.i_crit_edge

for.end.list_add_tail.exit.i_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %97 = ptrtoint ptr %prev.i.i188 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %cr_list, ptr %prev.i.i188, align 4
  %98 = ptrtoint ptr %cr_list to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %cr_inactive_list.i, ptr %cr_list, align 4
  %99 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev.i, align 8
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %cr_list, ptr %96, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.end.list_add_tail.exit.i_crit_edge
  %conn_recovery_count.i = getelementptr inbounds %struct.iscsi_session, ptr %93, i32 0, i32 5
  %101 = ptrtoint ptr %conn_recovery_count.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %conn_recovery_count.i, align 16
  %inc.i = add i16 %102, 1
  store i16 %inc.i, ptr %conn_recovery_count.i, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_attach_inactive_connection_recovery_entry.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_prepare_cmds_for_reallegiance, %if.then.i)) #5
          to label %iscsit_attach_inactive_connection_recovery_entry.exit [label %if.then.i], !srcloc !58

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %103 = ptrtoint ptr %conn_recovery_count.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %conn_recovery_count.i, align 16
  %conv.i = zext i16 %104 to i32
  %sid.i = getelementptr inbounds %struct.iscsi_session, ptr %93, i32 0, i32 15
  %105 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %sid.i, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_attach_inactive_connection_recovery_entry.__UNIQUE_ID_ddebug221, ptr noundef nonnull @.str.20, i32 noundef %conv.i, i32 noundef %106) #5
  br label %iscsit_attach_inactive_connection_recovery_entry.exit

iscsit_attach_inactive_connection_recovery_entry.exit: ; preds = %if.then.i, %list_add_tail.exit.i
  tail call void @_raw_spin_unlock(ptr noundef %cr_i_lock.i) #5
  br label %cleanup

cleanup:                                          ; preds = %iscsit_attach_inactive_connection_recovery_entry.exit, %do.end
  %retval.0 = phi i32 [ 0, %iscsit_attach_inactive_connection_recovery_entry.exit ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_stop_dataout_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_free_all_datain_reqs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @transport_wait_for_tasks(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_connection_recovery_transport_reset(ptr noundef %conn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %connection_recovery = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 24
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %connection_recovery, i32 noundef 4) #5
  %0 = ptrtoint ptr %connection_recovery to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 1, ptr %connection_recovery, align 4
  %call = tail call i32 @iscsit_close_connection(ptr noundef %conn) #5
  %call.lobit = ashr i32 %call, 31
  ret i32 %call.lobit
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_close_connection(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/iscsi_target_erl2.c", i32 178, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @iscsit_remove_active_connection_recovery_entry.__UNIQUE_ID_ddebug222, !1, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/iscsi_target_erl2.c", i32 206, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @iscsit_remove_cmd_from_connection_recovery._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @iscsit_remove_cmd_from_connection_recovery._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/target/iscsi/iscsi_target_erl2.c", i32 235, i32 3}
!13 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug223, !12, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/target/iscsi/iscsi_target_erl2.c", i32 247, i32 2}
!17 = !{ptr @iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug224, !16, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/target/iscsi/iscsi_target_erl2.c", i32 252, i32 3}
!20 = !{ptr @iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug225, !19, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/target/iscsi/iscsi_target_erl2.c", i32 257, i32 3}
!23 = !{ptr @iscsit_discard_cr_cmds_by_expstatsn.__UNIQUE_ID_ddebug226, !22, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/target/iscsi/iscsi_target_erl2.c", i32 281, i32 3}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @iscsit_discard_unacknowledged_ooo_cmdsns_for_conn.__UNIQUE_ID_ddebug227, !25, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/target/iscsi/iscsi_target_erl2.c", i32 301, i32 2}
!30 = !{ptr @iscsit_discard_unacknowledged_ooo_cmdsns_for_conn.__UNIQUE_ID_ddebug228, !29, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/iscsi/iscsi_target_erl2.c", i32 321, i32 3}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @iscsit_prepare_cmds_for_reallegiance._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @iscsit_prepare_cmds_for_reallegiance._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @iscsit_prepare_cmds_for_reallegiance.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/target/iscsi/iscsi_target_erl2.c", i32 327, i32 2}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/target/iscsi/iscsi_target_erl2.c", i32 342, i32 4}
!41 = !{ptr @iscsit_prepare_cmds_for_reallegiance.__UNIQUE_ID_ddebug229, !40, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/target/iscsi/iscsi_target_erl2.c", i32 375, i32 3}
!44 = !{ptr @iscsit_prepare_cmds_for_reallegiance.__UNIQUE_ID_ddebug230, !43, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/target/iscsi/iscsi_target_erl2.c", i32 95, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @iscsit_attach_inactive_connection_recovery_entry.__UNIQUE_ID_ddebug221, !46, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i64 2148211281, i64 2148211286, i64 2148211299, i64 2148211343, i64 2148211377, i64 2148211398}
!59 = !{i64 2153668913, i64 2153669418, i64 2153668950, i64 2153669006, i64 2153669040, i64 2153669064, i64 2153669105, i64 2153669126, i64 2153669154, i64 2153669188}
