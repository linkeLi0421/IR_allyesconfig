; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/iscsi_target_erl0.c_pt.bc'
source_filename = "../drivers/target/iscsi/iscsi_target_erl0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iscsit_cause_connection_reinstatement\22, \22a\22\09"
module asm "\09.weak\09__crc_iscsit_cause_connection_reinstatement\09\09\09\09"
module asm "\09.long\09__crc_iscsit_cause_connection_reinstatement\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iscsit_cause_connection_reinstatement:\09\09\09\09\09"
module asm "\09.asciz \09\22iscsit_cause_connection_reinstatement\22\09\09\09\09\09"
module asm "__kstrtabns_iscsit_cause_connection_reinstatement:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.iscsi_data = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.scsi_lun = type { [8 x i8] }
%struct.iscsi_seq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.iscsi_pdu = type { i32, i32, i8, i32, i32, i32, i32, i32, [96 x i8] }
%struct.iscsi_portal_group = type { i8, i32, i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.se_portal_group, %struct.mutex, %struct.semaphore, %struct.iscsi_tpg_attrib, %struct.iscsi_node_auth, ptr, ptr, %struct.list_head, %struct.list_head, [92 x i8] }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.hlist_head = type { ptr }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.iscsi_tpg_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.iscsi_node_auth = type { i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8] }

@iscsit_check_post_dataout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 733, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013Unable to recover from DataOUT CRC failure while ERL=0, closing session.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iscsit_check_post_dataout\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/target/iscsi/iscsi_target_erl0.c\00", [55 x i8] zeroinitializer }, align 32
@iscsit_check_post_dataout._entry_ptr = internal global ptr @iscsit_check_post_dataout._entry, section ".printk_index", align 4
@iscsit_handle_time2retain_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 757, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013Exiting Time2Retain handler because session_reinstatement=1\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iscsit_handle_time2retain_timeout\00", [62 x i8] zeroinitializer }, align 32
@iscsit_handle_time2retain_timeout._entry_ptr = internal global ptr @iscsit_handle_time2retain_timeout._entry, section ".printk_index", align 4
@iscsit_handle_time2retain_timeout._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013Time2Retain timer expired for SID: %u, cleaning up iSCSI session.\0A\00", [59 x i8] zeroinitializer }, align 32
@iscsit_handle_time2retain_timeout._entry_ptr.7 = internal global ptr @iscsit_handle_time2retain_timeout._entry.5, section ".printk_index", align 4
@iscsit_start_time2retain_handler.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iscsi_target_mod\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iscsit_start_time2retain_handler\00", [63 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Starting Time2Retain timer for %u seconds on SID: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@iscsit_stop_time2retain_timer.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iscsit_stop_time2retain_timer\00", [34 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Stopped Time2Retain Timer for SID: %u\0A\00", [57 x i8] zeroinitializer }, align 32
@__kstrtab_iscsit_cause_connection_reinstatement = external dso_local constant [0 x i8], align 1
@__kstrtabns_iscsit_cause_connection_reinstatement = external dso_local constant [0 x i8], align 1
@__ksymtab_iscsit_cause_connection_reinstatement = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iscsit_cause_connection_reinstatement to i32), ptr @__kstrtab_iscsit_cause_connection_reinstatement, ptr @__kstrtabns_iscsit_cause_connection_reinstatement }, section "___ksymtab+iscsit_cause_connection_reinstatement", align 4
@iscsit_fall_back_to_erl0.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsit_fall_back_to_erl0\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Falling back to ErrorRecoveryLevel=0 for SID: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@iscsit_take_action_for_connection_exit.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 -24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"iscsit_take_action_for_connection_exit\00", [57 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Moving to TARG_CONN_STATE_CLEANUP_WAIT.\0A\00", [55 x i8] zeroinitializer }, align 32
@iscsit_dataout_within_command_recovery_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013Dumping DataOUT PDU Offset: %u Length: %d DataSN: 0x%08x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"iscsit_dataout_within_command_recovery_check\00", [51 x i8] zeroinitializer }, align 32
@iscsit_dataout_within_command_recovery_check._entry_ptr = internal global ptr @iscsit_dataout_within_command_recovery_check._entry, section ".printk_index", align 4
@iscsit_dataout_check_datasn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.2, i32 362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013Command ITT: 0x%08x, received DataSN: 0x%08x higher than expected 0x%08x.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iscsit_dataout_check_datasn\00", [36 x i8] zeroinitializer }, align 32
@iscsit_dataout_check_datasn._entry_ptr = internal global ptr @iscsit_dataout_check_datasn._entry, section ".printk_index", align 4
@iscsit_dataout_check_datasn._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\013Command ITT: 0x%08x, received DataSN: 0x%08x lower than expected 0x%08x, discarding payload.\0A\00", [32 x i8] zeroinitializer }, align 32
@iscsit_dataout_check_datasn._entry_ptr.23 = internal global ptr @iscsit_dataout_check_datasn._entry.21, section ".printk_index", align 4
@iscsit_dataout_check_datasn._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013Unable to perform within-command recovery while ERL=0.\0A\00", [38 x i8] zeroinitializer }, align 32
@iscsit_dataout_check_datasn._entry_ptr.26 = internal global ptr @iscsit_dataout_check_datasn._entry.24, section ".printk_index", align 4
@iscsit_dataout_check_unsolicited_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [120 x i8], [40 x i8] } { [120 x i8] c"\013Command ITT: 0x%08x with Offset: %u, Length: %u outside of Unsolicited Sequence %u:%u while DataSequenceInOrder=Yes.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"iscsit_dataout_check_unsolicited_sequence\00", [54 x i8] zeroinitializer }, align 32
@iscsit_dataout_check_unsolicited_sequence._entry_ptr = internal global ptr @iscsit_dataout_check_unsolicited_sequence._entry, section ".printk_index", align 4
@iscsit_dataout_check_unsolicited_sequence._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013Total %u bytes exceeds FirstBurstLength: %u for this Unsolicited DataOut Burst.\0A\00", [45 x i8] zeroinitializer }, align 32
@iscsit_dataout_check_unsolicited_sequence._entry_ptr.31 = internal global ptr @iscsit_dataout_check_unsolicited_sequence._entry.29, section ".printk_index", align 4
@iscsit_dataout_check_unsolicited_sequence._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.28, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [117 x i8], [43 x i8] } { [117 x i8] c"\013Unsolicited non-immediate data received %u does not equal FirstBurstLength: %u, and does not equal ExpXferLen %u.\0A\00", [43 x i8] zeroinitializer }, align 32
@iscsit_dataout_check_unsolicited_sequence._entry_ptr.34 = internal global ptr @iscsit_dataout_check_unsolicited_sequence._entry.32, section ".printk_index", align 4
@iscsit_dataout_check_unsolicited_sequence._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.28, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [106 x i8], [54 x i8] } { [106 x i8] c"\013Command ITT: 0x%08x reached FirstBurstLength: %u, but ISCSI_FLAG_CMD_FINAL is not set. protocol error.\0A\00", [54 x i8] zeroinitializer }, align 32
@iscsit_dataout_check_unsolicited_sequence._entry_ptr.37 = internal global ptr @iscsit_dataout_check_unsolicited_sequence._entry.35, section ".printk_index", align 4
@iscsit_dataout_check_unsolicited_sequence._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"\013Command ITT: 0x%08x reached ExpXferLen: %u, but ISCSI_FLAG_CMD_FINAL is not set. protocol error.\0A\00", [60 x i8] zeroinitializer }, align 32
@iscsit_dataout_check_unsolicited_sequence._entry_ptr.40 = internal global ptr @iscsit_dataout_check_unsolicited_sequence._entry.38, section ".printk_index", align 4
@iscsit_dataout_check_sequence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [108 x i8], [52 x i8] } { [108 x i8] c"\013Command ITT: 0x%08x with Offset: %u, Length: %u outside of Sequence %u:%u while DataSequenceInOrder=Yes.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iscsit_dataout_check_sequence\00", [34 x i8] zeroinitializer }, align 32
@iscsit_dataout_check_sequence._entry_ptr = internal global ptr @iscsit_dataout_check_sequence._entry, section ".printk_index", align 4
@iscsit_dataout_check_sequence._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 267, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\013Command ITT: 0x%08x, NextBurstLength: %u and Length: %u exceeds MaxBurstLength: %u. protocol error.\0A\00", [57 x i8] zeroinitializer }, align 32
@iscsit_dataout_check_sequence._entry_ptr.45 = internal global ptr @iscsit_dataout_check_sequence._entry.43, section ".printk_index", align 4
@iscsit_dataout_check_sequence._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 291, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\013Command ITT: 0x%08x set ISCSI_FLAG_CMD_FINAL before end of DataOUT sequence, protocol error.\0A\00", [32 x i8] zeroinitializer }, align 32
@iscsit_dataout_check_sequence._entry_ptr.48 = internal global ptr @iscsit_dataout_check_sequence._entry.46, section ".printk_index", align 4
@iscsit_dataout_check_sequence._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iscsit_dataout_check_sequence._entry_ptr.50 = internal global ptr @iscsit_dataout_check_sequence._entry.49, section ".printk_index", align 4
@iscsit_dataout_check_sequence._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.42, ptr @.str.2, i32 309, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [103 x i8], [57 x i8] } { [103 x i8] c"\013Command ITT: 0x%08x reached MaxBurstLength: %u, but ISCSI_FLAG_CMD_FINAL is not set, protocol error.\00", [57 x i8] zeroinitializer }, align 32
@iscsit_dataout_check_sequence._entry_ptr.53 = internal global ptr @iscsit_dataout_check_sequence._entry.51, section ".printk_index", align 4
@iscsit_dataout_check_sequence._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.42, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [113 x i8], [47 x i8] } { [113 x i8] c"\013Command ITT: 0x%08x reached last DataOUT PDU in sequence but ISCSI_FLAG_CMD_FINAL is not set, protocol error.\0A\00", [47 x i8] zeroinitializer }, align 32
@iscsit_dataout_check_sequence._entry_ptr.56 = internal global ptr @iscsit_dataout_check_sequence._entry.54, section ".printk_index", align 4
@iscsit_dataout_check_sequence._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.42, ptr @.str.2, i32 325, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iscsit_dataout_check_sequence._entry_ptr.58 = internal global ptr @iscsit_dataout_check_sequence._entry.57, section ".printk_index", align 4
@iscsit_dataout_pre_datapduinorder_yes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013Command ITT: 0x%08x, received offset %u different than expected %u.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"iscsit_dataout_pre_datapduinorder_yes\00", [58 x i8] zeroinitializer }, align 32
@iscsit_dataout_pre_datapduinorder_yes._entry_ptr = internal global ptr @iscsit_dataout_pre_datapduinorder_yes._entry, section ".printk_index", align 4
@iscsit_dataout_pre_datapduinorder_yes._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.60, ptr @.str.2, i32 418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013Command ITT: 0x%08x, received offset %u greater than expected %u.\0A\00", [59 x i8] zeroinitializer }, align 32
@iscsit_dataout_pre_datapduinorder_yes._entry_ptr.63 = internal global ptr @iscsit_dataout_pre_datapduinorder_yes._entry.61, section ".printk_index", align 4
@iscsit_dataout_pre_datapduinorder_yes._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.60, ptr @.str.2, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013Command ITT: 0x%08x, received offset %u less than expected %u, discarding payload.\0A\00", [42 x i8] zeroinitializer }, align 32
@iscsit_dataout_pre_datapduinorder_yes._entry_ptr.66 = internal global ptr @iscsit_dataout_pre_datapduinorder_yes._entry.64, section ".printk_index", align 4
@iscsit_dataout_pre_datapduinorder_yes._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.60, ptr @.str.2, i32 436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iscsit_dataout_pre_datapduinorder_yes._entry_ptr.68 = internal global ptr @iscsit_dataout_pre_datapduinorder_yes._entry.67, section ".printk_index", align 4
@iscsit_dataout_pre_datapduinorder_no._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013Command ITT: 0x%08x received already gotten Offset: %u, Length: %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"iscsit_dataout_pre_datapduinorder_no\00", [59 x i8] zeroinitializer }, align 32
@iscsit_dataout_pre_datapduinorder_no._entry_ptr = internal global ptr @iscsit_dataout_pre_datapduinorder_no._entry, section ".printk_index", align 4
@iscsit_handle_connection_cleanup.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.71, ptr @.str.2, ptr @.str.72, i8 0, i8 -31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iscsit_handle_connection_cleanup\00", [63 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Performing cleanup for failed iSCSI Connection ID: %hu from %s\0A\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4294967295]
@__sancov_gen_cov_switch_values.73 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.75 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 8]
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 732, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 756, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 763, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 788, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 817, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 885, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 930, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 126, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 360, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 365, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 375, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 143, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 154, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 177, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 188, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 195, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 231, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 263, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 289, i32 5 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 296, i32 5 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 306, i32 5 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 314, i32 5 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 322, i32 5 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 406, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 416, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 422, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 435, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 469, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.272 = private constant [44 x i8] c"../drivers/target/iscsi/iscsi_target_erl0.c\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.272, i32 900, i32 3 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__ksymtab_iscsit_cause_connection_reinstatement, ptr @iscsit_check_post_dataout._entry, ptr @iscsit_check_post_dataout._entry_ptr, ptr @iscsit_dataout_check_datasn._entry, ptr @iscsit_dataout_check_datasn._entry.21, ptr @iscsit_dataout_check_datasn._entry.24, ptr @iscsit_dataout_check_datasn._entry_ptr, ptr @iscsit_dataout_check_datasn._entry_ptr.23, ptr @iscsit_dataout_check_datasn._entry_ptr.26, ptr @iscsit_dataout_check_sequence._entry, ptr @iscsit_dataout_check_sequence._entry.43, ptr @iscsit_dataout_check_sequence._entry.46, ptr @iscsit_dataout_check_sequence._entry.49, ptr @iscsit_dataout_check_sequence._entry.51, ptr @iscsit_dataout_check_sequence._entry.54, ptr @iscsit_dataout_check_sequence._entry.57, ptr @iscsit_dataout_check_sequence._entry_ptr, ptr @iscsit_dataout_check_sequence._entry_ptr.45, ptr @iscsit_dataout_check_sequence._entry_ptr.48, ptr @iscsit_dataout_check_sequence._entry_ptr.50, ptr @iscsit_dataout_check_sequence._entry_ptr.53, ptr @iscsit_dataout_check_sequence._entry_ptr.56, ptr @iscsit_dataout_check_sequence._entry_ptr.58, ptr @iscsit_dataout_check_unsolicited_sequence._entry, ptr @iscsit_dataout_check_unsolicited_sequence._entry.29, ptr @iscsit_dataout_check_unsolicited_sequence._entry.32, ptr @iscsit_dataout_check_unsolicited_sequence._entry.35, ptr @iscsit_dataout_check_unsolicited_sequence._entry.38, ptr @iscsit_dataout_check_unsolicited_sequence._entry_ptr, ptr @iscsit_dataout_check_unsolicited_sequence._entry_ptr.31, ptr @iscsit_dataout_check_unsolicited_sequence._entry_ptr.34, ptr @iscsit_dataout_check_unsolicited_sequence._entry_ptr.37, ptr @iscsit_dataout_check_unsolicited_sequence._entry_ptr.40, ptr @iscsit_dataout_pre_datapduinorder_no._entry, ptr @iscsit_dataout_pre_datapduinorder_no._entry_ptr, ptr @iscsit_dataout_pre_datapduinorder_yes._entry, ptr @iscsit_dataout_pre_datapduinorder_yes._entry.61, ptr @iscsit_dataout_pre_datapduinorder_yes._entry.64, ptr @iscsit_dataout_pre_datapduinorder_yes._entry.67, ptr @iscsit_dataout_pre_datapduinorder_yes._entry_ptr, ptr @iscsit_dataout_pre_datapduinorder_yes._entry_ptr.63, ptr @iscsit_dataout_pre_datapduinorder_yes._entry_ptr.66, ptr @iscsit_dataout_pre_datapduinorder_yes._entry_ptr.68, ptr @iscsit_dataout_within_command_recovery_check._entry, ptr @iscsit_dataout_within_command_recovery_check._entry_ptr, ptr @iscsit_handle_time2retain_timeout._entry, ptr @iscsit_handle_time2retain_timeout._entry.5, ptr @iscsit_handle_time2retain_timeout._entry_ptr, ptr @iscsit_handle_time2retain_timeout._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.52, ptr @.str.55, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.65, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_check_post_dataout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_time2retain_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_handle_time2retain_timeout._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_within_command_recovery_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_check_datasn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_check_datasn._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_check_datasn._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_check_unsolicited_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_check_unsolicited_sequence._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_check_unsolicited_sequence._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 117, i32 160, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_check_unsolicited_sequence._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 106, i32 160, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_check_unsolicited_sequence._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_check_sequence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_check_sequence._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_check_sequence._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_check_sequence._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_check_sequence._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 103, i32 160, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_check_sequence._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 113, i32 160, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_check_sequence._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_pre_datapduinorder_yes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_pre_datapduinorder_yes._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_pre_datapduinorder_yes._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_pre_datapduinorder_yes._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_dataout_pre_datapduinorder_no._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @iscsit_set_dataout_sequence_values(ptr nocapture noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %unsolicited_data = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 12
  %2 = ptrtoint ptr %unsolicited_data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %unsolicited_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %write_data_done = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  %4 = ptrtoint ptr %write_data_done to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %write_data_done, align 128
  %seq_start_offset = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 37
  %6 = ptrtoint ptr %seq_start_offset to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %seq_start_offset, align 4
  %data_length = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %7 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_length, align 4
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %9 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sess, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %10, i32 0, i32 47
  %11 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sess_ops, align 8
  %FirstBurstLength = getelementptr inbounds %struct.iscsi_sess_ops, ptr %12, i32 0, i32 10
  %13 = ptrtoint ptr %FirstBurstLength to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %FirstBurstLength, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %8, i32 %14)
  %seq_end_offset = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 38
  %16 = ptrtoint ptr %seq_end_offset to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %seq_end_offset, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sess2 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %17 = ptrtoint ptr %sess2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sess2, align 4
  %sess_ops3 = getelementptr inbounds %struct.iscsi_session, ptr %18, i32 0, i32 47
  %19 = ptrtoint ptr %sess_ops3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sess_ops3, align 8
  %DataSequenceInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %DataSequenceInOrder to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %DataSequenceInOrder, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool4.not = icmp eq i8 %22, 0
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %seq_start_offset7 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 37
  %23 = ptrtoint ptr %seq_start_offset7 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %seq_start_offset7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool8.not = icmp eq i32 %24, 0
  br i1 %tobool8.not, label %land.lhs.true, label %if.end6.if.else_crit_edge

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end6
  %seq_end_offset9 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 38
  %25 = ptrtoint ptr %seq_end_offset9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %seq_end_offset9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool10.not = icmp eq i32 %26, 0
  br i1 %tobool10.not, label %if.then11, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then11:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %write_data_done12 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  %27 = ptrtoint ptr %write_data_done12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %write_data_done12, align 128
  %29 = ptrtoint ptr %seq_start_offset7 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %seq_start_offset7, align 4
  %data_length15 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %30 = ptrtoint ptr %data_length15 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_length15, align 4
  %32 = ptrtoint ptr %sess2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sess2, align 4
  %sess_ops17 = getelementptr inbounds %struct.iscsi_session, ptr %33, i32 0, i32 47
  %34 = ptrtoint ptr %sess_ops17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sess_ops17, align 8
  %MaxBurstLength = getelementptr inbounds %struct.iscsi_sess_ops, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %MaxBurstLength to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %MaxBurstLength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %37)
  %cmp18 = icmp ugt i32 %31, %37
  %add = add i32 %37, %28
  %spec.select = select i1 %cmp18, i32 %add, i32 %31
  %38 = ptrtoint ptr %seq_end_offset9 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.select, ptr %seq_end_offset9, align 8
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end6.if.else_crit_edge
  %seq_end_offset30 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 38
  %39 = ptrtoint ptr %seq_end_offset30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %seq_end_offset30, align 8
  %41 = ptrtoint ptr %seq_start_offset7 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %seq_start_offset7, align 4
  %42 = ptrtoint ptr %sess2 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sess2, align 4
  %sess_ops34 = getelementptr inbounds %struct.iscsi_session, ptr %43, i32 0, i32 47
  %44 = ptrtoint ptr %sess_ops34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sess_ops34, align 8
  %MaxBurstLength35 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %MaxBurstLength35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %MaxBurstLength35, align 4
  %add36 = add i32 %47, %40
  %data_length38 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %48 = ptrtoint ptr %data_length38 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_length38, align 4
  %50 = tail call i32 @llvm.umin.i32(i32 %add36, i32 %49)
  %51 = ptrtoint ptr %seq_end_offset30 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %seq_end_offset30, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then11, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_check_pre_dataout(ptr noundef %cmd, ptr noundef readonly %buf) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %dlength.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 4
  %2 = ptrtoint ptr %dlength.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dlength.i, align 1
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx3.i = getelementptr %struct.iscsi_data, ptr %buf, i32 0, i32 4, i32 1
  %4 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %5 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %or.i = or i32 %shl5.i, %shl.i
  %arrayidx7.i = getelementptr %struct.iscsi_data, ptr %buf, i32 0, i32 4, i32 2
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %7 to i32
  %or9.i = or i32 %or.i, %conv8.i
  %sess.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %8 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sess.i, align 4
  %sess_ops.i = getelementptr inbounds %struct.iscsi_session, ptr %9, i32 0, i32 47
  %10 = ptrtoint ptr %sess_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sess_ops.i, align 8
  %DataSequenceInOrder.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %DataSequenceInOrder.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %DataSequenceInOrder.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %cmd_flags.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 15
  %14 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd_flags.i, align 4
  %and.i = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.then.i.if.end.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %write_data_done.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  %16 = ptrtoint ptr %write_data_done.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %write_data_done.i, align 128
  %offset.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 12
  %18 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.not.i = icmp eq i32 %17, %19
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.iscsit_dataout_within_command_recovery_check.exit_crit_edge

