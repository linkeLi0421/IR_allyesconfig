; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/iscsi_target_tmr.c_pt.bc'
source_filename = "../drivers/target/iscsi/iscsi_target_tmr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iscsit_tmr_post_handler\22, \22a\22\09"
module asm "\09.weak\09__crc_iscsit_tmr_post_handler\09\09\09\09"
module asm "\09.long\09__crc_iscsit_tmr_post_handler\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iscsit_tmr_post_handler:\09\09\09\09\09"
module asm "\09.asciz \09\22iscsit_tmr_post_handler\22\09\09\09\09\09"
module asm "__kstrtabns_iscsit_tmr_post_handler:\09\09\09\09\09"
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
%struct.iscsi_tm = type { i8, i8, [2 x i8], i8, [3 x i8], %struct.scsi_lun, i32, i32, i32, i32, i32, i32, [8 x i8] }
%struct.scsi_lun = type { [8 x i8] }
%struct.iscsi_conn = type { %struct.wait_queue_head, i8, i8, i8, i8, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, %struct.__kernel_sockaddr_storage, %struct.__kernel_sockaddr_storage, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.completion, ptr, ptr, ptr, i32, %struct.delayed_work, ptr, %struct.timer_list, %struct.timer_list, %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, ptr, ptr, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, %struct.completion, i32, ptr, %struct.list_head, [52 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.__kernel_sockaddr_storage = type { %union.anon.71 }
%union.anon.71 = type { ptr, [124 x i8] }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.iscsi_session = type { i8, [6 x i8], i32, i8, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, i32, %struct.atomic_t, %struct.list_head, i32, [8 x i8], i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.timer_list, ptr, ptr, ptr, [12 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.se_tmr_req = type { i8, i8, i32, i64, ptr, ptr, ptr, %struct.list_head }
%struct.iscsi_tmr_req = type { i8, i32, ptr, ptr, ptr }
%struct.iscsi_node_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.iscsi_sess_ops = type { [224 x i8], [256 x i8], [224 x i8], [256 x i8], [256 x i8], i16, i16, i8, i8, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.iscsi_conn_recovery = type { i16, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.timer_list, ptr, %struct.list_head, [124 x i8] }
%struct.iscsi_conn_ops = type { i8, i8, i32, i32, i32, i32 }
%struct.iscsi_pdu = type { i32, i32, i8, i32, i32, i32, i32, i32, [96 x i8] }
%struct.iscsi_seq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.iscsit_transport = type { [16 x i8], i32, i8, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iscsi_datain_req = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, [76 x i8] }

@iscsit_tmr_abort_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Unable to locate RefTaskTag: 0x%08x on CID: %hu.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iscsit_tmr_abort_task\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/target/iscsi/iscsi_target_tmr.c\00", [56 x i8] zeroinitializer }, align 32
@iscsit_tmr_abort_task._entry_ptr = internal global ptr @iscsit_tmr_abort_task._entry, section ".printk_index", align 4
@iscsit_tmr_abort_task._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 51, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\013RefCmdSN 0x%08x does not equal task's CmdSN 0x%08x. Rejecting ABORT_TASK.\0A\00", [51 x i8] zeroinitializer }, align 32
@iscsit_tmr_abort_task._entry_ptr.5 = internal global ptr @iscsit_tmr_abort_task._entry.3, section ".printk_index", align 4
@iscsit_tmr_task_warm_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013TMR Opcode TARGET_WARM_RESET authorization failed for Initiator Node: %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iscsit_tmr_task_warm_reset\00", [37 x i8] zeroinitializer }, align 32
@iscsit_tmr_task_warm_reset._entry_ptr = internal global ptr @iscsit_tmr_task_warm_reset._entry, section ".printk_index", align 4
@iscsit_tmr_task_cold_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 96, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013TMR Opcode TARGET_COLD_RESET authorization failed for Initiator Node: %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iscsit_tmr_task_cold_reset\00", [37 x i8] zeroinitializer }, align 32
@iscsit_tmr_task_cold_reset._entry_ptr = internal global ptr @iscsit_tmr_task_cold_reset._entry, section ".printk_index", align 4
@iscsit_tmr_task_reassign.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iscsi_target_mod\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsit_tmr_task_reassign\00", [39 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"Got TASK_REASSIGN TMR ITT: 0x%08x, RefTaskTag: 0x%08x, ExpDataSN: 0x%08x, CID: %hu\0A\00", [44 x i8] zeroinitializer }, align 32
@iscsit_tmr_task_reassign._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013TMR TASK_REASSIGN not supported in ERL<2, ignoring request.\0A\00", [33 x i8] zeroinitializer }, align 32
@iscsit_tmr_task_reassign._entry_ptr = internal global ptr @iscsit_tmr_task_reassign._entry, section ".printk_index", align 4
@iscsit_tmr_task_reassign._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Command ITT: 0x%08x is still alligent to CID: %hu\0A\00", [43 x i8] zeroinitializer }, align 32
@iscsit_tmr_task_reassign._entry_ptr.16 = internal global ptr @iscsit_tmr_task_reassign._entry.14, section ".printk_index", align 4
@iscsit_tmr_task_reassign._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.2, i32 134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013Unable to locate RefTaskTag: 0x%08x in connection recovery command list.\0A\00", [52 x i8] zeroinitializer }, align 32
@iscsit_tmr_task_reassign._entry_ptr.19 = internal global ptr @iscsit_tmr_task_reassign._entry.17, section ".printk_index", align 4
@iscsit_tmr_task_reassign._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.11, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\013Unable to perform connection recovery for differing MaxRecvDataSegmentLength, rejecting TMR TASK_REASSIGN.\0A\00", [50 x i8] zeroinitializer }, align 32
@iscsit_tmr_task_reassign._entry_ptr.22 = internal global ptr @iscsit_tmr_task_reassign._entry.20, section ".printk_index", align 4
@iscsit_tmr_task_reassign._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.11, ptr @.str.2, i32 152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [110 x i8], [50 x i8] } { [110 x i8] c"\013Unable to perform connection recovery for differing MaxXmitDataSegmentLength, rejecting TMR TASK_REASSIGN.\0A\00", [50 x i8] zeroinitializer }, align 32
@iscsit_tmr_task_reassign._entry_ptr.25 = internal global ptr @iscsit_tmr_task_reassign._entry.23, section ".printk_index", align 4
@iscsit_tmr_task_reassign._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.11, ptr @.str.2, i32 160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\013Unable to perform connection recovery for differing ref_lun: %llu ref_cmd orig_fe_lun: %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@iscsit_tmr_task_reassign._entry_ptr.28 = internal global ptr @iscsit_tmr_task_reassign._entry.26, section ".printk_index", align 4
@__kstrtab_iscsit_tmr_post_handler = external dso_local constant [0 x i8], align 1
@__kstrtabns_iscsit_tmr_post_handler = external dso_local constant [0 x i8], align 1
@__ksymtab_iscsit_tmr_post_handler = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iscsit_tmr_post_handler to i32), ptr @__kstrtab_iscsit_tmr_post_handler, ptr @__kstrtabns_iscsit_tmr_post_handler }, section "___ksymtab+iscsit_tmr_post_handler", align 4
@iscsit_check_task_reassign_expdatasn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\013Received ExpDataSN: 0x%08x for READ in TMR TASK_REASSIGN greater than command's DataSN: 0x%08x.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"iscsit_check_task_reassign_expdatasn\00", [59 x i8] zeroinitializer }, align 32
@iscsit_check_task_reassign_expdatasn._entry_ptr = internal global ptr @iscsit_check_task_reassign_expdatasn._entry, section ".printk_index", align 4
@iscsit_check_task_reassign_expdatasn._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 814, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [119 x i8], [41 x i8] } { [119 x i8] c"\013Received ExpDataSN: 0x%08x for READ in TMR TASK_REASSIGN for previously acknowledged DataIN: 0x%08x, protocol error\0A\00", [41 x i8] zeroinitializer }, align 32
@iscsit_check_task_reassign_expdatasn._entry_ptr.33 = internal global ptr @iscsit_check_task_reassign_expdatasn._entry.31, section ".printk_index", align 4
@iscsit_check_task_reassign_expdatasn._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.2, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"\013Received ExpDataSN: 0x%08x for WRITE in TMR TASK_REASSIGN greater than command's R2TSN: 0x%08x.\0A\00", [61 x i8] zeroinitializer }, align 32
@iscsit_check_task_reassign_expdatasn._entry_ptr.36 = internal global ptr @iscsit_check_task_reassign_expdatasn._entry.34, section ".printk_index", align 4
@iscsit_check_task_reassign_expdatasn._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Unknown iSCSI data_direction: 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@iscsit_check_task_reassign_expdatasn._entry_ptr.39 = internal global ptr @iscsit_check_task_reassign_expdatasn._entry.37, section ".printk_index", align 4
@iscsit_task_reassign_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013TMR Request is missing a RefCmd struct iscsi_cmd.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iscsit_task_reassign_complete\00", [34 x i8] zeroinitializer }, align 32
@iscsit_task_reassign_complete._entry_ptr = internal global ptr @iscsit_task_reassign_complete._entry, section ".printk_index", align 4
@iscsit_task_reassign_complete._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013Illegal iSCSI Opcode 0x%02x during command reallegiance\0A\00", [37 x i8] zeroinitializer }, align 32
@iscsit_task_reassign_complete._entry_ptr.44 = internal global ptr @iscsit_task_reassign_complete._entry.42, section ".printk_index", align 4
@iscsit_task_reassign_complete.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.41, ptr @.str.2, ptr @.str.45, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Completed connection reallegiance for Opcode: 0x%02x, ITT: 0x%08x to CID: %hu.\0A\00", [48 x i8] zeroinitializer }, align 32
@iscsit_task_reassign_complete_nop_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013struct iscsi_conn_recovery pointer for ITT: 0x%08x is NULL!\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"iscsit_task_reassign_complete_nop_out\00", [58 x i8] zeroinitializer }, align 32
@iscsit_task_reassign_complete_nop_out._entry_ptr = internal global ptr @iscsit_task_reassign_complete_nop_out._entry, section ".printk_index", align 4
@iscsit_task_reassign_remove_cmd.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 47, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"iscsit_task_reassign_remove_cmd\00", [32 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"iSCSI connection recovery successful for CID: %hu on SID: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@iscsit_task_reassign_complete_scsi_cmnd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.50, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"iscsit_task_reassign_complete_scsi_cmnd\00", [56 x i8] zeroinitializer }, align 32
@iscsit_task_reassign_complete_scsi_cmnd._entry_ptr = internal global ptr @iscsit_task_reassign_complete_scsi_cmnd._entry, section ".printk_index", align 4
@iscsit_task_reassign_complete_scsi_cmnd._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 404, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Unknown cmd->data_direction: 0x%02x\0A\00", [57 x i8] zeroinitializer }, align 32
@iscsit_task_reassign_complete_scsi_cmnd._entry_ptr.53 = internal global ptr @iscsit_task_reassign_complete_scsi_cmnd._entry.51, section ".printk_index", align 4
@iscsit_task_reassign_complete_write.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"iscsit_task_reassign_complete_write\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"WRITE ITT: 0x%08x: t_state: %d never sent to transport\0A\00", [40 x i8] zeroinitializer }, align 32
@iscsit_task_reassign_complete_read.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iscsit_task_reassign_complete_read\00", [61 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"READ ITT: 0x%08x: t_state: %d never sent to transport\0A\00", [41 x i8] zeroinitializer }, align 32
@iscsit_task_reassign_complete_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013READ ITT: 0x%08x: t_state: %d, never returned from transport\0A\00", [32 x i8] zeroinitializer }, align 32
@iscsit_task_reassign_complete_read._entry_ptr = internal global ptr @iscsit_task_reassign_complete_read._entry, section ".printk_index", align 4
@iscsit_task_reassign_prepare_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.60, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [153 x i8], [39 x i8] } { [153 x i8] c"\013Initiator is requesting R2Ts from R2TSN: 0x%08x, but R2TSN: 0x%08x, Offset: %u, Length: %u is already complete.   BAD INITIATOR ERL=2 IMPLEMENTATION!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iscsit_task_reassign_prepare_write\00", [61 x i8] zeroinitializer }, align 32
@iscsit_task_reassign_prepare_write._entry_ptr = internal global ptr @iscsit_task_reassign_prepare_write._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 42, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 49, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 74, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 94, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 117, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 122, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 129, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 133, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 143, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 150, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 158, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 802, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 810, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 828, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 837, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 419, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 434, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 442, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 202, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 188, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 370, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 403, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 253, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 318, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 326, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.242 = private constant [43 x i8] c"../drivers/target/iscsi/iscsi_target_tmr.c\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.242, i32 730, i32 4 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__ksymtab_iscsit_tmr_post_handler, ptr @iscsit_check_task_reassign_expdatasn._entry, ptr @iscsit_check_task_reassign_expdatasn._entry.31, ptr @iscsit_check_task_reassign_expdatasn._entry.34, ptr @iscsit_check_task_reassign_expdatasn._entry.37, ptr @iscsit_check_task_reassign_expdatasn._entry_ptr, ptr @iscsit_check_task_reassign_expdatasn._entry_ptr.33, ptr @iscsit_check_task_reassign_expdatasn._entry_ptr.36, ptr @iscsit_check_task_reassign_expdatasn._entry_ptr.39, ptr @iscsit_task_reassign_complete._entry, ptr @iscsit_task_reassign_complete._entry.42, ptr @iscsit_task_reassign_complete._entry_ptr, ptr @iscsit_task_reassign_complete._entry_ptr.44, ptr @iscsit_task_reassign_complete_nop_out._entry, ptr @iscsit_task_reassign_complete_nop_out._entry_ptr, ptr @iscsit_task_reassign_complete_read._entry, ptr @iscsit_task_reassign_complete_read._entry_ptr, ptr @iscsit_task_reassign_complete_scsi_cmnd._entry, ptr @iscsit_task_reassign_complete_scsi_cmnd._entry.51, ptr @iscsit_task_reassign_complete_scsi_cmnd._entry_ptr, ptr @iscsit_task_reassign_complete_scsi_cmnd._entry_ptr.53, ptr @iscsit_task_reassign_prepare_write._entry, ptr @iscsit_task_reassign_prepare_write._entry_ptr, ptr @iscsit_tmr_abort_task._entry, ptr @iscsit_tmr_abort_task._entry.3, ptr @iscsit_tmr_abort_task._entry_ptr, ptr @iscsit_tmr_abort_task._entry_ptr.5, ptr @iscsit_tmr_task_cold_reset._entry, ptr @iscsit_tmr_task_cold_reset._entry_ptr, ptr @iscsit_tmr_task_reassign._entry, ptr @iscsit_tmr_task_reassign._entry.14, ptr @iscsit_tmr_task_reassign._entry.17, ptr @iscsit_tmr_task_reassign._entry.20, ptr @iscsit_tmr_task_reassign._entry.23, ptr @iscsit_tmr_task_reassign._entry.26, ptr @iscsit_tmr_task_reassign._entry_ptr, ptr @iscsit_tmr_task_reassign._entry_ptr.16, ptr @iscsit_tmr_task_reassign._entry_ptr.19, ptr @iscsit_tmr_task_reassign._entry_ptr.22, ptr @iscsit_tmr_task_reassign._entry_ptr.25, ptr @iscsit_tmr_task_reassign._entry_ptr.28, ptr @iscsit_tmr_task_warm_reset._entry, ptr @iscsit_tmr_task_warm_reset._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tmr_abort_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tmr_abort_task._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tmr_task_warm_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tmr_task_cold_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tmr_task_reassign._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tmr_task_reassign._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tmr_task_reassign._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tmr_task_reassign._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tmr_task_reassign._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_tmr_task_reassign._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_check_task_reassign_expdatasn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_check_task_reassign_expdatasn._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 119, i32 160, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_check_task_reassign_expdatasn._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_check_task_reassign_expdatasn._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_task_reassign_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_task_reassign_complete._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_task_reassign_complete_nop_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_task_reassign_complete_scsi_cmnd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_task_reassign_complete_scsi_cmnd._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_task_reassign_complete_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_task_reassign_prepare_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 153, i32 192, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @iscsit_tmr_abort_task(ptr nocapture noundef readonly %cmd, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %tmr_req2 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 65
  %2 = ptrtoint ptr %tmr_req2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tmr_req2, align 4
  %se_tmr_req = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 22
  %4 = ptrtoint ptr %se_tmr_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_tmr_req, align 16
  %rtt = getelementptr inbounds %struct.iscsi_tm, ptr %buf, i32 0, i32 7
  %6 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rtt, align 4
  %call = tail call ptr @iscsit_find_cmd_from_itt(ptr noundef %1, i32 noundef %7) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rtt, align 4
  %cid = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cid, align 2
  %conv = zext i16 %11 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %9, i32 noundef %conv) #7
  %refcmdsn = getelementptr inbounds %struct.iscsi_tm, ptr %buf, i32 0, i32 10
  %12 = ptrtoint ptr %refcmdsn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %refcmdsn, align 4
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %14 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sess, align 4
  %exp_cmd_sn = getelementptr inbounds %struct.iscsi_session, ptr %15, i32 0, i32 12
  %16 = ptrtoint ptr %exp_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %exp_cmd_sn, align 128
  %18 = xor i32 %13, -1
  %19 = add i32 %17, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool6.not = icmp sgt i32 %19, -1
  br i1 %tobool6.not, label %do.end.land.end_crit_edge, label %land.rhs

