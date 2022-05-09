; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/iscsi_target_nodeattrib.c_pt.bc'
source_filename = "../drivers/target/iscsi/iscsi_target_nodeattrib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.iscsi_node_acl = type { %struct.se_node_acl, %struct.iscsi_node_attrib, %struct.iscsi_node_auth, %struct.iscsi_node_stat_grps }
%struct.se_node_acl = type { [224 x i8], i8, i8, i32, i32, i32, [64 x i8], %struct.atomic_t, %struct.hlist_head, ptr, ptr, %struct.mutex, %struct.spinlock, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.list_head, %struct.list_head, %struct.completion, %struct.kref }
%struct.hlist_head = type { ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.config_group = type { %struct.config_item, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.config_item = type { ptr, [20 x i8], %struct.kref, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.iscsi_node_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr }
%struct.iscsi_node_auth = type { i32, i32, i32, [256 x i8], [256 x i8], [256 x i8], [256 x i8] }
%struct.iscsi_node_stat_grps = type { %struct.config_group, %struct.config_group }
%struct.iscsi_portal_group = type { i8, i32, i16, i16, i32, i32, i32, %struct.spinlock, %struct.spinlock, %struct.se_portal_group, %struct.mutex, %struct.semaphore, %struct.iscsi_tpg_attrib, %struct.iscsi_node_auth, ptr, ptr, %struct.list_head, %struct.list_head, [92 x i8] }
%struct.se_portal_group = type { i32, i8, %struct.atomic_t, %struct.mutex, %struct.spinlock, %struct.mutex, %struct.list_head, %struct.hlist_head, ptr, %struct.list_head, ptr, ptr, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.iscsi_tpg_attrib = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr }
%struct.se_session = type { %struct.atomic_t, i64, i32, i32, ptr, ptr, ptr, %struct.percpu_ref, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, %struct.completion, ptr, %struct.sbitmap_queue }
%struct.percpu_ref = type { i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.iscsi_session = type { i8, [6 x i8], i32, i8, i16, i16, i16, i32, i32, i32, i32, %struct.mutex, i32, %struct.atomic_t, %struct.list_head, i32, [8 x i8], i32, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i64, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.completion, %struct.completion, %struct.completion, %struct.completion, %struct.timer_list, ptr, ptr, ptr, [12 x i8] }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@iscsit_na_dataout_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013Requested DataOut Timeout %u larger than maximum %u\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iscsit_na_dataout_timeout\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/target/iscsi/iscsi_target_nodeattrib.c\00", [49 x i8] zeroinitializer }, align 32
@iscsit_na_dataout_timeout._entry_ptr = internal global ptr @iscsit_na_dataout_timeout._entry, section ".printk_index", align 4
@iscsit_na_dataout_timeout._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Requested DataOut Timeout %u smaller than minimum %u\0A\00", [40 x i8] zeroinitializer }, align 32
@iscsit_na_dataout_timeout._entry_ptr.5 = internal global ptr @iscsit_na_dataout_timeout._entry.3, section ".printk_index", align 4
@iscsit_na_dataout_timeout.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iscsi_target_mod\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Set DataOut Timeout to %u for Initiator Node %s\0A\00", [47 x i8] zeroinitializer }, align 32
@iscsit_na_dataout_timeout_retries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013Requested DataOut Timeout Retries %u larger than maximum %u\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iscsit_na_dataout_timeout_retries\00", [62 x i8] zeroinitializer }, align 32
@iscsit_na_dataout_timeout_retries._entry_ptr = internal global ptr @iscsit_na_dataout_timeout_retries._entry, section ".printk_index", align 4
@iscsit_na_dataout_timeout_retries._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013Requested DataOut Timeout Retries %u smaller than minimum %u\00", [33 x i8] zeroinitializer }, align 32
@iscsit_na_dataout_timeout_retries._entry_ptr.12 = internal global ptr @iscsit_na_dataout_timeout_retries._entry.10, section ".printk_index", align 4
@iscsit_na_dataout_timeout_retries.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"Set DataOut Timeout Retries to %u for Initiator Node %s\0A\00", [39 x i8] zeroinitializer }, align 32
@iscsit_na_nopin_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Requested NopIn Timeout %u larger than maximum %u\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iscsit_na_nopin_timeout\00", [40 x i8] zeroinitializer }, align 32
@iscsit_na_nopin_timeout._entry_ptr = internal global ptr @iscsit_na_nopin_timeout._entry, section ".printk_index", align 4
@iscsit_na_nopin_timeout._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013Requested NopIn Timeout %u smaller than minimum %u and not 0\0A\00", [32 x i8] zeroinitializer }, align 32
@iscsit_na_nopin_timeout._entry_ptr.18 = internal global ptr @iscsit_na_nopin_timeout._entry.16, section ".printk_index", align 4
@iscsit_na_nopin_timeout.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.15, ptr @.str.2, ptr @.str.19, i8 0, i8 30, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Set NopIn Timeout to %u for Initiator Node %s\0A\00", [49 x i8] zeroinitializer }, align 32
@iscsit_na_nopin_response_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013Requested NopIn Response Timeout %u larger than maximum %u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iscsit_na_nopin_response_timeout\00", [63 x i8] zeroinitializer }, align 32
@iscsit_na_nopin_response_timeout._entry_ptr = internal global ptr @iscsit_na_nopin_response_timeout._entry, section ".printk_index", align 4
@iscsit_na_nopin_response_timeout._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013Requested NopIn Response Timeout %u smaller than minimum %u\0A\00", [33 x i8] zeroinitializer }, align 32
@iscsit_na_nopin_response_timeout._entry_ptr.24 = internal global ptr @iscsit_na_nopin_response_timeout._entry.22, section ".printk_index", align 4
@iscsit_na_nopin_response_timeout.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.21, ptr @.str.2, ptr @.str.25, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Set NopIn Response Timeout to %u for Initiator Node %s\0A\00", [40 x i8] zeroinitializer }, align 32
@iscsit_na_random_datain_pdu_offsets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013Requested Random DataIN PDU Offsets: %u not 0 or 1\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"iscsit_na_random_datain_pdu_offsets\00", [60 x i8] zeroinitializer }, align 32
@iscsit_na_random_datain_pdu_offsets._entry_ptr = internal global ptr @iscsit_na_random_datain_pdu_offsets._entry, section ".printk_index", align 4
@iscsit_na_random_datain_pdu_offsets.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 47, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Set Random DataIN PDU Offsets to %u for Initiator Node %s\0A\00", [37 x i8] zeroinitializer }, align 32
@iscsit_na_random_datain_seq_offsets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013Requested Random DataIN Sequence Offsets: %u not 0 or 1\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"iscsit_na_random_datain_seq_offsets\00", [60 x i8] zeroinitializer }, align 32
@iscsit_na_random_datain_seq_offsets._entry_ptr = internal global ptr @iscsit_na_random_datain_seq_offsets._entry, section ".printk_index", align 4
@iscsit_na_random_datain_seq_offsets.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 0, i8 52, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Set Random DataIN Sequence Offsets to %u for Initiator Node %s\0A\00", [32 x i8] zeroinitializer }, align 32
@iscsit_na_random_r2t_offsets._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Requested Random R2T Offsets: %u not 0 or 1\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iscsit_na_random_r2t_offsets\00", [35 x i8] zeroinitializer }, align 32
@iscsit_na_random_r2t_offsets._entry_ptr = internal global ptr @iscsit_na_random_r2t_offsets._entry, section ".printk_index", align 4
@iscsit_na_random_r2t_offsets.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 57, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Set Random R2T Offsets to %u for Initiator Node %s\0A\00", [44 x i8] zeroinitializer }, align 32
@iscsit_na_default_erl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Requested default ERL: %u not 0, 1, or 2\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iscsit_na_default_erl\00", [42 x i8] zeroinitializer }, align 32
@iscsit_na_default_erl._entry_ptr = internal global ptr @iscsit_na_default_erl._entry, section ".printk_index", align 4
@iscsit_na_default_erl.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Set use ERL0 flag to %u for Initiator Node %s\0A\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 50, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 55, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 62, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 75, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 80, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 87, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 106, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 111, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 118, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 156, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 161, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 168, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 182, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 188, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 202, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 208, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 222, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 228, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 242, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.162 = private constant [50 x i8] c"../drivers/target/iscsi/iscsi_target_nodeattrib.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 248, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @iscsit_na_dataout_timeout._entry, ptr @iscsit_na_dataout_timeout._entry.3, ptr @iscsit_na_dataout_timeout._entry_ptr, ptr @iscsit_na_dataout_timeout._entry_ptr.5, ptr @iscsit_na_dataout_timeout_retries._entry, ptr @iscsit_na_dataout_timeout_retries._entry.10, ptr @iscsit_na_dataout_timeout_retries._entry_ptr, ptr @iscsit_na_dataout_timeout_retries._entry_ptr.12, ptr @iscsit_na_default_erl._entry, ptr @iscsit_na_default_erl._entry_ptr, ptr @iscsit_na_nopin_response_timeout._entry, ptr @iscsit_na_nopin_response_timeout._entry.22, ptr @iscsit_na_nopin_response_timeout._entry_ptr, ptr @iscsit_na_nopin_response_timeout._entry_ptr.24, ptr @iscsit_na_nopin_timeout._entry, ptr @iscsit_na_nopin_timeout._entry.16, ptr @iscsit_na_nopin_timeout._entry_ptr, ptr @iscsit_na_nopin_timeout._entry_ptr.18, ptr @iscsit_na_random_datain_pdu_offsets._entry, ptr @iscsit_na_random_datain_pdu_offsets._entry_ptr, ptr @iscsit_na_random_datain_seq_offsets._entry, ptr @iscsit_na_random_datain_seq_offsets._entry_ptr, ptr @iscsit_na_random_r2t_offsets._entry, ptr @iscsit_na_random_r2t_offsets._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_na_dataout_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_na_dataout_timeout._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_na_dataout_timeout_retries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_na_dataout_timeout_retries._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_na_nopin_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_na_nopin_timeout._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_na_nopin_response_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_na_nopin_response_timeout._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_na_random_datain_pdu_offsets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_na_random_datain_seq_offsets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_na_random_r2t_offsets._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_na_default_erl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @iscsit_set_default_node_attribues(ptr nocapture noundef writeonly %acl, ptr nocapture noundef readonly %tpg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %node_attrib = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1
  %0 = ptrtoint ptr %node_attrib to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %node_attrib, align 4
  %dataout_timeout_retries = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %dataout_timeout_retries to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 5, ptr %dataout_timeout_retries, align 4
  %nopin_timeout = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %nopin_timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 15, ptr %nopin_timeout, align 4
  %nopin_response_timeout = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %nopin_response_timeout to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 30, ptr %nopin_response_timeout, align 4
  %random_datain_pdu_offsets = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %random_datain_pdu_offsets to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %random_datain_pdu_offsets, align 4
  %random_datain_seq_offsets = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 6
  %5 = ptrtoint ptr %random_datain_seq_offsets to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %random_datain_seq_offsets, align 4
  %random_r2t_offsets = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %random_r2t_offsets to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %random_r2t_offsets, align 4
  %default_erl = getelementptr inbounds %struct.iscsi_portal_group, ptr %tpg, i32 0, i32 12, i32 9
  %7 = ptrtoint ptr %default_erl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %default_erl, align 4
  %default_erl1 = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %default_erl1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %default_erl1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_na_dataout_timeout(ptr noundef %acl, i32 noundef %dataout_timeout) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %node_attrib = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %dataout_timeout)
  %cmp = icmp ugt i32 %dataout_timeout, 60
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %dataout_timeout, i32 noundef 60) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dataout_timeout)
  %cmp1 = icmp ult i32 %dataout_timeout, 2
  br i1 %cmp1, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %dataout_timeout, i32 noundef 2) #7
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %node_attrib to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dataout_timeout, ptr %node_attrib, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_na_dataout_timeout.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_na_dataout_timeout, %if.then15)) #4
          to label %cleanup [label %if.then15], !srcloc !91

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %node_attrib to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %node_attrib, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_na_dataout_timeout.__UNIQUE_ID_ddebug221, ptr noundef nonnull @.str.7, i32 noundef %2, ptr noundef %acl) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end8, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end5 ], [ 0, %if.then15 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_na_dataout_timeout_retries(ptr noundef %acl, i32 noundef %dataout_timeout_retries) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %dataout_timeout_retries)
  %cmp = icmp ugt i32 %dataout_timeout_retries, 15
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %dataout_timeout_retries, i32 noundef 15) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dataout_timeout_retries)
  %cmp1 = icmp eq i32 %dataout_timeout_retries, 0
  br i1 %cmp1, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef 1) #7
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %dataout_timeout_retries9 = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dataout_timeout_retries9 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dataout_timeout_retries, ptr %dataout_timeout_retries9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_na_dataout_timeout_retries.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_na_dataout_timeout_retries, %if.then15)) #4
          to label %cleanup [label %if.then15], !srcloc !91

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %dataout_timeout_retries9 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dataout_timeout_retries9, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_na_dataout_timeout_retries.__UNIQUE_ID_ddebug222, ptr noundef nonnull @.str.13, i32 noundef %2, ptr noundef %acl) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end8, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end5 ], [ 0, %if.then15 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_na_nopin_timeout(ptr noundef %acl, i32 noundef %nopin_timeout) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %nacl = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 10
  %0 = ptrtoint ptr %nacl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nacl, align 4
  %nopin_timeout1 = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %nopin_timeout1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nopin_timeout1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %nopin_timeout)
  %cmp = icmp ugt i32 %nopin_timeout, 60
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %nopin_timeout, i32 noundef 60) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %4 = add nsw i32 %nopin_timeout, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %4)
  %5 = icmp ult i32 %4, -2
  br i1 %5, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %nopin_timeout, i32 noundef 3) #7
  br label %cleanup