land.lhs.true.i.iscsit_dataout_within_command_recovery_check.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iscsit_dataout_within_command_recovery_check.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %and14.i = and i32 %15, -17
  %20 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and14.i, ptr %cmd_flags.i, align 4
  br label %if.end

if.else.i:                                        ; preds = %entry
  %offset15.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 12
  %21 = ptrtoint ptr %offset15.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offset15.i, align 4
  %call.i = tail call ptr @iscsit_get_seq_holder(ptr noundef %cmd, i32 noundef %22, i32 noundef %or9.i) #5
  %tobool16.not.i = icmp eq ptr %call.i, null
  br i1 %tobool16.not.i, label %if.else.i.cleanup_crit_edge, label %if.end18.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18.i:                                       ; preds = %if.else.i
  %seq_ptr.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 64
  %23 = ptrtoint ptr %seq_ptr.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %seq_ptr.i, align 16
  %24 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sess.i, align 4
  %sess_ops20.i = getelementptr inbounds %struct.iscsi_session, ptr %25, i32 0, i32 47
  %26 = ptrtoint ptr %sess_ops20.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sess_ops20.i, align 8
  %DataPDUInOrder.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %DataPDUInOrder.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %DataPDUInOrder.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool21.not.i = icmp eq i8 %29, 0
  %status35.i = getelementptr inbounds %struct.iscsi_seq, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %status35.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %status35.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp36.i = icmp eq i32 %31, 2
  br i1 %tobool21.not.i, label %if.else34.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end18.i
  br i1 %cmp36.i, label %land.lhs.true25.i, label %if.then22.i.if.end45.i_crit_edge

if.then22.i.if.end45.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

land.lhs.true25.i:                                ; preds = %if.then22.i
  %offset26.i = getelementptr inbounds %struct.iscsi_seq, ptr %call.i, i32 0, i32 9
  %32 = ptrtoint ptr %offset26.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset26.i, align 4
  %34 = ptrtoint ptr %offset15.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %offset15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp28.not.i = icmp eq i32 %33, %35
  br i1 %cmp28.not.i, label %lor.lhs.false.i, label %land.lhs.true25.i.iscsit_dataout_within_command_recovery_check.exit_crit_edge

land.lhs.true25.i.iscsit_dataout_within_command_recovery_check.exit_crit_edge: ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iscsit_dataout_within_command_recovery_check.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true25.i
  %data_sn.i = getelementptr inbounds %struct.iscsi_seq, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %data_sn.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data_sn.i, align 4
  %datasn.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 11
  %38 = ptrtoint ptr %datasn.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %datasn.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp30.not.i = icmp eq i32 %37, %39
  br i1 %cmp30.not.i, label %lor.lhs.false.i.cleanup.i_crit_edge, label %lor.lhs.false.i.iscsit_dataout_within_command_recovery_check.exit_crit_edge

lor.lhs.false.i.iscsit_dataout_within_command_recovery_check.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iscsit_dataout_within_command_recovery_check.exit

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.else34.i:                                      ; preds = %if.end18.i
  br i1 %cmp36.i, label %land.lhs.true38.i, label %if.else34.i.if.end45.i_crit_edge

if.else34.i.if.end45.i_crit_edge:                 ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

land.lhs.true38.i:                                ; preds = %if.else34.i
  %data_sn39.i = getelementptr inbounds %struct.iscsi_seq, ptr %call.i, i32 0, i32 3
  %40 = ptrtoint ptr %data_sn39.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_sn39.i, align 4
  %datasn40.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 11
  %42 = ptrtoint ptr %datasn40.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %datasn40.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp41.not.i = icmp eq i32 %41, %43
  br i1 %cmp41.not.i, label %land.lhs.true38.i.cleanup.i_crit_edge, label %land.lhs.true38.i.iscsit_dataout_within_command_recovery_check.exit_crit_edge

land.lhs.true38.i.iscsit_dataout_within_command_recovery_check.exit_crit_edge: ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iscsit_dataout_within_command_recovery_check.exit

land.lhs.true38.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end45.i:                                       ; preds = %if.else34.i.if.end45.i_crit_edge, %if.then22.i.if.end45.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp47.i = icmp eq i32 %31, 3
  br i1 %cmp47.i, label %if.end45.i.iscsit_dataout_within_command_recovery_check.exit_crit_edge, label %if.end45.i.cleanup.i_crit_edge

if.end45.i.cleanup.i_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end45.i.iscsit_dataout_within_command_recovery_check.exit_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %iscsit_dataout_within_command_recovery_check.exit

cleanup.i:                                        ; preds = %if.end45.i.cleanup.i_crit_edge, %land.lhs.true38.i.cleanup.i_crit_edge, %lor.lhs.false.i.cleanup.i_crit_edge
  %44 = ptrtoint ptr %status35.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %status35.i, align 4
  br label %if.end

