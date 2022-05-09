; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/iscsi_target_erl1.c_pt.bc'
source_filename = "../drivers/target/iscsi/iscsi_target_erl1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iscsit_stop_dataout_timer\22, \22a\22\09"
module asm "\09.weak\09__crc_iscsit_stop_dataout_timer\09\09\09\09"
module asm "\09.long\09__crc_iscsit_stop_dataout_timer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iscsit_stop_dataout_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22iscsit_stop_dataout_timer\22\09\09\09\09\09"
module asm "__kstrtabns_iscsit_stop_dataout_timer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kvec = type { ptr, i32 }
%struct.iscsi_conn = type { %struct.wait_queue_head, i8, i8, i8, i8, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, %struct.delayed_work, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.completion, i32, ptr, %struct.list_head, [52 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.2 }
%union.anon.2 = type { ptr, [124 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.iscsi_session = type { i8, [6 x i8], i32, i8, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, i32, %struct.atomic_t, %struct.list_head, i32, [8 x i8], i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.timer_list, ptr, ptr, ptr, [12 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.iscsi_sess_ops = type { [224 x i8], [256 x i8], [224 x i8], [256 x i8], [256 x i8], i16, i16, i8, i8, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.iscsi_conn_ops = type { i8, i8, i32, i32, i32, i32 }
%struct.iscsi_datain_req = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, [76 x i8] }
%struct.iscsi_cmd = type { i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, [52 x i8], %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.timer_list, ptr, ptr, [5 x %struct.kvec], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.se_cmd, [98 x i8], i32, [4 x i8], ptr, i32, i32, i32, [124 x i8] }
%struct.se_cmd = type { i32, i8, i16, i8, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, %struct.llist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], i64, i32, i32, %struct.spinlock, %struct.kref, %struct.completion, %struct.work_struct, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.list_head, ptr, i32, i32, i8, i8, i32, i32, ptr, i32, i32, i64, i32 }
%struct.llist_node = type { ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.iscsi_seq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.iscsi_pdu = type { i32, i32, i8, i32, i32, i32, i32, i32, [96 x i8] }
%struct.iscsi_r2t = type { i32, i32, i32, i32, i32, i32, i32, %struct.list_head, [92 x i8] }
%struct.iscsi_ooo_cmdsn = type { i16, i32, i32, i32, ptr, %struct.list_head, [100 x i8] }
%struct.iscsit_transport = type { [16 x i8], i32, i8, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.se_tmr_req = type { i8, i8, i32, i64, ptr, ptr, ptr, %struct.list_head }
%struct.iscsi_portal_group = type { i8, i32, i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.se_portal_group, %struct.mutex, %struct.semaphore, %struct.iscsi_tpg_attrib, %struct.iscsi_node_auth, ptr, ptr, %struct.list_head, %struct.list_head, [92 x i8] }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.hlist_head = type { ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.iscsi_tpg_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.iscsi_node_auth = type { i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8] }
%struct.iscsi_node_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }

@iscsit_dump_data_payload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 62, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Unable to allocate %u bytes for offload buffer.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsit_dump_data_payload\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/target/iscsi/iscsi_target_erl1.c\00", [55 x i8] zeroinitializer }, align 32
@iscsit_dump_data_payload._entry_ptr = internal global ptr @iscsit_dump_data_payload._entry, section ".printk_index", align 4
@iscsit_create_recovery_datain_values_datasequenceinorder_no._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013struct iscsi_cmd->seq_list is NULL!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"iscsit_create_recovery_datain_values_datasequenceinorder_no\00", [36 x i8] zeroinitializer }, align 32
@iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr = internal global ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry, section ".printk_index", align 4
@iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 253, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Ignoring non-sent sequence 0x%08x -> 0x%08x\0A\0A\00", [48 x i8] zeroinitializer }, align 32
@iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.7 = internal global ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.5, section ".printk_index", align 4
@iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Pre BegRun sequence 0x%08x -> 0x%08x\0A\00", [56 x i8] zeroinitializer }, align 32
@iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.10 = internal global ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.8, section ".printk_index", align 4
@iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Found sequence begrun: 0x%08x in 0x%08x -> 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.13 = internal global ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.11, section ".printk_index", align 4
@iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Post BegRun sequence 0x%08x -> 0x%08x\0A\00", [55 x i8] zeroinitializer }, align 32
@iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.16 = internal global ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.14, section ".printk_index", align 4
@iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013ITT: 0x%08x, Begrun: 0x%08x but first_seq is NULL\0A\00", [43 x i8] zeroinitializer }, align 32
@iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.19 = internal global ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.17, section ".printk_index", align 4
@iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [140 x i8], [52 x i8] } { [140 x i8] c"\013Unable to locate struct iscsi_seq for ITT: 0x%08x, BegRun: 0x%08x, RunLength: 0x%08x while DataSequenceInOrder=No and DataPDUInOrder=%s.\0A\00", [52 x i8] zeroinitializer }, align 32
@iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.22 = internal global ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Yes\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"No\00", [29 x i8] zeroinitializer }, align 32
@iscsit_handle_recovery_datain_or_r2t._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unknown cmd->data_direction: 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"iscsit_handle_recovery_datain_or_r2t\00", [59 x i8] zeroinitializer }, align 32
@iscsit_handle_recovery_datain_or_r2t._entry_ptr = internal global ptr @iscsit_handle_recovery_datain_or_r2t._entry, section ".printk_index", align 4
@iscsit_handle_status_snack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 484, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"\013Got Status SNACK Begrun: 0x%08x, RunLength: 0x%08x but already got ExpStatSN: 0x%08x on CID: %hu.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iscsit_handle_status_snack\00", [37 x i8] zeroinitializer }, align 32
@iscsit_handle_status_snack._entry_ptr = internal global ptr @iscsit_handle_status_snack._entry, section ".printk_index", align 4
@iscsit_handle_status_snack._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"\013Unable to find StatSN: 0x%08x for a Status SNACK, assuming this was a protactic SNACK for an untransmitted StatSN, ignoring.\0A\00", [32 x i8] zeroinitializer }, align 32
@iscsit_handle_status_snack._entry_ptr.31 = internal global ptr @iscsit_handle_status_snack._entry.29, section ".printk_index", align 4
@iscsit_handle_status_snack._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [128 x i8], [32 x i8] } { [128 x i8] c"\013Ignoring Status SNACK for BegRun: 0x%08x, RunLength: 0x%08x, assuming this was a protactic SNACK for an untransmitted StatSN\0A\00", [32 x i8] zeroinitializer }, align 32
@iscsit_handle_status_snack._entry_ptr.34 = internal global ptr @iscsit_handle_status_snack._entry.32, section ".printk_index", align 4
@iscsit_handle_data_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Data ACK SNACK for TTT: 0x%08x is invalid.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"iscsit_handle_data_ack\00", [41 x i8] zeroinitializer }, align 32
@iscsit_handle_data_ack._entry_ptr = internal global ptr @iscsit_handle_data_ack._entry, section ".printk_index", align 4
@iscsit_handle_data_ack._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013ITT: 0x%08x Data ACK SNACK BegRUN: 0x%08x is less than the already acked DataSN: 0x%08x.\0A\00", [36 x i8] zeroinitializer }, align 32
@iscsit_handle_data_ack._entry_ptr.39 = internal global ptr @iscsit_handle_data_ack._entry.37, section ".printk_index", align 4
@iscsit_handle_data_ack.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.36, ptr @.str.2, ptr @.str.41, i8 0, i8 -116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iscsi_target_mod\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"Received Data ACK SNACK for ITT: 0x%08x, updated acked DataSN to 0x%08x.\0A\00", [54 x i8] zeroinitializer }, align 32
@lio_ooo_cache = external dso_local local_unnamed_addr global ptr, align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@iscsit_execute_ooo_cmdsns.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iscsit_execute_ooo_cmdsns\00", [38 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Executing out of order CmdSN: 0x%08x, incremented ExpCmdSN to 0x%08x.\0A\00", [57 x i8] zeroinitializer }, align 32
@iscsit_execute_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Unknown iSCSI Logout Request Code: 0x%02x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iscsit_execute_cmd\00", [45 x i8] zeroinitializer }, align 32
@iscsit_execute_cmd._entry_ptr = internal global ptr @iscsit_execute_cmd._entry, section ".printk_index", align 4
@iscsit_execute_cmd._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\013Cannot perform out of order execution for unknown iSCSI Opcode: 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@iscsit_execute_cmd._entry_ptr.48 = internal global ptr @iscsit_execute_cmd._entry.46, section ".printk_index", align 4
@iscsit_handle_dataout_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [122 x i8], [38 x i8] } { [122 x i8] c"\013Unable to recover from DataOut timeout while in ERL=0, closing iSCSI connection for I_T Nexus %s,i,0x%6phN,%s,t,0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iscsit_handle_dataout_timeout\00", [34 x i8] zeroinitializer }, align 32
@iscsit_handle_dataout_timeout._entry_ptr = internal global ptr @iscsit_handle_dataout_timeout._entry, section ".printk_index", align 4
@iscsit_handle_dataout_timeout._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 1130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [132 x i8], [60 x i8] } { [132 x i8] c"\013Command ITT: 0x%08x exceeded max retries for DataOUT timeout %u, closing iSCSI connection for I_T Nexus %s,i,0x%6phN,%s,t,0x%02x\0A\00", [60 x i8] zeroinitializer }, align 32
@iscsit_handle_dataout_timeout._entry_ptr.53 = internal global ptr @iscsit_handle_dataout_timeout._entry.51, section ".printk_index", align 4
@iscsit_handle_dataout_timeout.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.50, ptr @.str.2, ptr @.str.54, i8 1, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"Command ITT: 0x%08x timed out waiting for completion of %sDataOUT Sequence Offset: %u, Length: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Unsolicited \00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@iscsit_mod_dataout_timer.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 1, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsit_mod_dataout_timer\00", [39 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Updated DataOUT timer for ITT: 0x%08x\00", [58 x i8] zeroinitializer }, align 32
@iscsit_start_dataout_timer.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 1, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iscsit_start_dataout_timer\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Starting DataOUT timer for ITT: 0x%08x on CID: %hu.\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@iscsit_stop_dataout_timer.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.40, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 1, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iscsit_stop_dataout_timer\00", [38 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Stopped DataOUT Timer for ITT: 0x%08x\0A\00", [57 x i8] zeroinitializer }, align 32
@__kstrtab_iscsit_stop_dataout_timer = external dso_local constant [0 x i8], align 1
@__kstrtabns_iscsit_stop_dataout_timer = external dso_local constant [0 x i8], align 1
@__ksymtab_iscsit_stop_dataout_timer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iscsit_stop_dataout_timer to i32), ptr @__kstrtab_iscsit_stop_dataout_timer, ptr @__kstrtabns_iscsit_stop_dataout_timer }, section "___ksymtab+iscsit_stop_dataout_timer", align 4
@iscsit_handle_r2t_snack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [153 x i8], [39 x i8] } { [153 x i8] c"\013ITT: 0x%08x, R2T SNACK requesting retransmission of R2TSN: 0x%08x to 0x%08x but already acked to  R2TSN: 0x%08x by TMR TASK_REASSIGN, protocol error.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iscsit_handle_r2t_snack\00", [40 x i8] zeroinitializer }, align 32
@iscsit_handle_r2t_snack._entry_ptr = internal global ptr @iscsit_handle_r2t_snack._entry, section ".printk_index", align 4
@iscsit_handle_r2t_snack._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [129 x i8], [63 x i8] } { [129 x i8] c"\013Command ITT: 0x%08x received R2T SNACK with BegRun: 0x%08x, RunLength: 0x%08x, exceeds current R2TSN: 0x%08x, protocol error.\0A\00", [63 x i8] zeroinitializer }, align 32
@iscsit_handle_r2t_snack._entry_ptr.67 = internal global ptr @iscsit_handle_r2t_snack._entry.65, section ".printk_index", align 4
@iscsit_handle_recovery_datain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Ignoring ITT: 0x%08x Data SNACK\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iscsit_handle_recovery_datain\00", [34 x i8] zeroinitializer }, align 32
@iscsit_handle_recovery_datain._entry_ptr = internal global ptr @iscsit_handle_recovery_datain._entry, section ".printk_index", align 4
@iscsit_handle_recovery_datain._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str.2, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [152 x i8], [40 x i8] } { [152 x i8] c"\013ITT: 0x%08x, Data SNACK requesting retransmission of DataSN: 0x%08x to 0x%08x but already acked to DataSN: 0x%08x by Data ACK SNACK, protocol error.\0A\00", [40 x i8] zeroinitializer }, align 32
@iscsit_handle_recovery_datain._entry_ptr.72 = internal global ptr @iscsit_handle_recovery_datain._entry.70, section ".printk_index", align 4
@iscsit_handle_recovery_datain._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.69, ptr @.str.2, i32 411, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\013Initiator requesting BegRun: 0x%08x, RunLength: 0x%08x greater than maximum DataSN: 0x%08x.\0A\00", [33 x i8] zeroinitializer }, align 32
@iscsit_handle_recovery_datain._entry_ptr.75 = internal global ptr @iscsit_handle_recovery_datain._entry.73, section ".printk_index", align 4
@iscsit_allocate_ooo_cmdsn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.2, i32 761, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013Unable to allocate memory for struct iscsi_ooo_cmdsn.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iscsit_allocate_ooo_cmdsn\00", [38 x i8] zeroinitializer }, align 32
@iscsit_allocate_ooo_cmdsn._entry_ptr = internal global ptr @iscsit_allocate_ooo_cmdsn._entry, section ".printk_index", align 4
@iscsit_set_dataout_timeout_values._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1070, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013cmd->cmd_r2t_list is empty!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iscsit_set_dataout_timeout_values\00", [62 x i8] zeroinitializer }, align 32
@iscsit_set_dataout_timeout_values._entry_ptr = internal global ptr @iscsit_set_dataout_timeout_values._entry, section ".printk_index", align 4
@iscsit_set_dataout_timeout_values._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.2, i32 1086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013Unable to locate any incomplete DataOUT sequences for ITT: 0x%08x.\0A\00", [58 x i8] zeroinitializer }, align 32
@iscsit_set_dataout_timeout_values._entry_ptr.82 = internal global ptr @iscsit_set_dataout_timeout_values._entry.80, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.84 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 61, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 227, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 251, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 264, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 278, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 337, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 348, i32 5 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 358, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 458, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 481, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 503, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 514, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 541, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 547, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 560, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 866, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 981, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 989, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1116, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1125, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1161, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1196, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1213, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1235, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 126, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 137, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 384, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 395, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 409, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 760, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1070, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.322 = private constant [44 x i8] c"../drivers/target/iscsi/iscsi_target_erl1.c\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.322, i32 1085, i32 2 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__ksymtab_iscsit_stop_dataout_timer, ptr @iscsit_allocate_ooo_cmdsn._entry, ptr @iscsit_allocate_ooo_cmdsn._entry_ptr, ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry, ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.11, ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.14, ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.17, ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.20, ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.5, ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.8, ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr, ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.10, ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.13, ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.16, ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.19, ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.22, ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.7, ptr @iscsit_dump_data_payload._entry, ptr @iscsit_dump_data_payload._entry_ptr, ptr @iscsit_execute_cmd._entry, ptr @iscsit_execute_cmd._entry.46, ptr @iscsit_execute_cmd._entry_ptr, ptr @iscsit_execute_cmd._entry_ptr.48, ptr @iscsit_handle_data_ack._entry, ptr @iscsit_handle_data_ack._entry.37, ptr @iscsit_handle_data_ack._entry_ptr, ptr @iscsit_handle_data_ack._entry_ptr.39, ptr @iscsit_handle_dataout_timeout._entry, ptr @iscsit_handle_dataout_timeout._entry.51, ptr @iscsit_handle_dataout_timeout._entry_ptr, ptr @iscsit_handle_dataout_timeout._entry_ptr.53, ptr @iscsit_handle_r2t_snack._entry, ptr @iscsit_handle_r2t_snack._entry.65, ptr @iscsit_handle_r2t_snack._entry_ptr, ptr @iscsit_handle_r2t_snack._entry_ptr.67, ptr @iscsit_handle_recovery_datain._entry, ptr @iscsit_handle_recovery_datain._entry.70, ptr @iscsit_handle_recovery_datain._entry.73, ptr @iscsit_handle_recovery_datain._entry_ptr, ptr @iscsit_handle_recovery_datain._entry_ptr.72, ptr @iscsit_handle_recovery_datain._entry_ptr.75, ptr @iscsit_handle_recovery_datain_or_r2t._entry, ptr @iscsit_handle_recovery_datain_or_r2t._entry_ptr, ptr @iscsit_handle_status_snack._entry, ptr @iscsit_handle_status_snack._entry.29, ptr @iscsit_handle_status_snack._entry.32, ptr @iscsit_handle_status_snack._entry_ptr, ptr @iscsit_handle_status_snack._entry_ptr.31, ptr @iscsit_handle_status_snack._entry_ptr.34, ptr @iscsit_set_dataout_timeout_values._entry, ptr @iscsit_set_dataout_timeout_values._entry.80, ptr @iscsit_set_dataout_timeout_values._entry_ptr, ptr @iscsit_set_dataout_timeout_values._entry_ptr.82, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81], section "llvm.metadata"
@0 = internal global [79 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dump_data_payload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_recovery_datain_or_r2t._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_status_snack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_status_snack._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_status_snack._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_data_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_data_ack._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_execute_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_execute_cmd._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_dataout_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 122, i32 160, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_dataout_timeout._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_r2t_snack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 153, i32 192, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_r2t_snack._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_recovery_datain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_recovery_datain._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_recovery_datain._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_allocate_ooo_cmdsn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_set_dataout_timeout_values._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_set_dataout_timeout_values._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_dump_data_payload(ptr noundef %conn, i32 noundef %buf_len, i32 noundef %dump_padding_digest) local_unnamed_addr #0 align 64 {
entry:
  %iov = alloca %struct.kvec, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #7
  %0 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %1 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sess, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %2, i32 0, i32 47
  %3 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sess_ops, align 8
  %RDMAExtensions = getelementptr inbounds %struct.iscsi_sess_ops, ptr %4, i32 0, i32 18
  %5 = ptrtoint ptr %RDMAExtensions to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %RDMAExtensions, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dump_padding_digest)
  %tobool1.not = icmp eq i32 %dump_padding_digest, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %buf_len, 3
  %and = and i32 %add, -4
  %conn_ops = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 59
  %7 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %conn_ops, align 16
  %DataDigest = getelementptr inbounds %struct.iscsi_conn_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %DataDigest to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %DataDigest, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  %add5 = add i32 %and, 4
  %spec.select = select i1 %tobool3.not, i32 %and, i32 %add5
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %buf_len.addr.0 = phi i32 [ %buf_len, %if.end.if.end7_crit_edge ], [ %spec.select, %if.then2 ]
  %11 = tail call i32 @llvm.umin.i32(i32 %buf_len.addr.0, i32 32768)
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 2848) #10
  %tobool8.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool8.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %11) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %iov to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 0, ptr %iov, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len.addr.0)
  %cmp1353.not = icmp eq i32 %buf_len.addr.0, 0
  br i1 %cmp1353.not, label %if.end12.while.end_crit_edge, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  br label %while.body