do.end.land.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %land.end

land.rhs:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %max_cmd_sn = getelementptr inbounds %struct.iscsi_session, ptr %15, i32 0, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %max_cmd_sn, i32 noundef 4) #4
  %20 = ptrtoint ptr %max_cmd_sn to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %max_cmd_sn, align 4
  %sub.i = sub i32 %13, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp sgt i32 %sub.i, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.end.land.end_crit_edge
  %22 = phi i1 [ true, %do.end.land.end_crit_edge ], [ %cmp.i, %land.rhs ]
  %conv12 = zext i1 %22 to i8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmd_sn = getelementptr inbounds %struct.iscsi_cmd, ptr %call, i32 0, i32 18
  %23 = ptrtoint ptr %cmd_sn to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmd_sn, align 8
  %refcmdsn13 = getelementptr inbounds %struct.iscsi_tm, ptr %buf, i32 0, i32 10
  %25 = ptrtoint ptr %refcmdsn13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %refcmdsn13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.not = icmp eq i32 %24, %26
  br i1 %cmp.not, label %if.end23, label %do.end18

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %26, i32 noundef %24) #7
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rtt, align 4
  %conv25 = zext i32 %28 to i64
  %ref_task_tag = getelementptr inbounds %struct.se_tmr_req, ptr %5, i32 0, i32 3
  %29 = ptrtoint ptr %ref_task_tag to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %conv25, ptr %ref_task_tag, align 8
  %ref_cmd26 = getelementptr inbounds %struct.iscsi_tmr_req, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %ref_cmd26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call, ptr %ref_cmd26, align 4
  %exp_datasn = getelementptr inbounds %struct.iscsi_tm, ptr %buf, i32 0, i32 11
  %31 = ptrtoint ptr %exp_datasn to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %exp_datasn, align 4
  %exp_data_sn = getelementptr inbounds %struct.iscsi_tmr_req, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %exp_data_sn to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %exp_data_sn, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end18, %land.end
  %retval.0 = phi i8 [ -1, %do.end18 ], [ 0, %if.end23 ], [ %conv12, %land.end ]
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_find_cmd_from_itt(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_tmr_task_warm_reset(ptr nocapture noundef readonly %conn, ptr nocapture noundef readnone %tmr_req, ptr nocapture noundef readnone %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %call = tail call ptr @iscsit_tpg_get_node_attrib(ptr noundef %1) #4
  %tmr_warm_reset = getelementptr inbounds %struct.iscsi_node_attrib, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %tmr_warm_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tmr_warm_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %se_sess = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_sess, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_node_acl, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_tpg_get_node_attrib(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_tmr_task_cold_reset(ptr nocapture noundef readonly %conn, ptr nocapture noundef readnone %tmr_req, ptr nocapture noundef readnone %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sess1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %0 = ptrtoint ptr %sess1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sess1, align 4
  %call = tail call ptr @iscsit_tpg_get_node_attrib(ptr noundef %1) #4
  %tmr_cold_reset = getelementptr inbounds %struct.iscsi_node_attrib, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %tmr_cold_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tmr_cold_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %se_sess = getelementptr inbounds %struct.iscsi_session, ptr %1, i32 0, i32 48
  %4 = ptrtoint ptr %se_sess to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %se_sess, align 4
  %se_node_acl = getelementptr inbounds %struct.se_session, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %se_node_acl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_node_acl, align 8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @iscsit_tmr_task_reassign(ptr nocapture noundef readonly %cmd, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %ref_cmd = alloca ptr, align 4
  %cr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ref_cmd) #4
  %0 = ptrtoint ptr %ref_cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ref_cmd, align 4
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %1 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %conn1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cr) #4
  %3 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %cr, align 4
  %tmr_req2 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 65
  %4 = ptrtoint ptr %tmr_req2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tmr_req2, align 4
  %se_tmr_req = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 22
  %6 = ptrtoint ptr %se_tmr_req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %se_tmr_req, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_tmr_task_reassign.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_tmr_task_reassign, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %itt = getelementptr inbounds %struct.iscsi_tm, ptr %buf, i32 0, i32 6
  %8 = ptrtoint ptr %itt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %itt, align 4
  %rtt = getelementptr inbounds %struct.iscsi_tm, ptr %buf, i32 0, i32 7
  %10 = ptrtoint ptr %rtt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rtt, align 4
  %exp_datasn = getelementptr inbounds %struct.iscsi_tm, ptr %buf, i32 0, i32 11
  %12 = ptrtoint ptr %exp_datasn to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %exp_datasn, align 4
  %cid = getelementptr inbounds %struct.iscsi_conn, ptr %2, i32 0, i32 8
  %14 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %cid, align 2
  %conv = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_tmr_task_reassign.__UNIQUE_ID_ddebug221, ptr noundef nonnull @.str.12, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef %conv) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %2, i32 0, i32 68
  %16 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sess, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %17, i32 0, i32 47
  %18 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sess_ops, align 8
  %ErrorRecoveryLevel = getelementptr inbounds %struct.iscsi_sess_ops, ptr %19, i32 0, i32 16
  %20 = ptrtoint ptr %ErrorRecoveryLevel to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ErrorRecoveryLevel, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %21)
  %cmp.not = icmp eq i8 %21, 2
  br i1 %cmp.not, label %if.end13, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #7
  br label %cleanup

if.end13:                                         ; preds = %do.end
  %rtt15 = getelementptr inbounds %struct.iscsi_tm, ptr %buf, i32 0, i32 7
  %22 = ptrtoint ptr %rtt15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rtt15, align 4
  %call16 = call i32 @iscsit_find_cmd_for_recovery(ptr noundef %17, ptr noundef nonnull %ref_cmd, ptr noundef nonnull %cr, i32 noundef %23) #4
  %24 = zext i32 %call16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call16, label %if.end38 [
    i32 -2, label %do.end23
    i32 -1, label %do.end33
  ]

do.end23:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %ref_cmd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ref_cmd, align 4
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %26, i32 0, i32 16
  %27 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %init_task_tag, align 32
  %29 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cr, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 128
  %conv26 = zext i16 %32 to i32
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %28, i32 noundef %conv26) #7
  br label %cleanup