iscsit_dataout_within_command_recovery_check.exit: ; preds = %if.end45.i.iscsit_dataout_within_command_recovery_check.exit_crit_edge, %land.lhs.true38.i.iscsit_dataout_within_command_recovery_check.exit_crit_edge, %lor.lhs.false.i.iscsit_dataout_within_command_recovery_check.exit_crit_edge, %land.lhs.true25.i.iscsit_dataout_within_command_recovery_check.exit_crit_edge, %land.lhs.true.i.iscsit_dataout_within_command_recovery_check.exit_crit_edge
  %offset58.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 12
  %45 = ptrtoint ptr %offset58.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %offset58.i, align 4
  %datasn59.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 11
  %47 = ptrtoint ptr %datasn59.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %datasn59.i, align 4
  %call60.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %46, i32 noundef %or9.i, i32 noundef %48) #8
  %call61.i = tail call i32 @iscsit_dump_data_payload(ptr noundef %1, i32 noundef %or9.i, i32 noundef 1) #5
  %49 = zext i32 %call61.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call61.i, label %iscsit_dataout_within_command_recovery_check.exit.if.end_crit_edge [
    i32 3, label %iscsit_dataout_within_command_recovery_check.exit.cleanup_crit_edge
    i32 -1, label %iscsit_dataout_within_command_recovery_check.exit.cleanup_crit_edge191
  ]

iscsit_dataout_within_command_recovery_check.exit.cleanup_crit_edge191: ; preds = %iscsit_dataout_within_command_recovery_check.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

iscsit_dataout_within_command_recovery_check.exit.cleanup_crit_edge: ; preds = %iscsit_dataout_within_command_recovery_check.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

iscsit_dataout_within_command_recovery_check.exit.if.end_crit_edge: ; preds = %iscsit_dataout_within_command_recovery_check.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %iscsit_dataout_within_command_recovery_check.exit.if.end_crit_edge, %cleanup.i, %if.end.i
  %50 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %conn1, align 8
  %52 = ptrtoint ptr %dlength.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %dlength.i, align 1
  %conv.i52 = zext i8 %53 to i32
  %shl.i53 = shl nuw nsw i32 %conv.i52, 16
  %54 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i55 = zext i8 %55 to i32
  %shl5.i56 = shl nuw nsw i32 %conv4.i55, 8
  %or.i57 = or i32 %shl5.i56, %shl.i53
  %56 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i59 = zext i8 %57 to i32
  %or9.i60 = or i32 %or.i57, %conv8.i59
  %sess.i61 = getelementptr inbounds %struct.iscsi_conn, ptr %51, i32 0, i32 68
  %58 = ptrtoint ptr %sess.i61 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %sess.i61, align 4
  %sess_ops.i62 = getelementptr inbounds %struct.iscsi_session, ptr %59, i32 0, i32 47
  %60 = ptrtoint ptr %sess_ops.i62 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sess_ops.i62, align 8
  %DataSequenceInOrder.i63 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %61, i32 0, i32 15
  %62 = ptrtoint ptr %DataSequenceInOrder.i63 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %DataSequenceInOrder.i63, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i64 = icmp eq i8 %63, 0
  br i1 %tobool.not.i64, label %if.else.i67, label %if.then.i65

if.then.i65:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %data_sn10.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 21
  br label %if.end.i69

if.else.i67:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %seq_ptr.i66 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 64
  %64 = ptrtoint ptr %seq_ptr.i66 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %seq_ptr.i66, align 16
  %data_sn11.i = getelementptr inbounds %struct.iscsi_seq, ptr %65, i32 0, i32 3
  br label %if.end.i69

if.end.i69:                                       ; preds = %if.else.i67, %if.then.i65
  %data_sn.0.in.i = phi ptr [ %data_sn10.i, %if.then.i65 ], [ %data_sn11.i, %if.else.i67 ]
  %66 = ptrtoint ptr %data_sn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %data_sn.0.i = load i32, ptr %data_sn.0.in.i, align 4
  %datasn.i68 = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 11
  %67 = ptrtoint ptr %datasn.i68 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %datasn.i68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %data_sn.0.i)
  %cmp.i = icmp ugt i32 %68, %data_sn.0.i
  br i1 %cmp.i, label %do.end.i71, label %if.else15.i

do.end.i71:                                       ; preds = %if.end.i69
  %init_task_tag.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %69 = ptrtoint ptr %init_task_tag.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %init_task_tag.i, align 32
  %call.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %70, i32 noundef %68, i32 noundef %data_sn.0.i) #8
  %71 = ptrtoint ptr %sess.i61 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %sess.i61, align 4
  %sess_ops30.i = getelementptr inbounds %struct.iscsi_session, ptr %72, i32 0, i32 47
  %73 = ptrtoint ptr %sess_ops30.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %sess_ops30.i, align 8
  %ErrorRecoveryLevel.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %74, i32 0, i32 16
  %75 = ptrtoint ptr %ErrorRecoveryLevel.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %ErrorRecoveryLevel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool31.not.i = icmp eq i8 %76, 0
  br i1 %tobool31.not.i, label %do.end35.i, label %do.end.i71.dump.i_crit_edge

do.end.i71.dump.i_crit_edge:                      ; preds = %do.end.i71
  call void @__sanitizer_cov_trace_pc() #7
  br label %dump.i

if.else15.i:                                      ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %data_sn.0.i)
  %cmp17.i = icmp ult i32 %68, %data_sn.0.i
  br i1 %cmp17.i, label %do.end22.i, label %if.end8

do.end22.i:                                       ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag24.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %77 = ptrtoint ptr %init_task_tag24.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %init_task_tag24.i, align 32
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %78, i32 noundef %68, i32 noundef %data_sn.0.i) #8
  br label %dump.i

do.end35.i:                                       ; preds = %do.end.i71
  call void @__sanitizer_cov_trace_pc() #7
  %call37.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #8
  br label %cleanup

dump.i:                                           ; preds = %do.end22.i, %do.end.i71.dump.i_crit_edge
  %call39.i = tail call i32 @iscsit_dump_data_payload(ptr noundef %51, i32 noundef %or9.i60, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call39.i)
  %cmp40.inv.i = icmp sgt i32 %call39.i, -1
  %spec.select = select i1 %cmp40.inv.i, i32 3, i32 -1
  br label %cleanup

if.end8:                                          ; preds = %if.else15.i
  %unsolicited_data = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 12
  %79 = ptrtoint ptr %unsolicited_data to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %unsolicited_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not = icmp eq i8 %80, 0
  %81 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %conn1, align 8
  %83 = ptrtoint ptr %dlength.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %dlength.i, align 1
  %conv.i100 = zext i8 %84 to i32
  %shl.i101 = shl nuw nsw i32 %conv.i100, 16
  %85 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i103 = zext i8 %86 to i32
  %shl5.i104 = shl nuw nsw i32 %conv4.i103, 8
  %or.i105 = or i32 %shl5.i104, %shl.i101
  %87 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i107 = zext i8 %88 to i32
  %or9.i108 = or i32 %or.i105, %conv8.i107
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end8
  %offset.i84 = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 12
  %89 = ptrtoint ptr %offset.i84 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %offset.i84, align 4
  %seq_start_offset.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 37
  %91 = ptrtoint ptr %seq_start_offset.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %seq_start_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %92)
  %cmp.i85 = icmp ult i32 %90, %92
  br i1 %cmp.i85, label %if.then9.do.end.i89_crit_edge, label %lor.lhs.false.i86

if.then9.do.end.i89_crit_edge:                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i89

lor.lhs.false.i86:                                ; preds = %if.then9
  %add.i = add i32 %or9.i108, %90
  %seq_end_offset.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 38
  %93 = ptrtoint ptr %seq_end_offset.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %seq_end_offset.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %94)
  %cmp12.i = icmp ugt i32 %add.i, %94
  br i1 %cmp12.i, label %lor.lhs.false.i86.do.end.i89_crit_edge, label %if.end.i92

lor.lhs.false.i86.do.end.i89_crit_edge:           ; preds = %lor.lhs.false.i86
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i89

do.end.i89:                                       ; preds = %lor.lhs.false.i86.do.end.i89_crit_edge, %if.then9.do.end.i89_crit_edge
  %init_task_tag.i87 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %95 = ptrtoint ptr %init_task_tag.i87 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %init_task_tag.i87, align 32
  %seq_end_offset16.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 38
  %97 = ptrtoint ptr %seq_end_offset16.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %seq_end_offset16.i, align 8
  %call.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %96, i32 noundef %90, i32 noundef %or9.i108, i32 noundef %92, i32 noundef %98) #8
  br label %cleanup

if.end.i92:                                       ; preds = %lor.lhs.false.i86
  %first_burst_len17.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 41
  %99 = ptrtoint ptr %first_burst_len17.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %first_burst_len17.i, align 4
  %add18.i = add i32 %100, %or9.i108
  %sess.i90 = getelementptr inbounds %struct.iscsi_conn, ptr %82, i32 0, i32 68
  %101 = ptrtoint ptr %sess.i90 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sess.i90, align 4
  %sess_ops.i91 = getelementptr inbounds %struct.iscsi_session, ptr %102, i32 0, i32 47
  %103 = ptrtoint ptr %sess_ops.i91 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %sess_ops.i91, align 8
  %FirstBurstLength.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %104, i32 0, i32 10
  %105 = ptrtoint ptr %FirstBurstLength.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %FirstBurstLength.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %106)
  %cmp19.i = icmp ugt i32 %add18.i, %106
  br i1 %cmp19.i, label %do.end24.i, label %if.end31.i

do.end24.i:                                       ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #7
  %call29.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %add18.i, i32 noundef %106) #8
  %se_cmd.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70
  %call30.i = tail call i32 @transport_send_check_condition_and_sense(ptr noundef %se_cmd.i, i32 noundef 3, i32 noundef 0) #5
  br label %cleanup

if.end31.i:                                       ; preds = %if.end.i92
  %flags.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 1
  %107 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %flags.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %108)
  %tobool.not.i93 = icmp sgt i8 %108, -1
  br i1 %tobool.not.i93, label %if.else.i95, label %if.then33.i

if.then33.i:                                      ; preds = %if.end31.i
  %DataPDUInOrder.i94 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %104, i32 0, i32 14
  %109 = ptrtoint ptr %DataPDUInOrder.i94 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %DataPDUInOrder.i94, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %110)
  %tobool36.not.i = icmp eq i8 %110, 0
  br i1 %tobool36.not.i, label %if.then33.i.if.end22_crit_edge, label %if.end38.i

if.then33.i.if.end22_crit_edge:                   ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end38.i:                                       ; preds = %if.then33.i
  %data_length.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %111 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %data_length.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %112)
  %cmp40.not.i = icmp eq i32 %add18.i, %112
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %106)
  %cmp45.not.i = icmp eq i32 %add18.i, %106
  %or.cond.i = select i1 %cmp40.not.i, i1 true, i1 %cmp45.not.i
  br i1 %or.cond.i, label %if.end38.i.if.end22_crit_edge, label %do.end50.i

if.end38.i.if.end22_crit_edge:                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.end50.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  %se_cmd39.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70
  %call57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %add18.i, i32 noundef %106, i32 noundef %112) #8
  %call59.i = tail call i32 @transport_send_check_condition_and_sense(ptr noundef %se_cmd39.i, i32 noundef 3, i32 noundef 0) #5
  br label %cleanup

if.else.i95:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %106)
  %cmp64.i = icmp eq i32 %add18.i, %106
  br i1 %cmp64.i, label %do.end69.i, label %if.end76.i

do.end69.i:                                       ; preds = %if.else.i95
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag71.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %113 = ptrtoint ptr %init_task_tag71.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %init_task_tag71.i, align 32
  %call75.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %114, i32 noundef %add18.i) #8
  br label %cleanup

if.end76.i:                                       ; preds = %if.else.i95
  %data_length78.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %115 = ptrtoint ptr %data_length78.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %data_length78.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add18.i, i32 %116)
  %cmp79.i = icmp eq i32 %add18.i, %116
  br i1 %cmp79.i, label %do.end84.i, label %if.end76.i.if.end22_crit_edge

if.end76.i.if.end22_crit_edge:                    ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.end84.i:                                       ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag86.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %117 = ptrtoint ptr %init_task_tag86.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %init_task_tag86.i, align 32
  %call89.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %118, i32 noundef %add18.i) #8
  br label %cleanup

if.else:                                          ; preds = %if.end8
  %sess.i109 = getelementptr inbounds %struct.iscsi_conn, ptr %82, i32 0, i32 68
  %119 = ptrtoint ptr %sess.i109 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sess.i109, align 4
  %sess_ops.i110 = getelementptr inbounds %struct.iscsi_session, ptr %120, i32 0, i32 47
  %121 = ptrtoint ptr %sess_ops.i110 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %sess_ops.i110, align 8
  %DataSequenceInOrder.i111 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %122, i32 0, i32 15
  %123 = ptrtoint ptr %DataSequenceInOrder.i111 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %DataSequenceInOrder.i111, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool.not.i112 = icmp eq i8 %124, 0
  %offset25.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 12
  %125 = ptrtoint ptr %offset25.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %offset25.i, align 4
  br i1 %tobool.not.i112, label %if.else.i125, label %if.then.i115

if.then.i115:                                     ; preds = %if.else
  %seq_start_offset.i113 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 37
  %127 = ptrtoint ptr %seq_start_offset.i113 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %seq_start_offset.i113, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %126, i32 %128)
  %cmp.i114 = icmp ult i32 %126, %128
  br i1 %cmp.i114, label %if.then.i115.do.end.i123_crit_edge, label %lor.lhs.false.i119

if.then.i115.do.end.i123_crit_edge:               ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i123

lor.lhs.false.i119:                               ; preds = %if.then.i115
  %add.i116 = add i32 %126, %or9.i108
  %seq_end_offset.i117 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 38
  %129 = ptrtoint ptr %seq_end_offset.i117 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %seq_end_offset.i117, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i116, i32 %130)
  %cmp12.i118 = icmp ugt i32 %add.i116, %130
  br i1 %cmp12.i118, label %lor.lhs.false.i119.do.end.i123_crit_edge, label %if.end22.i

lor.lhs.false.i119.do.end.i123_crit_edge:         ; preds = %lor.lhs.false.i119
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i123