if.end12.while.end_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond:                                       ; preds = %while.body
  %add24 = add i32 %13, %offset.054
  %cmp13 = icmp ugt i32 %buf_len.addr.0, %add24
  br i1 %cmp13, label %while.cond.while.body_crit_edge, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %if.end12.while.body_crit_edge
  %offset.054 = phi i32 [ %add24, %while.cond.while.body_crit_edge ], [ 0, %if.end12.while.body_crit_edge ]
  %sub = sub i32 %buf_len.addr.0, %offset.054
  %13 = call i32 @llvm.umin.i32(i32 %sub, i32 %11)
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %0, align 4
  %15 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i.i, ptr %iov, align 8
  %call20 = call i32 @rx_data(ptr noundef %conn, ptr noundef nonnull %iov, i32 noundef 1, i32 noundef %13) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call20, i32 %13)
  %cmp21.not = icmp eq i32 %call20, %13
  br i1 %cmp21.not, label %while.cond, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge, %if.end12.while.end_crit_edge
  %ret.0 = phi i32 [ 3, %if.end12.while.end_crit_edge ], [ -1, %while.body.while.end_crit_edge ], [ 3, %while.cond.while.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %while.end ], [ -1, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rx_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_create_recovery_datain_values_datasequenceinorder_yes(ptr nocapture noundef %cmd, ptr nocapture noundef %dr) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %begrun1 = getelementptr inbounds %struct.iscsi_datain_req, ptr %dr, i32 0, i32 3
  %0 = ptrtoint ptr %begrun1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %begrun1, align 4
  %conn2 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %2 = ptrtoint ptr %conn2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp45.not = icmp eq i32 %1, 0
  br i1 %cmp45.not, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %next_burst_len = getelementptr inbounds %struct.iscsi_datain_req, ptr %dr, i32 0, i32 8
  %conn_ops = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 59
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 68
  %read_data_done16 = getelementptr inbounds %struct.iscsi_datain_req, ptr %dr, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %inc49 = phi i32 [ 1, %while.body.lr.ph ], [ %inc, %if.end.while.body_crit_edge ]
  %seq_no.048 = phi i32 [ 0, %while.body.lr.ph ], [ %seq_no.1, %if.end.while.body_crit_edge ]
  %pdu_start.047 = phi i32 [ 0, %while.body.lr.ph ], [ %pdu_start.1, %if.end.while.body_crit_edge ]
  %data_sn_count.046 = phi i32 [ 0, %while.body.lr.ph ], [ %data_sn_count.1, %if.end.while.body_crit_edge ]
  %inc3 = add i32 %data_sn_count.046, 1
  %4 = ptrtoint ptr %next_burst_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %next_burst_len, align 32
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
  %cmp4 = icmp ult i32 %add, %15
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %read_data_done16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %read_data_done16, align 4
  %add7 = add i32 %17, %9
  store i32 %add7, ptr %read_data_done16, align 4
  %18 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conn_ops, align 16
  %MaxRecvDataSegmentLength9 = getelementptr inbounds %struct.iscsi_conn_ops, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %MaxRecvDataSegmentLength9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %MaxRecvDataSegmentLength9, align 4
  %add11 = add i32 %21, %5
  %22 = ptrtoint ptr %next_burst_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add11, ptr %next_burst_len, align 32
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %15, %5
  %23 = ptrtoint ptr %read_data_done16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %read_data_done16, align 4
  %add17 = add i32 %sub, %24
  store i32 %add17, ptr %read_data_done16, align 4
  %25 = ptrtoint ptr %next_burst_len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %next_burst_len, align 32
  %add19 = add i32 %pdu_start.047, %inc3
  %inc20 = add i32 %seq_no.048, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %data_sn_count.1 = phi i32 [ %inc3, %if.then ], [ 0, %if.else ]
  %pdu_start.1 = phi i32 [ %pdu_start.047, %if.then ], [ %add19, %if.else ]
  %seq_no.1 = phi i32 [ %seq_no.048, %if.then ], [ %inc20, %if.else ]
  %inc = add i32 %inc49, 1
  %exitcond.not = icmp eq i32 %inc49, %1
  br i1 %exitcond.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  %data_sn_count.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %data_sn_count.1, %if.end.while.end_crit_edge ]
  %pdu_start.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %pdu_start.1, %if.end.while.end_crit_edge ]
  %seq_no.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %seq_no.1, %if.end.while.end_crit_edge ]
  %sess21 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 68
  %26 = ptrtoint ptr %sess21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sess21, align 4
  %sess_ops22 = getelementptr inbounds %struct.iscsi_session, ptr %27, i32 0, i32 47
  %28 = ptrtoint ptr %sess_ops22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sess_ops22, align 8
  %DataPDUInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %29, i32 0, i32 14
  %30 = ptrtoint ptr %DataPDUInOrder to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %DataPDUInOrder, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not = icmp eq i8 %31, 0
  br i1 %tobool.not, label %if.then23, label %while.end.if.end26_crit_edge

while.end.if.end26_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then23:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %seq_no24 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 36
  %32 = ptrtoint ptr %seq_no24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %seq_no.0.lcssa, ptr %seq_no24, align 16
  %pdu_start25 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 33
  %33 = ptrtoint ptr %pdu_start25 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %pdu_start.0.lcssa, ptr %pdu_start25, align 4
  %pdu_send_order = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 32
  %34 = ptrtoint ptr %pdu_send_order to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %data_sn_count.0.lcssa, ptr %pdu_send_order, align 32
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %while.end.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_create_recovery_datain_values_datasequenceinorder_no(ptr nocapture noundef readonly %cmd, ptr nocapture noundef %dr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %begrun1 = getelementptr inbounds %struct.iscsi_datain_req, ptr %dr, i32 0, i32 3
  %0 = ptrtoint ptr %begrun1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %begrun1, align 4
  %runlength2 = getelementptr inbounds %struct.iscsi_datain_req, ptr %dr, i32 0, i32 4
  %2 = ptrtoint ptr %runlength2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runlength2, align 16
  %conn3 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %4 = ptrtoint ptr %conn3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %conn3, align 8
  %seq_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 63
  %6 = ptrtoint ptr %seq_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %seq_list, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %seq_count = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 35
  %8 = ptrtoint ptr %seq_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp226.not = icmp eq i32 %9, 0
  br i1 %cmp226.not, label %if.then101.thread, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %5, i32 0, i32 68
  %conn_ops = getelementptr inbounds %struct.iscsi_conn, ptr %5, i32 0, i32 59
  %pdu_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 61
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %cleanup

for.body:                                         ; preds = %for.inc97.for.body_crit_edge, %for.body.lr.ph
  %found_seq.0237 = phi i32 [ 0, %for.body.lr.ph ], [ %found_seq.1, %for.inc97.for.body_crit_edge ]
  %i.0232 = phi i32 [ 0, %for.body.lr.ph ], [ %inc98, %for.inc97.for.body_crit_edge ]
  %read_data_done.0230 = phi i32 [ 0, %for.body.lr.ph ], [ %read_data_done.5, %for.inc97.for.body_crit_edge ]
  %seq_send_order.0228 = phi i32 [ 0, %for.body.lr.ph ], [ %seq_send_order.1, %for.inc97.for.body_crit_edge ]
  %first_seq.0227 = phi ptr [ null, %for.body.lr.ph ], [ %spec.select, %for.inc97.for.body_crit_edge ]
  %10 = ptrtoint ptr %seq_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %seq_list, align 4
  %arrayidx = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232
  %seq_send_order5 = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 13
  %12 = ptrtoint ptr %seq_send_order5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seq_send_order5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  %spec.select = select i1 %tobool6.not, ptr %arrayidx, ptr %first_seq.0227
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool9.not = icmp eq i32 %15, 0
  %first_datasn = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 4
  %16 = ptrtoint ptr %first_datasn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %first_datasn, align 16
  br i1 %tobool9.not, label %do.end13, label %if.end16

do.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %last_datasn = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 5
  %18 = ptrtoint ptr %last_datasn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_datasn, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %17, i32 noundef %19) #11
  br label %for.inc97

if.end16:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %1)
  %cmp18 = icmp ult i32 %17, %1
  br i1 %cmp18, label %land.lhs.true, label %if.end16.if.end31_crit_edge

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

land.lhs.true:                                    ; preds = %if.end16
  %last_datasn19 = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 5
  %20 = ptrtoint ptr %last_datasn19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %last_datasn19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %1)
  %cmp20 = icmp ult i32 %21, %1
  br i1 %cmp20, label %do.end24, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31

do.end24:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %17, i32 noundef %21) #11
  %22 = ptrtoint ptr %seq_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %seq_list, align 4
  %xfer_len = getelementptr %struct.iscsi_seq, ptr %23, i32 %i.0232, i32 15
  %24 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %xfer_len, align 4
  %add = add i32 %25, %read_data_done.0230
  %pdu_send_order = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 11
  %26 = ptrtoint ptr %pdu_send_order to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %pdu_send_order, align 4
  %next_burst_len = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 6
  %27 = ptrtoint ptr %next_burst_len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %next_burst_len, align 8
  br label %for.inc97

if.end31:                                         ; preds = %land.lhs.true.if.end31_crit_edge, %if.end16.if.end31_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %1)
  %cmp33.not = icmp ugt i32 %17, %1
  br i1 %cmp33.not, label %if.end31.do.end89_crit_edge, label %land.lhs.true34

if.end31.do.end89_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end89

land.lhs.true34:                                  ; preds = %if.end31
  %last_datasn35 = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 5
  %28 = ptrtoint ptr %last_datasn35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last_datasn35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %1)
  %cmp36.not = icmp ult i32 %29, %1
  br i1 %cmp36.not, label %lor.lhs.false, label %do.end40

do.end40:                                         ; preds = %land.lhs.true34
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %1, i32 noundef %17, i32 noundef %29) #11
  %30 = ptrtoint ptr %seq_send_order5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %seq_send_order5, align 4
  %32 = ptrtoint ptr %first_datasn to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %first_datasn, align 16
  %pdu_send_order47 = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 11
  %34 = ptrtoint ptr %pdu_send_order47 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %pdu_send_order47, align 4
  %next_burst_len48 = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 6
  %35 = ptrtoint ptr %next_burst_len48 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %next_burst_len48, align 8
  %36 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sess, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %37, i32 0, i32 47
  %38 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %sess_ops, align 8
  %DataPDUInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %DataPDUInOrder to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %DataPDUInOrder, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool49.not = icmp eq i8 %41, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %1)
  %cmp60221 = icmp ult i32 %33, %1
  br i1 %tobool49.not, label %while.cond59.preheader, label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end40
  br i1 %cmp60221, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.for.inc97_crit_edge

while.cond.preheader.for.inc97_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc97

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond59.preheader:                           ; preds = %do.end40
  br i1 %cmp60221, label %while.body61.lr.ph, label %while.cond59.preheader.for.inc97_crit_edge

while.cond59.preheader.for.inc97_crit_edge:       ; preds = %while.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc97

while.body61.lr.ph:                               ; preds = %while.cond59.preheader
  %pdu_count = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 8
  %pdu_start = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 7
  br label %while.body61

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %data_sn.0216 = phi i32 [ %inc58, %while.body.while.body_crit_edge ], [ %33, %while.cond.preheader.while.body_crit_edge ]
  %read_data_done.1215 = phi i32 [ %add53, %while.body.while.body_crit_edge ], [ %read_data_done.0230, %while.cond.preheader.while.body_crit_edge ]
  %42 = ptrtoint ptr %pdu_send_order47 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pdu_send_order47, align 4
  %inc = add i32 %43, 1
  store i32 %inc, ptr %pdu_send_order47, align 4
  %44 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %conn_ops, align 16
  %MaxRecvDataSegmentLength = getelementptr inbounds %struct.iscsi_conn_ops, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %MaxRecvDataSegmentLength to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %MaxRecvDataSegmentLength, align 4
  %add53 = add i32 %47, %read_data_done.1215
  %48 = ptrtoint ptr %next_burst_len48 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %next_burst_len48, align 8
  %add57 = add i32 %49, %47
  store i32 %add57, ptr %next_burst_len48, align 8
  %inc58 = add nuw i32 %data_sn.0216, 1
  %exitcond.not = icmp eq i32 %inc58, %1
  br i1 %exitcond.not, label %while.body.for.inc97_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.for.inc97_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc97

while.body61:                                     ; preds = %for.end.while.body61_crit_edge, %while.body61.lr.ph
  %data_sn.1223 = phi i32 [ %33, %while.body61.lr.ph ], [ %inc78, %for.end.while.body61_crit_edge ]
  %read_data_done.2222 = phi i32 [ %read_data_done.0230, %while.body61.lr.ph ], [ %read_data_done.3.lcssa, %for.end.while.body61_crit_edge ]
  %50 = ptrtoint ptr %pdu_send_order47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pdu_send_order47, align 4
  %inc63 = add i32 %51, 1
  store i32 %inc63, ptr %pdu_send_order47, align 4
  %52 = ptrtoint ptr %pdu_count to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pdu_count, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp65217.not = icmp eq i32 %53, 0
  br i1 %cmp65217.not, label %while.body61.for.end_crit_edge, label %while.body61.for.body66_crit_edge