do.end33:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %rtt15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rtt15, align 4
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %34) #7
  br label %cleanup

if.end38:                                         ; preds = %if.end13
  %35 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cr, align 4
  %maxrecvdatasegmentlength = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %maxrecvdatasegmentlength to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %maxrecvdatasegmentlength, align 8
  %conn_ops = getelementptr inbounds %struct.iscsi_conn, ptr %2, i32 0, i32 59
  %39 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %conn_ops, align 16
  %MaxRecvDataSegmentLength = getelementptr inbounds %struct.iscsi_conn_ops, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %MaxRecvDataSegmentLength to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %MaxRecvDataSegmentLength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %42)
  %cmp39.not = icmp eq i32 %38, %42
  br i1 %cmp39.not, label %if.end47, label %do.end44

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #7
  br label %cleanup

if.end47:                                         ; preds = %if.end38
  %maxxmitdatasegmentlength = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %36, i32 0, i32 3
  %43 = ptrtoint ptr %maxxmitdatasegmentlength to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %maxxmitdatasegmentlength, align 4
  %MaxXmitDataSegmentLength = getelementptr inbounds %struct.iscsi_conn_ops, ptr %40, i32 0, i32 3
  %45 = ptrtoint ptr %MaxXmitDataSegmentLength to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %MaxXmitDataSegmentLength, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp49.not = icmp eq i32 %44, %46
  br i1 %cmp49.not, label %if.end57, label %do.end54

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #7
  br label %cleanup

if.end57:                                         ; preds = %if.end47
  %lun = getelementptr inbounds %struct.iscsi_tm, ptr %buf, i32 0, i32 5
  %call58 = call i64 @scsilun_to_int(ptr noundef %lun) #4
  %47 = ptrtoint ptr %ref_cmd to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ref_cmd, align 4
  %orig_fe_lun = getelementptr inbounds %struct.iscsi_cmd, ptr %48, i32 0, i32 70, i32 14
  %49 = ptrtoint ptr %orig_fe_lun to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %orig_fe_lun, align 16
  call void @__sanitizer_cov_trace_cmp8(i64 %call58, i64 %50)
  %cmp60.not = icmp eq i64 %call58, %50
  br i1 %cmp60.not, label %if.end70, label %do.end65

do.end65:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i64 noundef %call58, i64 noundef %50) #7
  br label %cleanup

if.end70:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  %51 = ptrtoint ptr %rtt15 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rtt15, align 4
  %conv72 = zext i32 %52 to i64
  %ref_task_tag = getelementptr inbounds %struct.se_tmr_req, ptr %7, i32 0, i32 3
  %53 = ptrtoint ptr %ref_task_tag to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %conv72, ptr %ref_task_tag, align 8
  %ref_cmd73 = getelementptr inbounds %struct.iscsi_tmr_req, ptr %5, i32 0, i32 2
  %54 = ptrtoint ptr %ref_cmd73 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %48, ptr %ref_cmd73, align 4
  %exp_datasn74 = getelementptr inbounds %struct.iscsi_tm, ptr %buf, i32 0, i32 11
  %55 = ptrtoint ptr %exp_datasn74 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %exp_datasn74, align 4
  %exp_data_sn = getelementptr inbounds %struct.iscsi_tmr_req, ptr %5, i32 0, i32 1
  %57 = ptrtoint ptr %exp_data_sn to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %exp_data_sn, align 4
  %58 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cr, align 4
  %conn_recovery = getelementptr inbounds %struct.iscsi_tmr_req, ptr %5, i32 0, i32 3
  %60 = ptrtoint ptr %conn_recovery to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %conn_recovery, align 4
  %61 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %61)
  %bf.load = load i8, ptr %5, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %do.end65, %do.end54, %do.end44, %do.end33, %do.end23, %do.end10
  %retval.0 = phi i8 [ 5, %do.end10 ], [ 3, %do.end23 ], [ 1, %do.end33 ], [ -1, %do.end44 ], [ -1, %do.end54 ], [ -1, %do.end65 ], [ 0, %if.end70 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cr) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ref_cmd) #4
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_find_cmd_for_recovery(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @scsilun_to_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_tmr_post_handler(ptr nocapture noundef readonly %cmd, ptr noundef %conn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tmr_req1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 65
  %0 = ptrtoint ptr %tmr_req1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tmr_req1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %se_tmr_req = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 22
  %3 = ptrtoint ptr %se_tmr_req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %se_tmr_req, align 16
  %response = getelementptr inbounds %struct.se_tmr_req, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %response to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %response, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp = icmp eq i8 %6, 0
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call fastcc i32 @iscsit_task_reassign_complete(ptr noundef %1, ptr noundef %conn)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsit_task_reassign_complete(ptr nocapture noundef readonly %tmr_req, ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_cmd = getelementptr inbounds %struct.iscsi_tmr_req, ptr %tmr_req, i32 0, i32 2
  %0 = ptrtoint ptr %ref_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ref_cmd, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %conn2 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 66
  %2 = ptrtoint ptr %conn2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %conn, ptr %conn2, align 8
  %iscsi_opcode = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %iscsi_opcode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %iscsi_opcode, align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %4, label %do.end8 [
    i8 0, label %sw.bb
    i8 1, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call fastcc i32 @iscsit_task_reassign_complete_nop_out(ptr noundef %tmr_req, ptr noundef %conn)
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call fastcc i32 @iscsit_task_reassign_complete_scsi_cmnd(ptr noundef %tmr_req, ptr noundef %conn)
  br label %sw.epilog

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv = zext i8 %4 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %conv) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb
  %ret.0 = phi i32 [ %call5, %sw.bb4 ], [ %call3, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp.not = icmp eq i32 %ret.0, 0
  br i1 %cmp.not, label %do.body16, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body16:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_task_reassign_complete.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_task_reassign_complete, %if.then22)) #4
          to label %cleanup [label %if.then22], !srcloc !123

if.then22:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %iscsi_opcode to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iscsi_opcode, align 2
  %conv24 = zext i8 %7 to i32
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %init_task_tag, align 32
  %cid = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 8
  %10 = ptrtoint ptr %cid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %cid, align 2
  %conv25 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_task_reassign_complete.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.45, i32 noundef %conv24, i32 noundef %9, i32 noundef %conv25) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %do.body16, %sw.epilog.cleanup_crit_edge, %do.end8, %do.end
  %retval.0 = phi i32 [ -1, %do.end8 ], [ -1, %do.end ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ 0, %if.then22 ], [ 0, %do.body16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_check_task_reassign_expdatasn(ptr nocapture noundef readonly %tmr_req, ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_cmd1 = getelementptr inbounds %struct.iscsi_tmr_req, ptr %tmr_req, i32 0, i32 2
  %0 = ptrtoint ptr %ref_cmd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ref_cmd1, align 4
  %iscsi_opcode = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %iscsi_opcode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iscsi_opcode, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.not = icmp eq i8 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %se_cmd_flags = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 11
  %4 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %se_cmd_flags, align 16
  %and = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %data_direction = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 46
  %6 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_direction, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %7, label %do.end55 [
    i32 3, label %if.end4.cleanup_crit_edge
    i32 2, label %if.then12
    i32 1, label %if.then38
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then12:                                        ; preds = %if.end4
  %exp_data_sn = getelementptr inbounds %struct.iscsi_tmr_req, ptr %tmr_req, i32 0, i32 1
  %9 = ptrtoint ptr %exp_data_sn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %exp_data_sn, align 4
  %data_sn = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %data_sn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_sn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp13 = icmp ugt i32 %10, %12
  br i1 %cmp13, label %do.end, label %if.end18

do.end:                                           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %10, i32 noundef %12) #7
  br label %cleanup

if.end18:                                         ; preds = %if.then12
  %cmd_flags = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cmd_flags, align 4
  %and19 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.cleanup_crit_edge, label %land.lhs.true

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end18
  %acked_data_sn = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 23
  %15 = ptrtoint ptr %acked_data_sn to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %acked_data_sn, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %16)
  %cmp22.not = icmp ugt i32 %10, %16
  br i1 %cmp22.not, label %land.lhs.true.cleanup_crit_edge, label %do.end27

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end27:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %10, i32 noundef %16) #7
  br label %cleanup

if.then38:                                        ; preds = %if.end4
  %exp_data_sn39 = getelementptr inbounds %struct.iscsi_tmr_req, ptr %tmr_req, i32 0, i32 1
  %17 = ptrtoint ptr %exp_data_sn39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %exp_data_sn39, align 4
  %r2t_sn = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 22
  %19 = ptrtoint ptr %r2t_sn to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %r2t_sn, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp40 = icmp ugt i32 %18, %20
  br i1 %cmp40, label %do.end45, label %if.end50

do.end45:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %18, i32 noundef %20) #7
  br label %cleanup

if.end50:                                         ; preds = %if.then38
  %unsolicited_data.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %unsolicited_data.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %unsolicited_data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end50.if.end.i_crit_edge, label %if.then.i

if.end50.if.end.i_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.end50
  %sess.i.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %23 = ptrtoint ptr %sess.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sess.i.i, align 4
  %sess_ops.i.i = getelementptr inbounds %struct.iscsi_session, ptr %24, i32 0, i32 47
  %25 = ptrtoint ptr %sess_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sess_ops.i.i, align 8
  %DataSequenceInOrder.i.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %26, i32 0, i32 15
  %27 = ptrtoint ptr %DataSequenceInOrder.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %DataSequenceInOrder.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i.i, label %for.cond37.preheader.i.i, label %if.then.i.i

for.cond37.preheader.i.i:                         ; preds = %if.then.i
  %seq_count.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 35
  %29 = ptrtoint ptr %seq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %seq_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp38142.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp38142.not.i.i, label %for.cond37.preheader.i.i.if.end.i_crit_edge, label %for.body40.lr.ph.i.i

for.cond37.preheader.i.i.if.end.i_crit_edge:      ; preds = %for.cond37.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

for.body40.lr.ph.i.i:                             ; preds = %for.cond37.preheader.i.i
  %seq_list.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 63
  %write_data_done48.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 40
  %first_burst_len50.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 41
  %pdu_list66.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 61
  br label %for.body40.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %data_sn.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 21
  %31 = ptrtoint ptr %data_sn.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %data_sn.i.i, align 4
  %immediate_data.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %immediate_data.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %immediate_data.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool1.not.i.i = icmp eq i8 %33, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %if.end.thread.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %34 = ptrtoint ptr %sess.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sess.i.i, align 4
  %sess_ops4.i.i = getelementptr inbounds %struct.iscsi_session, ptr %35, i32 0, i32 47
  %36 = ptrtoint ptr %sess_ops4.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sess_ops4.i.i, align 8
  %DataPDUInOrder.i.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %37, i32 0, i32 14
  %38 = ptrtoint ptr %DataPDUInOrder.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %DataPDUInOrder.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool5.not.i.i = icmp eq i8 %39, 0
  br i1 %tobool5.not.i.i, label %if.end.i.i.for.cond.preheader.i.i_crit_edge, label %cond.false.i.i

if.end.i.i.for.cond.preheader.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader.i.i