do.end.i123:                                      ; preds = %lor.lhs.false.i119.do.end.i123_crit_edge, %if.then.i115.do.end.i123_crit_edge
  %init_task_tag.i120 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %131 = ptrtoint ptr %init_task_tag.i120 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %init_task_tag.i120, align 32
  %seq_end_offset17.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 38
  %133 = ptrtoint ptr %seq_end_offset17.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %seq_end_offset17.i, align 8
  %call.i121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, i32 noundef %132, i32 noundef %126, i32 noundef %or9.i108, i32 noundef %128, i32 noundef %134) #8
  %call18.i = tail call i32 @iscsit_dump_data_payload(ptr noundef %82, i32 noundef %or9.i108, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call18.i)
  %cmp19.inv.i = icmp sgt i32 %call18.i, -1
  %spec.select189 = select i1 %cmp19.inv.i, i32 3, i32 -1
  br label %cleanup

if.end22.i:                                       ; preds = %lor.lhs.false.i119
  call void @__sanitizer_cov_trace_pc() #7
  %next_burst_len23.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 42
  br label %if.end41.i

if.else.i125:                                     ; preds = %if.else
  %call26.i124 = tail call ptr @iscsit_get_seq_holder(ptr noundef %cmd, i32 noundef %126, i32 noundef %or9.i108) #5
  %tobool27.not.i = icmp eq ptr %call26.i124, null
  br i1 %tobool27.not.i, label %if.else.i125.cleanup_crit_edge, label %if.end29.i

if.else.i125.cleanup_crit_edge:                   ; preds = %if.else.i125
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29.i:                                       ; preds = %if.else.i125
  %seq_ptr.i126 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 64
  %135 = ptrtoint ptr %seq_ptr.i126 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call26.i124, ptr %seq_ptr.i126, align 16
  %status.i = getelementptr inbounds %struct.iscsi_seq, ptr %call26.i124, i32 0, i32 1
  %136 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %137)
  %cmp30.i = icmp eq i32 %137, 3
  br i1 %cmp30.i, label %if.then32.i, label %if.end38.i127

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %call33.i = tail call i32 @iscsit_dump_data_payload(ptr noundef %82, i32 noundef %or9.i108, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call33.i)
  %cmp34.inv.i = icmp sgt i32 %call33.i, -1
  %spec.select190 = select i1 %cmp34.inv.i, i32 3, i32 -1
  br label %cleanup

if.end38.i127:                                    ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %next_burst_len39.i = getelementptr inbounds %struct.iscsi_seq, ptr %call26.i124, i32 0, i32 6
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.end38.i127, %if.end22.i
  %seq.0.i = phi ptr [ null, %if.end22.i ], [ %call26.i124, %if.end38.i127 ]
  %.pn.in.i = phi ptr [ %next_burst_len23.i, %if.end22.i ], [ %next_burst_len39.i, %if.end38.i127 ]
  %138 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pn.i = load i32, ptr %.pn.in.i, align 8
  %next_burst_len.0.i = add i32 %.pn.i, %or9.i108
  %139 = ptrtoint ptr %sess.i109 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %sess.i109, align 4
  %sess_ops43.i = getelementptr inbounds %struct.iscsi_session, ptr %140, i32 0, i32 47
  %141 = ptrtoint ptr %sess_ops43.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %sess_ops43.i, align 8
  %MaxBurstLength.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %142, i32 0, i32 9
  %143 = ptrtoint ptr %MaxBurstLength.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %MaxBurstLength.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %next_burst_len.0.i, i32 %144)
  %cmp44.i = icmp ugt i32 %next_burst_len.0.i, %144
  br i1 %cmp44.i, label %do.end49.i, label %if.end56.i

do.end49.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag51.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %145 = ptrtoint ptr %init_task_tag51.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %init_task_tag51.i, align 32
  %call55.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %146, i32 noundef %.pn.i, i32 noundef %or9.i108, i32 noundef %144) #8
  br label %cleanup

if.end56.i:                                       ; preds = %if.end41.i
  %flags.i128 = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 1
  %147 = ptrtoint ptr %flags.i128 to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %flags.i128, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %148)
  %tobool58.not.i = icmp sgt i8 %148, -1
  br i1 %tobool58.not.i, label %if.else98.i, label %if.then59.i

if.then59.i:                                      ; preds = %if.end56.i
  %DataPDUInOrder.i129 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %142, i32 0, i32 14
  %149 = ptrtoint ptr %DataPDUInOrder.i129 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %DataPDUInOrder.i129, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool62.not.i = icmp eq i8 %150, 0
  br i1 %tobool62.not.i, label %if.then59.i.if.end22_crit_edge, label %if.end64.i

if.then59.i.if.end22_crit_edge:                   ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.end64.i:                                       ; preds = %if.then59.i
  %DataSequenceInOrder67.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %142, i32 0, i32 15
  %151 = ptrtoint ptr %DataSequenceInOrder67.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %DataSequenceInOrder67.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool68.not.i = icmp eq i8 %152, 0
  br i1 %tobool68.not.i, label %if.else86.i, label %if.then69.i

if.then69.i:                                      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_cmp4(i32 %next_burst_len.0.i, i32 %144)
  %cmp73.i = icmp ult i32 %next_burst_len.0.i, %144
  br i1 %cmp73.i, label %land.lhs.true.i132, label %if.then69.i.if.end22_crit_edge

if.then69.i.if.end22_crit_edge:                   ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

land.lhs.true.i132:                               ; preds = %if.then69.i
  %write_data_done.i130 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  %153 = ptrtoint ptr %write_data_done.i130 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %write_data_done.i130, align 128
  %add75.i = add i32 %154, %or9.i108
  %data_length.i131 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %155 = ptrtoint ptr %data_length.i131 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %data_length.i131, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add75.i, i32 %156)
  %cmp76.i = icmp ult i32 %add75.i, %156
  br i1 %cmp76.i, label %do.end81.i, label %land.lhs.true.i132.if.end22_crit_edge

land.lhs.true.i132.if.end22_crit_edge:            ; preds = %land.lhs.true.i132
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.end81.i:                                       ; preds = %land.lhs.true.i132
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag83.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %157 = ptrtoint ptr %init_task_tag83.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %init_task_tag83.i, align 32
  %call84.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %158) #8
  br label %cleanup

if.else86.i:                                      ; preds = %if.end64.i
  %xfer_len.i = getelementptr inbounds %struct.iscsi_seq, ptr %seq.0.i, i32 0, i32 15
  %159 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %xfer_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %next_burst_len.0.i, i32 %160)
  %cmp87.i = icmp ult i32 %next_burst_len.0.i, %160
  br i1 %cmp87.i, label %do.end92.i, label %if.else86.i.if.end22_crit_edge

if.else86.i.if.end22_crit_edge:                   ; preds = %if.else86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.end92.i:                                       ; preds = %if.else86.i
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag94.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %161 = ptrtoint ptr %init_task_tag94.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %init_task_tag94.i, align 32
  %call95.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %162) #8
  br label %cleanup

if.else98.i:                                      ; preds = %if.end56.i
  %DataSequenceInOrder101.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %142, i32 0, i32 15
  %163 = ptrtoint ptr %DataSequenceInOrder101.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %DataSequenceInOrder101.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool102.not.i = icmp eq i8 %164, 0
  br i1 %tobool102.not.i, label %if.else134.i, label %if.then103.i

if.then103.i:                                     ; preds = %if.else98.i
  call void @__sanitizer_cov_trace_cmp4(i32 %next_burst_len.0.i, i32 %144)
  %cmp107.i = icmp eq i32 %next_burst_len.0.i, %144
  br i1 %cmp107.i, label %do.end112.i, label %if.end119.i

do.end112.i:                                      ; preds = %if.then103.i
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag114.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %165 = ptrtoint ptr %init_task_tag114.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %init_task_tag114.i, align 32
  %call118.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %166, i32 noundef %next_burst_len.0.i) #8
  br label %cleanup

if.end119.i:                                      ; preds = %if.then103.i
  %write_data_done120.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  %167 = ptrtoint ptr %write_data_done120.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %write_data_done120.i, align 128
  %add121.i = add i32 %168, %or9.i108
  %data_length123.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %169 = ptrtoint ptr %data_length123.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %data_length123.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add121.i, i32 %170)
  %cmp124.i = icmp eq i32 %add121.i, %170
  br i1 %cmp124.i, label %do.end129.i, label %if.end119.i.if.end22_crit_edge

if.end119.i.if.end22_crit_edge:                   ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.end129.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag131.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %171 = ptrtoint ptr %init_task_tag131.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %init_task_tag131.i, align 32
  %call132.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %172) #8
  br label %cleanup

if.else134.i:                                     ; preds = %if.else98.i
  %xfer_len135.i = getelementptr inbounds %struct.iscsi_seq, ptr %seq.0.i, i32 0, i32 15
  %173 = ptrtoint ptr %xfer_len135.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %xfer_len135.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %next_burst_len.0.i, i32 %174)
  %cmp136.i = icmp eq i32 %next_burst_len.0.i, %174
  br i1 %cmp136.i, label %do.end141.i, label %if.else134.i.if.end22_crit_edge

if.else134.i.if.end22_crit_edge:                  ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.end141.i:                                      ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag143.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %175 = ptrtoint ptr %init_task_tag143.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %init_task_tag143.i, align 32
  %call144.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %176) #8
  br label %cleanup

if.end22:                                         ; preds = %if.else134.i.if.end22_crit_edge, %if.end119.i.if.end22_crit_edge, %if.else86.i.if.end22_crit_edge, %land.lhs.true.i132.if.end22_crit_edge, %if.then69.i.if.end22_crit_edge, %if.then59.i.if.end22_crit_edge, %if.end76.i.if.end22_crit_edge, %if.end38.i.if.end22_crit_edge, %if.then33.i.if.end22_crit_edge
  %177 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %sess.i, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %178, i32 0, i32 47
  %179 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %sess_ops, align 8
  %DataPDUInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %180, i32 0, i32 14
  %181 = ptrtoint ptr %DataPDUInOrder to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %DataPDUInOrder, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool23.not = icmp eq i8 %182, 0
  br i1 %tobool23.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end22
  %183 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %conn1, align 8
  %185 = ptrtoint ptr %dlength.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %dlength.i, align 1
  %conv.i137 = zext i8 %186 to i32
  %shl.i138 = shl nuw nsw i32 %conv.i137, 16
  %187 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i140 = zext i8 %188 to i32
  %shl5.i141 = shl nuw nsw i32 %conv4.i140, 8
  %or.i142 = or i32 %shl5.i141, %shl.i138
  %189 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i144 = zext i8 %190 to i32
  %or9.i145 = or i32 %or.i142, %conv8.i144
  %sess.i146 = getelementptr inbounds %struct.iscsi_conn, ptr %184, i32 0, i32 68
  %191 = ptrtoint ptr %sess.i146 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %sess.i146, align 4
  %sess_ops.i147 = getelementptr inbounds %struct.iscsi_session, ptr %192, i32 0, i32 47
  %193 = ptrtoint ptr %sess_ops.i147 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %sess_ops.i147, align 8
  %DataSequenceInOrder.i148 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %194, i32 0, i32 15
  %195 = ptrtoint ptr %DataSequenceInOrder.i148 to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %DataSequenceInOrder.i148, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %196)
  %tobool.not.i149 = icmp eq i8 %196, 0
  br i1 %tobool.not.i149, label %if.else.i159, label %if.then.i153

if.then.i153:                                     ; preds = %cond.true
  %offset.i150 = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 12
  %197 = ptrtoint ptr %offset.i150 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %offset.i150, align 4
  %write_data_done.i151 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  %199 = ptrtoint ptr %write_data_done.i151 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %write_data_done.i151, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %198, i32 %200)
  %cmp.not.i152 = icmp eq i32 %198, %200
  br i1 %cmp.not.i152, label %if.then.i153.cleanup_crit_edge, label %do.end.i156

if.then.i153.cleanup_crit_edge:                   ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i156:                                      ; preds = %if.then.i153
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag.i154 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %201 = ptrtoint ptr %init_task_tag.i154 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %init_task_tag.i154, align 32
  %call.i155 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %202, i32 noundef %198, i32 noundef %200) #8
  br label %recover.i

if.else.i159:                                     ; preds = %cond.true
  %seq_ptr.i157 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 64
  %203 = ptrtoint ptr %seq_ptr.i157 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %seq_ptr.i157, align 16
  %offset14.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 12
  %205 = ptrtoint ptr %offset14.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %offset14.i, align 4
  %offset15.i158 = getelementptr inbounds %struct.iscsi_seq, ptr %204, i32 0, i32 9
  %207 = ptrtoint ptr %offset15.i158 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %offset15.i158, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %208)
  %cmp16.i = icmp ugt i32 %206, %208
  br i1 %cmp16.i, label %cleanup.i162, label %if.else27.i

if.else27.i:                                      ; preds = %if.else.i159
  call void @__sanitizer_cov_trace_cmp4(i32 %206, i32 %208)
  %cmp30.i160 = icmp ult i32 %206, %208
  br i1 %cmp30.i160, label %dump54.thread.i, label %if.else27.i.cleanup_crit_edge

if.else27.i.cleanup_crit_edge:                    ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup.i162:                                     ; preds = %if.else.i159
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag23.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %209 = ptrtoint ptr %init_task_tag23.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %init_task_tag23.i, align 32
  %call26.i161 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef %210, i32 noundef %206, i32 noundef %208) #8
  br label %recover.i