while.body61.for.body66_crit_edge:                ; preds = %while.body61
  br label %for.body66

while.body61.for.end_crit_edge:                   ; preds = %while.body61
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body66:                                       ; preds = %for.inc.for.body66_crit_edge, %while.body61.for.body66_crit_edge
  %j.0219 = phi i32 [ %inc77, %for.inc.for.body66_crit_edge ], [ 0, %while.body61.for.body66_crit_edge ]
  %read_data_done.3218 = phi i32 [ %read_data_done.4, %for.inc.for.body66_crit_edge ], [ %read_data_done.2222, %while.body61.for.body66_crit_edge ]
  %54 = ptrtoint ptr %pdu_list to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdu_list, align 4
  %56 = ptrtoint ptr %pdu_start to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %pdu_start, align 4
  %add67 = add i32 %57, %j.0219
  %data_sn69 = getelementptr %struct.iscsi_pdu, ptr %55, i32 %add67, i32 3
  %58 = ptrtoint ptr %data_sn69 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data_sn69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %data_sn.1223)
  %cmp70 = icmp eq i32 %59, %data_sn.1223
  br i1 %cmp70, label %if.then71, label %for.body66.for.inc_crit_edge

for.body66.for.inc_crit_edge:                     ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then71:                                        ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #9
  %length = getelementptr %struct.iscsi_pdu, ptr %55, i32 %add67, i32 4
  %60 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length, align 16
  %add72 = add i32 %61, %read_data_done.3218
  %62 = ptrtoint ptr %next_burst_len48 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %next_burst_len48, align 8
  %add75 = add i32 %63, %61
  store i32 %add75, ptr %next_burst_len48, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then71, %for.body66.for.inc_crit_edge
  %read_data_done.4 = phi i32 [ %add72, %if.then71 ], [ %read_data_done.3218, %for.body66.for.inc_crit_edge ]
  %inc77 = add nuw i32 %j.0219, 1
  %64 = ptrtoint ptr %pdu_count to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pdu_count, align 32
  %cmp65 = icmp ult i32 %inc77, %65
  br i1 %cmp65, label %for.inc.for.body66_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body66_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body66

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %while.body61.for.end_crit_edge
  %read_data_done.3.lcssa = phi i32 [ %read_data_done.2222, %while.body61.for.end_crit_edge ], [ %read_data_done.4, %for.inc.for.end_crit_edge ]
  %inc78 = add nuw i32 %data_sn.1223, 1
  %exitcond245.not = icmp eq i32 %inc78, %1
  br i1 %exitcond245.not, label %for.end.for.inc97_crit_edge, label %for.end.while.body61_crit_edge

for.end.while.body61_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body61

for.end.for.inc97_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc97

lor.lhs.false:                                    ; preds = %land.lhs.true34
  %66 = ptrtoint ptr %last_datasn35 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %last_datasn35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %1)
  %cmp85 = icmp ugt i32 %67, %1
  br i1 %cmp85, label %lor.lhs.false.do.end89_crit_edge, label %lor.lhs.false.for.inc97_crit_edge

lor.lhs.false.for.inc97_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc97

lor.lhs.false.do.end89_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end89

do.end89:                                         ; preds = %lor.lhs.false.do.end89_crit_edge, %if.end31.do.end89_crit_edge
  %last_datasn92 = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 5
  %68 = ptrtoint ptr %last_datasn92 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %last_datasn92, align 4
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %17, i32 noundef %69) #11
  %pdu_send_order94 = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 11
  %70 = ptrtoint ptr %pdu_send_order94 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %pdu_send_order94, align 4
  %next_burst_len95 = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 6
  %71 = ptrtoint ptr %next_burst_len95 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %next_burst_len95, align 8
  br label %for.inc97

for.inc97:                                        ; preds = %do.end89, %lor.lhs.false.for.inc97_crit_edge, %for.end.for.inc97_crit_edge, %while.body.for.inc97_crit_edge, %while.cond59.preheader.for.inc97_crit_edge, %while.cond.preheader.for.inc97_crit_edge, %do.end24, %do.end13
  %seq_send_order.1 = phi i32 [ %seq_send_order.0228, %do.end24 ], [ %seq_send_order.0228, %do.end89 ], [ %seq_send_order.0228, %lor.lhs.false.for.inc97_crit_edge ], [ %seq_send_order.0228, %do.end13 ], [ %31, %while.cond59.preheader.for.inc97_crit_edge ], [ %31, %while.cond.preheader.for.inc97_crit_edge ], [ %31, %for.end.for.inc97_crit_edge ], [ %31, %while.body.for.inc97_crit_edge ]
  %read_data_done.5 = phi i32 [ %add, %do.end24 ], [ %read_data_done.0230, %do.end89 ], [ %read_data_done.0230, %lor.lhs.false.for.inc97_crit_edge ], [ %read_data_done.0230, %do.end13 ], [ %read_data_done.0230, %while.cond59.preheader.for.inc97_crit_edge ], [ %read_data_done.0230, %while.cond.preheader.for.inc97_crit_edge ], [ %read_data_done.3.lcssa, %for.end.for.inc97_crit_edge ], [ %add53, %while.body.for.inc97_crit_edge ]
  %found_seq.1 = phi i32 [ %found_seq.0237, %do.end24 ], [ %found_seq.0237, %do.end89 ], [ %found_seq.0237, %lor.lhs.false.for.inc97_crit_edge ], [ %found_seq.0237, %do.end13 ], [ 1, %while.cond59.preheader.for.inc97_crit_edge ], [ 1, %while.cond.preheader.for.inc97_crit_edge ], [ 1, %for.end.for.inc97_crit_edge ], [ 1, %while.body.for.inc97_crit_edge ]
  %inc98 = add nuw i32 %i.0232, 1
  %72 = ptrtoint ptr %seq_count to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %seq_count, align 4
  %cmp = icmp ult i32 %inc98, %73
  br i1 %cmp, label %for.inc97.for.body_crit_edge, label %for.end99

for.inc97.for.body_crit_edge:                     ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end99:                                        ; preds = %for.inc97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found_seq.1)
  %tobool100.not = icmp eq i32 %found_seq.1, 0
  br i1 %tobool100.not, label %if.then101, label %for.end99.done_crit_edge

for.end99.done_crit_edge:                         ; preds = %for.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

if.then101:                                       ; preds = %for.end99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool102.not = icmp eq i32 %1, 0
  br i1 %tobool102.not, label %if.then103, label %if.then101.do.end118_crit_edge

if.then101.do.end118_crit_edge:                   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end118

if.then101.thread:                                ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool102.not259 = icmp eq i32 %1, 0
  br i1 %tobool102.not259, label %if.then101.thread.do.end108_crit_edge, label %if.then101.thread.do.end118_crit_edge

if.then101.thread.do.end118_crit_edge:            ; preds = %if.then101.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end118

if.then101.thread.do.end108_crit_edge:            ; preds = %if.then101.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end108

if.then103:                                       ; preds = %if.then101
  %tobool104.not = icmp eq ptr %spec.select, null
  br i1 %tobool104.not, label %if.then103.do.end108_crit_edge, label %if.end111

if.then103.do.end108_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end108

do.end108:                                        ; preds = %if.then103.do.end108_crit_edge, %if.then101.thread.do.end108_crit_edge
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %74 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %init_task_tag, align 32
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %75, i32 noundef 0) #11
  br label %cleanup

if.end111:                                        ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  %seq_send_order112 = getelementptr inbounds %struct.iscsi_seq, ptr %spec.select, i32 0, i32 13
  %76 = ptrtoint ptr %seq_send_order112 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %seq_send_order112, align 4
  %pdu_send_order113 = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 11
  %78 = ptrtoint ptr %pdu_send_order113 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %pdu_send_order113, align 4
  %next_burst_len114 = getelementptr %struct.iscsi_seq, ptr %11, i32 %i.0232, i32 6
  %79 = ptrtoint ptr %next_burst_len114 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 0, ptr %next_burst_len114, align 8
  br label %done

do.end118:                                        ; preds = %if.then101.thread.do.end118_crit_edge, %if.then101.do.end118_crit_edge
  %init_task_tag120 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %80 = ptrtoint ptr %init_task_tag120 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %init_task_tag120, align 32
  %sess121 = getelementptr inbounds %struct.iscsi_conn, ptr %5, i32 0, i32 68
  %82 = ptrtoint ptr %sess121 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %sess121, align 4
  %sess_ops122 = getelementptr inbounds %struct.iscsi_session, ptr %83, i32 0, i32 47
  %84 = ptrtoint ptr %sess_ops122 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sess_ops122, align 8
  %DataPDUInOrder123 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %85, i32 0, i32 14
  %86 = ptrtoint ptr %DataPDUInOrder123 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %DataPDUInOrder123, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool124.not = icmp eq i8 %87, 0
  %cond = select i1 %tobool124.not, ptr @.str.24, ptr @.str.23
  %call125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %81, i32 noundef %1, i32 noundef %3, ptr noundef nonnull %cond) #11
  br label %cleanup

done:                                             ; preds = %if.end111, %for.end99.done_crit_edge
  %seq_send_order.2 = phi i32 [ %seq_send_order.1, %for.end99.done_crit_edge ], [ %77, %if.end111 ]
  %read_data_done127 = getelementptr inbounds %struct.iscsi_datain_req, ptr %dr, i32 0, i32 9
  %88 = ptrtoint ptr %read_data_done127 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %read_data_done.5, ptr %read_data_done127, align 4
  %seq_send_order128 = getelementptr inbounds %struct.iscsi_datain_req, ptr %dr, i32 0, i32 10
  %89 = ptrtoint ptr %seq_send_order128 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %seq_send_order.2, ptr %seq_send_order128, align 8
  br label %cleanup

cleanup:                                          ; preds = %done, %do.end118, %do.end108, %do.end
  %retval.0 = phi i32 [ 0, %done ], [ -1, %do.end118 ], [ -1, %do.end108 ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_handle_recovery_datain_or_r2t(ptr noundef %conn, ptr noundef %buf, i32 noundef %init_task_tag, i32 noundef %targ_xfer_tag, i32 noundef %begrun, i32 noundef %runlength) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iscsit_find_cmd_from_itt(ptr noundef %conn, i32 noundef %init_task_tag) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_direction = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 46
  %0 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_direction, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  %cmd_flags.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd_flags.i, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %land.lhs.true.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %acked_data_sn.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 23
  %5 = ptrtoint ptr %acked_data_sn.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %acked_data_sn.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %begrun)
  %cmp.not.i = icmp ult i32 %6, %begrun
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %do.end.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %init_task_tag.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 16
  %7 = ptrtoint ptr %init_task_tag.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %init_task_tag.i, align 32
  %add.i = add i32 %runlength, %begrun
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %8, i32 noundef %begrun, i32 noundef %add.i, i32 noundef %6) #11
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %sw.bb.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %runlength)
  %tobool3.not.i = icmp eq i32 %runlength, 0
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.end.i
  %add5.i = add i32 %runlength, %begrun
  %r2t_sn.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 22
  %9 = ptrtoint ptr %r2t_sn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %r2t_sn.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add5.i, i32 %10)
  %cmp6.i = icmp ugt i32 %add5.i, %10
  br i1 %cmp6.i, label %do.end10.i, label %if.then4.i.if.end19.i_crit_edge

if.then4.i.if.end19.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

do.end10.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %init_task_tag12.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 16
  %11 = ptrtoint ptr %init_task_tag12.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %init_task_tag12.i, align 32
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %12, i32 noundef %begrun, i32 noundef %runlength, i32 noundef %10) #11
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %r2t_sn18.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 22
  %13 = ptrtoint ptr %r2t_sn18.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %r2t_sn18.i, align 8
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then4.i.if.end19.i_crit_edge
  %last_r2tsn.0.i = phi i32 [ %14, %if.else.i ], [ %add5.i, %if.then4.i.if.end19.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %last_r2tsn.0.i, i32 %begrun)
  %cmp2056.i = icmp ugt i32 %last_r2tsn.0.i, %begrun
  br i1 %cmp2056.i, label %while.body.lr.ph.i, label %if.end19.i.cleanup_crit_edge

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %if.end19.i
  %r2t_lock.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 54
  %conn.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 66
  br label %while.body.i

while.body.i:                                     ; preds = %iscsit_send_recovery_r2t_for_snack.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %begrun.addr.057.i = phi i32 [ %begrun, %while.body.lr.ph.i ], [ %inc.i, %iscsit_send_recovery_r2t_for_snack.exit.i.while.body.i_crit_edge ]
  %call21.i = tail call ptr @iscsit_get_holder_for_r2tsn(ptr noundef %call, i32 noundef %begrun.addr.057.i) #7
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %while.body.i.cleanup_crit_edge, label %if.end24.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24.i:                                       ; preds = %while.body.i
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock.i.i) #7
  %sent_r2t.i.i = getelementptr inbounds %struct.iscsi_r2t, ptr %call21.i, i32 0, i32 2
  %15 = ptrtoint ptr %sent_r2t.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sent_r2t.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock.i.i) #7
  br label %iscsit_send_recovery_r2t_for_snack.exit.i

if.end.i.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %sent_r2t.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %sent_r2t.i.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock.i.i) #7
  %18 = ptrtoint ptr %conn.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conn.i.i, align 8
  tail call void @iscsit_add_cmd_to_immediate_queue(ptr noundef %call, ptr noundef %19, i8 noundef zeroext 21) #7
  br label %iscsit_send_recovery_r2t_for_snack.exit.i

iscsit_send_recovery_r2t_for_snack.exit.i:        ; preds = %if.end.i.i, %if.then.i.i
  %inc.i = add i32 %begrun.addr.057.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %last_r2tsn.0.i
  br i1 %exitcond.not.i, label %iscsit_send_recovery_r2t_for_snack.exit.i.cleanup_crit_edge, label %iscsit_send_recovery_r2t_for_snack.exit.i.while.body.i_crit_edge

iscsit_send_recovery_r2t_for_snack.exit.i.while.body.i_crit_edge: ; preds = %iscsit_send_recovery_r2t_for_snack.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

iscsit_send_recovery_r2t_for_snack.exit.i.cleanup_crit_edge: ; preds = %iscsit_send_recovery_r2t_for_snack.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %do.end10.i, %do.end.i
  %.sink.i = phi i8 [ 9, %do.end10.i ], [ 4, %do.end.i ]
  %call15.i = tail call i32 @iscsit_reject_cmd(ptr noundef nonnull %call, i8 noundef zeroext %.sink.i, ptr noundef %buf) #7
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %conn1.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 66
  %20 = ptrtoint ptr %conn1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %conn1.i, align 8
  %transport_state.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 70, i32 34
  %22 = ptrtoint ptr %transport_state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %transport_state.i, align 4
  %and.i13 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i13)
  %tobool.not.i14 = icmp eq i32 %and.i13, 0
  br i1 %tobool.not.i14, label %do.end.i17, label %if.end.i19

do.end.i17:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %init_task_tag.i15 = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 16
  %24 = ptrtoint ptr %init_task_tag.i15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %init_task_tag.i15, align 32
  %call.i16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %25) #11
  br label %cleanup

if.end.i19:                                       ; preds = %sw.bb2
  %cmd_flags.i18 = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 15
  %26 = ptrtoint ptr %cmd_flags.i18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cmd_flags.i18, align 4
  %and3.i = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  br i1 %tobool4.not.i, label %if.end.i19.if.end14.i_crit_edge, label %land.lhs.true.i22

if.end.i19.if.end14.i_crit_edge:                  ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

land.lhs.true.i22:                                ; preds = %if.end.i19
  %acked_data_sn.i20 = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 23
  %28 = ptrtoint ptr %acked_data_sn.i20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %acked_data_sn.i20, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %begrun)
  %cmp.not.i21 = icmp ult i32 %29, %begrun
  br i1 %cmp.not.i21, label %land.lhs.true.i22.if.end14.i_crit_edge, label %do.end8.i

land.lhs.true.i22.if.end14.i_crit_edge:           ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i