if.end10:                                         ; preds = %if.else
  %6 = ptrtoint ptr %nopin_timeout1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %nopin_timeout, ptr %nopin_timeout1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_na_nopin_timeout.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_na_nopin_timeout, %if.then17)) #4
          to label %do.end22 [label %if.then17], !srcloc !91

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %nopin_timeout1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nopin_timeout1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_na_nopin_timeout.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.19, i32 noundef %8, ptr noundef %acl) #4
  br label %do.end22

do.end22:                                         ; preds = %if.then17, %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool23.not = icmp eq i32 %3, 0
  br i1 %tobool23.not, label %if.then24, label %do.end22.cleanup_crit_edge

do.end22.cleanup_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then24:                                        ; preds = %do.end22
  %nacl_sess_lock = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %nacl_sess_lock) #4
  %nacl_sess = getelementptr inbounds %struct.se_node_acl, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %nacl_sess to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nacl_sess, align 4
  %tobool25.not = icmp eq ptr %10, null
  br i1 %tobool25.not, label %if.then24.if.end43_crit_edge, label %if.then26

if.then24.if.end43_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end43

if.then26:                                        ; preds = %if.then24
  %fabric_sess_ptr = getelementptr inbounds %struct.se_session, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %fabric_sess_ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fabric_sess_ptr, align 8
  %conn_lock = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 37
  tail call void @_raw_spin_lock(ptr noundef %conn_lock) #4
  %sess_conn_list = getelementptr inbounds %struct.iscsi_session, ptr %12, i32 0, i32 34
  %13 = ptrtoint ptr %sess_conn_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn72 = load ptr, ptr %sess_conn_list, align 4
  %cmp29.not74 = icmp eq ptr %.pn72, %sess_conn_list
  br i1 %cmp29.not74, label %if.then26.for.end_crit_edge, label %if.then26.for.body_crit_edge