recover.i:                                        ; preds = %cleanup.i162, %do.end.i156
  %211 = ptrtoint ptr %sess.i146 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %sess.i146, align 4
  %sess_ops45.i = getelementptr inbounds %struct.iscsi_session, ptr %212, i32 0, i32 47
  %213 = ptrtoint ptr %sess_ops45.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %sess_ops45.i, align 8
  %ErrorRecoveryLevel.i163 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %214, i32 0, i32 16
  %215 = ptrtoint ptr %ErrorRecoveryLevel.i163 to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %ErrorRecoveryLevel.i163, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %216)
  %tobool46.not.i = icmp eq i8 %216, 0
  br i1 %tobool46.not.i, label %do.end50.i164, label %dump54.i

do.end50.i164:                                    ; preds = %recover.i
  call void @__sanitizer_cov_trace_pc() #7
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #8
  br label %cleanup

dump54.i:                                         ; preds = %recover.i
  %call55.i165 = tail call i32 @iscsit_dump_data_payload(ptr noundef %184, i32 noundef %or9.i145, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i165)
  %cmp56.i = icmp slt i32 %call55.i165, 0
  br i1 %cmp56.i, label %dump54.i.cleanup_crit_edge, label %cond.true.i

dump54.i.cleanup_crit_edge:                       ; preds = %dump54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

dump54.thread.i:                                  ; preds = %if.else27.i
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag37.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %217 = ptrtoint ptr %init_task_tag37.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %init_task_tag37.i, align 32
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %218, i32 noundef %206, i32 noundef %208) #8
  %call55105.i = tail call i32 @iscsit_dump_data_payload(ptr noundef %184, i32 noundef %or9.i145, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call55105.i)
  %cmp56106.inv.i = icmp sgt i32 %call55105.i, -1
  %spec.select.i = select i1 %cmp56106.inv.i, i32 3, i32 -1
  br label %cleanup

cond.true.i:                                      ; preds = %dump54.i
  call void @__sanitizer_cov_trace_pc() #7
  %offset61.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 12
  %219 = ptrtoint ptr %offset61.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %offset61.i, align 4
  %call62.i = tail call i32 @iscsit_recover_dataout_sequence(ptr noundef %cmd, i32 noundef %220, i32 noundef %or9.i145) #5
  br label %cleanup

cond.false:                                       ; preds = %if.end22
  %221 = ptrtoint ptr %dlength.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %dlength.i, align 1
  %conv.i168 = zext i8 %222 to i32
  %shl.i169 = shl nuw nsw i32 %conv.i168, 16
  %223 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %arrayidx3.i, align 1
  %conv3.i = zext i8 %224 to i32
  %shl4.i = shl nuw nsw i32 %conv3.i, 8
  %or.i170 = or i32 %shl4.i, %shl.i169
  %225 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %arrayidx7.i, align 1
  %conv7.i = zext i8 %226 to i32
  %or8.i = or i32 %or.i170, %conv7.i
  %offset.i171 = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 12
  %227 = ptrtoint ptr %offset.i171 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %offset.i171, align 4
  %call.i172 = tail call ptr @iscsit_get_pdu_holder(ptr noundef %cmd, i32 noundef %228, i32 noundef %or8.i) #5
  %tobool.not.i173 = icmp eq ptr %call.i172, null
  br i1 %tobool.not.i173, label %cond.false.cleanup_crit_edge, label %if.end.i174

cond.false.cleanup_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i174:                                      ; preds = %cond.false
  %pdu_ptr.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 62
  %229 = ptrtoint ptr %pdu_ptr.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %call.i172, ptr %pdu_ptr.i, align 8
  %230 = ptrtoint ptr %call.i172 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %call.i172, align 128
  %232 = zext i32 %231 to i64
  call void @__sanitizer_cov_trace_switch(i64 %232, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %231, label %if.end.i174.cleanup_crit_edge [
    i32 0, label %if.end.i174.sw.epilog.i_crit_edge
    i32 2, label %if.end.i174.sw.epilog.i_crit_edge192
    i32 3, label %if.end.i174.sw.epilog.i_crit_edge193
    i32 1, label %do.end.i176
  ]

if.end.i174.sw.epilog.i_crit_edge193:             ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i174.sw.epilog.i_crit_edge192:             ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i174.sw.epilog.i_crit_edge:                ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

if.end.i174.cleanup_crit_edge:                    ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end.i176:                                      ; preds = %if.end.i174
  call void @__sanitizer_cov_trace_pc() #7
  %init_task_tag.i175 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %233 = ptrtoint ptr %init_task_tag.i175 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %init_task_tag.i175, align 32
  %235 = ptrtoint ptr %offset.i171 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %offset.i171, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, i32 noundef %234, i32 noundef %236, i32 noundef %or8.i) #8
  %237 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %conn1, align 8
  %call12.i = tail call i32 @iscsit_dump_data_payload(ptr noundef %238, i32 noundef %or8.i, i32 noundef 1) #5
  br label %cleanup

sw.epilog.i:                                      ; preds = %if.end.i174.sw.epilog.i_crit_edge, %if.end.i174.sw.epilog.i_crit_edge192, %if.end.i174.sw.epilog.i_crit_edge193
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %do.end.i176, %if.end.i174.cleanup_crit_edge, %cond.false.cleanup_crit_edge, %cond.true.i, %dump54.thread.i, %dump54.i.cleanup_crit_edge, %do.end50.i164, %if.else27.i.cleanup_crit_edge, %if.then.i153.cleanup_crit_edge, %do.end141.i, %do.end129.i, %do.end112.i, %do.end92.i, %do.end81.i, %do.end49.i, %if.then32.i, %if.else.i125.cleanup_crit_edge, %do.end.i123, %do.end84.i, %do.end69.i, %do.end50.i, %do.end24.i, %do.end.i89, %dump.i, %do.end35.i, %iscsit_dataout_within_command_recovery_check.exit.cleanup_crit_edge, %iscsit_dataout_within_command_recovery_check.exit.cleanup_crit_edge191, %if.else.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %call61.i, %iscsit_dataout_within_command_recovery_check.exit.cleanup_crit_edge ], [ %call61.i, %iscsit_dataout_within_command_recovery_check.exit.cleanup_crit_edge191 ], [ -1, %do.end50.i164 ], [ 0, %if.then.i153.cleanup_crit_edge ], [ -1, %dump54.i.cleanup_crit_edge ], [ %call62.i, %cond.true.i ], [ 0, %if.else27.i.cleanup_crit_edge ], [ %spec.select.i, %dump54.thread.i ], [ %call12.i, %do.end.i176 ], [ 0, %sw.epilog.i ], [ -1, %cond.false.cleanup_crit_edge ], [ -1, %if.end.i174.cleanup_crit_edge ], [ -1, %if.else.i.cleanup_crit_edge ], [ -1, %do.end35.i ], [ -1, %do.end.i89 ], [ -1, %do.end24.i ], [ -1, %do.end50.i ], [ -1, %do.end69.i ], [ -1, %do.end84.i ], [ -1, %if.else.i125.cleanup_crit_edge ], [ -1, %do.end141.i ], [ -1, %do.end129.i ], [ -1, %do.end112.i ], [ -1, %do.end92.i ], [ -1, %do.end81.i ], [ -1, %do.end49.i ], [ %spec.select, %dump.i ], [ %spec.select189, %do.end.i123 ], [ %spec.select190, %if.then32.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_check_post_dataout(ptr noundef %cmd, ptr noundef %buf, i8 noundef zeroext %data_crc_failed) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %dataout_timeout_retries = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %dataout_timeout_retries to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %dataout_timeout_retries, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %data_crc_failed)
  %tobool.not = icmp eq i8 %data_crc_failed, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %dlength.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 4
  %3 = ptrtoint ptr %dlength.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dlength.i, align 1
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 16
  %arrayidx3.i = getelementptr %struct.iscsi_data, ptr %buf, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3.i, align 1
  %conv4.i = zext i8 %6 to i32
  %shl5.i = shl nuw nsw i32 %conv4.i, 8
  %or.i = or i32 %shl5.i, %shl.i
  %arrayidx7.i = getelementptr %struct.iscsi_data, ptr %buf, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx7.i, align 1
  %conv8.i = zext i8 %8 to i32
  %or9.i = or i32 %or.i, %conv8.i
  %unsolicited_data.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 12
  %9 = ptrtoint ptr %unsolicited_data.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %unsolicited_data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.else46.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %first_burst_len.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 41
  %11 = ptrtoint ptr %first_burst_len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %first_burst_len.i, align 4
  %add.i = add i32 %12, %or9.i
  %sess.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %13 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sess.i, align 4
  %sess_ops.i = getelementptr inbounds %struct.iscsi_session, ptr %14, i32 0, i32 47
  %15 = ptrtoint ptr %sess_ops.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sess_ops.i, align 8
  %FirstBurstLength.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %FirstBurstLength.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %FirstBurstLength.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %18)
  %cmp.i = icmp eq i32 %add.i, %18
  %DataPDUInOrder.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %16, i32 0, i32 14
  %19 = ptrtoint ptr %DataPDUInOrder.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %DataPDUInOrder.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool18.not.i = icmp eq i8 %20, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.then.i.if.end26.i_crit_edge

if.then.i.if.end26.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

if.then19.i:                                      ; preds = %if.then.i
  %datasn.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 11
  %21 = ptrtoint ptr %datasn.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %datasn.i, align 4
  %flags.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %flags.i, align 1
  %pdu_ptr.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 62
  %25 = ptrtoint ptr %pdu_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdu_ptr.i.i, align 8
  %data_sn1.i.i = getelementptr inbounds %struct.iscsi_pdu, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %data_sn1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %22, ptr %data_sn1.i.i, align 4
  %28 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %26, align 128
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %29, label %if.then19.i.cleanup_crit_edge [
    i32 0, label %if.then19.i.sw.epilog.i.i_crit_edge
    i32 2, label %if.then19.i.sw.epilog.i.i_crit_edge32
    i32 3, label %if.then19.i.sw.epilog.i.i_crit_edge33
  ]

if.then19.i.sw.epilog.i.i_crit_edge33:            ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

if.then19.i.sw.epilog.i.i_crit_edge32:            ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

if.then19.i.sw.epilog.i.i_crit_edge:              ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i.i

if.then19.i.cleanup_crit_edge:                    ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog.i.i:                                    ; preds = %if.then19.i.sw.epilog.i.i_crit_edge, %if.then19.i.sw.epilog.i.i_crit_edge32, %if.then19.i.sw.epilog.i.i_crit_edge33
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %26, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %24)
  %tobool.not.i223.i = icmp sgt i8 %24, -1
  br i1 %tobool.not.i223.i, label %sw.epilog.i.i.if.end26.i_crit_edge, label %if.then.i.i

sw.epilog.i.i.if.end26.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

if.then.i.i:                                      ; preds = %sw.epilog.i.i
  %call.i224.i = tail call i32 @iscsit_dataout_datapduinorder_no_fbit(ptr noundef %cmd, ptr noundef %26) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i224.i)
  %cmp.i.i = icmp eq i32 %call.i224.i, -1
  br i1 %cmp.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.if.end26.i_crit_edge

if.then.i.i.if.end26.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26.i:                                       ; preds = %if.then.i.i.if.end26.i_crit_edge, %sw.epilog.i.i.if.end26.i_crit_edge, %if.then.i.if.end26.i_crit_edge
  %32 = ptrtoint ptr %first_burst_len.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %first_burst_len.i, align 4
  %add28.i = add i32 %33, %or9.i
  store i32 %add28.i, ptr %first_burst_len.i, align 4
  %34 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sess.i, align 4
  %sess_ops30.i = getelementptr inbounds %struct.iscsi_session, ptr %35, i32 0, i32 47
  %36 = ptrtoint ptr %sess_ops30.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sess_ops30.i, align 8
  %DataSequenceInOrder.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %DataSequenceInOrder.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %DataSequenceInOrder.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool31.not.i = icmp eq i8 %39, 0
  br i1 %tobool31.not.i, label %if.end37.i, label %if.end37.thread.i

if.end37.i:                                       ; preds = %if.end26.i
  %seq_ptr.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 64
  %40 = ptrtoint ptr %seq_ptr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %seq_ptr.i, align 16
  %data_sn33.i = getelementptr inbounds %struct.iscsi_seq, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %data_sn33.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_sn33.i, align 4
  %inc34.i = add i32 %43, 1
  store i32 %inc34.i, ptr %data_sn33.i, align 4
  %offset35.i = getelementptr inbounds %struct.iscsi_seq, ptr %41, i32 0, i32 9
  %44 = ptrtoint ptr %offset35.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %offset35.i, align 4
  %add36.i = add i32 %45, %or9.i
  store i32 %add36.i, ptr %offset35.i, align 4
  br i1 %cmp.i, label %if.then39.i, label %if.end37.i._crit_edge

if.end37.i._crit_edge:                            ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %133

if.end37.thread.i:                                ; preds = %if.end26.i
  %data_sn.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 21
  %46 = ptrtoint ptr %data_sn.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_sn.i, align 4
  %inc.i = add i32 %47, 1
  store i32 %inc.i, ptr %data_sn.i, align 4
  br i1 %cmp.i, label %if.end37.thread.i.if.end42.i_crit_edge, label %if.end37.thread.i._crit_edge

if.end37.thread.i._crit_edge:                     ; preds = %if.end37.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %133

if.end37.thread.i.if.end42.i_crit_edge:           ; preds = %if.end37.thread.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.then39.i:                                      ; preds = %if.end37.i
  %tobool40.not.i = icmp eq ptr %41, null
  br i1 %tobool40.not.i, label %if.then39.i.if.end42.i_crit_edge, label %if.then41.i

if.then39.i.if.end42.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.then41.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #7
  %status.i = getelementptr inbounds %struct.iscsi_seq, ptr %41, i32 0, i32 1
  %48 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 3, ptr %status.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then41.i, %if.then39.i.if.end42.i_crit_edge, %if.end37.thread.i.if.end42.i_crit_edge
  %49 = ptrtoint ptr %first_burst_len.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %first_burst_len.i, align 4
  %50 = ptrtoint ptr %unsolicited_data.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %unsolicited_data.i, align 1
  br label %land.lhs.true.i