do.end8.i:                                        ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #9
  %init_task_tag10.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 16
  %30 = ptrtoint ptr %init_task_tag10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %init_task_tag10.i, align 32
  %add.i23 = add i32 %runlength, %begrun
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef %31, i32 noundef %begrun, i32 noundef %add.i23, i32 noundef %29) #11
  %call13.i = tail call i32 @iscsit_reject_cmd(ptr noundef nonnull %call, i8 noundef zeroext 4, ptr noundef %buf) #7
  br label %cleanup

if.end14.i:                                       ; preds = %land.lhs.true.i22.if.end14.i_crit_edge, %if.end.i19.if.end14.i_crit_edge
  %add15.i = add i32 %runlength, %begrun
  %data_sn.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 21
  %32 = ptrtoint ptr %data_sn.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_sn.i, align 4
  %sub.i = add i32 %33, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %sub.i)
  %cmp16.i = icmp ugt i32 %add15.i, %sub.i
  br i1 %cmp16.i, label %do.end20.i, label %if.end26.i

do.end20.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %begrun, i32 noundef %runlength, i32 noundef %sub.i) #11
  %call25.i = tail call i32 @iscsit_reject_cmd(ptr noundef nonnull %call, i8 noundef zeroext 9, ptr noundef %buf) #7
  br label %cleanup

if.end26.i:                                       ; preds = %if.end14.i
  %call27.i = tail call ptr @iscsit_allocate_datain_req() #7
  %tobool28.not.i = icmp eq ptr %call27.i, null
  br i1 %tobool28.not.i, label %if.then29.i, label %if.end31.i

if.then29.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %call30.i = tail call i32 @iscsit_reject_cmd(ptr noundef nonnull %call, i8 noundef zeroext 10, ptr noundef %buf) #7
  br label %cleanup

if.end31.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %begrun32.i = getelementptr inbounds %struct.iscsi_datain_req, ptr %call27.i, i32 0, i32 3
  %34 = ptrtoint ptr %begrun32.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %begrun, ptr %begrun32.i, align 4
  %data_sn33.i = getelementptr inbounds %struct.iscsi_datain_req, ptr %call27.i, i32 0, i32 7
  %35 = ptrtoint ptr %data_sn33.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %begrun, ptr %data_sn33.i, align 4
  %runlength34.i = getelementptr inbounds %struct.iscsi_datain_req, ptr %call27.i, i32 0, i32 4
  %36 = ptrtoint ptr %runlength34.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %runlength, ptr %runlength34.i, align 16
  %generate_recovery_values.i = getelementptr inbounds %struct.iscsi_datain_req, ptr %call27.i, i32 0, i32 1
  %37 = ptrtoint ptr %generate_recovery_values.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %generate_recovery_values.i, align 4
  %recovery.i = getelementptr inbounds %struct.iscsi_datain_req, ptr %call27.i, i32 0, i32 2
  %38 = ptrtoint ptr %recovery.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %recovery.i, align 8
  tail call void @iscsit_attach_datain_req(ptr noundef nonnull %call, ptr noundef nonnull %call27.i) #7
  %i_state.i = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 4
  %39 = ptrtoint ptr %i_state.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 12, ptr %i_state.i, align 4
  %call36.i = tail call i32 @iscsit_add_cmd_to_response_queue(ptr noundef nonnull %call, ptr noundef %21, i8 noundef zeroext 12) #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %1) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end31.i, %if.then29.i, %do.end20.i, %do.end8.i, %do.end.i17, %cleanup.sink.split.i, %iscsit_send_recovery_r2t_for_snack.exit.i.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end19.i.cleanup_crit_edge ], [ %call15.i, %cleanup.sink.split.i ], [ %call13.i, %do.end8.i ], [ %call25.i, %do.end20.i ], [ 0, %if.end31.i ], [ %call30.i, %if.then29.i ], [ 0, %do.end.i17 ], [ 0, %iscsit_send_recovery_r2t_for_snack.exit.i.cleanup_crit_edge ], [ -1, %while.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_find_cmd_from_itt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_handle_status_snack(ptr noundef %conn, i32 noundef %init_task_tag, i32 noundef %targ_xfer_tag, i32 noundef %begrun, i32 noundef %runlength) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %begrun)
  %tobool.not = icmp eq i32 %begrun, 0
  %exp_statsn = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 15
  %0 = ptrtoint ptr %exp_statsn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %exp_statsn, align 4
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.else

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %begrun)
  %cmp = icmp ugt i32 %1, %begrun
  br i1 %cmp, label %do.end, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %cid = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %2 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cid, align 2
  %conv = zext i16 %3 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %begrun, i32 noundef %runlength, i32 noundef %1, i32 noundef %conv) #11
  br label %cleanup

if.end4:                                          ; preds = %if.else.if.end4_crit_edge, %entry.if.end4_crit_edge
  %begrun.addr.0 = phi i32 [ %begrun, %if.else.if.end4_crit_edge ], [ %1, %entry.if.end4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %runlength)
  %tobool5.not = icmp eq i32 %runlength, 0
  br i1 %tobool5.not, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %stat_sn = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 16
  %4 = ptrtoint ptr %stat_sn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat_sn, align 32
  br label %cond.end

cond.false:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %begrun.addr.0, %runlength
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %5, %cond.true ], [ %add, %cond.false ]
  call void @__sanitizer_cov_trace_cmp4(i32 %begrun.addr.0, i32 %cond)
  %cmp683 = icmp ult i32 %begrun.addr.0, %cond
  br i1 %cmp683, label %while.body.lr.ph, label %cond.end.cleanup_crit_edge

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body.lr.ph:                                 ; preds = %cond.end
  %cmd_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 46
  %conn_cmd_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 56
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %begrun.addr.184 = phi i32 [ %begrun.addr.0, %while.body.lr.ph ], [ %begrun.addr.1.be, %while.cond.backedge.while.body_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %while.body
  %.pn.in = phi ptr [ %conn_cmd_list, %while.body ], [ %.pn, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp10.not = icmp eq ptr %.pn, %conn_cmd_list
  br i1 %cmp10.not, label %do.end27.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %stat_sn12 = getelementptr i8, ptr %.pn, i32 -532
  %7 = ptrtoint ptr %stat_sn12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stat_sn12, align 16
  %cmp13 = icmp eq i32 %8, %begrun.addr.184
  br i1 %cmp13, label %if.end30.critedge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

do.end27.critedge:                                ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #7
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %begrun.addr.184) #11
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end41, %if.then33, %do.end27.critedge
  %begrun.addr.1.be = add nuw i32 %begrun.addr.184, 1
  %exitcond.not = icmp eq i32 %begrun.addr.1.be, %cond
  br i1 %exitcond.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30.critedge:                                ; preds = %for.body
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #7
  %istate_lock = getelementptr i8, ptr %.pn, i32 -276
  tail call void @_raw_spin_lock_bh(ptr noundef %istate_lock) #7
  %i_state = getelementptr i8, ptr %.pn, i32 -568
  %9 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %i_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %10)
  %cmp31 = icmp eq i32 %10, 12
  br i1 %cmp31, label %if.then33, label %if.end41

if.then33:                                        ; preds = %if.end30.critedge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %istate_lock) #7
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %begrun.addr.184, i32 noundef %runlength) #11
  br label %while.cond.backedge

if.end41:                                         ; preds = %if.end30.critedge
  call void @__sanitizer_cov_trace_pc() #9
  %cmd.0.le = getelementptr i8, ptr %.pn, i32 -580
  tail call void @_raw_spin_unlock_bh(ptr noundef %istate_lock) #7
  %11 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 32, ptr %i_state, align 4
  %call46 = tail call i32 @iscsit_add_cmd_to_response_queue(ptr noundef %cmd.0.le, ptr noundef %conn, i8 noundef zeroext 32) #7
  br label %while.cond.backedge

cleanup:                                          ; preds = %while.cond.backedge.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_add_cmd_to_response_queue(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_handle_data_ack(ptr noundef %conn, i32 noundef %targ_xfer_tag, i32 noundef %begrun, i32 noundef %runlength) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @iscsit_find_cmd_from_ttt(ptr noundef %conn, i32 noundef %targ_xfer_tag) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %targ_xfer_tag) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %acked_data_sn = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 23
  %0 = ptrtoint ptr %acked_data_sn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %acked_data_sn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %begrun)
  %cmp.not = icmp ult i32 %1, %begrun
  br i1 %cmp.not, label %if.end9, label %do.end5

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_task_tag, align 32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %3, i32 noundef %begrun, i32 noundef %1) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_flags = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 15
  %4 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_flags, align 4
  %or = or i32 %5, 2
  store i32 %or, ptr %cmd_flags, align 4
  %sub = add i32 %begrun, -1
  %6 = ptrtoint ptr %acked_data_sn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %acked_data_sn, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_handle_data_ack.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_handle_data_ack, %if.then17)) #7
          to label %cleanup [label %if.then17], !srcloc !154

if.then17:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %init_task_tag18 = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 16
  %7 = ptrtoint ptr %init_task_tag18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %init_task_tag18, align 32
  %9 = ptrtoint ptr %acked_data_sn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %acked_data_sn, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_handle_data_ack.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.41, i32 noundef %8, i32 noundef %10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end9, %do.end5, %do.end
  %retval.0 = phi i32 [ -1, %do.end5 ], [ -1, %do.end ], [ 0, %if.then17 ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_find_cmd_from_ttt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_dataout_datapduinorder_no_fbit(ptr noundef %cmd, ptr nocapture noundef readonly %pdu) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %2 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sess, align 4
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
  br i1 %tobool.not, label %if.else18, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %pdu_count2 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 31
  %8 = ptrtoint ptr %pdu_count2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pdu_count2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp110.not = icmp eq i32 %9, 0
  br i1 %cmp110.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pdu_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 61
  %10 = ptrtoint ptr %pdu_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdu_list, align 4
  %seq_no3 = getelementptr inbounds %struct.iscsi_pdu, ptr %pdu, i32 0, i32 7
  %12 = ptrtoint ptr %seq_no3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %seq_no3, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %first_pdu.0115 = phi ptr [ null, %for.body.lr.ph ], [ %first_pdu.2, %for.inc.for.body_crit_edge ]
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc17, %for.inc.for.body_crit_edge ]
  %pdu_count.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %pdu_count.1, %for.inc.for.body_crit_edge ]
  %seq_no = getelementptr %struct.iscsi_pdu, ptr %11, i32 %i.0113, i32 7
  %14 = ptrtoint ptr %seq_no to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seq_no, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp4 = icmp eq i32 %15, %13
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.iscsi_pdu, ptr %11, i32 %i.0113
  %tobool6.not = icmp eq ptr %first_pdu.0115, null
  %spec.select = select i1 %tobool6.not, ptr %arrayidx, ptr %first_pdu.0115
  %inc = add i32 %pdu_count.0111, 1
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pdu_count.0111)
  %tobool13.not = icmp eq i32 %pdu_count.0111, 0
  br i1 %tobool13.not, label %if.else.for.inc_crit_edge, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %if.then5
  %pdu_count.1 = phi i32 [ %inc, %if.then5 ], [ 0, %if.else.for.inc_crit_edge ]
  %first_pdu.2 = phi ptr [ %spec.select, %if.then5 ], [ %first_pdu.0115, %if.else.for.inc_crit_edge ]
  %inc17 = add nuw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc17, %9
  br i1 %exitcond.not, label %for.inc.if.end22_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end22_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.else18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %seq_ptr = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 64
  %16 = ptrtoint ptr %seq_ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %seq_ptr, align 16
  %pdu_list19 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 61
  %18 = ptrtoint ptr %pdu_list19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdu_list19, align 4
  %pdu_start = getelementptr inbounds %struct.iscsi_seq, ptr %17, i32 0, i32 7
  %20 = ptrtoint ptr %pdu_start to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pdu_start, align 4
  %arrayidx20 = getelementptr %struct.iscsi_pdu, ptr %19, i32 %21
  %pdu_count21 = getelementptr inbounds %struct.iscsi_seq, ptr %17, i32 0, i32 8
  %22 = ptrtoint ptr %pdu_count21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pdu_count21, align 32
  br label %if.end22

if.end22:                                         ; preds = %if.else18, %for.inc.if.end22_crit_edge, %if.else.if.end22_crit_edge
  %pdu_count.2 = phi i32 [ %23, %if.else18 ], [ %pdu_count.0111, %if.else.if.end22_crit_edge ], [ %pdu_count.1, %for.inc.if.end22_crit_edge ]
  %first_pdu.3 = phi ptr [ %arrayidx20, %if.else18 ], [ %first_pdu.0115, %if.else.if.end22_crit_edge ], [ %first_pdu.2, %for.inc.if.end22_crit_edge ]
  %tobool23.not = icmp eq ptr %first_pdu.3, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pdu_count.2)
  %tobool24.not = icmp eq i32 %pdu_count.2, 0
  %or.cond = select i1 %tobool23.not, i1 true, i1 %tobool24.not
  br i1 %or.cond, label %if.end22.cleanup_crit_edge, label %for.body29.lr.ph

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body29.lr.ph:                                 ; preds = %if.end22
  %r2t_lock.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 54
  br label %for.body29

for.body29:                                       ; preds = %for.body29.backedge, %for.body29.lr.ph
  %i.1124 = phi i32 [ 0, %for.body29.lr.ph ], [ %i.1124.be, %for.body29.backedge ]
  %offset.0123 = phi i32 [ 0, %for.body29.lr.ph ], [ %offset.0123.be, %for.body29.backedge ]
  %length.0122 = phi i32 [ 0, %for.body29.lr.ph ], [ %length.0122.be, %for.body29.backedge ]
  %recovery.0121 = phi i32 [ 0, %for.body29.lr.ph ], [ %recovery.0121.be, %for.body29.backedge ]
  %send_recovery_r2t.0120 = phi i32 [ 0, %for.body29.lr.ph ], [ %send_recovery_r2t.0120.be, %for.body29.backedge ]
  %arrayidx30 = getelementptr %struct.iscsi_pdu, ptr %first_pdu.3, i32 %i.1124
  %24 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx30, align 128
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %25, label %for.body29.for.inc53_crit_edge [
    i32 1, label %if.then32
    i32 0, label %if.end44
  ]

for.body29.for.inc53_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc53

if.then32:                                        ; preds = %for.body29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %send_recovery_r2t.0120)
  %tobool33.not = icmp eq i32 %send_recovery_r2t.0120, 0
  br i1 %tobool33.not, label %if.then32.for.inc53_crit_edge, label %if.end35

if.then32.for.inc53_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc53

if.end35:                                         ; preds = %if.then32
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock.i) #7
  %call.i = tail call i32 @iscsit_add_r2t_to_list(ptr noundef %cmd, i32 noundef %offset.0123, i32 noundef %length.0122, i32 noundef 1, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp36 = icmp slt i32 %call.i, 0
  br i1 %cmp36, label %if.end35.cleanup_crit_edge, label %if.end35.for.inc53_crit_edge

if.end35.for.inc53_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc53

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %for.body29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.0123)
  %tobool45.not = icmp eq i32 %offset.0123, 0
  br i1 %tobool45.not, label %if.then46, label %if.end44.for.inc53.thread_crit_edge

if.end44.for.inc53.thread_crit_edge:              ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc53.thread

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %offset48 = getelementptr %struct.iscsi_pdu, ptr %first_pdu.3, i32 %i.1124, i32 5
  %27 = ptrtoint ptr %offset48 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %offset48, align 4
  br label %for.inc53.thread

for.inc53:                                        ; preds = %if.end35.for.inc53_crit_edge, %if.then32.for.inc53_crit_edge, %for.body29.for.inc53_crit_edge
  %send_recovery_r2t.1 = phi i32 [ 0, %if.then32.for.inc53_crit_edge ], [ 0, %if.end35.for.inc53_crit_edge ], [ %send_recovery_r2t.0120, %for.body29.for.inc53_crit_edge ]
  %recovery.1 = phi i32 [ %recovery.0121, %if.then32.for.inc53_crit_edge ], [ %recovery.0121, %if.end35.for.inc53_crit_edge ], [ 1, %for.body29.for.inc53_crit_edge ]
  %length.1 = phi i32 [ %length.0122, %if.then32.for.inc53_crit_edge ], [ 0, %if.end35.for.inc53_crit_edge ], [ %length.0122, %for.body29.for.inc53_crit_edge ]
  %offset.2 = phi i32 [ %offset.0123, %if.then32.for.inc53_crit_edge ], [ 0, %if.end35.for.inc53_crit_edge ], [ %offset.0123, %for.body29.for.inc53_crit_edge ]
  %inc54 = add nuw i32 %i.1124, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc54, i32 %pdu_count.2)
  %exitcond130.not = icmp eq i32 %inc54, %pdu_count.2
  br i1 %exitcond130.not, label %for.end55, label %for.inc53.for.body29.backedge_crit_edge