if.end.thread.i.i:                                ; preds = %if.then.i.i
  %first_burst_len.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 41
  %40 = ptrtoint ptr %first_burst_len.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %first_burst_len.i.i, align 4
  %seq_start_offset.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 37
  %42 = ptrtoint ptr %seq_start_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %seq_start_offset.i.i, align 4
  %sub.i.i = sub i32 %41, %43
  %r2t_offset.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 27
  %44 = ptrtoint ptr %r2t_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %r2t_offset.i.i, align 4
  %add.i.i = add i32 %sub.i.i, %45
  store i32 %add.i.i, ptr %r2t_offset.i.i, align 4
  %46 = ptrtoint ptr %sess.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sess.i.i, align 4
  %sess_ops4132.i.i = getelementptr inbounds %struct.iscsi_session, ptr %47, i32 0, i32 47
  %48 = ptrtoint ptr %sess_ops4132.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sess_ops4132.i.i, align 8
  %DataPDUInOrder133.i.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %49, i32 0, i32 14
  %50 = ptrtoint ptr %DataPDUInOrder133.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %DataPDUInOrder133.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool5.not134.i.i = icmp eq i8 %51, 0
  br i1 %tobool5.not134.i.i, label %if.end.thread.i.i.for.cond.preheader.i.i_crit_edge, label %if.end.thread.i.i.cond.end.i.i_crit_edge

if.end.thread.i.i.cond.end.i.i_crit_edge:         ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cond.end.i.i

if.end.thread.i.i.for.cond.preheader.i.i_crit_edge: ; preds = %if.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %if.end.thread.i.i.for.cond.preheader.i.i_crit_edge, %if.end.i.i.for.cond.preheader.i.i_crit_edge
  %pdu_count.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 31
  %52 = ptrtoint ptr %pdu_count.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pdu_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp137.not.i.i = icmp eq i32 %53, 0
  br i1 %cmp137.not.i.i, label %for.cond.preheader.i.i.if.end.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.if.end.i_crit_edge:        ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %pdu_list.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 61
  %seq_start_offset21.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 37
  %seq_end_offset.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 38
  %first_burst_len30.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 41
  %write_data_done33.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 40
  br label %for.body.i.i

cond.false.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %first_burst_len12.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 41
  %54 = ptrtoint ptr %first_burst_len12.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %first_burst_len12.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end.thread.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %55, %cond.false.i.i ], [ %sub.i.i, %if.end.thread.i.i.cond.end.i.i_crit_edge ]
  %write_data_done.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 40
  %56 = ptrtoint ptr %write_data_done.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %write_data_done.i.i, align 128
  %sub13.i.i = sub i32 %57, %cond.i.i
  store i32 %sub13.i.i, ptr %write_data_done.i.i, align 128
  %first_burst_len14.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 41
  %58 = ptrtoint ptr %first_burst_len14.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %first_burst_len14.i.i, align 4
  br label %if.end.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.0138.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %59 = ptrtoint ptr %pdu_list.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdu_list.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.iscsi_pdu, ptr %60, i32 %i.0138.i.i
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %62)
  %cmp17.not.i.i = icmp eq i32 %62, 1
  br i1 %cmp17.not.i.i, label %if.end20.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.end20.i.i:                                     ; preds = %for.body.i.i
  %offset.i.i = getelementptr %struct.iscsi_pdu, ptr %60, i32 %i.0138.i.i, i32 5
  %63 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %offset.i.i, align 4
  %65 = ptrtoint ptr %seq_start_offset21.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %seq_start_offset21.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp22.not.i.i = icmp ult i32 %64, %66
  br i1 %cmp22.not.i.i, label %if.end20.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

if.end20.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %if.end20.i.i
  %length.i.i = getelementptr %struct.iscsi_pdu, ptr %60, i32 %i.0138.i.i, i32 4
  %67 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %length.i.i, align 16
  %add25.i.i = add i32 %68, %64
  %69 = ptrtoint ptr %seq_end_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %seq_end_offset.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add25.i.i, i32 %70)
  %cmp26.not.i.i = icmp ugt i32 %add25.i.i, %70
  br i1 %cmp26.not.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge, label %if.then28.i.i

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i.i

if.then28.i.i:                                    ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %71 = ptrtoint ptr %first_burst_len30.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %first_burst_len30.i.i, align 4
  %sub31.i.i = sub i32 %72, %68
  store i32 %sub31.i.i, ptr %first_burst_len30.i.i, align 4
  %73 = ptrtoint ptr %length.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %length.i.i, align 16
  %75 = ptrtoint ptr %write_data_done33.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %write_data_done33.i.i, align 128
  %sub34.i.i = sub i32 %76, %74
  store i32 %sub34.i.i, ptr %write_data_done33.i.i, align 128
  %77 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %arrayidx.i.i, align 128
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then28.i.i, %land.lhs.true.i.i.for.inc.i.i_crit_edge, %if.end20.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.0138.i.i, 1
  %78 = ptrtoint ptr %pdu_count.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pdu_count.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %79
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end.i_crit_edge

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.body40.i.i:                                   ; preds = %for.inc78.i.i.for.body40.i.i_crit_edge, %for.body40.lr.ph.i.i
  %i.1143.i.i = phi i32 [ 0, %for.body40.lr.ph.i.i ], [ %inc79.i.i, %for.inc78.i.i.for.body40.i.i_crit_edge ]
  %80 = ptrtoint ptr %seq_list.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %seq_list.i.i, align 4
  %type.i.i = getelementptr %struct.iscsi_seq, ptr %81, i32 %i.1143.i.i, i32 2
  %82 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp42.not.i.i = icmp eq i32 %83, 2
  br i1 %cmp42.not.i.i, label %if.end45.i.i, label %for.body40.i.i.for.inc78.i.i_crit_edge

for.body40.i.i.for.inc78.i.i_crit_edge:           ; preds = %for.body40.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc78.i.i

if.end45.i.i:                                     ; preds = %for.body40.i.i
  %offset46.i.i = getelementptr %struct.iscsi_seq, ptr %81, i32 %i.1143.i.i, i32 9
  %84 = ptrtoint ptr %offset46.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %offset46.i.i, align 4
  %orig_offset.i.i = getelementptr %struct.iscsi_seq, ptr %81, i32 %i.1143.i.i, i32 10
  %86 = ptrtoint ptr %orig_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %orig_offset.i.i, align 8
  %sub47.neg.i.i = sub i32 %87, %85
  %88 = ptrtoint ptr %write_data_done48.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %write_data_done48.i.i, align 128
  %sub49.i.i = add i32 %sub47.neg.i.i, %89
  store i32 %sub49.i.i, ptr %write_data_done48.i.i, align 128
  %90 = ptrtoint ptr %first_burst_len50.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 0, ptr %first_burst_len50.i.i, align 4
  %data_sn51.i.i = getelementptr %struct.iscsi_seq, ptr %81, i32 %i.1143.i.i, i32 3
  %91 = ptrtoint ptr %data_sn51.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %data_sn51.i.i, align 4
  %92 = load i32, ptr %orig_offset.i.i, align 8
  store i32 %92, ptr %offset46.i.i, align 4
  %next_burst_len.i.i = getelementptr %struct.iscsi_seq, ptr %81, i32 %i.1143.i.i, i32 6
  %93 = ptrtoint ptr %next_burst_len.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %next_burst_len.i.i, align 8
  %status54.i.i = getelementptr %struct.iscsi_seq, ptr %81, i32 %i.1143.i.i, i32 1
  %94 = ptrtoint ptr %status54.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 2, ptr %status54.i.i, align 4
  %95 = ptrtoint ptr %sess.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sess.i.i, align 4
  %sess_ops56.i.i = getelementptr inbounds %struct.iscsi_session, ptr %96, i32 0, i32 47
  %97 = ptrtoint ptr %sess_ops56.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sess_ops56.i.i, align 8
  %DataPDUInOrder57.i.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %98, i32 0, i32 14
  %99 = ptrtoint ptr %DataPDUInOrder57.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %DataPDUInOrder57.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool58.not.i.i = icmp eq i8 %100, 0
  br i1 %tobool58.not.i.i, label %for.cond61.preheader.i.i, label %if.end45.i.i.for.inc78.i.i_crit_edge

if.end45.i.i.for.inc78.i.i_crit_edge:             ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc78.i.i

for.cond61.preheader.i.i:                         ; preds = %if.end45.i.i
  %pdu_count62.i.i = getelementptr %struct.iscsi_seq, ptr %81, i32 %i.1143.i.i, i32 8
  %101 = ptrtoint ptr %pdu_count62.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %pdu_count62.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %cmp63140.not.i.i = icmp eq i32 %102, 0
  br i1 %cmp63140.not.i.i, label %for.cond61.preheader.i.i.for.inc78.i.i_crit_edge, label %for.body65.lr.ph.i.i

for.cond61.preheader.i.i.for.inc78.i.i_crit_edge: ; preds = %for.cond61.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc78.i.i

for.body65.lr.ph.i.i:                             ; preds = %for.cond61.preheader.i.i
  %pdu_start.i.i = getelementptr %struct.iscsi_seq, ptr %81, i32 %i.1143.i.i, i32 7
  br label %for.body65.i.i

for.body65.i.i:                                   ; preds = %for.inc75.i.i.for.body65.i.i_crit_edge, %for.body65.lr.ph.i.i
  %j.0141.i.i = phi i32 [ 0, %for.body65.lr.ph.i.i ], [ %inc76.i.i, %for.inc75.i.i.for.body65.i.i_crit_edge ]
  %103 = ptrtoint ptr %pdu_list66.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %pdu_list66.i.i, align 4
  %105 = ptrtoint ptr %pdu_start.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %pdu_start.i.i, align 4
  %add67.i.i = add i32 %106, %j.0141.i.i
  %arrayidx68.i.i = getelementptr %struct.iscsi_pdu, ptr %104, i32 %add67.i.i
  %107 = ptrtoint ptr %arrayidx68.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx68.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %108)
  %cmp70.not.i.i = icmp eq i32 %108, 1
  br i1 %cmp70.not.i.i, label %if.end73.i.i, label %for.body65.i.i.for.inc75.i.i_crit_edge

for.body65.i.i.for.inc75.i.i_crit_edge:           ; preds = %for.body65.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc75.i.i

if.end73.i.i:                                     ; preds = %for.body65.i.i
  call void @__sanitizer_cov_trace_pc() #6
  %109 = ptrtoint ptr %arrayidx68.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %arrayidx68.i.i, align 128
  br label %for.inc75.i.i

for.inc75.i.i:                                    ; preds = %if.end73.i.i, %for.body65.i.i.for.inc75.i.i_crit_edge
  %inc76.i.i = add nuw i32 %j.0141.i.i, 1
  %110 = ptrtoint ptr %pdu_count62.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %pdu_count62.i.i, align 32
  %cmp63.i.i = icmp ult i32 %inc76.i.i, %111
  br i1 %cmp63.i.i, label %for.inc75.i.i.for.body65.i.i_crit_edge, label %for.inc75.i.i.for.inc78.i.i_crit_edge

for.inc75.i.i.for.inc78.i.i_crit_edge:            ; preds = %for.inc75.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc78.i.i

for.inc75.i.i.for.body65.i.i_crit_edge:           ; preds = %for.inc75.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body65.i.i

for.inc78.i.i:                                    ; preds = %for.inc75.i.i.for.inc78.i.i_crit_edge, %for.cond61.preheader.i.i.for.inc78.i.i_crit_edge, %if.end45.i.i.for.inc78.i.i_crit_edge, %for.body40.i.i.for.inc78.i.i_crit_edge
  %inc79.i.i = add nuw i32 %i.1143.i.i, 1
  %112 = ptrtoint ptr %seq_count.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %seq_count.i.i, align 4
  %cmp38.i.i = icmp ult i32 %inc79.i.i, %113
  br i1 %cmp38.i.i, label %for.inc78.i.i.for.body40.i.i_crit_edge, label %for.inc78.i.i.if.end.i_crit_edge

for.inc78.i.i.if.end.i_crit_edge:                 ; preds = %for.inc78.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

for.inc78.i.i.for.body40.i.i_crit_edge:           ; preds = %for.inc78.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body40.i.i