if.else46.i:                                      ; preds = %if.then
  %sess47.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %51 = ptrtoint ptr %sess47.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sess47.i, align 4
  %sess_ops48.i = getelementptr inbounds %struct.iscsi_session, ptr %52, i32 0, i32 47
  %53 = ptrtoint ptr %sess_ops48.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sess_ops48.i, align 8
  %DataSequenceInOrder49.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %54, i32 0, i32 15
  %55 = ptrtoint ptr %DataSequenceInOrder49.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %DataSequenceInOrder49.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool50.not.i = icmp eq i8 %56, 0
  br i1 %tobool50.not.i, label %if.else88.i, label %if.then51.i

if.then51.i:                                      ; preds = %if.else46.i
  %next_burst_len.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 42
  %57 = ptrtoint ptr %next_burst_len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %next_burst_len.i, align 8
  %add52.i = add i32 %58, %or9.i
  %MaxBurstLength.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %54, i32 0, i32 9
  %59 = ptrtoint ptr %MaxBurstLength.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %MaxBurstLength.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add52.i, i32 %60)
  %cmp55.i = icmp eq i32 %add52.i, %60
  br i1 %cmp55.i, label %if.end.i230.i, label %if.then51.i.if.end64.i_crit_edge

if.then51.i.if.end64.i_crit_edge:                 ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64.i

if.end.i230.i:                                    ; preds = %if.then51.i
  %offset58.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 12
  %61 = ptrtoint ptr %offset58.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %offset58.i, align 4
  %call.i228.i = tail call ptr @iscsit_get_r2t_for_eos(ptr noundef %cmd, i32 noundef %62, i32 noundef %or9.i) #5
  %tobool1.not.i229.i = icmp eq ptr %call.i228.i, null
  br i1 %tobool1.not.i229.i, label %if.end.i230.i.cleanup_crit_edge, label %iscsit_dataout_update_r2t.exit236.i

if.end.i230.i.cleanup_crit_edge:                  ; preds = %if.end.i230.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

iscsit_dataout_update_r2t.exit236.i:              ; preds = %if.end.i230.i
  call void @__sanitizer_cov_trace_pc() #7
  %r2t_lock.i231.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock.i231.i) #5
  %63 = ptrtoint ptr %call.i228.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %call.i228.i, align 128
  %outstanding_r2ts.i232.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 26
  %64 = ptrtoint ptr %outstanding_r2ts.i232.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %outstanding_r2ts.i232.i, align 8
  %dec.i233.i = add i32 %65, -1
  store i32 %dec.i233.i, ptr %outstanding_r2ts.i232.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock.i231.i) #5
  br label %if.end64.i

if.end64.i:                                       ; preds = %iscsit_dataout_update_r2t.exit236.i, %if.then51.i.if.end64.i_crit_edge
  %66 = ptrtoint ptr %sess47.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sess47.i, align 4
  %sess_ops66.i = getelementptr inbounds %struct.iscsi_session, ptr %67, i32 0, i32 47
  %68 = ptrtoint ptr %sess_ops66.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sess_ops66.i, align 8
  %DataPDUInOrder67.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %69, i32 0, i32 14
  %70 = ptrtoint ptr %DataPDUInOrder67.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %DataPDUInOrder67.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool68.not.i = icmp eq i8 %71, 0
  br i1 %tobool68.not.i, label %if.then69.i, label %if.end64.i.if.end79.i_crit_edge

if.end64.i.if.end79.i_crit_edge:                  ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79.i

if.then69.i:                                      ; preds = %if.end64.i
  %datasn70.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 11
  %72 = ptrtoint ptr %datasn70.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %datasn70.i, align 4
  %flags71.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 1
  %74 = ptrtoint ptr %flags71.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %flags71.i, align 1
  %pdu_ptr.i237.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 62
  %76 = ptrtoint ptr %pdu_ptr.i237.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdu_ptr.i237.i, align 8
  %data_sn1.i238.i = getelementptr inbounds %struct.iscsi_pdu, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %data_sn1.i238.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %73, ptr %data_sn1.i238.i, align 4
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %77, align 128
  %81 = zext i32 %80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %80, label %if.then69.i.cleanup_crit_edge [
    i32 0, label %if.then69.i.sw.epilog.i240.i_crit_edge
    i32 2, label %if.then69.i.sw.epilog.i240.i_crit_edge34
    i32 3, label %if.then69.i.sw.epilog.i240.i_crit_edge35
  ]

if.then69.i.sw.epilog.i240.i_crit_edge35:         ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i240.i

if.then69.i.sw.epilog.i240.i_crit_edge34:         ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i240.i

if.then69.i.sw.epilog.i240.i_crit_edge:           ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i240.i

if.then69.i.cleanup_crit_edge:                    ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog.i240.i:                                 ; preds = %if.then69.i.sw.epilog.i240.i_crit_edge, %if.then69.i.sw.epilog.i240.i_crit_edge34, %if.then69.i.sw.epilog.i240.i_crit_edge35
  %82 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %77, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %75)
  %tobool.not.i239.i = icmp sgt i8 %75, -1
  br i1 %tobool.not.i239.i, label %sw.epilog.i240.i.if.end79.i_crit_edge, label %if.then.i243.i

sw.epilog.i240.i.if.end79.i_crit_edge:            ; preds = %sw.epilog.i240.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79.i

if.then.i243.i:                                   ; preds = %sw.epilog.i240.i
  %call.i241.i = tail call i32 @iscsit_dataout_datapduinorder_no_fbit(ptr noundef %cmd, ptr noundef %77) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i241.i)
  %cmp.i242.i = icmp eq i32 %call.i241.i, -1
  br i1 %cmp.i242.i, label %if.then.i243.i.cleanup_crit_edge, label %if.then.i243.i.if.end79.i_crit_edge

if.then.i243.i.if.end79.i_crit_edge:              ; preds = %if.then.i243.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79.i

if.then.i243.i.cleanup_crit_edge:                 ; preds = %if.then.i243.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end79.i:                                       ; preds = %if.then.i243.i.if.end79.i_crit_edge, %sw.epilog.i240.i.if.end79.i_crit_edge, %if.end64.i.if.end79.i_crit_edge
  %83 = ptrtoint ptr %next_burst_len.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %next_burst_len.i, align 8
  %add81.i = add i32 %84, %or9.i
  store i32 %add81.i, ptr %next_burst_len.i, align 8
  %data_sn82.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 21
  %85 = ptrtoint ptr %data_sn82.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_sn82.i, align 4
  %inc83.i = add i32 %86, 1
  store i32 %inc83.i, ptr %data_sn82.i, align 4
  br i1 %cmp55.i, label %if.then85.i, label %if.end79.i._crit_edge

if.end79.i._crit_edge:                            ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %133

if.then85.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %next_burst_len.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %next_burst_len.i, align 8
  br label %land.lhs.true.i

if.else88.i:                                      ; preds = %if.else46.i
  %seq_ptr89.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 64
  %88 = ptrtoint ptr %seq_ptr89.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %seq_ptr89.i, align 16
  %next_burst_len90.i = getelementptr inbounds %struct.iscsi_seq, ptr %89, i32 0, i32 6
  %90 = ptrtoint ptr %next_burst_len90.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %next_burst_len90.i, align 8
  %add91.i = add i32 %91, %or9.i
  %xfer_len.i = getelementptr inbounds %struct.iscsi_seq, ptr %89, i32 0, i32 15
  %92 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %xfer_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add91.i, i32 %93)
  %cmp92.i = icmp eq i32 %add91.i, %93
  br i1 %cmp92.i, label %if.end.i251.i, label %if.else88.i.if.end101.i_crit_edge

if.else88.i.if.end101.i_crit_edge:                ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end101.i

if.end.i251.i:                                    ; preds = %if.else88.i
  %offset95.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 12
  %94 = ptrtoint ptr %offset95.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %offset95.i, align 4
  %call.i249.i = tail call ptr @iscsit_get_r2t_for_eos(ptr noundef %cmd, i32 noundef %95, i32 noundef %or9.i) #5
  %tobool1.not.i250.i = icmp eq ptr %call.i249.i, null
  br i1 %tobool1.not.i250.i, label %if.end.i251.i.cleanup_crit_edge, label %iscsit_dataout_update_r2t.exit257.i

if.end.i251.i.cleanup_crit_edge:                  ; preds = %if.end.i251.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

iscsit_dataout_update_r2t.exit257.i:              ; preds = %if.end.i251.i
  call void @__sanitizer_cov_trace_pc() #7
  %r2t_lock.i252.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock.i252.i) #5
  %96 = ptrtoint ptr %call.i249.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 1, ptr %call.i249.i, align 128
  %outstanding_r2ts.i253.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 26
  %97 = ptrtoint ptr %outstanding_r2ts.i253.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %outstanding_r2ts.i253.i, align 8
  %dec.i254.i = add i32 %98, -1
  store i32 %dec.i254.i, ptr %outstanding_r2ts.i253.i, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock.i252.i) #5
  br label %if.end101.i

if.end101.i:                                      ; preds = %iscsit_dataout_update_r2t.exit257.i, %if.else88.i.if.end101.i_crit_edge
  %99 = ptrtoint ptr %sess47.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %sess47.i, align 4
  %sess_ops103.i = getelementptr inbounds %struct.iscsi_session, ptr %100, i32 0, i32 47
  %101 = ptrtoint ptr %sess_ops103.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sess_ops103.i, align 8
  %DataPDUInOrder104.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %102, i32 0, i32 14
  %103 = ptrtoint ptr %DataPDUInOrder104.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %DataPDUInOrder104.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool105.not.i = icmp eq i8 %104, 0
  br i1 %tobool105.not.i, label %if.then106.i, label %if.end101.i.if.end116.i_crit_edge

if.end101.i.if.end116.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116.i

if.then106.i:                                     ; preds = %if.end101.i
  %datasn107.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 11
  %105 = ptrtoint ptr %datasn107.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %datasn107.i, align 4
  %flags108.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 1
  %107 = ptrtoint ptr %flags108.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %flags108.i, align 1
  %pdu_ptr.i258.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 62
  %109 = ptrtoint ptr %pdu_ptr.i258.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %pdu_ptr.i258.i, align 8
  %data_sn1.i259.i = getelementptr inbounds %struct.iscsi_pdu, ptr %110, i32 0, i32 3
  %111 = ptrtoint ptr %data_sn1.i259.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %106, ptr %data_sn1.i259.i, align 4
  %112 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %110, align 128
  %114 = zext i32 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %113, label %if.then106.i.cleanup_crit_edge [
    i32 0, label %if.then106.i.sw.epilog.i261.i_crit_edge
    i32 2, label %if.then106.i.sw.epilog.i261.i_crit_edge36
    i32 3, label %if.then106.i.sw.epilog.i261.i_crit_edge37
  ]

if.then106.i.sw.epilog.i261.i_crit_edge37:        ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i261.i

if.then106.i.sw.epilog.i261.i_crit_edge36:        ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i261.i

if.then106.i.sw.epilog.i261.i_crit_edge:          ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i261.i

if.then106.i.cleanup_crit_edge:                   ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog.i261.i:                                 ; preds = %if.then106.i.sw.epilog.i261.i_crit_edge, %if.then106.i.sw.epilog.i261.i_crit_edge36, %if.then106.i.sw.epilog.i261.i_crit_edge37
  %115 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %110, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %108)
  %tobool.not.i260.i = icmp sgt i8 %108, -1
  br i1 %tobool.not.i260.i, label %sw.epilog.i261.i.if.end116.i_crit_edge, label %if.then.i264.i

sw.epilog.i261.i.if.end116.i_crit_edge:           ; preds = %sw.epilog.i261.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116.i

if.then.i264.i:                                   ; preds = %sw.epilog.i261.i
  %call.i262.i = tail call i32 @iscsit_dataout_datapduinorder_no_fbit(ptr noundef %cmd, ptr noundef %110) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i262.i)
  %cmp.i263.i = icmp eq i32 %call.i262.i, -1
  br i1 %cmp.i263.i, label %if.then.i264.i.cleanup_crit_edge, label %if.then.i264.i.if.end116.i_crit_edge

if.then.i264.i.if.end116.i_crit_edge:             ; preds = %if.then.i264.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end116.i

if.then.i264.i.cleanup_crit_edge:                 ; preds = %if.then.i264.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end116.i:                                      ; preds = %if.then.i264.i.if.end116.i_crit_edge, %sw.epilog.i261.i.if.end116.i_crit_edge, %if.end101.i.if.end116.i_crit_edge
  %data_sn117.i = getelementptr inbounds %struct.iscsi_seq, ptr %89, i32 0, i32 3
  %116 = ptrtoint ptr %data_sn117.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %data_sn117.i, align 4
  %inc118.i = add i32 %117, 1
  store i32 %inc118.i, ptr %data_sn117.i, align 4
  %offset119.i = getelementptr inbounds %struct.iscsi_seq, ptr %89, i32 0, i32 9
  %118 = ptrtoint ptr %offset119.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %offset119.i, align 4
  %add120.i = add i32 %119, %or9.i
  store i32 %add120.i, ptr %offset119.i, align 4
  %120 = ptrtoint ptr %next_burst_len90.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %next_burst_len90.i, align 8
  %add122.i = add i32 %121, %or9.i
  store i32 %add122.i, ptr %next_burst_len90.i, align 8
  br i1 %cmp92.i, label %if.then124.i, label %if.end116.i._crit_edge

if.end116.i._crit_edge:                           ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %133