for.inc53.for.body29.backedge_crit_edge:          ; preds = %for.inc53
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body29.backedge

for.body29.backedge:                              ; preds = %for.inc53.thread.for.body29.backedge_crit_edge, %for.inc53.for.body29.backedge_crit_edge
  %i.1124.be = phi i32 [ %inc54, %for.inc53.for.body29.backedge_crit_edge ], [ %inc54140, %for.inc53.thread.for.body29.backedge_crit_edge ]
  %offset.0123.be = phi i32 [ %offset.2, %for.inc53.for.body29.backedge_crit_edge ], [ %offset.1, %for.inc53.thread.for.body29.backedge_crit_edge ]
  %length.0122.be = phi i32 [ %length.1, %for.inc53.for.body29.backedge_crit_edge ], [ %add52, %for.inc53.thread.for.body29.backedge_crit_edge ]
  %recovery.0121.be = phi i32 [ %recovery.1, %for.inc53.for.body29.backedge_crit_edge ], [ 1, %for.inc53.thread.for.body29.backedge_crit_edge ]
  %send_recovery_r2t.0120.be = phi i32 [ %send_recovery_r2t.1, %for.inc53.for.body29.backedge_crit_edge ], [ 1, %for.inc53.thread.for.body29.backedge_crit_edge ]
  br label %for.body29

for.inc53.thread:                                 ; preds = %if.then46, %if.end44.for.inc53.thread_crit_edge
  %offset.1 = phi i32 [ %offset.0123, %if.end44.for.inc53.thread_crit_edge ], [ %28, %if.then46 ]
  %length51 = getelementptr %struct.iscsi_pdu, ptr %first_pdu.3, i32 %i.1124, i32 4
  %29 = ptrtoint ptr %length51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %length51, align 16
  %add52 = add i32 %30, %length.0122
  %inc54140 = add nuw i32 %i.1124, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc54140, i32 %pdu_count.2)
  %exitcond130.not141 = icmp eq i32 %inc54140, %pdu_count.2
  br i1 %exitcond130.not141, label %for.inc53.thread.if.then57_crit_edge, label %for.inc53.thread.for.body29.backedge_crit_edge

for.inc53.thread.for.body29.backedge_crit_edge:   ; preds = %for.inc53.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body29.backedge

for.inc53.thread.if.then57_crit_edge:             ; preds = %for.inc53.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.end55:                                        ; preds = %for.inc53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %send_recovery_r2t.1)
  %tobool56.not = icmp eq i32 %send_recovery_r2t.1, 0
  br i1 %tobool56.not, label %for.end55.if.end62_crit_edge, label %for.end55.if.then57_crit_edge

for.end55.if.then57_crit_edge:                    ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then57

for.end55.if.end62_crit_edge:                     ; preds = %for.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then57:                                        ; preds = %for.end55.if.then57_crit_edge, %for.inc53.thread.if.then57_crit_edge
  %recovery.1143153 = phi i32 [ %recovery.1, %for.end55.if.then57_crit_edge ], [ 1, %for.inc53.thread.if.then57_crit_edge ]
  %length.1144152 = phi i32 [ %length.1, %for.end55.if.then57_crit_edge ], [ %add52, %for.inc53.thread.if.then57_crit_edge ]
  %offset.2145151 = phi i32 [ %offset.2, %for.end55.if.then57_crit_edge ], [ %offset.1, %for.inc53.thread.if.then57_crit_edge ]
  %r2t_lock.i104 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock.i104) #7
  %call.i105 = tail call i32 @iscsit_add_r2t_to_list(ptr noundef %cmd, i32 noundef %offset.2145151, i32 noundef %length.1144152, i32 noundef 1, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock.i104) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %cmp59 = icmp slt i32 %call.i105, 0
  br i1 %cmp59, label %if.then57.cleanup_crit_edge, label %if.then57.if.end62_crit_edge

if.then57.if.end62_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end62:                                         ; preds = %if.then57.if.end62_crit_edge, %for.end55.if.end62_crit_edge
  %recovery.1143154 = phi i32 [ %recovery.1143153, %if.then57.if.end62_crit_edge ], [ %recovery.1, %for.end55.if.end62_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %recovery.1143154)
  %tobool63.not = icmp eq i32 %recovery.1143154, 0
  %cond = select i1 %tobool63.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %if.then57.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end62 ], [ -1, %if.end22.cleanup_crit_edge ], [ -1, %if.then57.cleanup_crit_edge ], [ -1, %for.cond.preheader.cleanup_crit_edge ], [ -1, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_recover_dataout_sequence(ptr noundef %cmd, i32 noundef %pdu_offset, i32 noundef %pdu_length) local_unnamed_addr #0 align 64 {
entry:
  %r2t_length = alloca i32, align 4
  %r2t_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r2t_length) #7
  %0 = ptrtoint ptr %r2t_length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %r2t_length, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r2t_offset) #7
  %1 = ptrtoint ptr %r2t_offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %r2t_offset, align 4
  %istate_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 52
  tail call void @_raw_spin_lock_bh(ptr noundef %istate_lock) #7
  %cmd_flags = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 15
  %2 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_flags, align 4
  %or = or i32 %3, 16
  store i32 %or, ptr %cmd_flags, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %istate_lock) #7
  %call = call fastcc i32 @iscsit_recalculate_dataout_values(ptr noundef %cmd, i32 noundef %pdu_offset, i32 noundef %pdu_length, ptr noundef nonnull %r2t_offset, ptr noundef nonnull %r2t_length)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %r2t_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %r2t_offset, align 4
  %6 = ptrtoint ptr %r2t_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %r2t_length, align 4
  %r2t_lock.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock.i) #7
  %call.i = tail call i32 @iscsit_add_r2t_to_list(ptr noundef %cmd, i32 noundef %5, i32 noundef %7, i32 noundef 1, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r2t_offset) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r2t_length) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsit_recalculate_dataout_values(ptr noundef %cmd, i32 noundef %pdu_offset, i32 noundef %pdu_length, ptr nocapture noundef writeonly %r2t_offset, ptr nocapture noundef writeonly %r2t_length) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %2 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sess, align 4
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
  br i1 %tobool.not, label %if.else31, label %if.then

if.then:                                          ; preds = %entry
  %data_sn = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 21
  %8 = ptrtoint ptr %data_sn to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %data_sn, align 4
  %9 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sess, align 4
  %sess_ops3 = getelementptr inbounds %struct.iscsi_session, ptr %10, i32 0, i32 47
  %11 = ptrtoint ptr %sess_ops3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sess_ops3, align 8
  %DataPDUInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %DataPDUInOrder to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %DataPDUInOrder, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  br i1 %tobool4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %write_data_done = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  %15 = ptrtoint ptr %write_data_done to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %write_data_done, align 128
  %17 = ptrtoint ptr %r2t_offset to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %r2t_offset, align 4
  %seq_end_offset = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 38
  %18 = ptrtoint ptr %seq_end_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %seq_end_offset, align 8
  %20 = load i32, ptr %write_data_done, align 128
  %sub = sub i32 %19, %20
  %21 = ptrtoint ptr %r2t_length to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub, ptr %r2t_length, align 4
  br label %cleanup72

if.end:                                           ; preds = %if.then
  %seq_start_offset = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 37
  %22 = ptrtoint ptr %seq_start_offset to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %seq_start_offset, align 4
  %24 = ptrtoint ptr %r2t_offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %r2t_offset, align 4
  %seq_end_offset7 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 38
  %25 = ptrtoint ptr %seq_end_offset7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %seq_end_offset7, align 8
  %27 = load i32, ptr %seq_start_offset, align 4
  %sub9 = sub i32 %26, %27
  %28 = ptrtoint ptr %r2t_length to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub9, ptr %r2t_length, align 4
  %pdu_count = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 31
  %29 = ptrtoint ptr %pdu_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pdu_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp130.not = icmp eq i32 %30, 0
  br i1 %cmp130.not, label %if.end.cleanup72_crit_edge, label %for.body.lr.ph

if.end.cleanup72_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup72

for.body.lr.ph:                                   ; preds = %if.end
  %pdu_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 61
  %unsolicited_data = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 12
  %first_burst_len = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 41
  %next_burst_len = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 42
  %write_data_done27 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0131 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %31 = ptrtoint ptr %pdu_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pdu_list, align 4
  %arrayidx = getelementptr %struct.iscsi_pdu, ptr %32, i32 %i.0131
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp10.not = icmp eq i32 %34, 1
  br i1 %cmp10.not, label %if.end12, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end12:                                         ; preds = %for.body
  %offset = getelementptr %struct.iscsi_pdu, ptr %32, i32 %i.0131, i32 5
  %35 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offset, align 4
  %37 = ptrtoint ptr %seq_start_offset to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %seq_start_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %38)
  %cmp14.not = icmp ult i32 %36, %38
  br i1 %cmp14.not, label %if.end12.for.inc_crit_edge, label %land.lhs.true

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end12
  %length = getelementptr %struct.iscsi_pdu, ptr %32, i32 %i.0131, i32 4
  %39 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %length, align 16
  %add = add i32 %40, %36
  %41 = ptrtoint ptr %seq_end_offset7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %seq_end_offset7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %42)
  %cmp17.not = icmp ugt i32 %add, %42
  br i1 %cmp17.not, label %land.lhs.true.for.inc_crit_edge, label %if.then18

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true
  %43 = ptrtoint ptr %unsolicited_data to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %unsolicited_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool19.not = icmp eq i8 %44, 0
  br i1 %tobool19.not, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %next_burst_len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %next_burst_len, align 8
  %sub22 = sub i32 %46, %40
  store i32 %sub22, ptr %next_burst_len, align 8
  br label %if.end25

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %first_burst_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %first_burst_len, align 4
  %sub24 = sub i32 %48, %40
  store i32 %sub24, ptr %first_burst_len, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then20
  %49 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %length, align 16
  %51 = ptrtoint ptr %write_data_done27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %write_data_done27, align 128
  %sub28 = sub i32 %52, %50
  store i32 %sub28, ptr %write_data_done27, align 128
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx, align 128
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %land.lhs.true.for.inc_crit_edge, %if.end12.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0131, 1
  %54 = ptrtoint ptr %pdu_count to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pdu_count, align 4
  %cmp = icmp ult i32 %inc, %55
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup72_crit_edge

for.inc.cleanup72_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup72

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.else31:                                        ; preds = %entry
  %call = tail call ptr @iscsit_get_seq_holder(ptr noundef %cmd, i32 noundef %pdu_offset, i32 noundef %pdu_length) #7
  %tobool32.not = icmp eq ptr %call, null
  br i1 %tobool32.not, label %if.else31.cleanup72_crit_edge, label %if.end34

if.else31.cleanup72_crit_edge:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup72

if.end34:                                         ; preds = %if.else31
  %orig_offset = getelementptr inbounds %struct.iscsi_seq, ptr %call, i32 0, i32 10
  %56 = ptrtoint ptr %orig_offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %orig_offset, align 8
  %58 = ptrtoint ptr %r2t_offset to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %r2t_offset, align 4
  %xfer_len = getelementptr inbounds %struct.iscsi_seq, ptr %call, i32 0, i32 15
  %59 = ptrtoint ptr %xfer_len to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %xfer_len, align 4
  %61 = ptrtoint ptr %r2t_length to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %r2t_length, align 4
  %offset35 = getelementptr inbounds %struct.iscsi_seq, ptr %call, i32 0, i32 9
  %62 = ptrtoint ptr %offset35 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset35, align 4
  %64 = load i32, ptr %orig_offset, align 8
  %sub37.neg = sub i32 %64, %63
  %write_data_done38 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  %65 = ptrtoint ptr %write_data_done38 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %write_data_done38, align 128
  %sub39 = add i32 %sub37.neg, %66
  store i32 %sub39, ptr %write_data_done38, align 128
  %immediate_data = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 6
  %67 = ptrtoint ptr %immediate_data to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %immediate_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool40.not = icmp eq i8 %68, 0
  br i1 %tobool40.not, label %if.end34.if.end44_crit_edge, label %if.then41

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then41:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %first_burst_len43 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 41
  %69 = ptrtoint ptr %first_burst_len43 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %sub39, ptr %first_burst_len43, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then41, %if.end34.if.end44_crit_edge
  %data_sn45 = getelementptr inbounds %struct.iscsi_seq, ptr %call, i32 0, i32 3
  %70 = ptrtoint ptr %data_sn45 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %data_sn45, align 4
  %71 = ptrtoint ptr %orig_offset to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %orig_offset, align 8
  %73 = ptrtoint ptr %offset35 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %offset35, align 4
  %next_burst_len48 = getelementptr inbounds %struct.iscsi_seq, ptr %call, i32 0, i32 6
  %74 = ptrtoint ptr %next_burst_len48 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %next_burst_len48, align 8
  %status49 = getelementptr inbounds %struct.iscsi_seq, ptr %call, i32 0, i32 1
  %75 = ptrtoint ptr %status49 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 2, ptr %status49, align 4
  %76 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %sess, align 4
  %sess_ops51 = getelementptr inbounds %struct.iscsi_session, ptr %77, i32 0, i32 47
  %78 = ptrtoint ptr %sess_ops51 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sess_ops51, align 8
  %DataPDUInOrder52 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %79, i32 0, i32 14
  %80 = ptrtoint ptr %DataPDUInOrder52 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %DataPDUInOrder52, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool53.not = icmp eq i8 %81, 0
  br i1 %tobool53.not, label %for.cond56.preheader, label %if.end44.cleanup72_crit_edge

if.end44.cleanup72_crit_edge:                     ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup72

for.cond56.preheader:                             ; preds = %if.end44
  %pdu_count57 = getelementptr inbounds %struct.iscsi_seq, ptr %call, i32 0, i32 8
  %82 = ptrtoint ptr %pdu_count57 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pdu_count57, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp58133.not = icmp eq i32 %83, 0
  br i1 %cmp58133.not, label %for.cond56.preheader.cleanup72_crit_edge, label %for.body59.lr.ph

for.cond56.preheader.cleanup72_crit_edge:         ; preds = %for.cond56.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup72

for.body59.lr.ph:                                 ; preds = %for.cond56.preheader
  %pdu_list60 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 61
  %pdu_start = getelementptr inbounds %struct.iscsi_seq, ptr %call, i32 0, i32 7
  br label %for.body59

for.body59:                                       ; preds = %for.inc68.for.body59_crit_edge, %for.body59.lr.ph
  %i.1134 = phi i32 [ 0, %for.body59.lr.ph ], [ %inc69, %for.inc68.for.body59_crit_edge ]
  %84 = ptrtoint ptr %pdu_list60 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdu_list60, align 4
  %86 = ptrtoint ptr %pdu_start to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %pdu_start, align 4
  %add61 = add i32 %87, %i.1134
  %arrayidx62 = getelementptr %struct.iscsi_pdu, ptr %85, i32 %add61
  %88 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx62, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %89)
  %cmp64.not = icmp eq i32 %89, 1
  br i1 %cmp64.not, label %if.end66, label %for.body59.for.inc68_crit_edge

for.body59.for.inc68_crit_edge:                   ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc68

if.end66:                                         ; preds = %for.body59
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %arrayidx62, align 128
  br label %for.inc68

for.inc68:                                        ; preds = %if.end66, %for.body59.for.inc68_crit_edge
  %inc69 = add nuw i32 %i.1134, 1
  %91 = ptrtoint ptr %pdu_count57 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pdu_count57, align 32
  %cmp58 = icmp ult i32 %inc69, %92
  br i1 %cmp58, label %for.inc68.for.body59_crit_edge, label %for.inc68.cleanup72_crit_edge

for.inc68.cleanup72_crit_edge:                    ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup72