if.end.i:                                         ; preds = %for.inc78.i.i.if.end.i_crit_edge, %for.inc.i.i.if.end.i_crit_edge, %cond.end.i.i, %for.cond.preheader.i.i.if.end.i_crit_edge, %for.cond37.preheader.i.i.if.end.i_crit_edge, %if.end50.if.end.i_crit_edge
  %114 = ptrtoint ptr %exp_data_sn39 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %exp_data_sn39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool1.not.i = icmp eq i32 %115, 0
  br i1 %tobool1.not.i, label %if.end.i.drop_unacknowledged_r2ts.i_crit_edge, label %if.end3.i

if.end.i.drop_unacknowledged_r2ts.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %drop_unacknowledged_r2ts.i

if.end3.i:                                        ; preds = %if.end.i
  %r2t_lock.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock.i) #4
  %cmd_r2t_list.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 56
  %116 = ptrtoint ptr %cmd_r2t_list.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile ptr, ptr %cmd_r2t_list.i, align 4
  %cmp.i266.not.i = icmp eq ptr %117, %cmd_r2t_list.i
  br i1 %cmp.i266.not.i, label %if.end3.i.iscsit_task_reassign_prepare_write.exit_crit_edge, label %for.body.lr.ph.i

if.end3.i.iscsit_task_reassign_prepare_write.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %iscsit_task_reassign_prepare_write.exit

for.body.lr.ph.i:                                 ; preds = %if.end3.i
  %sess.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %data_sn.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 21
  %next_burst_len.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 42
  %r2t_offset31.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 27
  %pdu_count.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 31
  %pdu_list.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 61
  %write_data_done.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 40
  %seq_send_order.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 34
  %outstanding_r2ts.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc97.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn264283.i = phi ptr [ %117, %for.body.lr.ph.i ], [ %.pn264.i, %for.inc97.i.for.body.i_crit_edge ]
  %first_incomplete_r2t.0282.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %first_incomplete_r2t.2.i, %for.inc97.i.for.body.i_crit_edge ]
  %r2t_sn.i = getelementptr i8, ptr %.pn264283.i, i32 -16
  %118 = ptrtoint ptr %r2t_sn.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %r2t_sn.i, align 4
  %120 = ptrtoint ptr %exp_data_sn39 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %exp_data_sn39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %121)
  %cmp11.not.i = icmp ult i32 %119, %121
  br i1 %cmp11.not.i, label %if.end13.i, label %for.body.i.for.inc97.i_crit_edge

for.body.i.for.inc97.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc97.i

if.end13.i:                                       ; preds = %for.body.i
  %r2t.0284.i = getelementptr i8, ptr %.pn264283.i, i32 -28
  %122 = ptrtoint ptr %r2t.0284.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %r2t.0284.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool14.not.i = icmp eq i32 %123, 0
  br i1 %tobool14.not.i, label %if.end16.i, label %if.end13.i.for.inc97.i_crit_edge

if.end13.i.for.inc97.i_crit_edge:                 ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc97.i

if.end16.i:                                       ; preds = %if.end13.i
  %recovery_r2t.i = getelementptr i8, ptr %.pn264283.i, i32 -24
  %124 = ptrtoint ptr %recovery_r2t.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %recovery_r2t.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool17.not.i = icmp eq i32 %125, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end16.i.for.inc97.i_crit_edge

if.end16.i.for.inc97.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc97.i

if.end19.i:                                       ; preds = %if.end16.i
  %126 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %sess.i, align 4
  %sess_ops.i = getelementptr inbounds %struct.iscsi_session, ptr %127, i32 0, i32 47
  %128 = ptrtoint ptr %sess_ops.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %sess_ops.i, align 8
  %DataSequenceInOrder.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %129, i32 0, i32 15
  %130 = ptrtoint ptr %DataSequenceInOrder.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %DataSequenceInOrder.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool20.not.i = icmp eq i8 %131, 0
  br i1 %tobool20.not.i, label %if.else.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %first_incomplete_r2t.0282.i)
  %tobool22.not.i = icmp eq i32 %first_incomplete_r2t.0282.i, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.end24.i

if.then23.i:                                      ; preds = %if.then21.i
  call void @__sanitizer_cov_trace_pc() #6
  %xfer_len.i = getelementptr i8, ptr %.pn264283.i, i32 -4
  %132 = ptrtoint ptr %xfer_len.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %xfer_len.i, align 8
  %134 = ptrtoint ptr %r2t_offset31.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %r2t_offset31.i, align 4
  %sub.i = sub i32 %135, %133
  br label %next95.sink.split.i

if.end24.i:                                       ; preds = %if.then21.i
  %DataPDUInOrder.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %129, i32 0, i32 14
  %136 = ptrtoint ptr %DataPDUInOrder.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %DataPDUInOrder.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool27.not.i = icmp eq i8 %137, 0
  %138 = ptrtoint ptr %data_sn.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %data_sn.i, align 4
  %xfer_len35.i = getelementptr i8, ptr %.pn264283.i, i32 -4
  %139 = ptrtoint ptr %xfer_len35.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %xfer_len35.i, align 8
  br i1 %tobool27.not.i, label %if.end33.i, label %if.then28.i

if.then28.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  %141 = ptrtoint ptr %next_burst_len.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %next_burst_len.i, align 8
  %sub30.neg.i = sub i32 %142, %140
  %143 = ptrtoint ptr %r2t_offset31.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %r2t_offset31.i, align 4
  %sub32.i = add i32 %sub30.neg.i, %144
  br label %next95.sink.split.i

if.end33.i:                                       ; preds = %if.end24.i
  %145 = ptrtoint ptr %r2t_offset31.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %r2t_offset31.i, align 4
  %sub37.i = sub i32 %146, %140
  store i32 %sub37.i, ptr %r2t_offset31.i, align 4
  %147 = ptrtoint ptr %pdu_count.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %pdu_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %cmp39274.not.i = icmp eq i32 %148, 0
  br i1 %cmp39274.not.i, label %if.end33.i.next95.i_crit_edge, label %for.body40.lr.ph.i

if.end33.i.next95.i_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next95.i

for.body40.lr.ph.i:                               ; preds = %if.end33.i
  %offset44.i = getelementptr i8, ptr %.pn264283.i, i32 -12
  br label %for.body40.i

for.body40.i:                                     ; preds = %for.inc.i.for.body40.i_crit_edge, %for.body40.lr.ph.i
  %i.0275.i = phi i32 [ 0, %for.body40.lr.ph.i ], [ %inc.i, %for.inc.i.for.body40.i_crit_edge ]
  %149 = ptrtoint ptr %pdu_list.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %pdu_list.i, align 4
  %arrayidx.i = getelementptr %struct.iscsi_pdu, ptr %150, i32 %i.0275.i
  %151 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %152)
  %cmp41.not.i = icmp eq i32 %152, 1
  br i1 %cmp41.not.i, label %if.end43.i, label %for.body40.i.for.inc.i_crit_edge

for.body40.i.for.inc.i_crit_edge:                 ; preds = %for.body40.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end43.i:                                       ; preds = %for.body40.i
  %offset.i = getelementptr %struct.iscsi_pdu, ptr %150, i32 %i.0275.i, i32 5
  %153 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %offset.i, align 4
  %155 = ptrtoint ptr %offset44.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %offset44.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %156)
  %cmp45.not.i = icmp ult i32 %154, %156
  br i1 %cmp45.not.i, label %if.end43.i.for.inc.i_crit_edge, label %land.lhs.true.i

if.end43.i.for.inc.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.end43.i
  %157 = ptrtoint ptr %xfer_len35.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %xfer_len35.i, align 8
  %add.i = add i32 %158, %156
  call void @__sanitizer_cov_trace_cmp4(i32 %154, i32 %add.i)
  %cmp49.i = icmp ult i32 %154, %add.i
  br i1 %cmp49.i, label %if.then50.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then50.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %length.i = getelementptr %struct.iscsi_pdu, ptr %150, i32 %i.0275.i, i32 4
  %159 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %length.i, align 16
  %161 = ptrtoint ptr %next_burst_len.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %next_burst_len.i, align 8
  %sub52.i = sub i32 %162, %160
  store i32 %sub52.i, ptr %next_burst_len.i, align 8
  %163 = load i32, ptr %length.i, align 16
  %164 = ptrtoint ptr %write_data_done.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %write_data_done.i, align 128
  %sub54.i = sub i32 %165, %163
  store i32 %sub54.i, ptr %write_data_done.i, align 128
  %166 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 0, ptr %arrayidx.i, align 128
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then50.i, %land.lhs.true.i.for.inc.i_crit_edge, %if.end43.i.for.inc.i_crit_edge, %for.body40.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.0275.i, 1
  %167 = ptrtoint ptr %pdu_count.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %pdu_count.i, align 4
  %cmp39.i = icmp ult i32 %inc.i, %168
  br i1 %cmp39.i, label %for.inc.i.for.body40.i_crit_edge, label %for.inc.i.next95.i_crit_edge

for.inc.i.next95.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next95.i

for.inc.i.for.body40.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body40.i

if.else.i:                                        ; preds = %if.end19.i
  %offset57.i = getelementptr i8, ptr %.pn264283.i, i32 -12
  %169 = ptrtoint ptr %offset57.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %offset57.i, align 16
  %xfer_len58.i = getelementptr i8, ptr %.pn264283.i, i32 -4
  %171 = ptrtoint ptr %xfer_len58.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %xfer_len58.i, align 8
  %call59.i = tail call ptr @iscsit_get_seq_holder(ptr noundef %1, i32 noundef %170, i32 noundef %172) #4
  %tobool60.not.i = icmp eq ptr %call59.i, null
  br i1 %tobool60.not.i, label %if.else.i.iscsit_task_reassign_prepare_write.exit_crit_edge, label %if.end63.i

if.else.i.iscsit_task_reassign_prepare_write.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %iscsit_task_reassign_prepare_write.exit

if.end63.i:                                       ; preds = %if.else.i
  %offset64.i = getelementptr inbounds %struct.iscsi_seq, ptr %call59.i, i32 0, i32 9
  %173 = ptrtoint ptr %offset64.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %offset64.i, align 4
  %orig_offset.i = getelementptr inbounds %struct.iscsi_seq, ptr %call59.i, i32 0, i32 10
  %175 = ptrtoint ptr %orig_offset.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %orig_offset.i, align 8
  %sub65.neg.i = sub i32 %176, %174
  %177 = ptrtoint ptr %write_data_done.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %write_data_done.i, align 128
  %sub67.i = add i32 %sub65.neg.i, %178
  store i32 %sub67.i, ptr %write_data_done.i, align 128
  %data_sn68.i = getelementptr inbounds %struct.iscsi_seq, ptr %call59.i, i32 0, i32 3
  %179 = ptrtoint ptr %data_sn68.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %data_sn68.i, align 4
  %180 = load i32, ptr %orig_offset.i, align 8
  store i32 %180, ptr %offset64.i, align 4
  %next_burst_len71.i = getelementptr inbounds %struct.iscsi_seq, ptr %call59.i, i32 0, i32 6
  %181 = ptrtoint ptr %next_burst_len71.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %next_burst_len71.i, align 8
  %status72.i = getelementptr inbounds %struct.iscsi_seq, ptr %call59.i, i32 0, i32 1
  %182 = ptrtoint ptr %status72.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 2, ptr %status72.i, align 4
  %183 = ptrtoint ptr %seq_send_order.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %seq_send_order.i, align 8
  %dec.i = add i32 %184, -1
  store i32 %dec.i, ptr %seq_send_order.i, align 8
  %185 = ptrtoint ptr %sess.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %sess.i, align 4
  %sess_ops74.i = getelementptr inbounds %struct.iscsi_session, ptr %186, i32 0, i32 47
  %187 = ptrtoint ptr %sess_ops74.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %sess_ops74.i, align 8
  %DataPDUInOrder75.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %188, i32 0, i32 14
  %189 = ptrtoint ptr %DataPDUInOrder75.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %DataPDUInOrder75.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool76.not.i = icmp eq i8 %190, 0
  br i1 %tobool76.not.i, label %for.cond79.preheader.i, label %if.end63.i.next95.i_crit_edge