if.then26.for.body_crit_edge:                     ; preds = %if.then26
  br label %for.body

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then26.for.body_crit_edge
  %.pn75 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn72, %if.then26.for.body_crit_edge ]
  %conn_state = getelementptr i8, ptr %.pn75, i32 -1423
  %14 = ptrtoint ptr %conn_state to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %conn_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %15)
  %cmp32.not = icmp eq i8 %15, 5
  br i1 %cmp32.not, label %if.end35, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end35:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %conn.076 = getelementptr i8, ptr %.pn75, i32 -1476
  %nopin_timer_lock = getelementptr i8, ptr %.pn75, i32 -288
  tail call void @_raw_spin_lock(ptr noundef %nopin_timer_lock) #4
  tail call void @__iscsit_start_nopin_timer(ptr noundef %conn.076) #4
  tail call void @_raw_spin_unlock(ptr noundef %nopin_timer_lock) #4
  br label %for.inc

for.inc:                                          ; preds = %if.end35, %for.body.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn75 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn75, align 4
  %cmp29.not = icmp eq ptr %.pn, %sess_conn_list
  br i1 %cmp29.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then26.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %conn_lock) #4
  br label %if.end43

if.end43:                                         ; preds = %for.end, %if.then24.if.end43_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %nacl_sess_lock) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end22.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end7 ], [ 0, %if.end43 ], [ 0, %do.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__iscsit_start_nopin_timer(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_na_nopin_response_timeout(ptr noundef %acl, i32 noundef %nopin_response_timeout) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %nopin_response_timeout)
  %cmp = icmp ugt i32 %nopin_response_timeout, 60
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %nopin_response_timeout, i32 noundef 60) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %nopin_response_timeout)
  %cmp1 = icmp ult i32 %nopin_response_timeout, 3
  br i1 %cmp1, label %do.end5, label %if.end8