for.inc68.for.body59_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body59

cleanup72:                                        ; preds = %for.inc68.cleanup72_crit_edge, %for.cond56.preheader.cleanup72_crit_edge, %if.end44.cleanup72_crit_edge, %if.else31.cleanup72_crit_edge, %for.inc.cleanup72_crit_edge, %if.end.cleanup72_crit_edge, %if.then5
  %retval.1 = phi i32 [ 0, %if.then5 ], [ 0, %if.end44.cleanup72_crit_edge ], [ -1, %if.else31.cleanup72_crit_edge ], [ 0, %for.cond56.preheader.cleanup72_crit_edge ], [ 0, %if.end.cleanup72_crit_edge ], [ 0, %for.inc68.cleanup72_crit_edge ], [ 0, %for.inc.cleanup72_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_remove_ooo_cmdsn(ptr nocapture readnone %sess, ptr noundef %ooo_cmdsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ooo_list = getelementptr inbounds %struct.iscsi_ooo_cmdsn, ptr %ooo_cmdsn, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ooo_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.iscsi_ooo_cmdsn, ptr %ooo_cmdsn, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %ooo_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ooo_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %ooo_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %ooo_list, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_ooo_cmdsn, ptr %ooo_cmdsn, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_ooo_cache to i32))
  %8 = load ptr, ptr @lio_ooo_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %8, ptr noundef %ooo_cmdsn) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_clear_ooo_cmdsns_for_conn(ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %cmdsn_mutex = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %cmdsn_mutex, i32 noundef 0) #7
  %sess_ooo_cmdsn_list = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %sess_ooo_cmdsn_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn20 = load ptr, ptr %sess_ooo_cmdsn_list, align 4
  %cmp.not21 = icmp eq ptr %.pn20, %sess_ooo_cmdsn_list
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cid3 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn22 = phi ptr [ %.pn20, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %ooo_cmdsn.0 = getelementptr i8, ptr %.pn22, i32 -20
  %3 = ptrtoint ptr %ooo_cmdsn.0 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %ooo_cmdsn.0, align 128
  %5 = ptrtoint ptr %cid3 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %cid3, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp5.not = icmp eq i16 %4, %6
  br i1 %cmp5.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %cmd = getelementptr i8, ptr %.pn22, i32 -4
  %7 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %cmd, align 16
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %8 = ptrtoint ptr %.pn22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn22, align 4
  %cmp.not = icmp eq ptr %.pn, %sess_ooo_cmdsn_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmdsn_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_execute_ooo_cmdsns(ptr noundef %sess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 11, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !155

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 849, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %sess_ooo_cmdsn_list = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 14
  %1 = ptrtoint ptr %sess_ooo_cmdsn_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sess_ooo_cmdsn_list, align 8
  %cmp31.not105 = icmp eq ptr %2, %sess_ooo_cmdsn_list
  br i1 %cmp31.not105, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %exp_cmd_sn = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ooo_count.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %ooo_count.1, %for.inc.for.body_crit_edge ]
  %.pn.in106 = phi ptr [ %2, %for.body.lr.ph ], [ %.pn111, %for.inc.for.body_crit_edge ]
  %ooo_cmdsn.0110 = getelementptr i8, ptr %.pn.in106, i32 -20
  %3 = ptrtoint ptr %.pn.in106 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn111 = load ptr, ptr %.pn.in106, align 4
  %cmdsn = getelementptr i8, ptr %.pn.in106, i32 -12
  %4 = ptrtoint ptr %cmdsn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmdsn, align 8
  %6 = ptrtoint ptr %exp_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %exp_cmd_sn, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp34.not = icmp eq i32 %5, %7
  br i1 %cmp34.not, label %if.end36, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end36:                                         ; preds = %for.body
  %cmd37 = getelementptr i8, ptr %.pn.in106, i32 -4
  %8 = ptrtoint ptr %cmd37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cmd37, align 16
  %tobool38.not = icmp eq ptr %9, null
  br i1 %tobool38.not, label %if.then39, label %if.end41

if.then39:                                        ; preds = %if.end36
  %inc = add i32 %5, 1
  %10 = ptrtoint ptr %exp_cmd_sn to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %inc, ptr %exp_cmd_sn, align 128
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in106) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then39.iscsit_remove_ooo_cmdsn.exit_crit_edge

if.then39.iscsit_remove_ooo_cmdsn.exit_crit_edge: ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %iscsit_remove_ooo_cmdsn.exit

if.end.i.i.i:                                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr i8, ptr %.pn.in106, i32 4
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %.pn.in106 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %.pn.in106, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %iscsit_remove_ooo_cmdsn.exit

iscsit_remove_ooo_cmdsn.exit:                     ; preds = %if.end.i.i.i, %if.then39.iscsit_remove_ooo_cmdsn.exit_crit_edge
  %17 = ptrtoint ptr %.pn.in106 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in106, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in106, i32 4
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_ooo_cache to i32))
  %19 = load ptr, ptr @lio_ooo_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %19, ptr noundef %ooo_cmdsn.0110) #7
  br label %for.inc

if.end41:                                         ; preds = %if.end36
  %deferred_i_state = getelementptr inbounds %struct.iscsi_cmd, ptr %9, i32 0, i32 3
  %20 = ptrtoint ptr %deferred_i_state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %deferred_i_state, align 8
  %i_state = getelementptr inbounds %struct.iscsi_cmd, ptr %9, i32 0, i32 4
  %22 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %i_state, align 4
  %inc43 = add i32 %ooo_count.0109, 1
  %23 = ptrtoint ptr %exp_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %exp_cmd_sn, align 128
  %inc45 = add i32 %24, 1
  store i32 %inc45, ptr %exp_cmd_sn, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_execute_ooo_cmdsns.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_execute_ooo_cmdsns, %if.then56)) #7
          to label %do.end60 [label %if.then56], !srcloc !154

if.then56:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_sn = getelementptr inbounds %struct.iscsi_cmd, ptr %9, i32 0, i32 18
  %25 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cmd_sn, align 8
  %27 = ptrtoint ptr %exp_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %exp_cmd_sn, align 128
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_execute_ooo_cmdsns.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.43, i32 noundef %26, i32 noundef %28) #7
  br label %do.end60

do.end60:                                         ; preds = %if.then56, %if.end41
  %call.i.i.i96 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in106) #7
  br i1 %call.i.i.i96, label %if.end.i.i.i99, label %do.end60.iscsit_remove_ooo_cmdsn.exit101_crit_edge

do.end60.iscsit_remove_ooo_cmdsn.exit101_crit_edge: ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %iscsit_remove_ooo_cmdsn.exit101

if.end.i.i.i99:                                   ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i97 = getelementptr i8, ptr %.pn.in106, i32 4
  %29 = ptrtoint ptr %prev.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i97, align 4
  %31 = ptrtoint ptr %.pn.in106 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.pn.in106, align 4
  %prev1.i.i.i.i98 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i98 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i98, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %iscsit_remove_ooo_cmdsn.exit101

iscsit_remove_ooo_cmdsn.exit101:                  ; preds = %if.end.i.i.i99, %do.end60.iscsit_remove_ooo_cmdsn.exit101_crit_edge
  %35 = ptrtoint ptr %.pn.in106 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in106, align 4
  %prev.i.i100 = getelementptr i8, ptr %.pn.in106, i32 4
  %36 = ptrtoint ptr %prev.i.i100 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i100, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_ooo_cache to i32))
  %37 = load ptr, ptr @lio_ooo_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %37, ptr noundef %ooo_cmdsn.0110) #7
  %call61 = tail call i32 @iscsit_execute_cmd(ptr noundef nonnull %9, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %iscsit_remove_ooo_cmdsn.exit101.cleanup_crit_edge, label %iscsit_remove_ooo_cmdsn.exit101.for.inc_crit_edge

iscsit_remove_ooo_cmdsn.exit101.for.inc_crit_edge: ; preds = %iscsit_remove_ooo_cmdsn.exit101
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

iscsit_remove_ooo_cmdsn.exit101.cleanup_crit_edge: ; preds = %iscsit_remove_ooo_cmdsn.exit101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %iscsit_remove_ooo_cmdsn.exit101.for.inc_crit_edge, %iscsit_remove_ooo_cmdsn.exit, %for.body.for.inc_crit_edge
  %ooo_count.1 = phi i32 [ %ooo_count.0109, %for.body.for.inc_crit_edge ], [ %inc43, %iscsit_remove_ooo_cmdsn.exit101.for.inc_crit_edge ], [ %ooo_count.0109, %iscsit_remove_ooo_cmdsn.exit ]
  %cmp31.not = icmp eq ptr %.pn111, %sess_ooo_cmdsn_list
  br i1 %cmp31.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %iscsit_remove_ooo_cmdsn.exit101.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %ooo_count.1, %for.inc.cleanup_crit_edge ], [ -1, %iscsit_remove_ooo_cmdsn.exit101.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_execute_cmd(ptr noundef %cmd, i32 noundef %ooo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %se_cmd1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70
  %conn2 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn2, align 8
  %istate_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 52
  tail call void @_raw_spin_lock_bh(ptr noundef %istate_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ooo)
  %tobool.not = icmp eq i32 %ooo, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cmd_flags = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 15
  %2 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %3, -129
  store i32 %and, ptr %cmd_flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %iscsi_opcode = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 7
  %4 = ptrtoint ptr %iscsi_opcode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iscsi_opcode, align 2
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %5, label %sw.default95 [
    i8 1, label %sw.bb
    i8 0, label %if.end.sw.bb61_crit_edge
    i8 4, label %if.end.sw.bb61_crit_edge159
    i8 2, label %sw.bb67
    i8 6, label %sw.bb80
  ]

if.end.sw.bb61_crit_edge159:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb61

if.end.sw.bb61_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb61

sw.bb:                                            ; preds = %if.end
  %sense_reason = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 77
  %7 = ptrtoint ptr %sense_reason to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sense_reason, align 128
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %8, label %if.end12 [
    i32 0, label %if.end21
    i32 16, label %if.then7
  ]

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %i_state = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 4
  %10 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 29, ptr %i_state, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %istate_lock) #7
  %11 = ptrtoint ptr %conn2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %conn2, align 8
  %13 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %i_state, align 4
  %conv11 = trunc i32 %14 to i8
  %call = tail call i32 @iscsit_add_cmd_to_response_queue(ptr noundef %cmd, ptr noundef %12, i8 noundef zeroext %conv11) #7
  br label %cleanup

if.end12:                                         ; preds = %sw.bb
  tail call void @_raw_spin_unlock_bh(ptr noundef %istate_lock) #7
  %transport_state = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 34
  %15 = ptrtoint ptr %transport_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %transport_state, align 4
  %and15 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %sense_reason to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sense_reason, align 128
  %call20 = tail call i32 @transport_send_check_condition_and_sense(ptr noundef %se_cmd1, i32 noundef %18, i32 noundef 0) #7
  br label %cleanup

if.end21:                                         ; preds = %sw.bb
  %immediate_data = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 6
  %19 = ptrtoint ptr %immediate_data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %immediate_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool22.not = icmp eq i8 %20, 0
  br i1 %tobool22.not, label %if.end44, label %if.then23

if.then23:                                        ; preds = %if.end21
  %cmd_flags24 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 15
  %21 = ptrtoint ptr %cmd_flags24 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cmd_flags24, align 4
  %and25 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %istate_lock) #7
  br i1 %tobool26.not, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @target_execute_cmd(ptr noundef %se_cmd1) #7
  br label %cleanup

if.end30:                                         ; preds = %if.then23
  %23 = ptrtoint ptr %cmd_flags24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmd_flags24, align 4
  %and33 = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.then35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then35:                                        ; preds = %if.end30
  %transport_state37 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 34
  %25 = ptrtoint ptr %transport_state37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %transport_state37, align 4
  %and38 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iscsit_set_dataout_sequence_values(ptr noundef %cmd) #7
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 61
  %27 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %conn_transport, align 8
  %iscsit_get_dataout = getelementptr inbounds %struct.iscsit_transport, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %iscsit_get_dataout to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iscsit_get_dataout, align 4
  %call42 = tail call i32 %30(ptr noundef %1, ptr noundef %cmd, i1 noundef zeroext false) #7
  br label %cleanup

if.end44:                                         ; preds = %if.end21
  tail call void @_raw_spin_unlock_bh(ptr noundef %istate_lock) #7
  %data_direction = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 46
  %31 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_direction, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp46 = icmp eq i32 %32, 1
  br i1 %cmp46, label %land.lhs.true, label %if.end44.if.end58_crit_edge

if.end44.if.end58_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

land.lhs.true:                                    ; preds = %if.end44
  %cmd_flags48 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 15
  %33 = ptrtoint ptr %cmd_flags48 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cmd_flags48, align 4
  %and49 = and i32 %34, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.then51, label %land.lhs.true.if.end58_crit_edge

land.lhs.true.if.end58_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then51:                                        ; preds = %land.lhs.true
  %transport_state53 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 34
  %35 = ptrtoint ptr %transport_state53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %transport_state53, align 4
  %and54 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end57, label %if.then51.cleanup_crit_edge

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end57:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iscsit_set_unsolicited_dataout(ptr noundef %cmd) #7
  br label %if.end58

if.end58:                                         ; preds = %if.end57, %land.lhs.true.if.end58_crit_edge, %if.end44.if.end58_crit_edge
  %call60 = tail call i32 @transport_handle_cdb_direct(ptr noundef %se_cmd1) #7
  br label %cleanup

sw.bb61:                                          ; preds = %if.end.sw.bb61_crit_edge, %if.end.sw.bb61_crit_edge159
  tail call void @_raw_spin_unlock_bh(ptr noundef %istate_lock) #7
  %37 = ptrtoint ptr %conn2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %conn2, align 8
  %i_state64 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 4
  %39 = ptrtoint ptr %i_state64 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %i_state64, align 4
  %conv65 = trunc i32 %40 to i8
  %call66 = tail call i32 @iscsit_add_cmd_to_response_queue(ptr noundef %cmd, ptr noundef %38, i8 noundef zeroext %conv65) #7
  br label %cleanup

sw.bb67:                                          ; preds = %if.end
  %se_tmr_req = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 22
  %41 = ptrtoint ptr %se_tmr_req to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %se_tmr_req, align 16
  %response = getelementptr inbounds %struct.se_tmr_req, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool69.not = icmp eq i8 %44, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %istate_lock) #7
  br i1 %tobool69.not, label %if.end76, label %if.then70

if.then70:                                        ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %conn2 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %conn2, align 8
  %i_state73 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 4
  %47 = ptrtoint ptr %i_state73 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %i_state73, align 4
  %conv74 = trunc i32 %48 to i8
  %call75 = tail call i32 @iscsit_add_cmd_to_response_queue(ptr noundef %cmd, ptr noundef %46, i8 noundef zeroext %conv74) #7
  br label %cleanup

if.end76:                                         ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #9
  %call79 = tail call i32 @transport_generic_handle_tmr(ptr noundef %se_cmd1) #7
  br label %cleanup

sw.bb80:                                          ; preds = %if.end
  tail call void @_raw_spin_unlock_bh(ptr noundef %istate_lock) #7
  %logout_reason = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 9
  %49 = ptrtoint ptr %logout_reason to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %logout_reason, align 4
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %50, label %do.end [
    i8 0, label %sw.bb83
    i8 1, label %sw.bb86
    i8 2, label %sw.bb89
  ]

sw.bb83:                                          ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %conn2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %conn2, align 8
  %call85 = tail call i32 @iscsit_logout_closesession(ptr noundef %cmd, ptr noundef %53) #7
  br label %cleanup

sw.bb86:                                          ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %conn2 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %conn2, align 8
  %call88 = tail call i32 @iscsit_logout_closeconnection(ptr noundef %cmd, ptr noundef %55) #7
  br label %cleanup

sw.bb89:                                          ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %conn2 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %conn2, align 8
  %call91 = tail call i32 @iscsit_logout_removeconnforrecovery(ptr noundef %cmd, ptr noundef %57) #7
  br label %cleanup

do.end:                                           ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #9
  %conv82 = zext i8 %50 to i32
  %call94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %conv82) #11
  br label %cleanup