if.then124.i:                                     ; preds = %if.end116.i
  call void @__sanitizer_cov_trace_pc() #7
  %122 = ptrtoint ptr %next_burst_len90.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 0, ptr %next_burst_len90.i, align 8
  %status126.i = getelementptr inbounds %struct.iscsi_seq, ptr %89, i32 0, i32 1
  %123 = ptrtoint ptr %status126.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 3, ptr %status126.i, align 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then124.i, %if.then85.i, %if.end42.i
  %sess131.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %124 = ptrtoint ptr %sess131.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %sess131.i, align 4
  %sess_ops132.i = getelementptr inbounds %struct.iscsi_session, ptr %125, i32 0, i32 47
  %126 = ptrtoint ptr %sess_ops132.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %sess_ops132.i, align 8
  %DataSequenceInOrder133.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %127, i32 0, i32 15
  %128 = ptrtoint ptr %DataSequenceInOrder133.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %DataSequenceInOrder133.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool135.not.i = icmp eq i8 %129, 0
  br i1 %tobool135.not.i, label %land.lhs.true.i.if.end138.thread.i_crit_edge, label %if.then136.i

land.lhs.true.i.if.end138.thread.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end138.thread.i

if.then136.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %data_sn137.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 21
  %130 = ptrtoint ptr %data_sn137.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %data_sn137.i, align 4
  br label %if.end138.thread.i

if.end138.thread.i:                               ; preds = %if.then136.i, %land.lhs.true.i.if.end138.thread.i_crit_edge
  %write_data_done285.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  %131 = ptrtoint ptr %write_data_done285.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %write_data_done285.i, align 128
  %add139286.i = add i32 %132, %or9.i
  store i32 %add139286.i, ptr %write_data_done285.i, align 128
  br label %136

133:                                              ; preds = %if.end116.i._crit_edge, %if.end79.i._crit_edge, %if.end37.thread.i._crit_edge, %if.end37.i._crit_edge
  %write_data_done.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  %134 = ptrtoint ptr %write_data_done.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %write_data_done.i, align 128
  %add139.i = add i32 %135, %or9.i
  store i32 %add139.i, ptr %write_data_done.i, align 128
  br label %136

136:                                              ; preds = %133, %if.end138.thread.i
  %add139286.sink.i = phi i32 [ %add139286.i, %if.end138.thread.i ], [ %add139.i, %133 ]
  %137 = phi i32 [ 1, %if.end138.thread.i ], [ 0, %133 ]
  %data_length287.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %138 = ptrtoint ptr %data_length287.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %data_length287.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add139286.sink.i, i32 %139)
  %cmp141288.i = icmp eq i32 %add139286.sink.i, %139
  %spec.select.i = select i1 %cmp141288.i, i32 2, i32 %137
  br label %cleanup

if.else:                                          ; preds = %entry
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %140 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sess, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %141, i32 0, i32 47
  %142 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %sess_ops, align 8
  %ErrorRecoveryLevel = getelementptr inbounds %struct.iscsi_sess_ops, ptr %143, i32 0, i32 16
  %144 = ptrtoint ptr %ErrorRecoveryLevel to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %ErrorRecoveryLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool2.not = icmp eq i8 %145, 0
  br i1 %tobool2.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  %call5 = tail call i32 @iscsit_reject_cmd(ptr noundef %cmd, i8 noundef zeroext 2, ptr noundef %buf) #5
  br label %cleanup

if.end:                                           ; preds = %if.else
  %call6 = tail call i32 @iscsit_reject_cmd(ptr noundef %cmd, i8 noundef zeroext 2, ptr noundef %buf) #5
  %146 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %conn1, align 8
  %dlength.i17 = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 4
  %148 = ptrtoint ptr %dlength.i17 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %dlength.i17, align 1
  %conv.i18 = zext i8 %149 to i32
  %shl.i19 = shl nuw nsw i32 %conv.i18, 16
  %arrayidx3.i20 = getelementptr %struct.iscsi_data, ptr %buf, i32 0, i32 4, i32 1
  %150 = ptrtoint ptr %arrayidx3.i20 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %arrayidx3.i20, align 1
  %conv4.i21 = zext i8 %151 to i32
  %shl5.i22 = shl nuw nsw i32 %conv4.i21, 8
  %or.i23 = or i32 %shl5.i22, %shl.i19
  %arrayidx7.i24 = getelementptr %struct.iscsi_data, ptr %buf, i32 0, i32 4, i32 2
  %152 = ptrtoint ptr %arrayidx7.i24 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %arrayidx7.i24, align 1
  %conv8.i25 = zext i8 %153 to i32
  %or9.i26 = or i32 %or.i23, %conv8.i25
  %sess.i27 = getelementptr inbounds %struct.iscsi_conn, ptr %147, i32 0, i32 68
  %154 = ptrtoint ptr %sess.i27 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %sess.i27, align 4
  %sess_ops.i28 = getelementptr inbounds %struct.iscsi_session, ptr %155, i32 0, i32 47
  %156 = ptrtoint ptr %sess_ops.i28 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sess_ops.i28, align 8
  %DataPDUInOrder.i29 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %157, i32 0, i32 14
  %158 = ptrtoint ptr %DataPDUInOrder.i29 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %DataPDUInOrder.i29, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i30 = icmp eq i8 %159, 0
  br i1 %tobool.not.i30, label %if.end.i, label %if.end.recover.i_crit_edge

if.end.recover.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %recover.i

if.end.i:                                         ; preds = %if.end
  %pdu_ptr.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 62
  %160 = ptrtoint ptr %pdu_ptr.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %pdu_ptr.i, align 8
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %161, align 128
  %164 = zext i32 %163 to i64
  call void @__sanitizer_cov_trace_switch(i64 %164, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %163, label %if.end.i.cleanup_crit_edge [
    i32 0, label %if.end.i.recover.sink.split.i_crit_edge
    i32 2, label %if.end.i.recover.i_crit_edge
    i32 3, label %if.end.i.recover.sink.split.i_crit_edge38
  ]

if.end.i.recover.sink.split.i_crit_edge38:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %recover.sink.split.i

if.end.i.recover.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %recover.i

if.end.i.recover.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %recover.sink.split.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

recover.sink.split.i:                             ; preds = %if.end.i.recover.sink.split.i_crit_edge, %if.end.i.recover.sink.split.i_crit_edge38
  %165 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 2, ptr %161, align 128
  br label %recover.i

recover.i:                                        ; preds = %recover.sink.split.i, %if.end.i.recover.i_crit_edge, %if.end.recover.i_crit_edge
  %offset.i = getelementptr inbounds %struct.iscsi_data, ptr %buf, i32 0, i32 12
  %166 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %offset.i, align 4
  %call.i = tail call i32 @iscsit_recover_dataout_sequence(ptr noundef %cmd, i32 noundef %167, i32 noundef %or9.i26) #5
  br label %cleanup

cleanup:                                          ; preds = %recover.i, %if.end.i.cleanup_crit_edge, %do.end, %136, %if.then.i264.i.cleanup_crit_edge, %if.then106.i.cleanup_crit_edge, %if.end.i251.i.cleanup_crit_edge, %if.then.i243.i.cleanup_crit_edge, %if.then69.i.cleanup_crit_edge, %if.end.i230.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge, %if.then19.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ %spec.select.i, %136 ], [ -1, %if.then19.i.cleanup_crit_edge ], [ -1, %if.then.i.i.cleanup_crit_edge ], [ -1, %if.end.i230.i.cleanup_crit_edge ], [ -1, %if.then69.i.cleanup_crit_edge ], [ -1, %if.then.i243.i.cleanup_crit_edge ], [ -1, %if.end.i251.i.cleanup_crit_edge ], [ -1, %if.then106.i.cleanup_crit_edge ], [ -1, %if.then.i264.i.cleanup_crit_edge ], [ %call.i, %recover.i ], [ -1, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_reject_cmd(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_handle_time2retain_timeout(ptr noundef %t) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -696
  %tpg1 = getelementptr i8, ptr %t, i32 56
  %0 = ptrtoint ptr %tpg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg1, align 16
  %session_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %1, i32 0, i32 9, i32 4
  tail call void @_raw_spin_lock_bh(ptr noundef %session_lock) #5
  %time2retain_timer_flags = getelementptr i8, ptr %t, i32 -688
  %2 = ptrtoint ptr %time2retain_timer_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %time2retain_timer_flags, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_lock) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %session_reinstatement = getelementptr i8, ptr %t, i32 -480
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %session_reinstatement, i32 noundef 4) #5
  %4 = ptrtoint ptr %session_reinstatement to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %session_reinstatement, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_lock) #5
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %time2retain_timer_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %time2retain_timer_flags, align 8
  %or = or i32 %7, 4
  store i32 %or, ptr %time2retain_timer_flags, align 8
  %sid = getelementptr i8, ptr %t, i32 -552
  %8 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sid, align 16
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %9) #8
  tail call void @iscsit_fill_cxn_timeout_err_stats(ptr noundef %add.ptr) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %session_lock) #5
  %call16 = tail call i32 @iscsit_close_session(ptr noundef %add.ptr, i1 noundef zeroext false) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_fill_cxn_timeout_err_stats(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_close_session(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_start_time2retain_handler(ptr noundef %sess) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 49
  %0 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg, align 16
  %tpg_state_lock = getelementptr inbounds %struct.iscsi_portal_group, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %tpg_state_lock) #5
  %2 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tpg, align 16
  %tpg_state = getelementptr inbounds %struct.iscsi_portal_group, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %tpg_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tpg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  %tpg_state_lock3 = getelementptr inbounds %struct.iscsi_portal_group, ptr %3, i32 0, i32 8
  tail call void @_raw_spin_unlock(ptr noundef %tpg_state_lock3) #5
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %time2retain_timer_flags = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 2
  %6 = ptrtoint ptr %time2retain_timer_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %time2retain_timer_flags, align 8
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_start_time2retain_handler.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_start_time2retain_handler, %if.then10)) #5
          to label %do.end [label %if.then10], !srcloc !134

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 47
  %8 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sess_ops, align 8
  %DefaultTime2Retain = getelementptr inbounds %struct.iscsi_sess_ops, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %DefaultTime2Retain to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %DefaultTime2Retain, align 2
  %conv11 = zext i16 %11 to i32
  %sid = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 15
  %12 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sid, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_start_time2retain_handler.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.10, i32 noundef %conv11, i32 noundef %13) #5
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %14 = ptrtoint ptr %time2retain_timer_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %time2retain_timer_flags, align 8
  %and14 = and i32 %15, -4
  %or = or i32 %and14, 1
  store i32 %or, ptr %time2retain_timer_flags, align 8
  %time2retain_timer = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 46
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sess_ops16 = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 47
  %17 = ptrtoint ptr %sess_ops16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sess_ops16, align 8
  %DefaultTime2Retain17 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %18, i32 0, i32 12
  %19 = ptrtoint ptr %DefaultTime2Retain17 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %DefaultTime2Retain17, align 2
  %conv18 = zext i16 %20 to i32
  %mul = mul nuw nsw i32 %conv18, 100
  %add = add i32 %mul, %16
  %call19 = tail call i32 @mod_timer(ptr noundef %time2retain_timer, i32 noundef %add) #5
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_stop_time2retain_timer(ptr noundef %sess) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tpg1 = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 49
  %0 = ptrtoint ptr %tpg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tpg1, align 16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.iscsi_portal_group, ptr %1, i32 0, i32 9, i32 4, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !135

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 802, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %time2retain_timer_flags = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 2
  %3 = ptrtoint ptr %time2retain_timer_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %time2retain_timer_flags, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end27, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end27:                                         ; preds = %if.end
  %and29 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.cleanup_crit_edge, label %if.end32

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %4, 2
  %5 = ptrtoint ptr %time2retain_timer_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %time2retain_timer_flags, align 8
  %session_lock34 = getelementptr inbounds %struct.iscsi_portal_group, ptr %1, i32 0, i32 9, i32 4
  tail call void @_raw_spin_unlock(ptr noundef %session_lock34) #5
  %time2retain_timer = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 46
  %call35 = tail call i32 @del_timer_sync(ptr noundef %time2retain_timer) #5
  tail call void @_raw_spin_lock(ptr noundef %session_lock34) #5
  %6 = ptrtoint ptr %time2retain_timer_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %time2retain_timer_flags, align 8
  %and38 = and i32 %7, -2
  store i32 %and38, ptr %time2retain_timer_flags, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_stop_time2retain_timer.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_stop_time2retain_timer, %if.then49)) #5
          to label %cleanup [label %if.then49], !srcloc !134

if.then49:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %sid = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 15
  %8 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sid, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_stop_time2retain_timer.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.12, i32 noundef %9) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %if.end32, %if.end27.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ 0, %if.then49 ], [ 0, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_connection_reinstatement_rcfr(ptr noundef %conn) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 51
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock) #5
  %connection_exit = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %connection_exit, i32 noundef 4) #5
  %0 = ptrtoint ptr %connection_exit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %connection_exit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #5
  br label %sleep

if.end:                                           ; preds = %entry
  %transport_failed = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 28
  %call.i.i35 = tail call zeroext i1 @__kasan_check_read(ptr noundef %transport_failed, i32 noundef 4) #5
  %2 = ptrtoint ptr %transport_failed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %transport_failed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #5
  br i1 %tobool3.not, label %if.end6, label %if.end.sleep_crit_edge

if.end.sleep_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sleep

if.end6:                                          ; preds = %if.end
  %tx_thread = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 74
  %4 = ptrtoint ptr %tx_thread to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_thread, align 64
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end6.if.end13_crit_edge, label %land.lhs.true

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end6
  %tx_thread_active = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 73
  %6 = ptrtoint ptr %tx_thread_active to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tx_thread_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  br i1 %tobool9.not, label %land.lhs.true.if.end13_crit_edge, label %if.then10

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 @send_sig(i32 noundef 2, ptr noundef nonnull %5, i32 noundef 1) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %land.lhs.true.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %rx_thread = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 71
  %8 = ptrtoint ptr %rx_thread to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_thread, align 128
  %tobool14.not = icmp eq ptr %9, null
  br i1 %tobool14.not, label %if.end13.sleep_crit_edge, label %land.lhs.true15