do.end5:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %nopin_response_timeout, i32 noundef 3) #7
  br label %cleanup

if.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %nopin_response_timeout9 = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %nopin_response_timeout9 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %nopin_response_timeout, ptr %nopin_response_timeout9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_na_nopin_response_timeout.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_na_nopin_response_timeout, %if.then15)) #4
          to label %cleanup [label %if.then15], !srcloc !91

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %nopin_timeout = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %nopin_timeout to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nopin_timeout, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_na_nopin_response_timeout.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.25, i32 noundef %2, ptr noundef %acl) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end8, %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end5 ], [ 0, %if.then15 ], [ 0, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_na_random_datain_pdu_offsets(ptr noundef %acl, i32 noundef %random_datain_pdu_offsets) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %random_datain_pdu_offsets)
  %switch = icmp ult i32 %random_datain_pdu_offsets, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %random_datain_pdu_offsets) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %random_datain_pdu_offsets2 = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %random_datain_pdu_offsets2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %random_datain_pdu_offsets, ptr %random_datain_pdu_offsets2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_na_random_datain_pdu_offsets.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_na_random_datain_pdu_offsets, %if.then8)) #4
          to label %cleanup [label %if.then8], !srcloc !91

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %random_datain_pdu_offsets2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %random_datain_pdu_offsets2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_na_random_datain_pdu_offsets.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.28, i32 noundef %2, ptr noundef %acl) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then8 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_na_random_datain_seq_offsets(ptr noundef %acl, i32 noundef %random_datain_seq_offsets) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %random_datain_seq_offsets)
  %switch = icmp ult i32 %random_datain_seq_offsets, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %random_datain_seq_offsets) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %random_datain_seq_offsets2 = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 6
  %0 = ptrtoint ptr %random_datain_seq_offsets2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %random_datain_seq_offsets, ptr %random_datain_seq_offsets2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_na_random_datain_seq_offsets.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_na_random_datain_seq_offsets, %if.then8)) #4
          to label %cleanup [label %if.then8], !srcloc !91

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %random_datain_seq_offsets2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %random_datain_seq_offsets2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_na_random_datain_seq_offsets.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.31, i32 noundef %2, ptr noundef %acl) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then8 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_na_random_r2t_offsets(ptr noundef %acl, i32 noundef %random_r2t_offsets) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %random_r2t_offsets)
  %switch = icmp ult i32 %random_r2t_offsets, 2
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %random_r2t_offsets) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %random_r2t_offsets2 = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %random_r2t_offsets2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %random_r2t_offsets, ptr %random_r2t_offsets2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_na_random_r2t_offsets.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_na_random_r2t_offsets, %if.then8)) #4
          to label %cleanup [label %if.then8], !srcloc !91

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %random_r2t_offsets2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %random_r2t_offsets2, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_na_random_r2t_offsets.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.34, i32 noundef %2, ptr noundef %acl) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then8 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsit_na_default_erl(ptr noundef %acl, i32 noundef %default_erl) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %default_erl)
  %switch = icmp ult i32 %default_erl, 3
  br i1 %switch, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %default_erl) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %default_erl4 = getelementptr inbounds %struct.iscsi_node_acl, ptr %acl, i32 0, i32 1, i32 2
  %0 = ptrtoint ptr %default_erl4 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %default_erl, ptr %default_erl4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsit_na_default_erl.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsit_na_default_erl, %if.then10)) #4
          to label %cleanup [label %if.then10], !srcloc !91

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %default_erl4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %default_erl4, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsit_na_default_erl.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.37, i32 noundef %2, ptr noundef %acl) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then10 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !55, !57, !58, !60, !61, !62, !63, !65, !66, !68, !69, !70, !71, !73, !74, !76, !77, !78, !79, !81}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 50, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @iscsit_na_dataout_timeout._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @iscsit_na_dataout_timeout._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 55, i32 3}
!8 = !{ptr @iscsit_na_dataout_timeout._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @iscsit_na_dataout_timeout._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 62, i32 2}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @iscsit_na_dataout_timeout.__UNIQUE_ID_ddebug221, !11, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 75, i32 3}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @iscsit_na_dataout_timeout_retries._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @iscsit_na_dataout_timeout_retries._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 80, i32 3}
!21 = !{ptr @iscsit_na_dataout_timeout_retries._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @iscsit_na_dataout_timeout_retries._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 87, i32 2}
!25 = !{ptr @iscsit_na_dataout_timeout_retries.__UNIQUE_ID_ddebug222, !24, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 106, i32 3}
!28 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @iscsit_na_nopin_timeout._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @iscsit_na_nopin_timeout._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 111, i32 3}
!33 = !{ptr @iscsit_na_nopin_timeout._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @iscsit_na_nopin_timeout._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 118, i32 2}
!37 = !{ptr @iscsit_na_nopin_timeout.__UNIQUE_ID_ddebug223, !36, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 156, i32 3}
!40 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @iscsit_na_nopin_response_timeout._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @iscsit_na_nopin_response_timeout._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 161, i32 3}
!45 = !{ptr @iscsit_na_nopin_response_timeout._entry.22, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @iscsit_na_nopin_response_timeout._entry_ptr.24, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 168, i32 2}
!49 = !{ptr @iscsit_na_nopin_response_timeout.__UNIQUE_ID_ddebug224, !48, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 182, i32 3}
!52 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @iscsit_na_random_datain_pdu_offsets._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @iscsit_na_random_datain_pdu_offsets._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 188, i32 2}
!57 = !{ptr @iscsit_na_random_datain_pdu_offsets.__UNIQUE_ID_ddebug225, !56, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 202, i32 3}
!60 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @iscsit_na_random_datain_seq_offsets._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @iscsit_na_random_datain_seq_offsets._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 208, i32 2}
!65 = !{ptr @iscsit_na_random_datain_seq_offsets.__UNIQUE_ID_ddebug226, !64, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 222, i32 3}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @iscsit_na_random_r2t_offsets._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @iscsit_na_random_r2t_offsets._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 228, i32 2}
!73 = !{ptr @iscsit_na_random_r2t_offsets.__UNIQUE_ID_ddebug227, !72, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 242, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @iscsit_na_default_erl._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @iscsit_na_default_erl._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/target/iscsi/iscsi_target_nodeattrib.c", i32 248, i32 2}
!81 = !{ptr @iscsit_na_default_erl.__UNIQUE_ID_ddebug228, !80, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!91 = !{i64 2148941508, i64 2148941513, i64 2148941526, i64 2148941570, i64 2148941604, i64 2148941625}