sw.default95:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %istate_lock) #7
  %58 = ptrtoint ptr %iscsi_opcode to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %iscsi_opcode, align 2
  %conv102 = zext i8 %59 to i32
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %conv102) #11
  br label %cleanup

cleanup:                                          ; preds = %sw.default95, %do.end, %sw.bb89, %sw.bb86, %sw.bb83, %if.end76, %if.then70, %sw.bb61, %if.end58, %if.then51.cleanup_crit_edge, %if.end41, %if.then35.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.then27, %if.end18, %if.end12.cleanup_crit_edge, %if.then7
  %retval.0 = phi i32 [ -1, %sw.default95 ], [ -1, %do.end ], [ 0, %if.then70 ], [ %call79, %if.end76 ], [ 0, %sw.bb61 ], [ 0, %if.then7 ], [ %call20, %if.end18 ], [ 0, %if.then27 ], [ %call60, %if.end58 ], [ 0, %if.end12.cleanup_crit_edge ], [ 0, %if.then35.cleanup_crit_edge ], [ 0, %if.end41 ], [ 0, %if.end30.cleanup_crit_edge ], [ 0, %if.then51.cleanup_crit_edge ], [ %call91, %sw.bb89 ], [ %call88, %sw.bb86 ], [ %call85, %sw.bb83 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_send_check_condition_and_sense(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_execute_cmd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_set_dataout_sequence_values(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_set_unsolicited_dataout(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_handle_cdb_direct(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_generic_handle_tmr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_logout_closesession(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_logout_closeconnection(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_logout_removeconnforrecovery(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_free_all_ooo_cmdsns(ptr noundef %sess) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdsn_mutex = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %cmdsn_mutex, i32 noundef 0) #7
  %sess_ooo_cmdsn_list = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 14
  %0 = ptrtoint ptr %sess_ooo_cmdsn_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess_ooo_cmdsn_list, align 8
  %cmp.not22 = icmp eq ptr %1, %sess_ooo_cmdsn_list
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in23 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %ooo_cmdsn.0 = getelementptr i8, ptr %.pn.in23, i32 -20
  %2 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in23, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in23, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in23, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_ooo_cache to i32))
  %11 = load ptr, ptr @lio_ooo_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %11, ptr noundef %ooo_cmdsn.0) #7
  %cmp.not = icmp eq ptr %.pn, %sess_ooo_cmdsn_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmdsn_mutex) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_handle_ooo_cmdsn(ptr noundef %sess, ptr noundef %cmd, i32 noundef %cmdsn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %i_state = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 4
  %0 = ptrtoint ptr %i_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_state, align 4
  %deferred_i_state = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 3
  %2 = ptrtoint ptr %deferred_i_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %deferred_i_state, align 8
  store i32 2, ptr %i_state, align 4
  %cmd_flags = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 15
  %3 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd_flags, align 4
  %or = or i32 %4, 128
  store i32 %or, ptr %cmd_flags, align 4
  %sess_ooo_cmdsn_list = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 14
  %5 = ptrtoint ptr %sess_ooo_cmdsn_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %sess_ooo_cmdsn_list, align 4
  %cmp.i.not = icmp eq ptr %6, %sess_ooo_cmdsn_list
  br i1 %cmp.i.not, label %entry.if.end5_crit_edge, label %if.else

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %prev = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 14, i32 1
  %7 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev, align 4
  %cmdsn3 = getelementptr i8, ptr %8, i32 -12
  %9 = ptrtoint ptr %cmdsn3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmdsn3, align 8
  %sub = add i32 %cmdsn, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %sub)
  %cmp.not = icmp eq i32 %10, %sub
  br label %if.end5

if.end5:                                          ; preds = %if.else, %entry.if.end5_crit_edge
  %tobool11.not = phi i1 [ false, %entry.if.end5_crit_edge ], [ %cmp.not, %if.else ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_ooo_cache to i32))
  %11 = load ptr, ptr @lio_ooo_cache, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %11, i32 noundef 2848) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %iscsit_allocate_ooo_cmdsn.exit.thread, label %if.end9

iscsit_allocate_ooo_cmdsn.exit.thread:            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76) #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %ooo_list.i = getelementptr inbounds %struct.iscsi_ooo_cmdsn, ptr %call.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %ooo_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %ooo_list.i, ptr %ooo_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.iscsi_ooo_cmdsn, ptr %call.i.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %ooo_list.i, ptr %prev.i.i, align 8
  %cmd10 = getelementptr inbounds %struct.iscsi_ooo_cmdsn, ptr %call.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %cmd10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %cmd, ptr %cmd10, align 16
  br i1 %tobool11.not, label %if.end9.cond.end_crit_edge, label %cond.true

if.end9.cond.end_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %exp_cmd_sn = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 12
  %15 = ptrtoint ptr %exp_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %exp_cmd_sn, align 128
  %sub12 = sub i32 %cmdsn, %16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end9.cond.end_crit_edge
  %cond = phi i32 [ %sub12, %cond.true ], [ 1, %if.end9.cond.end_crit_edge ]
  %batch_count = getelementptr inbounds %struct.iscsi_ooo_cmdsn, ptr %call.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %batch_count to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %batch_count, align 4
  %conn = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %18 = ptrtoint ptr %conn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %conn, align 8
  %cid = getelementptr inbounds %struct.iscsi_conn, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %cid, align 2
  %22 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %call.i.i, align 128
  %exp_cmd_sn14 = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 12
  %23 = ptrtoint ptr %exp_cmd_sn14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %exp_cmd_sn14, align 128
  %exp_cmdsn = getelementptr inbounds %struct.iscsi_ooo_cmdsn, ptr %call.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %exp_cmdsn to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %exp_cmdsn, align 4
  %cmdsn15 = getelementptr inbounds %struct.iscsi_ooo_cmdsn, ptr %call.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %cmdsn15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %cmdsn, ptr %cmdsn15, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %27 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i40 = icmp eq i32 %27, 0
  br i1 %tobool.not.i40, label %cond.end.if.end.i43_crit_edge, label %land.rhs.i

cond.end.if.end.i43_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i43

land.rhs.i:                                       ; preds = %cond.end
  %dep_map.i = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 11, i32 5
  %call.i.i41 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i41)
  %cmp.not.i = icmp eq i32 %call.i.i41, 0
  br i1 %cmp.not.i, label %do.end.i42, label %land.rhs.i.if.end.i43_crit_edge, !prof !155

land.rhs.i.if.end.i43_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i43

do.end.i42:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 775, i32 noundef 9, ptr noundef null) #7
  br label %if.end.i43

if.end.i43:                                       ; preds = %do.end.i42, %land.rhs.i.if.end.i43_crit_edge, %cond.end.if.end.i43_crit_edge
  %28 = ptrtoint ptr %sess_ooo_cmdsn_list to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %sess_ooo_cmdsn_list, align 4
  %cmp.i.not.i = icmp eq ptr %29, %sess_ooo_cmdsn_list
  %prev.i.i45 = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 14, i32 1
  %30 = ptrtoint ptr %prev.i.i45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i45, align 4
  br i1 %cmp.i.not.i, label %if.then26.i, label %if.else.i

if.then26.i:                                      ; preds = %if.end.i43
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ooo_list.i, ptr noundef %31, ptr noundef %sess_ooo_cmdsn_list) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then26.i.cleanup_crit_edge

if.then26.i.cleanup_crit_edge:                    ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i.i:                                     ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %prev.i.i45 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ooo_list.i, ptr %prev.i.i45, align 4
  %33 = ptrtoint ptr %ooo_list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %sess_ooo_cmdsn_list, ptr %ooo_list.i, align 4
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev.i.i, align 8
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %ooo_list.i, ptr %31, align 4
  br label %cleanup

if.else.i:                                        ; preds = %if.end.i43
  %cmdsn.i = getelementptr i8, ptr %31, i32 -12
  %36 = ptrtoint ptr %cmdsn.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmdsn.i, align 8
  %38 = ptrtoint ptr %cmdsn15 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cmdsn15, align 8
  %sub.i.i = sub i32 %37, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i)
  %tobool32.not.i = icmp sgt i32 %sub.i.i, -1
  br i1 %tobool32.not.i, label %if.else.i.for.cond.i_crit_edge, label %if.then33.i

if.else.i.for.cond.i_crit_edge:                   ; preds = %if.else.i
  br label %for.cond.i

if.then33.i:                                      ; preds = %if.else.i
  %call.i.i2.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ooo_list.i, ptr noundef %31, ptr noundef %sess_ooo_cmdsn_list) #7
  br i1 %call.i.i2.i, label %if.end.i.i4.i, label %if.then33.i.cleanup_crit_edge

if.then33.i.cleanup_crit_edge:                    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i4.i:                                    ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %prev.i.i45 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ooo_list.i, ptr %prev.i.i45, align 4
  %41 = ptrtoint ptr %ooo_list.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %sess_ooo_cmdsn_list, ptr %ooo_list.i, align 4
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %31, ptr %prev.i.i, align 8
  %43 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %ooo_list.i, ptr %31, align 4
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.else.i.for.cond.i_crit_edge
  %.pn.in.i = phi ptr [ %.pn.i, %for.body.i.for.cond.i_crit_edge ], [ %sess_ooo_cmdsn_list, %if.else.i.for.cond.i_crit_edge ]
  %44 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp43.not.i = icmp eq ptr %.pn.i, %sess_ooo_cmdsn_list
  br i1 %cmp43.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %cmdsn46.i = getelementptr i8, ptr %.pn.i, i32 -12
  %45 = ptrtoint ptr %cmdsn46.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cmdsn46.i, align 8
  %sub.i6.i = sub i32 %46, %39
  %tobool49.not.i = icmp sgt i32 %sub.i6.i, -1
  br i1 %tobool49.not.i, label %if.end51.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end51.i:                                       ; preds = %for.body.i
  %prev54.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %47 = ptrtoint ptr %prev54.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev54.i, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %call.i.i8.i = tail call zeroext i1 @__list_add_valid(ptr noundef %ooo_list.i, ptr noundef %48, ptr noundef %50) #7
  br i1 %call.i.i8.i, label %if.end.i.i10.i, label %if.end51.i.cleanup_crit_edge

if.end51.i.cleanup_crit_edge:                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i10.i:                                   ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %ooo_list.i, ptr %prev1.i.i.i, align 4
  %52 = ptrtoint ptr %ooo_list.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %50, ptr %ooo_list.i, align 4
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %48, ptr %prev.i.i, align 8
  %54 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %ooo_list.i, ptr %48, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i10.i, %if.end51.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %if.end.i.i4.i, %if.then33.i.cleanup_crit_edge, %if.end.i.i.i, %if.then26.i.cleanup_crit_edge, %iscsit_allocate_ooo_cmdsn.exit.thread
  %retval.0 = phi i32 [ -12, %iscsit_allocate_ooo_cmdsn.exit.thread ], [ 0, %if.then26.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i ], [ 0, %if.then33.i.cleanup_crit_edge ], [ 0, %if.end.i.i4.i ], [ 0, %if.end51.i.cleanup_crit_edge ], [ 0, %if.end.i.i10.i ], [ 0, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_handle_dataout_timeout(ptr noundef %t) local_unnamed_addr #0 align 64 {
entry:
  %r2t_length = alloca i32, align 4
  %r2t_offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r2t_length) #7
  %0 = ptrtoint ptr %r2t_length to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %r2t_length, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %r2t_offset) #7
  %1 = ptrtoint ptr %r2t_offset to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %r2t_offset, align 4
  %add.ptr = getelementptr i8, ptr %t, i32 -452
  %conn1 = getelementptr i8, ptr %t, i32 116
  %2 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn1, align 8
  tail call void @iscsit_inc_conn_usage_count(ptr noundef %3) #7
  %dataout_timeout_lock = getelementptr i8, ptr %t, i32 -192
  tail call void @_raw_spin_lock_bh(ptr noundef %dataout_timeout_lock) #7
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr, align 128
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %dataout_timeout_lock) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %5, -2
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and4, ptr %add.ptr, align 128
  %sess5 = getelementptr inbounds %struct.iscsi_conn, ptr %3, i32 0, i32 68
  %7 = ptrtoint ptr %sess5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sess5, align 4
  %call = tail call ptr @iscsit_tpg_get_node_attrib(ptr noundef %8) #7
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %8, i32 0, i32 47
  %9 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sess_ops, align 8
  %ErrorRecoveryLevel = getelementptr inbounds %struct.iscsi_sess_ops, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %ErrorRecoveryLevel to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ErrorRecoveryLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  br i1 %tobool6.not, label %do.end, label %if.end14

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %isid = getelementptr inbounds %struct.iscsi_session, ptr %8, i32 0, i32 1
  %tpg = getelementptr inbounds %struct.iscsi_session, ptr %8, i32 0, i32 49
  %13 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tpg, align 16
  %tpg_tiqn = getelementptr inbounds %struct.iscsi_portal_group, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %tpg_tiqn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tpg_tiqn, align 16
  %tpgt = getelementptr inbounds %struct.iscsi_portal_group, ptr %14, i32 0, i32 2
  %17 = ptrtoint ptr %tpgt to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tpgt, align 8
  %conv = zext i16 %18 to i32
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %10, ptr noundef %isid, ptr noundef %16, i32 noundef %conv) #11
  br label %failure

if.end14:                                         ; preds = %if.end
  %dataout_timeout_retries = getelementptr i8, ptr %t, i32 -448
  %19 = ptrtoint ptr %dataout_timeout_retries to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dataout_timeout_retries, align 4
  %inc = add i8 %20, 1
  store i8 %inc, ptr %dataout_timeout_retries, align 4
  %conv15 = zext i8 %inc to i32
  %dataout_timeout_retries16 = getelementptr inbounds %struct.iscsi_node_attrib, ptr %call, i32 0, i32 1
  %21 = ptrtoint ptr %dataout_timeout_retries16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dataout_timeout_retries16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %conv15)
  %cmp = icmp eq i32 %22, %conv15
  br i1 %cmp, label %do.end21, label %if.end37

do.end21:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %init_task_tag = getelementptr i8, ptr %t, i32 -420
  %23 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %init_task_tag, align 32
  %25 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sess_ops, align 8
  %isid27 = getelementptr inbounds %struct.iscsi_session, ptr %8, i32 0, i32 1
  %tpg29 = getelementptr inbounds %struct.iscsi_session, ptr %8, i32 0, i32 49
  %27 = ptrtoint ptr %tpg29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tpg29, align 16
  %tpg_tiqn30 = getelementptr inbounds %struct.iscsi_portal_group, ptr %28, i32 0, i32 15
  %29 = ptrtoint ptr %tpg_tiqn30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tpg_tiqn30, align 16
  %tpgt34 = getelementptr inbounds %struct.iscsi_portal_group, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %tpgt34 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %tpgt34, align 8
  %conv35 = zext i16 %32 to i32
  %call36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %24, i32 noundef %conv15, ptr noundef %26, ptr noundef %isid27, ptr noundef %30, i32 noundef %conv35) #11
  br label %failure

if.end37:                                         ; preds = %if.end14
  %cmd_flags = getelementptr i8, ptr %t, i32 -424
  %33 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cmd_flags, align 4
  %or = or i32 %34, 16
  store i32 %or, ptr %cmd_flags, align 4
  %35 = ptrtoint ptr %sess5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sess5, align 4
  %sess_ops39 = getelementptr inbounds %struct.iscsi_session, ptr %36, i32 0, i32 47
  %37 = ptrtoint ptr %sess_ops39 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sess_ops39, align 8
  %DataSequenceInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %38, i32 0, i32 15
  %39 = ptrtoint ptr %DataSequenceInOrder to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %DataSequenceInOrder, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool40.not = icmp eq i8 %40, 0
  br i1 %tobool40.not, label %if.else65, label %if.then41

if.then41:                                        ; preds = %if.end37
  %DataPDUInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %38, i32 0, i32 14
  %41 = ptrtoint ptr %DataPDUInOrder to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %DataPDUInOrder, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool44.not = icmp eq i8 %42, 0
  br i1 %tobool44.not, label %if.else61, label %if.then45