if.end13.sleep_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sleep

land.lhs.true15:                                  ; preds = %if.end13
  %rx_thread_active = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 70
  %10 = ptrtoint ptr %rx_thread_active to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rx_thread_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool16.not = icmp eq i32 %11, 0
  br i1 %tobool16.not, label %land.lhs.true15.sleep_crit_edge, label %if.then17

land.lhs.true15.sleep_crit_edge:                  ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #7
  br label %sleep

if.then17:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 @send_sig(i32 noundef 2, ptr noundef nonnull %9, i32 noundef 1) #5
  br label %sleep

sleep:                                            ; preds = %if.then17, %land.lhs.true15.sleep_crit_edge, %if.end13.sleep_crit_edge, %if.end.sleep_crit_edge, %if.then
  %conn_wait_rcfr_comp = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 31
  tail call void @wait_for_completion(ptr noundef %conn_wait_rcfr_comp) #5
  %conn_post_wait_comp = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 29
  tail call void @complete(ptr noundef %conn_post_wait_comp) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_cause_connection_reinstatement(ptr noundef %conn, i32 noundef %sleep) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %state_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 51
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock) #5
  %connection_exit = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %connection_exit, i32 noundef 4) #5
  %0 = ptrtoint ptr %connection_exit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %connection_exit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #5
  br label %return

if.end:                                           ; preds = %entry
  %transport_failed = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 28
  %call.i.i50 = tail call zeroext i1 @__kasan_check_read(ptr noundef %transport_failed, i32 noundef 4) #5
  %2 = ptrtoint ptr %transport_failed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %transport_failed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #5
  br label %return

if.end6:                                          ; preds = %if.end
  %connection_reinstatement = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 25
  %call.i.i51 = tail call zeroext i1 @__kasan_check_read(ptr noundef %connection_reinstatement, i32 noundef 4) #5
  %4 = ptrtoint ptr %connection_reinstatement to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %connection_reinstatement, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool8.not = icmp eq i32 %5, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #5
  br label %return

if.end11:                                         ; preds = %if.end6
  %tx_thread = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 74
  %6 = ptrtoint ptr %tx_thread to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tx_thread, align 64
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %if.end11.if.end17_crit_edge, label %land.lhs.true

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end11
  %tx_thread_active = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 73
  %8 = ptrtoint ptr %tx_thread_active to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_thread_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool13.not = icmp eq i32 %9, 0
  br i1 %tobool13.not, label %land.lhs.true.if.end17_crit_edge, label %if.then14

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 @send_sig(i32 noundef 2, ptr noundef nonnull %7, i32 noundef 1) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %land.lhs.true.if.end17_crit_edge, %if.end11.if.end17_crit_edge
  %rx_thread = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 71
  %10 = ptrtoint ptr %rx_thread to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_thread, align 128
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %if.end17.if.end24_crit_edge, label %land.lhs.true19

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

land.lhs.true19:                                  ; preds = %if.end17
  %rx_thread_active = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 70
  %12 = ptrtoint ptr %rx_thread_active to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_thread_active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %land.lhs.true19.if.end24_crit_edge, label %if.then21

land.lhs.true19.if.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = tail call i32 @send_sig(i32 noundef 2, ptr noundef nonnull %11, i32 noundef 1) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %land.lhs.true19.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %call.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %connection_reinstatement, i32 noundef 4) #5
  %14 = ptrtoint ptr %connection_reinstatement to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile i32 1, ptr %connection_reinstatement, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sleep)
  %tobool26.not = icmp eq i32 %sleep, 0
  br i1 %tobool26.not, label %if.then27, label %if.end29

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #5
  br label %return

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %sleep_on_conn_wait_comp = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 27
  %call.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sleep_on_conn_wait_comp, i32 noundef 4) #5
  %15 = ptrtoint ptr %sleep_on_conn_wait_comp to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %sleep_on_conn_wait_comp, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #5
  %conn_wait_comp = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 30
  tail call void @wait_for_completion(ptr noundef %conn_wait_comp) #5
  %conn_post_wait_comp = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 29
  tail call void @complete(ptr noundef %conn_post_wait_comp) #5
  br label %return

return:                                           ; preds = %if.end29, %if.then27, %if.then9, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_fall_back_to_erl0(ptr noundef %sess) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_fall_back_to_erl0.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_fall_back_to_erl0, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !134

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sid = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 15
  %0 = ptrtoint ptr %sid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sid, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_fall_back_to_erl0.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.14, i32 noundef %1) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %session_fall_back_to_erl0 = getelementptr inbounds %struct.iscsi_session, ptr %sess, i32 0, i32 29
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %session_fall_back_to_erl0, i32 noundef 4) #5
  %2 = ptrtoint ptr %session_fall_back_to_erl0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %session_fall_back_to_erl0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_take_action_for_connection_exit(ptr noundef %conn, ptr nocapture noundef writeonly %conn_freed) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %conn_freed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %conn_freed, align 1
  %state_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 51
  tail call void @_raw_spin_lock_bh(ptr noundef %state_lock) #5
  %connection_exit = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 23
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %connection_exit, i32 noundef 4) #5
  %1 = ptrtoint ptr %connection_exit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %connection_exit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #5
  br label %return

if.end:                                           ; preds = %entry
  %call.i.i36 = tail call zeroext i1 @__kasan_check_write(ptr noundef %connection_exit, i32 noundef 4) #5
  %3 = ptrtoint ptr %connection_exit to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %connection_exit, align 4
  %conn_state = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 2
  %4 = ptrtoint ptr %conn_state to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %conn_state, align 1
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %5, label %do.body [
    i8 6, label %if.then4
    i8 8, label %if.then12
  ]

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #5
  %call6 = tail call i32 @iscsit_close_connection(ptr noundef %conn) #5
  %7 = ptrtoint ptr %conn_freed to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %conn_freed, align 1
  br label %return

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #5
  br label %return

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_take_action_for_connection_exit.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_take_action_for_connection_exit, %if.then19)) #5
          to label %do.end [label %if.then19], !srcloc !134

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_take_action_for_connection_exit.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.16) #5
  br label %do.end

do.end:                                           ; preds = %if.then19, %do.body
  %8 = ptrtoint ptr %conn_state to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 8, ptr %conn_state, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %state_lock) #5
  tail call fastcc void @iscsit_handle_connection_cleanup(ptr noundef %conn)
  %9 = ptrtoint ptr %conn_freed to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %conn_freed, align 1
  br label %return

return:                                           ; preds = %do.end, %if.then12, %if.then4, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_close_connection(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iscsit_handle_connection_cleanup(ptr noundef %conn) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 47
  %2 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sess_ops, align 8
  %ErrorRecoveryLevel = getelementptr inbounds %struct.iscsi_sess_ops, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %ErrorRecoveryLevel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ErrorRecoveryLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp = icmp eq i8 %5, 2
  br i1 %cmp, label %land.lhs.true, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true:                                    ; preds = %entry
  %session_reinstatement = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 31
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %session_reinstatement, i32 noundef 4) #5
  %6 = ptrtoint ptr %session_reinstatement to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %session_reinstatement, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %land.lhs.true3, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.lhs.true3:                                   ; preds = %land.lhs.true
  %session_fall_back_to_erl0 = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 29
  %call.i.i22 = tail call zeroext i1 @__kasan_check_read(ptr noundef %session_fall_back_to_erl0, i32 noundef 4) #5
  %8 = ptrtoint ptr %session_fall_back_to_erl0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %session_fall_back_to_erl0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.then, label %land.lhs.true3.do.body_crit_edge

land.lhs.true3.do.body_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @iscsit_connection_recovery_transport_reset(ptr noundef %conn) #5
  br label %if.end15

do.body:                                          ; preds = %land.lhs.true3.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_handle_connection_cleanup.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_handle_connection_cleanup, %if.then11)) #5
          to label %do.end [label %if.then11], !srcloc !134

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %cid = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %10 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cid, align 2
  %conv12 = zext i16 %11 to i32
  %12 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sess_ops, align 8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_handle_connection_cleanup.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.72, i32 noundef %conv12, ptr noundef %13) #5
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %call14 = tail call i32 @iscsit_close_connection(ptr noundef %conn) #5
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_get_seq_holder(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_dump_data_payload(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_send_check_condition_and_sense(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_recover_dataout_sequence(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_get_pdu_holder(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_get_r2t_for_eos(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_dataout_datapduinorder_no_fbit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_connection_recovery_transport_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !118, !119, !120, !121, !123, !124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 732, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @iscsit_check_post_dataout._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @iscsit_check_post_dataout._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 756, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @iscsit_handle_time2retain_timeout._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @iscsit_handle_time2retain_timeout._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 763, i32 2}
!13 = !{ptr @iscsit_handle_time2retain_timeout._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @iscsit_handle_time2retain_timeout._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 788, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @iscsit_start_time2retain_handler.__UNIQUE_ID_ddebug223, !16, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 817, i32 2}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @iscsit_stop_time2retain_timer.__UNIQUE_ID_ddebug224, !21, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!24 = !{ptr @__ksymtab_iscsit_cause_connection_reinstatement, !25, !"__ksymtab_iscsit_cause_connection_reinstatement", i1 false, i1 false}
!25 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 881, i32 1}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 885, i32 2}
!28 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @iscsit_fall_back_to_erl0.__UNIQUE_ID_ddebug225, !27, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 930, i32 2}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @iscsit_take_action_for_connection_exit.__UNIQUE_ID_ddebug227, !31, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 126, i32 2}
!36 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @iscsit_dataout_within_command_recovery_check._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @iscsit_dataout_within_command_recovery_check._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 360, i32 3}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @iscsit_dataout_check_datasn._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @iscsit_dataout_check_datasn._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 365, i32 3}
!46 = !{ptr @iscsit_dataout_check_datasn._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @iscsit_dataout_check_datasn._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 375, i32 3}
!50 = !{ptr @iscsit_dataout_check_datasn._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @iscsit_dataout_check_datasn._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 143, i32 3}
!54 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @iscsit_dataout_check_unsolicited_sequence._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @iscsit_dataout_check_unsolicited_sequence._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 154, i32 3}
!59 = !{ptr @iscsit_dataout_check_unsolicited_sequence._entry.29, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @iscsit_dataout_check_unsolicited_sequence._entry_ptr.31, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 177, i32 4}
!63 = !{ptr @iscsit_dataout_check_unsolicited_sequence._entry.32, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @iscsit_dataout_check_unsolicited_sequence._entry_ptr.34, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 188, i32 4}
!67 = !{ptr @iscsit_dataout_check_unsolicited_sequence._entry.35, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @iscsit_dataout_check_unsolicited_sequence._entry_ptr.37, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.39, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 195, i32 4}
!71 = !{ptr @iscsit_dataout_check_unsolicited_sequence._entry.38, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @iscsit_dataout_check_unsolicited_sequence._entry_ptr.40, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 231, i32 4}
!75 = !{ptr @.str.42, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @iscsit_dataout_check_sequence._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @iscsit_dataout_check_sequence._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 263, i32 3}
!80 = !{ptr @iscsit_dataout_check_sequence._entry.43, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @iscsit_dataout_check_sequence._entry_ptr.45, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.47, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 289, i32 5}
!84 = !{ptr @iscsit_dataout_check_sequence._entry.46, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @iscsit_dataout_check_sequence._entry_ptr.48, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @iscsit_dataout_check_sequence._entry.49, !87, !"_entry", i1 false, i1 false}
!87 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 296, i32 5}
!88 = !{ptr @iscsit_dataout_check_sequence._entry_ptr.50, !87, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.52, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 306, i32 5}
!91 = !{ptr @iscsit_dataout_check_sequence._entry.51, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @iscsit_dataout_check_sequence._entry_ptr.53, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.55, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 314, i32 5}
!95 = !{ptr @iscsit_dataout_check_sequence._entry.54, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @iscsit_dataout_check_sequence._entry_ptr.56, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @iscsit_dataout_check_sequence._entry.57, !98, !"_entry", i1 false, i1 false}
!98 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 322, i32 5}
!99 = !{ptr @iscsit_dataout_check_sequence._entry_ptr.58, !98, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.59, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 406, i32 4}
!102 = !{ptr @.str.60, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @iscsit_dataout_pre_datapduinorder_yes._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @iscsit_dataout_pre_datapduinorder_yes._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.62, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 416, i32 4}
!107 = !{ptr @iscsit_dataout_pre_datapduinorder_yes._entry.61, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @iscsit_dataout_pre_datapduinorder_yes._entry_ptr.63, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.65, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 422, i32 4}
!111 = !{ptr @iscsit_dataout_pre_datapduinorder_yes._entry.64, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @iscsit_dataout_pre_datapduinorder_yes._entry_ptr.66, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @iscsit_dataout_pre_datapduinorder_yes._entry.67, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 435, i32 3}
!115 = !{ptr @iscsit_dataout_pre_datapduinorder_yes._entry_ptr.68, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.69, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 469, i32 3}
!118 = !{ptr @.str.70, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @iscsit_dataout_pre_datapduinorder_no._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @iscsit_dataout_pre_datapduinorder_no._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.71, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/target/iscsi/iscsi_target_erl0.c", i32 900, i32 3}
!123 = !{ptr @.str.72, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @iscsit_handle_connection_cleanup.__UNIQUE_ID_ddebug226, !122, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i64 2148806708, i64 2148806713, i64 2148806726, i64 2148806770, i64 2148806804, i64 2148806825}
!135 = !{!"branch_weights", i32 1, i32 2000}