if.end63.i.next95.i_crit_edge:                    ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next95.i

for.cond79.preheader.i:                           ; preds = %if.end63.i
  %pdu_count80.i = getelementptr inbounds %struct.iscsi_seq, ptr %call59.i, i32 0, i32 8
  %191 = ptrtoint ptr %pdu_count80.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %pdu_count80.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %192)
  %cmp81277.not.i = icmp eq i32 %192, 0
  br i1 %cmp81277.not.i, label %for.cond79.preheader.i.next95.i_crit_edge, label %for.body82.lr.ph.i

for.cond79.preheader.i.next95.i_crit_edge:        ; preds = %for.cond79.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next95.i

for.body82.lr.ph.i:                               ; preds = %for.cond79.preheader.i
  %pdu_start.i = getelementptr inbounds %struct.iscsi_seq, ptr %call59.i, i32 0, i32 7
  br label %for.body82.i

for.body82.i:                                     ; preds = %for.inc91.i.for.body82.i_crit_edge, %for.body82.lr.ph.i
  %i.1278.i = phi i32 [ 0, %for.body82.lr.ph.i ], [ %inc92.i, %for.inc91.i.for.body82.i_crit_edge ]
  %193 = ptrtoint ptr %pdu_list.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %pdu_list.i, align 4
  %195 = ptrtoint ptr %pdu_start.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %pdu_start.i, align 4
  %add84.i = add i32 %196, %i.1278.i
  %arrayidx85.i = getelementptr %struct.iscsi_pdu, ptr %194, i32 %add84.i
  %197 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %arrayidx85.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %198)
  %cmp87.not.i = icmp eq i32 %198, 1
  br i1 %cmp87.not.i, label %if.end89.i, label %for.body82.i.for.inc91.i_crit_edge

for.body82.i.for.inc91.i_crit_edge:               ; preds = %for.body82.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc91.i

if.end89.i:                                       ; preds = %for.body82.i
  call void @__sanitizer_cov_trace_pc() #6
  %199 = ptrtoint ptr %arrayidx85.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 0, ptr %arrayidx85.i, align 128
  br label %for.inc91.i

for.inc91.i:                                      ; preds = %if.end89.i, %for.body82.i.for.inc91.i_crit_edge
  %inc92.i = add nuw i32 %i.1278.i, 1
  %200 = ptrtoint ptr %pdu_count80.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %pdu_count80.i, align 32
  %cmp81.i = icmp ult i32 %inc92.i, %201
  br i1 %cmp81.i, label %for.inc91.i.for.body82.i_crit_edge, label %for.inc91.i.next95.i_crit_edge

for.inc91.i.next95.i_crit_edge:                   ; preds = %for.inc91.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %next95.i

for.inc91.i.for.body82.i_crit_edge:               ; preds = %for.inc91.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body82.i

next95.sink.split.i:                              ; preds = %if.then28.i, %if.then23.i
  %sub32.sink.i = phi i32 [ %sub32.i, %if.then28.i ], [ %sub.i, %if.then23.i ]
  %202 = ptrtoint ptr %r2t_offset31.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %sub32.sink.i, ptr %r2t_offset31.i, align 4
  br label %next95.i

next95.i:                                         ; preds = %next95.sink.split.i, %for.inc91.i.next95.i_crit_edge, %for.cond79.preheader.i.next95.i_crit_edge, %if.end63.i.next95.i_crit_edge, %for.inc.i.next95.i_crit_edge, %if.end33.i.next95.i_crit_edge
  %first_incomplete_r2t.1.i = phi i32 [ %first_incomplete_r2t.0282.i, %if.end63.i.next95.i_crit_edge ], [ %first_incomplete_r2t.0282.i, %for.cond79.preheader.i.next95.i_crit_edge ], [ 0, %if.end33.i.next95.i_crit_edge ], [ 0, %next95.sink.split.i ], [ %first_incomplete_r2t.0282.i, %for.inc91.i.next95.i_crit_edge ], [ 0, %for.inc.i.next95.i_crit_edge ]
  %203 = ptrtoint ptr %outstanding_r2ts.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %outstanding_r2ts.i, align 8
  %dec96.i = add i32 %204, -1
  store i32 %dec96.i, ptr %outstanding_r2ts.i, align 8
  br label %for.inc97.i

for.inc97.i:                                      ; preds = %next95.i, %if.end16.i.for.inc97.i_crit_edge, %if.end13.i.for.inc97.i_crit_edge, %for.body.i.for.inc97.i_crit_edge
  %first_incomplete_r2t.2.i = phi i32 [ %first_incomplete_r2t.0282.i, %for.body.i.for.inc97.i_crit_edge ], [ %first_incomplete_r2t.0282.i, %if.end13.i.for.inc97.i_crit_edge ], [ %first_incomplete_r2t.0282.i, %if.end16.i.for.inc97.i_crit_edge ], [ %first_incomplete_r2t.1.i, %next95.i ]
  %205 = ptrtoint ptr %.pn264283.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %.pn264.i = load ptr, ptr %.pn264283.i, align 4
  %cmp.not.i = icmp eq ptr %.pn264.i, %cmd_r2t_list.i
  br i1 %cmp.not.i, label %for.end103.i, label %for.inc97.i.for.body.i_crit_edge

for.inc97.i.for.body.i_crit_edge:                 ; preds = %for.inc97.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end103.i:                                     ; preds = %for.inc97.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock.i) #4
  br label %drop_unacknowledged_r2ts.i

drop_unacknowledged_r2ts.i:                       ; preds = %for.end103.i, %if.end.i.drop_unacknowledged_r2ts.i_crit_edge
  %cmd_flags.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 15
  %206 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %cmd_flags.i, align 4
  %and.i = and i32 %207, -9
  store i32 %and.i, ptr %cmd_flags.i, align 4
  %208 = ptrtoint ptr %exp_data_sn39 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %exp_data_sn39, align 4
  %210 = ptrtoint ptr %r2t_sn to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %r2t_sn, align 8
  %r2t_lock107.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock107.i) #4
  %cmd_r2t_list109.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 56
  %211 = ptrtoint ptr %cmd_r2t_list109.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %cmd_r2t_list109.i, align 4
  %cmp121.not287.i = icmp eq ptr %212, %cmd_r2t_list109.i
  br i1 %cmp121.not287.i, label %drop_unacknowledged_r2ts.i.iscsit_task_reassign_prepare_write.exit_crit_edge, label %for.body123.lr.ph.i

drop_unacknowledged_r2ts.i.iscsit_task_reassign_prepare_write.exit_crit_edge: ; preds = %drop_unacknowledged_r2ts.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %iscsit_task_reassign_prepare_write.exit

for.body123.lr.ph.i:                              ; preds = %drop_unacknowledged_r2ts.i
  %sess144.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %r2t_offset150.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 27
  %seq_send_order153.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 34
  %outstanding_r2ts156.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 26
  br label %for.body123.i

for.body123.i:                                    ; preds = %for.inc158.i.for.body123.i_crit_edge, %for.body123.lr.ph.i
  %.pn.in288.i = phi ptr [ %212, %for.body123.lr.ph.i ], [ %.pn290.i, %for.inc158.i.for.body123.i_crit_edge ]
  %r2t.1289.i = getelementptr i8, ptr %.pn.in288.i, i32 -28
  %213 = ptrtoint ptr %.pn.in288.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %.pn290.i = load ptr, ptr %.pn.in288.i, align 4
  %r2t_sn124.i = getelementptr i8, ptr %.pn.in288.i, i32 -16
  %214 = ptrtoint ptr %r2t_sn124.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %r2t_sn124.i, align 4
  %216 = ptrtoint ptr %exp_data_sn39 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %exp_data_sn39, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %217)
  %cmp126.i = icmp ult i32 %215, %217
  br i1 %cmp126.i, label %for.body123.i.for.inc158.i_crit_edge, label %if.end128.i

for.body123.i.for.inc158.i_crit_edge:             ; preds = %for.body123.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc158.i

if.end128.i:                                      ; preds = %for.body123.i
  %218 = ptrtoint ptr %r2t.1289.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %r2t.1289.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool130.not.i = icmp eq i32 %219, 0
  br i1 %tobool130.not.i, label %if.end139.i, label %do.end.i

do.end.i:                                         ; preds = %if.end128.i
  call void @__sanitizer_cov_trace_pc() #6
  %offset135.i = getelementptr i8, ptr %.pn.in288.i, i32 -12
  %220 = ptrtoint ptr %offset135.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %offset135.i, align 16
  %xfer_len136.i = getelementptr i8, ptr %.pn.in288.i, i32 -4
  %222 = ptrtoint ptr %xfer_len136.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %xfer_len136.i, align 8
  %call137.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %217, i32 noundef %215, i32 noundef %221, i32 noundef %223) #7
  br label %iscsit_task_reassign_prepare_write.exit

if.end139.i:                                      ; preds = %if.end128.i
  %recovery_r2t140.i = getelementptr i8, ptr %.pn.in288.i, i32 -24
  %224 = ptrtoint ptr %recovery_r2t140.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %recovery_r2t140.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool141.not.i = icmp eq i32 %225, 0
  br i1 %tobool141.not.i, label %if.end143.i, label %if.end139.i.for.inc158.sink.split.i_crit_edge

if.end139.i.for.inc158.sink.split.i_crit_edge:    ; preds = %if.end139.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc158.sink.split.i

if.end143.i:                                      ; preds = %if.end139.i
  %226 = ptrtoint ptr %sess144.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %sess144.i, align 4
  %sess_ops145.i = getelementptr inbounds %struct.iscsi_session, ptr %227, i32 0, i32 47
  %228 = ptrtoint ptr %sess_ops145.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %sess_ops145.i, align 8
  %DataSequenceInOrder146.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %229, i32 0, i32 15
  %230 = ptrtoint ptr %DataSequenceInOrder146.i to i32
  call void @__asan_load1_noabort(i32 %230)
  %231 = load i8, ptr %DataSequenceInOrder146.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %231)
  %tobool147.not.i = icmp eq i8 %231, 0
  br i1 %tobool147.not.i, label %if.else152.i, label %if.then148.i

if.then148.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #6
  %xfer_len149.i = getelementptr i8, ptr %.pn.in288.i, i32 -4
  %232 = ptrtoint ptr %xfer_len149.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %xfer_len149.i, align 8
  %234 = ptrtoint ptr %r2t_offset150.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %r2t_offset150.i, align 4
  %sub151.i = sub i32 %235, %233
  store i32 %sub151.i, ptr %r2t_offset150.i, align 4
  br label %if.end155.i

if.else152.i:                                     ; preds = %if.end143.i
  call void @__sanitizer_cov_trace_pc() #6
  %236 = ptrtoint ptr %seq_send_order153.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %seq_send_order153.i, align 8
  %dec154.i = add i32 %237, -1
  store i32 %dec154.i, ptr %seq_send_order153.i, align 8
  br label %if.end155.i

if.end155.i:                                      ; preds = %if.else152.i, %if.then148.i
  %238 = ptrtoint ptr %outstanding_r2ts156.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %outstanding_r2ts156.i, align 8
  %dec157.i = add i32 %239, -1
  store i32 %dec157.i, ptr %outstanding_r2ts156.i, align 8
  br label %for.inc158.sink.split.i