if.then45:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %write_data_done = getelementptr i8, ptr %t, i32 -324
  %43 = ptrtoint ptr %write_data_done to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %write_data_done, align 128
  %MaxBurstLength = getelementptr inbounds %struct.iscsi_sess_ops, ptr %38, i32 0, i32 9
  %45 = ptrtoint ptr %MaxBurstLength to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %MaxBurstLength, align 4
  %next_burst_len = getelementptr i8, ptr %t, i32 -316
  %47 = ptrtoint ptr %next_burst_len to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %next_burst_len, align 8
  %sub = sub i32 %46, %48
  %add = add i32 %sub, %44
  %data_length = getelementptr i8, ptr %t, i32 192
  %49 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %50)
  %cmp48 = icmp ugt i32 %add, %50
  %sub54 = sub i32 %50, %44
  %spec.select = select i1 %cmp48, i32 %sub54, i32 %sub
  br label %if.end71

if.else61:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %seq_start_offset = getelementptr i8, ptr %t, i32 -336
  %51 = ptrtoint ptr %seq_start_offset to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %seq_start_offset, align 4
  %seq_end_offset = getelementptr i8, ptr %t, i32 -332
  %53 = ptrtoint ptr %seq_end_offset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %seq_end_offset, align 8
  %sub63 = sub i32 %54, %52
  br label %if.end71

if.else65:                                        ; preds = %if.end37
  %unsolicited_data.i = getelementptr i8, ptr %t, i32 -429
  %55 = ptrtoint ptr %unsolicited_data.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %unsolicited_data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %conn1, align 8
  %sess.i = getelementptr inbounds %struct.iscsi_conn, ptr %58, i32 0, i32 68
  %59 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sess.i, align 4
  %sess_ops.i = getelementptr inbounds %struct.iscsi_session, ptr %60, i32 0, i32 47
  %61 = ptrtoint ptr %sess_ops.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sess_ops.i, align 8
  %FirstBurstLength.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %62, i32 0, i32 10
  %63 = ptrtoint ptr %FirstBurstLength.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %FirstBurstLength.i, align 4
  %data_length.i = getelementptr i8, ptr %t, i32 192
  %65 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %data_length.i, align 4
  %67 = tail call i32 @llvm.umin.i32(i32 %64, i32 %66) #7
  br label %if.end71

if.end.i:                                         ; preds = %if.else65
  %r2t_lock.i = getelementptr i8, ptr %t, i32 -60
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock.i) #7
  %cmd_r2t_list.i = getelementptr i8, ptr %t, i32 -8
  %68 = ptrtoint ptr %cmd_r2t_list.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %cmd_r2t_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %69, %cmd_r2t_list.i
  br i1 %cmp.i.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78) #11
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock.i) #7
  br label %failure

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn61.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %69, %if.end.i.for.body.i_crit_edge ]
  %r2t.063.i = getelementptr i8, ptr %.pn61.i, i32 -28
  %sent_r2t.i = getelementptr i8, ptr %.pn61.i, i32 -20
  %70 = ptrtoint ptr %sent_r2t.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %sent_r2t.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool16.not.i = icmp eq i32 %71, 0
  br i1 %tobool16.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %recovery_r2t.i = getelementptr i8, ptr %.pn61.i, i32 -24
  %72 = ptrtoint ptr %recovery_r2t.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %recovery_r2t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool17.not.i = icmp eq i32 %73, 0
  br i1 %tobool17.not.i, label %land.lhs.true18.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true18.i:                                ; preds = %land.lhs.true.i
  %74 = ptrtoint ptr %r2t.063.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %r2t.063.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool19.not.i = icmp eq i32 %75, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %land.lhs.true18.i.for.inc.i_crit_edge

land.lhs.true18.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then20.i:                                      ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #9
  %offset21.i = getelementptr i8, ptr %.pn61.i, i32 -12
  %76 = ptrtoint ptr %offset21.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %offset21.i, align 16
  %xfer_len.i = getelementptr i8, ptr %.pn61.i, i32 -4
  %78 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %xfer_len.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock.i) #7
  br label %if.end71

for.inc.i:                                        ; preds = %land.lhs.true18.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %80 = ptrtoint ptr %.pn61.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn.i = load ptr, ptr %.pn61.i, align 4
  %cmp15.not.i = icmp eq ptr %.pn.i, %cmd_r2t_list.i
  br i1 %cmp15.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock.i) #7
  %init_task_tag.i = getelementptr i8, ptr %t, i32 -420
  %81 = ptrtoint ptr %init_task_tag.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %init_task_tag.i, align 32
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef %82) #11
  br label %failure

if.end71:                                         ; preds = %if.then20.i, %if.then.i, %if.else61, %if.then45
  %pdu_length.1 = phi i32 [ %sub63, %if.else61 ], [ %79, %if.then20.i ], [ %67, %if.then.i ], [ %spec.select, %if.then45 ]
  %pdu_offset.1 = phi i32 [ %52, %if.else61 ], [ %77, %if.then20.i ], [ 0, %if.then.i ], [ %44, %if.then45 ]
  %call72 = call fastcc i32 @iscsit_recalculate_dataout_values(ptr noundef %add.ptr, i32 noundef %pdu_offset.1, i32 noundef %pdu_length.1, ptr noundef nonnull %r2t_offset, ptr noundef nonnull %r2t_length)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.end71.failure_crit_edge, label %do.body77

if.end71.failure_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %failure

do.body77:                                        ; preds = %if.end71
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_handle_dataout_timeout.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_handle_dataout_timeout, %if.then83)) #7
          to label %do.end89 [label %if.then83], !srcloc !154

if.then83:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #9
  %init_task_tag84 = getelementptr i8, ptr %t, i32 -420
  %83 = ptrtoint ptr %init_task_tag84 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %init_task_tag84, align 32
  %unsolicited_data = getelementptr i8, ptr %t, i32 -429
  %85 = ptrtoint ptr %unsolicited_data to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %unsolicited_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool86.not = icmp eq i8 %86, 0
  %cond = select i1 %tobool86.not, ptr @.str.56, ptr @.str.55
  %87 = ptrtoint ptr %r2t_offset to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %r2t_offset, align 4
  %89 = ptrtoint ptr %r2t_length to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %r2t_length, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_handle_dataout_timeout.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.54, i32 noundef %84, ptr noundef nonnull %cond, i32 noundef %88, i32 noundef %90) #7
  br label %do.end89

do.end89:                                         ; preds = %if.then83, %do.body77
  %91 = ptrtoint ptr %r2t_offset to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %r2t_offset, align 4
  %93 = ptrtoint ptr %r2t_length to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %r2t_length, align 4
  %r2t_lock.i151 = getelementptr i8, ptr %t, i32 -60
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock.i151) #7
  %call.i = tail call i32 @iscsit_add_r2t_to_list(ptr noundef %add.ptr, i32 noundef %92, i32 noundef %94, i32 noundef 1, i32 noundef 0) #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock.i151) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp91 = icmp slt i32 %call.i, 0
  br i1 %cmp91, label %do.end89.failure_crit_edge, label %if.end94

do.end89.failure_crit_edge:                       ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %failure

if.end94:                                         ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @iscsit_start_dataout_timer(ptr noundef %add.ptr, ptr noundef %3)
  tail call void @_raw_spin_unlock_bh(ptr noundef %dataout_timeout_lock) #7
  br label %cleanup

failure:                                          ; preds = %do.end89.failure_crit_edge, %if.end71.failure_crit_edge, %for.end.i, %do.end.i, %do.end21, %do.end
  tail call void @_raw_spin_unlock_bh(ptr noundef %dataout_timeout_lock) #7
  tail call void @iscsit_fill_cxn_timeout_err_stats(ptr noundef %8) #7
  tail call void @iscsit_cause_connection_reinstatement(ptr noundef %3, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %failure, %if.end94, %if.then
  tail call void @iscsit_dec_conn_usage_count(ptr noundef %3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r2t_offset) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %r2t_length) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_inc_conn_usage_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_dec_conn_usage_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_tpg_get_node_attrib(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_start_dataout_timer(ptr noundef %cmd, ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %call = tail call ptr @iscsit_tpg_get_node_attrib(ptr noundef %1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 51, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !155

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1208, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd, align 128
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %do.body29, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body29:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_start_dataout_timer.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_start_dataout_timer, %if.then39)) #7
          to label %do.end42 [label %if.then39], !srcloc !154

if.then39:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #9
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %5 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %init_task_tag, align 32
  %cid = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %7 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %cid, align 2
  %conv = zext i16 %8 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_start_dataout_timer.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.60, i32 noundef %6, i32 noundef %conv) #7
  br label %do.end42

do.end42:                                         ; preds = %if.then39, %do.body29
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd, align 128
  %and44 = and i32 %10, -4
  %or = or i32 %and44, 1
  store i32 %or, ptr %cmd, align 128
  %dataout_timer = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %12 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call, align 4
  %mul = mul i32 %13, 100
  %add = add i32 %mul, %11
  %call46 = tail call i32 @mod_timer(ptr noundef %dataout_timer, i32 noundef %add) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_fill_cxn_timeout_err_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_cause_connection_reinstatement(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_mod_dataout_timer(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %sess2 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %2 = ptrtoint ptr %sess2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sess2, align 4
  %call = tail call ptr @iscsit_tpg_get_node_attrib(ptr noundef %3) #7
  %dataout_timeout_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 51
  tail call void @_raw_spin_lock_bh(ptr noundef %dataout_timeout_lock) #7
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd, align 128
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dataout_timer = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 57
  %call4 = tail call i64 @get_jiffies_64() #7
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call, align 4
  %mul = mul i32 %7, 100
  %8 = trunc i64 %call4 to i32
  %conv5 = add i32 %mul, %8
  %call6 = tail call i32 @mod_timer(ptr noundef %dataout_timer, i32 noundef %conv5) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_mod_dataout_timer.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_mod_dataout_timer, %if.then11)) #7
          to label %cleanup [label %if.then11], !srcloc !154

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %9 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %init_task_tag, align 32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_mod_dataout_timer.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.58, i32 noundef %10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %if.end, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %dataout_timeout_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_stop_dataout_timer(ptr noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dataout_timeout_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 51
  tail call void @_raw_spin_lock_bh(ptr noundef %dataout_timeout_lock) #7
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cmd, align 128
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %1, 2
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %cmd, align 128
  tail call void @_raw_spin_unlock_bh(ptr noundef %dataout_timeout_lock) #7
  %dataout_timer = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 57
  %call = tail call i32 @del_timer_sync(ptr noundef %dataout_timer) #7
  tail call void @_raw_spin_lock_bh(ptr noundef %dataout_timeout_lock) #7
  %3 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cmd, align 128
  %and6 = and i32 %4, -2
  store i32 %and6, ptr %cmd, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_stop_dataout_timer.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_stop_dataout_timer, %if.then11)) #7
          to label %return [label %if.then11], !srcloc !154

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %5 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %init_task_tag, align 32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_stop_dataout_timer.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.62, i32 noundef %6) #7
  br label %return

return:                                           ; preds = %if.then11, %if.end, %entry.return_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %dataout_timeout_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_reject_cmd(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_get_holder_for_r2tsn(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_add_cmd_to_immediate_queue(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_allocate_datain_req() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_attach_datain_req(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_add_r2t_to_list(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_get_seq_holder(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 79)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138, !139, !140, !141, !143, !144}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 61, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @iscsit_dump_data_payload._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @iscsit_dump_data_payload._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 227, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 251, i32 4}
!13 = !{ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 264, i32 4}
!17 = !{ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 278, i32 4}
!21 = !{ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 337, i32 4}
!25 = !{ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 348, i32 5}
!29 = !{ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.17, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.19, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.21, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 358, i32 3}
!33 = !{ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry.20, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @iscsit_create_recovery_datain_values_datasequenceinorder_no._entry_ptr.22, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.23, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.24, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 458, i32 3}
!39 = !{ptr @.str.26, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @iscsit_handle_recovery_datain_or_r2t._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @iscsit_handle_recovery_datain_or_r2t._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 481, i32 3}
!44 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @iscsit_handle_status_snack._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @iscsit_handle_status_snack._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 503, i32 4}
!49 = !{ptr @iscsit_handle_status_snack._entry.29, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @iscsit_handle_status_snack._entry_ptr.31, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.33, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 514, i32 4}
!53 = !{ptr @iscsit_handle_status_snack._entry.32, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @iscsit_handle_status_snack._entry_ptr.34, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.35, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 541, i32 3}
!57 = !{ptr @.str.36, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @iscsit_handle_data_ack._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @iscsit_handle_data_ack._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.38, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 547, i32 3}
!62 = !{ptr @iscsit_handle_data_ack._entry.37, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @iscsit_handle_data_ack._entry_ptr.39, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.40, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 560, i32 2}
!66 = !{ptr @.str.41, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @iscsit_handle_data_ack.__UNIQUE_ID_ddebug225, !65, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!68 = !{ptr @.str.42, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 866, i32 3}
!70 = !{ptr @.str.43, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @iscsit_execute_ooo_cmdsns.__UNIQUE_ID_ddebug226, !69, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!72 = !{ptr @.str.44, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 981, i32 4}
!74 = !{ptr @.str.45, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @iscsit_execute_cmd._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @iscsit_execute_cmd._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.47, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 989, i32 3}
!79 = !{ptr @iscsit_execute_cmd._entry.46, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @iscsit_execute_cmd._entry_ptr.48, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 1116, i32 3}
!83 = !{ptr @.str.50, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @iscsit_handle_dataout_timeout._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @iscsit_handle_dataout_timeout._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.52, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 1125, i32 3}
!88 = !{ptr @iscsit_handle_dataout_timeout._entry.51, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @iscsit_handle_dataout_timeout._entry_ptr.53, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.54, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 1161, i32 2}
!92 = !{ptr @iscsit_handle_dataout_timeout.__UNIQUE_ID_ddebug227, !91, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!93 = !{ptr @.str.55, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.56, !91, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.57, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 1196, i32 2}
!97 = !{ptr @.str.58, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @iscsit_mod_dataout_timer.__UNIQUE_ID_ddebug228, !96, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!99 = !{ptr @.str.59, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 1213, i32 2}
!101 = !{ptr @.str.60, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @iscsit_start_dataout_timer.__UNIQUE_ID_ddebug229, !100, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!103 = !{ptr @.str.61, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 1235, i32 2}
!105 = !{ptr @.str.62, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @iscsit_stop_dataout_timer.__UNIQUE_ID_ddebug230, !104, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!107 = !{ptr @__ksymtab_iscsit_stop_dataout_timer, !108, !"__ksymtab_iscsit_stop_dataout_timer", i1 false, i1 false}
!108 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 1239, i32 1}
!109 = !{ptr @.str.63, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 126, i32 3}
!111 = !{ptr @.str.64, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @iscsit_handle_r2t_snack._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @iscsit_handle_r2t_snack._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.66, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 137, i32 4}
!116 = !{ptr @iscsit_handle_r2t_snack._entry.65, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @iscsit_handle_r2t_snack._entry_ptr.67, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.68, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 384, i32 3}
!120 = !{ptr @.str.69, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @iscsit_handle_recovery_datain._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @iscsit_handle_recovery_datain._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.71, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 395, i32 3}
!125 = !{ptr @iscsit_handle_recovery_datain._entry.70, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @iscsit_handle_recovery_datain._entry_ptr.72, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.74, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 409, i32 3}
!129 = !{ptr @iscsit_handle_recovery_datain._entry.73, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @iscsit_handle_recovery_datain._entry_ptr.75, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.76, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 760, i32 3}
!133 = !{ptr @.str.77, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @iscsit_allocate_ooo_cmdsn._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @iscsit_allocate_ooo_cmdsn._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.78, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 1070, i32 3}
!138 = !{ptr @.str.79, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @iscsit_set_dataout_timeout_values._entry, !137, !"_entry", i1 false, i1 false}
!140 = !{ptr @iscsit_set_dataout_timeout_values._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.81, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/target/iscsi/iscsi_target_erl1.c", i32 1085, i32 2}
!143 = !{ptr @iscsit_set_dataout_timeout_values._entry.80, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @iscsit_set_dataout_timeout_values._entry_ptr.82, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{i64 2148347521, i64 2148347526, i64 2148347539, i64 2148347583, i64 2148347617, i64 2148347638}
!155 = !{!"branch_weights", i32 1, i32 2000}