for.inc158.sink.split.i:                          ; preds = %if.end155.i, %if.end139.i.for.inc158.sink.split.i_crit_edge
  tail call void @iscsit_free_r2t(ptr noundef %r2t.1289.i, ptr noundef %1) #4
  br label %for.inc158.i

for.inc158.i:                                     ; preds = %for.inc158.sink.split.i, %for.body123.i.for.inc158.i_crit_edge
  %cmp121.not.i = icmp eq ptr %.pn290.i, %cmd_r2t_list109.i
  br i1 %cmp121.not.i, label %for.inc158.i.iscsit_task_reassign_prepare_write.exit_crit_edge, label %for.inc158.i.for.body123.i_crit_edge

for.inc158.i.for.body123.i_crit_edge:             ; preds = %for.inc158.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body123.i

for.inc158.i.iscsit_task_reassign_prepare_write.exit_crit_edge: ; preds = %for.inc158.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %iscsit_task_reassign_prepare_write.exit

iscsit_task_reassign_prepare_write.exit:          ; preds = %for.inc158.i.iscsit_task_reassign_prepare_write.exit_crit_edge, %do.end.i, %drop_unacknowledged_r2ts.i.iscsit_task_reassign_prepare_write.exit_crit_edge, %if.else.i.iscsit_task_reassign_prepare_write.exit_crit_edge, %if.end3.i.iscsit_task_reassign_prepare_write.exit_crit_edge
  %r2t_lock.sink.i = phi ptr [ %r2t_lock107.i, %do.end.i ], [ %r2t_lock.i, %if.end3.i.iscsit_task_reassign_prepare_write.exit_crit_edge ], [ %r2t_lock107.i, %drop_unacknowledged_r2ts.i.iscsit_task_reassign_prepare_write.exit_crit_edge ], [ %r2t_lock107.i, %for.inc158.i.iscsit_task_reassign_prepare_write.exit_crit_edge ], [ %r2t_lock.i, %if.else.i.iscsit_task_reassign_prepare_write.exit_crit_edge ]
  %retval.4.i = phi i32 [ -1, %do.end.i ], [ -1, %if.end3.i.iscsit_task_reassign_prepare_write.exit_crit_edge ], [ 0, %drop_unacknowledged_r2ts.i.iscsit_task_reassign_prepare_write.exit_crit_edge ], [ 0, %for.inc158.i.iscsit_task_reassign_prepare_write.exit_crit_edge ], [ -1, %if.else.i.iscsit_task_reassign_prepare_write.exit_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock.sink.i) #4
  br label %cleanup

do.end55:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef %7) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %iscsit_task_reassign_prepare_write.exit, %do.end45, %do.end27, %land.lhs.true.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -1, %do.end27 ], [ -1, %do.end45 ], [ %retval.4.i, %iscsit_task_reassign_prepare_write.exit ], [ -1, %do.end55 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsit_task_reassign_complete_nop_out(ptr nocapture noundef readonly %tmr_req, ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_cmd = getelementptr inbounds %struct.iscsi_tmr_req, ptr %tmr_req, i32 0, i32 2
  %0 = ptrtoint ptr %ref_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ref_cmd, align 4
  %cr1 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 67
  %2 = ptrtoint ptr %cr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cr1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %init_task_tag, align 32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %5) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %exp_stat_sn = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %exp_stat_sn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %exp_stat_sn, align 4
  %stat_sn = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %stat_sn to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %stat_sn, align 16
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %8 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sess, align 4
  %conn_recovery_cmd_lock.i = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %conn_recovery_cmd_lock.i) #4
  %call.i = tail call i32 @iscsit_remove_cmd_from_connection_recovery(ptr noundef %1, ptr noundef %9) #4
  tail call void @_raw_spin_unlock(ptr noundef %conn_recovery_cmd_lock.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end.iscsit_task_reassign_remove_cmd.exit_crit_edge

if.end.iscsit_task_reassign_remove_cmd.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %iscsit_task_reassign_remove_cmd.exit

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_task_reassign_remove_cmd.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_task_reassign_complete_nop_out, %if.then6.i)) #4
          to label %do.end.i [label %if.then6.i], !srcloc !123

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %3, align 128
  %conv.i = zext i16 %11 to i32
  %sid.i = getelementptr inbounds %struct.iscsi_session, ptr %9, i32 0, i32 15
  %12 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sid.i, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_task_reassign_remove_cmd.__UNIQUE_ID_ddebug222, ptr noundef nonnull @.str.49, i32 noundef %conv.i, i32 noundef %13) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %call7.i = tail call i32 @iscsit_remove_active_connection_recovery_entry(ptr noundef nonnull %3, ptr noundef %9) #4
  br label %iscsit_task_reassign_remove_cmd.exit

iscsit_task_reassign_remove_cmd.exit:             ; preds = %do.end.i, %if.end.iscsit_task_reassign_remove_cmd.exit_crit_edge
  %cmd_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 46
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #4
  %i_conn_node = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 69
  %conn_cmd_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 56
  %prev.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 56, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %i_conn_node, ptr noundef %15, ptr noundef %conn_cmd_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %iscsit_task_reassign_remove_cmd.exit.list_add_tail.exit_crit_edge

iscsit_task_reassign_remove_cmd.exit.list_add_tail.exit_crit_edge: ; preds = %iscsit_task_reassign_remove_cmd.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %iscsit_task_reassign_remove_cmd.exit
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %i_conn_node, ptr %prev.i, align 4
  %17 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %conn_cmd_list, ptr %i_conn_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 69, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %i_conn_node, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %iscsit_task_reassign_remove_cmd.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #4
  %i_state = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 17, ptr %i_state, align 4
  %call5 = tail call i32 @iscsit_add_cmd_to_response_queue(ptr noundef %1, ptr noundef %conn, i8 noundef zeroext 17) #4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsit_task_reassign_complete_scsi_cmnd(ptr nocapture noundef readonly %tmr_req, ptr noundef %conn) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_cmd = getelementptr inbounds %struct.iscsi_tmr_req, ptr %tmr_req, i32 0, i32 2
  %0 = ptrtoint ptr %ref_cmd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ref_cmd, align 4
  %cr1 = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 67
  %2 = ptrtoint ptr %cr1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cr1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %init_task_tag, align 32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %5) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %exp_stat_sn = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %exp_stat_sn to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %exp_stat_sn, align 4
  %stat_sn = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %stat_sn to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %stat_sn, align 16
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 68
  %8 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sess, align 4
  %conn_recovery_cmd_lock.i = getelementptr inbounds %struct.iscsi_conn_recovery, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %conn_recovery_cmd_lock.i) #4
  %call.i = tail call i32 @iscsit_remove_cmd_from_connection_recovery(ptr noundef %1, ptr noundef %9) #4
  tail call void @_raw_spin_unlock(ptr noundef %conn_recovery_cmd_lock.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end.iscsit_task_reassign_remove_cmd.exit_crit_edge

if.end.iscsit_task_reassign_remove_cmd.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %iscsit_task_reassign_remove_cmd.exit

do.body.i:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_task_reassign_remove_cmd.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_task_reassign_complete_scsi_cmnd, %if.then6.i)) #4
          to label %do.end.i [label %if.then6.i], !srcloc !123

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %3, align 128
  %conv.i = zext i16 %11 to i32
  %sid.i = getelementptr inbounds %struct.iscsi_session, ptr %9, i32 0, i32 15
  %12 = ptrtoint ptr %sid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sid.i, align 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_task_reassign_remove_cmd.__UNIQUE_ID_ddebug222, ptr noundef nonnull @.str.49, i32 noundef %conv.i, i32 noundef %13) #4
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %do.body.i
  %call7.i = tail call i32 @iscsit_remove_active_connection_recovery_entry(ptr noundef nonnull %3, ptr noundef %9) #4
  br label %iscsit_task_reassign_remove_cmd.exit

iscsit_task_reassign_remove_cmd.exit:             ; preds = %do.end.i, %if.end.iscsit_task_reassign_remove_cmd.exit_crit_edge
  %cmd_lock = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 46
  tail call void @_raw_spin_lock_bh(ptr noundef %cmd_lock) #4
  %i_conn_node = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 69
  %conn_cmd_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 56
  %prev.i = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 56, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %i_conn_node, ptr noundef %15, ptr noundef %conn_cmd_list) #4
  br i1 %call.i.i, label %if.end.i.i, label %iscsit_task_reassign_remove_cmd.exit.list_add_tail.exit_crit_edge

iscsit_task_reassign_remove_cmd.exit.list_add_tail.exit_crit_edge: ; preds = %iscsit_task_reassign_remove_cmd.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %iscsit_task_reassign_remove_cmd.exit
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %i_conn_node, ptr %prev.i, align 4
  %17 = ptrtoint ptr %i_conn_node to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %conn_cmd_list, ptr %i_conn_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 69, i32 1
  %18 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %i_conn_node, ptr %15, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %iscsit_task_reassign_remove_cmd.exit.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %cmd_lock) #4
  %se_cmd_flags = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 70, i32 11
  %20 = ptrtoint ptr %se_cmd_flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %se_cmd_flags, align 16
  %and = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #6
  %i_state = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 29, ptr %i_state, align 4
  %call7 = tail call i32 @iscsit_add_cmd_to_response_queue(ptr noundef %1, ptr noundef %conn, i8 noundef zeroext 29) #4
  br label %cleanup

if.end8:                                          ; preds = %list_add_tail.exit
  %data_direction = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 46
  %23 = ptrtoint ptr %data_direction to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_direction, align 8
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %24, label %do.end16 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 3, label %sw.bb12
  ]

sw.bb:                                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call fastcc i32 @iscsit_task_reassign_complete_write(ptr noundef %1, ptr noundef %tmr_req)
  br label %cleanup

sw.bb10:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call fastcc i32 @iscsit_task_reassign_complete_read(ptr noundef %1, ptr noundef %tmr_req)
  br label %cleanup

sw.bb12:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %conn1.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 66
  %26 = ptrtoint ptr %conn1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %conn1.i, align 8
  %i_state.i = getelementptr inbounds %struct.iscsi_cmd, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %i_state.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 29, ptr %i_state.i, align 4
  %call.i43 = tail call i32 @iscsit_add_cmd_to_response_queue(ptr noundef %1, ptr noundef %27, i8 noundef zeroext 29) #4
  br label %cleanup

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %24) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %sw.bb12, %sw.bb10, %sw.bb, %if.then5, %do.end
  %retval.0 = phi i32 [ 0, %if.then5 ], [ -1, %do.end16 ], [ 0, %sw.bb12 ], [ %call11, %sw.bb10 ], [ %call9, %sw.bb ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_add_cmd_to_response_queue(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_remove_cmd_from_connection_recovery(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_remove_active_connection_recovery_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsit_task_reassign_complete_write(ptr noundef %cmd, ptr nocapture noundef readonly %tmr_req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %se_cmd2 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70
  %exp_data_sn = getelementptr inbounds %struct.iscsi_tmr_req, ptr %tmr_req, i32 0, i32 1
  %2 = ptrtoint ptr %exp_data_sn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %exp_data_sn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cmd_flags = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 15
  %4 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_flags, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %5, -3
  %6 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %cmd_flags, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %5, 2
  %7 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %cmd_flags, align 4
  %8 = ptrtoint ptr %exp_data_sn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %exp_data_sn, align 4
  %sub = add i32 %9, -1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sub.sink = phi i32 [ 0, %if.then ], [ %sub, %if.else ]
  %10 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 23
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.sink, ptr %10, align 4
  %cmd_flags6 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 15
  %12 = ptrtoint ptr %cmd_flags6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cmd_flags6, align 4
  %and7 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end23, label %if.then9

if.then9:                                         ; preds = %if.end
  %transport_state = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 34
  %14 = ptrtoint ptr %transport_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transport_state, align 4
  %and11 = and i32 %15, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %do.body, label %if.end20

do.body:                                          ; preds = %if.then9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_task_reassign_complete_write.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_task_reassign_complete_write, %if.then17)) #4
          to label %do.end [label %if.then17], !srcloc !123

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %16 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %init_task_tag, align 32
  %t_state = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 10
  %18 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %t_state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_task_reassign_complete_write.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.55, i32 noundef %17, i32 noundef %19) #4
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  tail call void @target_execute_cmd(ptr noundef %se_cmd2) #4
  br label %cleanup

if.end20:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  %i_state = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 4
  %20 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 29, ptr %i_state, align 4
  %call22 = tail call i32 @iscsit_add_cmd_to_response_queue(ptr noundef %cmd, ptr noundef %1, i8 noundef zeroext 29) #4
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %unsolicited_data = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 12
  %21 = ptrtoint ptr %unsolicited_data to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %unsolicited_data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool24.not = icmp eq i8 %22, 0
  br i1 %tobool24.not, label %if.end23.if.end50_crit_edge, label %if.then25

if.end23.if.end50_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then25:                                        ; preds = %if.end23
  %23 = ptrtoint ptr %unsolicited_data to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %unsolicited_data, align 1
  %write_data_done = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 40
  %24 = ptrtoint ptr %write_data_done to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %write_data_done, align 128
  %next_burst_len = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 42
  %26 = ptrtoint ptr %next_burst_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %next_burst_len, align 8
  %sess = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 68
  %27 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sess, align 4
  %sess_ops = getelementptr inbounds %struct.iscsi_session, ptr %28, i32 0, i32 47
  %29 = ptrtoint ptr %sess_ops to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sess_ops, align 8
  %FirstBurstLength = getelementptr inbounds %struct.iscsi_sess_ops, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %FirstBurstLength to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %FirstBurstLength, align 4
  %sub27 = sub i32 %32, %25
  %data_length = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %33 = ptrtoint ptr %data_length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub27, i32 %34)
  %cmp.not = icmp ult i32 %sub27, %34
  %sub33 = sub i32 %34, %25
  %length.0 = select i1 %cmp.not, i32 %sub27, i32 %sub33
  %r2t_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 54
  tail call void @_raw_spin_lock_bh(ptr noundef %r2t_lock) #4
  %call40 = tail call i32 @iscsit_add_r2t_to_list(ptr noundef %cmd, i32 noundef %25, i32 noundef %length.0, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock) #4
  br label %cleanup

if.end45:                                         ; preds = %if.then25
  %outstanding_r2ts = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 26
  %35 = ptrtoint ptr %outstanding_r2ts to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %outstanding_r2ts, align 8
  %inc = add i32 %36, 1
  store i32 %inc, ptr %outstanding_r2ts, align 8
  tail call void @_raw_spin_unlock_bh(ptr noundef %r2t_lock) #4
  br i1 %cmp.not, label %if.end45.if.end50_crit_edge, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.end50:                                         ; preds = %if.end45.if.end50_crit_edge, %if.end23.if.end50_crit_edge
  %conn_transport = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 61
  %37 = ptrtoint ptr %conn_transport to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %conn_transport, align 8
  %iscsit_get_dataout = getelementptr inbounds %struct.iscsit_transport, ptr %38, i32 0, i32 15
  %39 = ptrtoint ptr %iscsit_get_dataout to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iscsit_get_dataout, align 4
  %call51 = tail call i32 %40(ptr noundef %1, ptr noundef %cmd, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end45.cleanup_crit_edge, %if.then43, %if.end20, %do.end
  %retval.0 = phi i32 [ 0, %if.end20 ], [ 0, %do.end ], [ -1, %if.then43 ], [ %call51, %if.end50 ], [ 0, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsit_task_reassign_complete_read(ptr noundef %cmd, ptr nocapture noundef readonly %tmr_req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %conn1 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 66
  %0 = ptrtoint ptr %conn1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %conn1, align 8
  %se_cmd2 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70
  %exp_data_sn = getelementptr inbounds %struct.iscsi_tmr_req, ptr %tmr_req, i32 0, i32 1
  %2 = ptrtoint ptr %exp_data_sn to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %exp_data_sn, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cmd_flags = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 15
  %4 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_flags, align 4
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %5, -3
  %6 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %cmd_flags, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %5, 2
  %7 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %cmd_flags, align 4
  %8 = ptrtoint ptr %exp_data_sn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %exp_data_sn, align 4
  %sub = add i32 %9, -1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %sub.sink = phi i32 [ 0, %if.then ], [ %sub, %if.else ]
  %10 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 23
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.sink, ptr %10, align 4
  %transport_state = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 34
  %12 = ptrtoint ptr %transport_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transport_state, align 4
  %and7 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body, label %if.end17

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_task_reassign_complete_read.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_task_reassign_complete_read, %if.then13)) #4
          to label %do.end [label %if.then13], !srcloc !123

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %14 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %init_task_tag, align 32
  %t_state = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 10
  %16 = ptrtoint ptr %t_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t_state, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_task_reassign_complete_read.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.57, i32 noundef %15, i32 noundef %17) #4
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %call16 = tail call i32 @transport_handle_cdb_direct(ptr noundef %se_cmd2) #4
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %and19 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.end24, label %if.end30

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %init_task_tag26 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %18 = ptrtoint ptr %init_task_tag26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %init_task_tag26, align 32
  %t_state28 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 10
  %20 = ptrtoint ptr %t_state28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t_state28, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %19, i32 noundef %21) #7
  br label %cleanup

if.end30:                                         ; preds = %if.end17
  %call31 = tail call ptr @iscsit_allocate_datain_req() #4
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %if.end34

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %exp_data_sn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %exp_data_sn, align 4
  %begrun = getelementptr inbounds %struct.iscsi_datain_req, ptr %call31, i32 0, i32 3
  %24 = ptrtoint ptr %begrun to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %begrun, align 4
  %data_sn = getelementptr inbounds %struct.iscsi_datain_req, ptr %call31, i32 0, i32 7
  %25 = ptrtoint ptr %data_sn to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %23, ptr %data_sn, align 4
  %runlength = getelementptr inbounds %struct.iscsi_datain_req, ptr %call31, i32 0, i32 4
  %26 = ptrtoint ptr %runlength to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %runlength, align 16
  %generate_recovery_values = getelementptr inbounds %struct.iscsi_datain_req, ptr %call31, i32 0, i32 1
  %27 = ptrtoint ptr %generate_recovery_values to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %generate_recovery_values, align 4
  %recovery = getelementptr inbounds %struct.iscsi_datain_req, ptr %call31, i32 0, i32 2
  %28 = ptrtoint ptr %recovery to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %recovery, align 8
  tail call void @iscsit_attach_datain_req(ptr noundef %cmd, ptr noundef nonnull %call31) #4
  %i_state = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 4
  %29 = ptrtoint ptr %i_state to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 12, ptr %i_state, align 4
  %call37 = tail call i32 @iscsit_add_cmd_to_response_queue(ptr noundef %cmd, ptr noundef %1, i8 noundef zeroext 12) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end30.cleanup_crit_edge, %do.end24, %do.end
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -1, %do.end24 ], [ 0, %do.end ], [ -1, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @target_execute_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_add_r2t_to_list(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @transport_handle_cdb_direct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_allocate_datain_req() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_attach_datain_req(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_get_seq_holder(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsit_free_r2t(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 42, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @iscsit_tmr_abort_task._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @iscsit_tmr_abort_task._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 49, i32 3}
!8 = !{ptr @iscsit_tmr_abort_task._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @iscsit_tmr_abort_task._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 74, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @iscsit_tmr_task_warm_reset._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @iscsit_tmr_task_warm_reset._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 94, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @iscsit_tmr_task_cold_reset._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @iscsit_tmr_task_cold_reset._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 117, i32 2}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @iscsit_tmr_task_reassign.__UNIQUE_ID_ddebug221, !21, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 122, i32 3}
!27 = !{ptr @iscsit_tmr_task_reassign._entry, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @iscsit_tmr_task_reassign._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 129, i32 3}
!31 = !{ptr @iscsit_tmr_task_reassign._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @iscsit_tmr_task_reassign._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 133, i32 3}
!35 = !{ptr @iscsit_tmr_task_reassign._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @iscsit_tmr_task_reassign._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 143, i32 3}
!39 = !{ptr @iscsit_tmr_task_reassign._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @iscsit_tmr_task_reassign._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 150, i32 3}
!43 = !{ptr @iscsit_tmr_task_reassign._entry.23, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @iscsit_tmr_task_reassign._entry_ptr.25, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.27, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 158, i32 3}
!47 = !{ptr @iscsit_tmr_task_reassign._entry.26, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @iscsit_tmr_task_reassign._entry_ptr.28, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @__ksymtab_iscsit_tmr_post_handler, !50, !"__ksymtab_iscsit_tmr_post_handler", i1 false, i1 false}
!50 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 465, i32 1}
!51 = !{ptr @.str.29, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 802, i32 4}
!53 = !{ptr @.str.30, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @iscsit_check_task_reassign_expdatasn._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @iscsit_check_task_reassign_expdatasn._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 810, i32 4}
!58 = !{ptr @iscsit_check_task_reassign_expdatasn._entry.31, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @iscsit_check_task_reassign_expdatasn._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.35, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 828, i32 4}
!62 = !{ptr @iscsit_check_task_reassign_expdatasn._entry.34, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @iscsit_check_task_reassign_expdatasn._entry_ptr.36, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.38, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 837, i32 2}
!66 = !{ptr @iscsit_check_task_reassign_expdatasn._entry.37, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @iscsit_check_task_reassign_expdatasn._entry_ptr.39, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 419, i32 3}
!70 = !{ptr @.str.41, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @iscsit_task_reassign_complete._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @iscsit_task_reassign_complete._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 434, i32 4}
!75 = !{ptr @iscsit_task_reassign_complete._entry.42, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @iscsit_task_reassign_complete._entry_ptr.44, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 442, i32 2}
!79 = !{ptr @iscsit_task_reassign_complete.__UNIQUE_ID_ddebug225, !78, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 202, i32 3}
!82 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @iscsit_task_reassign_complete_nop_out._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @iscsit_task_reassign_complete_nop_out._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 188, i32 3}
!87 = !{ptr @.str.49, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @iscsit_task_reassign_remove_cmd.__UNIQUE_ID_ddebug222, !86, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!89 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 370, i32 3}
!91 = !{ptr @iscsit_task_reassign_complete_scsi_cmnd._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @iscsit_task_reassign_complete_scsi_cmnd._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.52, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 403, i32 3}
!95 = !{ptr @iscsit_task_reassign_complete_scsi_cmnd._entry.51, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @iscsit_task_reassign_complete_scsi_cmnd._entry_ptr.53, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.54, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 253, i32 4}
!99 = !{ptr @.str.55, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @iscsit_task_reassign_complete_write.__UNIQUE_ID_ddebug223, !98, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!101 = !{ptr @.str.56, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 318, i32 3}
!103 = !{ptr @.str.57, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @iscsit_task_reassign_complete_read.__UNIQUE_ID_ddebug224, !102, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!105 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 326, i32 3}
!107 = !{ptr @iscsit_task_reassign_complete_read._entry, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @iscsit_task_reassign_complete_read._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/target/iscsi/iscsi_target_tmr.c", i32 730, i32 4}
!111 = !{ptr @.str.60, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @iscsit_task_reassign_prepare_write._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @iscsit_task_reassign_prepare_write._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i64 2148271678, i64 2148271683, i64 2148271696, i64 2148271740, i64 2148271774, i64 2148271795}
