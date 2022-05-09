; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/iscsi_target_parameters.c_pt.bc'
source_filename = "../drivers/target/iscsi/iscsi_target_parameters.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iscsi_find_param_from_key\22, \22a\22\09"
module asm "\09.weak\09__crc_iscsi_find_param_from_key\09\09\09\09"
module asm "\09.long\09__crc_iscsi_find_param_from_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iscsi_find_param_from_key:\09\09\09\09\09"
module asm "\09.asciz \09\22iscsi_find_param_from_key\22\09\09\09\09\09"
module asm "__kstrtabns_iscsi_find_param_from_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kvec = type { ptr, i32 }
%struct.iscsi_conn_ops = type { i8, i8, i32, i32, i32, i32 }
%struct.iscsi_sess_ops = type { [224 x i8], [256 x i8], [224 x i8], [256 x i8], [256 x i8], i16, i16, i8, i8, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8 }
%struct.iscsi_param_list = type { i8, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.iscsi_param = type { ptr, ptr, i8, i8, i8, i8, i8, i8, i16, i32, %struct.list_head, [100 x i8] }
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
%struct.iscsi_extra_response = type { [64 x i8], [32 x i8], %struct.list_head, [24 x i8] }

@iscsi_login_rx_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 32, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013rx_data returned %d, expecting %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iscsi_login_rx_data\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/target/iscsi/iscsi_target_parameters.c\00", [49 x i8] zeroinitializer }, align 32
@iscsi_login_rx_data._entry_ptr = internal global ptr @iscsi_login_rx_data._entry, section ".printk_index", align 4
@iscsi_login_tx_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 63, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013tx_data returned %d, expecting %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iscsi_login_tx_data\00", [44 x i8] zeroinitializer }, align 32
@iscsi_login_tx_data._entry_ptr = internal global ptr @iscsi_login_tx_data._entry, section ".printk_index", align 4
@iscsi_dump_conn_ops.__UNIQUE_ID_ddebug221 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"iscsi_target_mod\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iscsi_dump_conn_ops\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HeaderDigest: %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CRC32C\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@iscsi_dump_conn_ops.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.10, i8 0, i8 18, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DataDigest: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@iscsi_dump_conn_ops.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.11, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MaxRecvDataSegmentLength: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iscsi_dump_sess_ops\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"InitiatorName: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"InitiatorAlias: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TargetName: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"TargetAlias: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.17, i8 0, i8 21, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TargetPortalGroupTag: %hu\0A\00", [37 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.18, i8 0, i8 22, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MaxConnections: %hu\0A\00", [43 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.19, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"InitialR2T: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Yes\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"No\00", [29 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.22, i8 0, i8 23, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ImmediateData: %s\0A\00", [45 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.23, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MaxBurstLength: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.24, i8 0, i8 23, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"FirstBurstLength: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.25, i8 0, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DefaultTime2Wait: %hu\0A\00", [41 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.26, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DefaultTime2Retain: %hu\0A\00", [39 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.27, i8 0, i8 24, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"MaxOutstandingR2T: %hu\0A\00", [40 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.28, i8 0, i8 25, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DataPDUInOrder: %s\0A\00", [44 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.29, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DataSequenceInOrder: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.30, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ErrorRecoveryLevel: %hu\0A\00", [39 x i8] zeroinitializer }, align 32
@iscsi_dump_sess_ops.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.12, ptr @.str.2, ptr @.str.31, i8 0, i8 26, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"SessionType: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Discovery\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@iscsi_print_params.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.34, ptr @.str.2, ptr @.str.35, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"iscsi_print_params\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s: %s\0A\00", [24 x i8] zeroinitializer }, align 32
@iscsi_create_default_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013Unable to allocate memory for struct iscsi_param_list.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iscsi_create_default_params\00", [36 x i8] zeroinitializer }, align 32
@iscsi_create_default_params._entry_ptr = internal global ptr @iscsi_create_default_params._entry, section ".printk_index", align 4
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AuthMethod\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CHAP\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HeaderDigest\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CRC32C,None\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DataDigest\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MaxConnections\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SendTargets\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"All\00", [28 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"TargetName\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LIO.Target\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"InitiatorName\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LIO.Initiator\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TargetAlias\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LIO Target\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"InitiatorAlias\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LIO Initiator\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TargetAddress\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0.0.0.0:0000,0\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"TargetPortalGroupTag\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"InitialR2T\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ImmediateData\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MaxXmitDataSegmentLength\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"262144\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"MaxRecvDataSegmentLength\00", [39 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8192\00", [27 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"MaxBurstLength\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"FirstBurstLength\00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"65536\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DefaultTime2Wait\00", [47 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DefaultTime2Retain\00", [45 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"20\00", [29 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"MaxOutstandingR2T\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DataPDUInOrder\00", [17 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DataSequenceInOrder\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ErrorRecoveryLevel\00", [45 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SessionType\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IFMarker\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OFMarker\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"IFMarkInt\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Reject\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"OFMarkInt\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"RDMAExtensions\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"InitiatorRecvDataSegmentLength\00", [33 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"TargetRecvDataSegmentLength\00", [36 x i8] zeroinitializer }, align 32
@iscsi_copy_param_list._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.85, ptr @.str.2, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iscsi_copy_param_list\00", [42 x i8] zeroinitializer }, align 32
@iscsi_copy_param_list._entry_ptr = internal global ptr @iscsi_copy_param_list._entry, section ".printk_index", align 4
@iscsi_copy_param_list._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.2, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013Unable to allocate memory for struct iscsi_param.\0A\00", [43 x i8] zeroinitializer }, align 32
@iscsi_copy_param_list._entry_ptr.88 = internal global ptr @iscsi_copy_param_list._entry.86, section ".printk_index", align 4
@iscsi_copy_param_list._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.85, ptr @.str.2, i32 598, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013Unable to allocate memory for parameter name/value.\0A\00", [41 x i8] zeroinitializer }, align 32
@iscsi_copy_param_list._entry_ptr.91 = internal global ptr @iscsi_copy_param_list._entry.89, section ".printk_index", align 4
@iscsi_copy_param_list._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.85, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013No parameters allocated.\0A\00", [36 x i8] zeroinitializer }, align 32
@iscsi_copy_param_list._entry_ptr.94 = internal global ptr @iscsi_copy_param_list._entry.92, section ".printk_index", align 4
@iscsi_find_param_from_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.2, i32 663, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Key or parameter list pointer is NULL.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iscsi_find_param_from_key\00", [38 x i8] zeroinitializer }, align 32
@iscsi_find_param_from_key._entry_ptr = internal global ptr @iscsi_find_param_from_key._entry, section ".printk_index", align 4
@iscsi_find_param_from_key._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.2, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Unable to locate key \22%s\22.\0A\00", [34 x i8] zeroinitializer }, align 32
@iscsi_find_param_from_key._entry_ptr.99 = internal global ptr @iscsi_find_param_from_key._entry.97, section ".printk_index", align 4
@__kstrtab_iscsi_find_param_from_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_iscsi_find_param_from_key = external dso_local constant [0 x i8], align 1
@__ksymtab_iscsi_find_param_from_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iscsi_find_param_from_key to i32), ptr @__kstrtab_iscsi_find_param_from_key, ptr @__kstrtabns_iscsi_find_param_from_key }, section "___ksymtab+iscsi_find_param_from_key", align 4
@iscsi_extract_key_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.2, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013Unable to locate \22=\22 separator for key, ignoring request.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iscsi_extract_key_value\00", [40 x i8] zeroinitializer }, align 32
@iscsi_extract_key_value._entry_ptr = internal global ptr @iscsi_extract_key_value._entry, section ".printk_index", align 4
@iscsi_update_param_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.2, i32 699, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Unable to allocate memory for value.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsi_update_param_value\00", [39 x i8] zeroinitializer }, align 32
@iscsi_update_param_value._entry_ptr = internal global ptr @iscsi_update_param_value._entry, section ".printk_index", align 4
@iscsi_update_param_value.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.103, ptr @.str.2, ptr @.str.104, i8 0, i8 -80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"iSCSI Parameter updated to %s=%s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_decode_text_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.2, i32 1362, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Unable to allocate %u + 1 bytes for tmpbuf.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iscsi_decode_text_input\00", [40 x i8] zeroinitializer }, align 32
@iscsi_decode_text_input._entry_ptr = internal global ptr @iscsi_decode_text_input._entry, section ".printk_index", align 4
@iscsi_decode_text_input.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.106, ptr @.str.2, ptr @.str.107, i8 1, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Got key: %s=%s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s=%s\00", [26 x i8] zeroinitializer }, align 32
@iscsi_encode_text_output.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.109, ptr @.str.2, ptr @.str.110, i8 1, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.109 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"iscsi_encode_text_output\00", [39 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Sending key: %s=%s\0A\00", [44 x i8] zeroinitializer }, align 32
@iscsi_encode_text_output.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.109, ptr @.str.2, ptr @.str.110, i8 1, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@iscsi_encode_text_output.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.109, ptr @.str.2, ptr @.str.110, i8 1, i8 112, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@iscsi_check_negotiated_keys._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.2, i32 1492, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013No response for proposed key \22%s\22.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iscsi_check_negotiated_keys\00", [36 x i8] zeroinitializer }, align 32
@iscsi_check_negotiated_keys._entry_ptr = internal global ptr @iscsi_check_negotiated_keys._entry, section ".printk_index", align 4
@iscsi_set_connection_parameters.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.113, ptr @.str.2, ptr @.str.114, i8 1, i8 -127, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"iscsi_set_connection_parameters\00", [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"------------------------------------------------------------------\0A\00", [60 x i8] zeroinitializer }, align 32
@iscsi_set_connection_parameters.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.113, ptr @.str.2, ptr @.str.115, i8 1, i8 -124, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MaxXmitDataSegmentLength:     %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_connection_parameters.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.113, ptr @.str.2, ptr @.str.116, i8 1, i8 -122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"AuthMethod:                   %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_connection_parameters.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.113, ptr @.str.2, ptr @.str.117, i8 1, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"HeaderDigest:                 %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_connection_parameters.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.113, ptr @.str.2, ptr @.str.118, i8 1, i8 -120, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DataDigest:                   %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_connection_parameters.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.113, ptr @.str.2, ptr @.str.119, i8 1, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.119 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MaxRecvDataSegmentLength:     %u\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_connection_parameters.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.113, ptr @.str.2, ptr @.str.120, i8 1, i8 -117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.120 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"InitiatorRecvDataSegmentLength: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@iscsi_set_connection_parameters.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.113, ptr @.str.2, ptr @.str.121, i8 1, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.121 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Set MRDSL from InitiatorRecvDataSegmentLength\0A\00", [49 x i8] zeroinitializer }, align 32
@iscsi_set_connection_parameters.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.113, ptr @.str.2, ptr @.str.122, i8 1, i8 -115, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TargetRecvDataSegmentLength:  %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_connection_parameters.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.113, ptr @.str.2, ptr @.str.123, i8 1, i8 -114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Set MXDSL from TargetRecvDataSegmentLength\0A\00", [52 x i8] zeroinitializer }, align 32
@iscsi_set_connection_parameters.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.113, ptr @.str.2, ptr @.str.114, i8 1, i8 -113, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.114, i8 1, i8 -110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.124 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"iscsi_set_session_parameters\00", [35 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.126, i8 1, i8 -107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"InitiatorName:                %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.127, i8 1, i8 -105, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"InitiatorAlias:               %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.128, i8 1, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TargetName:                   %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.129, i8 1, i8 -101, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TargetAlias:                  %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.130, i8 1, i8 -100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"TargetPortalGroupTag:         %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.131, i8 1, i8 -99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MaxConnections:               %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.132, i8 1, i8 -98, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"InitialR2T:                   %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.133, i8 1, i8 -97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ImmediateData:                %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.134, i8 1, i8 -95, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MaxBurstLength:               %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.135, i8 1, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.135 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"FirstBurstLength:             %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.136, i8 1, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DefaultTime2Wait:             %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.137, i8 1, i8 -92, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.137 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DefaultTime2Retain:           %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.138, i8 1, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MaxOutstandingR2T:            %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.139, i8 1, i8 -89, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DataPDUInOrder:               %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.140, i8 1, i8 -88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DataSequenceInOrder:          %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.141, i8 1, i8 -87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ErrorRecoveryLevel:           %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.142, i8 1, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SessionType:                  %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.143, i8 1, i8 -85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.143 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"RDMAExtensions:               %s\0A\00", [62 x i8] zeroinitializer }, align 32
@iscsi_set_session_parameters.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.124, ptr @.str.2, ptr @.str.114, i8 1, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@iscsi_set_default_param._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Unable to allocate memory for parameter.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"iscsi_set_default_param\00", [40 x i8] zeroinitializer }, align 32
@iscsi_set_default_param._entry_ptr = internal global ptr @iscsi_set_default_param._entry, section ".printk_index", align 4
@iscsi_set_default_param._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Unable to allocate memory for parameter name.\0A\00", [47 x i8] zeroinitializer }, align 32
@iscsi_set_default_param._entry_ptr.148 = internal global ptr @iscsi_set_default_param._entry.146, section ".printk_index", align 4
@iscsi_set_default_param._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.145, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Unable to allocate memory for parameter value.\0A\00", [46 x i8] zeroinitializer }, align 32
@iscsi_set_default_param._entry_ptr.151 = internal global ptr @iscsi_set_default_param._entry.149, section ".printk_index", align 4
@iscsi_set_default_param._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.145, ptr @.str.2, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Unknown type_range 0x%02x\0A\00", [35 x i8] zeroinitializer }, align 32
@iscsi_set_default_param._entry_ptr.154 = internal global ptr @iscsi_set_default_param._entry.152, section ".printk_index", align 4
@.str.155 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CHAP_A\00", [25 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CHAP_I\00", [25 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CHAP_C\00", [25 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CHAP_N\00", [25 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CHAP_R\00", [25 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SRP_U\00", [26 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SRP_N\00", [26 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SRP_g\00", [26 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SRP_s\00", [26 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SRP_A\00", [26 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SRP_B\00", [26 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SRP_M\00", [26 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SRP_HM\00", [25 x i8] zeroinitializer }, align 32
@iscsi_check_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.2, i32 1234, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Length of key name \22%s\22 exceeds %d.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"iscsi_check_key\00", [16 x i8] zeroinitializer }, align 32
@iscsi_check_key._entry_ptr = internal global ptr @iscsi_check_key._entry, section ".printk_index", align 4
@iscsi_check_key._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.2, i32 1245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Key \22%s\22 may not be sent to %s, protocol error.\0A\00", [45 x i8] zeroinitializer }, align 32
@iscsi_check_key._entry_ptr.172 = internal global ptr @iscsi_check_key._entry.170, section ".printk_index", align 4
@.str.173 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"target\00", [25 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"initiator\00", [22 x i8] zeroinitializer }, align 32
@iscsi_check_key._entry.175 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.2, i32 1251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iscsi_check_key._entry_ptr.176 = internal global ptr @iscsi_check_key._entry.175, section ".printk_index", align 4
@iscsi_check_key._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.169, ptr @.str.2, i32 1257, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Key \22%s\22 received twice, protocol error.\0A\00", [52 x i8] zeroinitializer }, align 32
@iscsi_check_key._entry_ptr.179 = internal global ptr @iscsi_check_key._entry.177, section ".printk_index", align 4
@iscsi_check_key._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.169, ptr @.str.2, i32 1266, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Key \22%s\22 may not be negotiated during \00", [55 x i8] zeroinitializer }, align 32
@iscsi_check_key._entry_ptr.182 = internal global ptr @iscsi_check_key._entry.180, section ".printk_index", align 4
@iscsi_check_key.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.169, ptr @.str.2, ptr @.str.183, i8 1, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Security phase.\0A\00", [47 x i8] zeroinitializer }, align 32
@iscsi_check_key.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.169, ptr @.str.2, ptr @.str.184, i8 1, i8 62, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.184 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Operational phase.\0A\00", [44 x i8] zeroinitializer }, align 32
@iscsi_check_key.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.169, ptr @.str.2, ptr @.str.185, i8 1, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.185 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Unknown phase.\0A\00", [16 x i8] zeroinitializer }, align 32
@iscsi_add_notunderstood_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.187, ptr @.str.2, i32 717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013Value for notunderstood key \22%s\22 exceeds %d, protocol error.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iscsi_add_notunderstood_response\00", [63 x i8] zeroinitializer }, align 32
@iscsi_add_notunderstood_response._entry_ptr = internal global ptr @iscsi_add_notunderstood_response._entry, section ".printk_index", align 4
@iscsi_add_notunderstood_response._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.187, ptr @.str.2, i32 724, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013Unable to allocate memory for struct iscsi_extra_response.\0A\00", [34 x i8] zeroinitializer }, align 32
@iscsi_add_notunderstood_response._entry_ptr.190 = internal global ptr @iscsi_add_notunderstood_response._entry.188, section ".printk_index", align 4
@.str.191 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"NotUnderstood\00", [18 x i8] zeroinitializer }, align 32
@iscsi_check_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.193, ptr @.str.2, i32 1124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013Received %s=%s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"iscsi_check_value\00", [46 x i8] zeroinitializer }, align 32
@iscsi_check_value._entry_ptr = internal global ptr @iscsi_check_value._entry, section ".printk_index", align 4
@.str.194 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Irrelevant\00", [21 x i8] zeroinitializer }, align 32
@iscsi_check_value.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.193, ptr @.str.2, ptr @.str.195, i8 1, i8 26, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.195 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Received %s=%s\0A\00", [16 x i8] zeroinitializer }, align 32
@iscsi_check_value._entry.196 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.197, ptr @.str.193, ptr @.str.2, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Received illegal offer %s=%s\0A\00", [32 x i8] zeroinitializer }, align 32
@iscsi_check_value._entry_ptr.198 = internal global ptr @iscsi_check_value._entry.196, section ".printk_index", align 4
@iscsi_check_value._entry.199 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.193, ptr @.str.2, i32 1141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013Standard iSCSI key \22%s\22 cannot be answered with \22%s\22, protocol error.\0A\00", [55 x i8] zeroinitializer }, align 32
@iscsi_check_value._entry_ptr.201 = internal global ptr @iscsi_check_value._entry.199, section ".printk_index", align 4
@iscsi_check_value._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.193, ptr @.str.2, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [91 x i8], [37 x i8] } { [91 x i8] c"\013Detected value separator \22,\22, but key \22%s\22 does not allow a value list, protocol error.\0A\00", [37 x i8] zeroinitializer }, align 32
@iscsi_check_value._entry_ptr.204 = internal global ptr @iscsi_check_value._entry.202, section ".printk_index", align 4
@iscsi_check_value._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.193, ptr @.str.2, i32 1161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Value for key \22%s\22 exceeds %d, protocol error.\0A\00", [46 x i8] zeroinitializer }, align 32
@iscsi_check_value._entry_ptr.207 = internal global ptr @iscsi_check_value._entry.205, section ".printk_index", align 4
@iscsi_check_value._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.193, ptr @.str.2, i32 1175, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\013Huh? 0x%02x\0A\00", [17 x i8] zeroinitializer }, align 32
@iscsi_check_value._entry_ptr.210 = internal global ptr @iscsi_check_value._entry.208, section ".printk_index", align 4
@iscsi_check_boolean_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.212, ptr @.str.2, i32 802, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Illegal value for \22%s\22, must be either \22%s\22 or \22%s\22.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"iscsi_check_boolean_value\00", [38 x i8] zeroinitializer }, align 32
@iscsi_check_boolean_value._entry_ptr = internal global ptr @iscsi_check_boolean_value._entry, section ".printk_index", align 4
@iscsi_check_numerical_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.214, ptr @.str.2, i32 819, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Illegal value for \22%s\22, must be between 0 and 2.\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"iscsi_check_numerical_value\00", [36 x i8] zeroinitializer }, align 32
@iscsi_check_numerical_value._entry_ptr = internal global ptr @iscsi_check_numerical_value._entry, section ".printk_index", align 4
@iscsi_check_numerical_value._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.214, ptr @.str.2, i32 827, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013Illegal value for \22%s\22, must be between 0 and 3600.\0A\00", [41 x i8] zeroinitializer }, align 32
@iscsi_check_numerical_value._entry_ptr.217 = internal global ptr @iscsi_check_numerical_value._entry.215, section ".printk_index", align 4
@iscsi_check_numerical_value._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.214, ptr @.str.2, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Illegal value for \22%s\22, must be between 0 and 32767.\0A\00", [40 x i8] zeroinitializer }, align 32
@iscsi_check_numerical_value._entry_ptr.220 = internal global ptr @iscsi_check_numerical_value._entry.218, section ".printk_index", align 4
@iscsi_check_numerical_value._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.214, ptr @.str.2, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Illegal value for \22%s\22, must be between 0 and 65535.\0A\00", [40 x i8] zeroinitializer }, align 32
@iscsi_check_numerical_value._entry_ptr.223 = internal global ptr @iscsi_check_numerical_value._entry.221, section ".printk_index", align 4
@iscsi_check_numerical_value._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.214, ptr @.str.2, i32 851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013Illegal value for \22%s\22, must be between 1 and 65535.\0A\00", [40 x i8] zeroinitializer }, align 32
@iscsi_check_numerical_value._entry_ptr.226 = internal global ptr @iscsi_check_numerical_value._entry.224, section ".printk_index", align 4
@iscsi_check_numerical_value._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.214, ptr @.str.2, i32 859, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013Illegal value for \22%s\22, must be between 2 and 3600.\0A\00", [41 x i8] zeroinitializer }, align 32
@iscsi_check_numerical_value._entry_ptr.229 = internal global ptr @iscsi_check_numerical_value._entry.227, section ".printk_index", align 4
@iscsi_check_numerical_value._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.214, ptr @.str.2, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013Illegal value for \22%s\22, must be between 512 and 16777215.\0A\00", [35 x i8] zeroinitializer }, align 32
@iscsi_check_numerical_value._entry_ptr.232 = internal global ptr @iscsi_check_numerical_value._entry.230, section ".printk_index", align 4
@.str.233 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"KRB5\00", [27 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPKM1\00", [26 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SPKM2\00", [26 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SRP\00", [28 x i8] zeroinitializer }, align 32
@iscsi_check_string_or_list_value._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.238, ptr @.str.2, i32 888, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\013Illegal value for \22%s\22, must be \22%s\22, \22%s\22, \22%s\22, \22%s\22, \22%s\22 or \22%s\22.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"iscsi_check_string_or_list_value\00", [63 x i8] zeroinitializer }, align 32
@iscsi_check_string_or_list_value._entry_ptr = internal global ptr @iscsi_check_string_or_list_value._entry, section ".printk_index", align 4
@iscsi_check_string_or_list_value._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.238, ptr @.str.2, i32 896, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Illegal value for \22%s\22, must be \22%s\22 or \22%s\22.\0A\00", [47 x i8] zeroinitializer }, align 32
@iscsi_check_string_or_list_value._entry_ptr.241 = internal global ptr @iscsi_check_string_or_list_value._entry.239, section ".printk_index", align 4
@iscsi_check_string_or_list_value._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.238, ptr @.str.2, i32 904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iscsi_check_string_or_list_value._entry_ptr.243 = internal global ptr @iscsi_check_string_or_list_value._entry.242, section ".printk_index", align 4
@iscsi_check_proposer_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.245, ptr @.str.2, i32 1085, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Received key \22%s\22 twice, protocol error.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iscsi_check_proposer_state\00", [37 x i8] zeroinitializer }, align 32
@iscsi_check_proposer_state._entry_ptr = internal global ptr @iscsi_check_proposer_state._entry, section ".printk_index", align 4
@iscsi_check_proposer_state._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.245, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Illegal \22,\22 in response for \22%s\22.\0A\00", [59 x i8] zeroinitializer }, align 32
@iscsi_check_proposer_state._entry_ptr.248 = internal global ptr @iscsi_check_proposer_state._entry.246, section ".printk_index", align 4
@iscsi_check_acceptor_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.249, ptr @.str.2, i32 965, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iscsi_check_acceptor_state\00", [37 x i8] zeroinitializer }, align 32
@iscsi_check_acceptor_state._entry_ptr = internal global ptr @iscsi_check_acceptor_state._entry, section ".printk_index", align 4
@.str.250 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@iscsi_check_acceptor_state.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.249, ptr @.str.2, ptr @.str.251, i8 1, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.251 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"Saving op->MaxRecvDataSegmentLength from original initiator received value: %u\0A\00", [48 x i8] zeroinitializer }, align 32
@iscsi_check_acceptor_state.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.249, ptr @.str.2, ptr @.str.252, i8 1, i8 8, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.252 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Updated %s to target MXDSL value: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@iscsi_check_acceptor_state._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.254, ptr @.str.249, ptr @.str.2, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\013Proposer's value list \22%s\22 contains no valid values from Acceptor's value list \22%s\22.\0A\00", [40 x i8] zeroinitializer }, align 32
@iscsi_check_acceptor_state._entry_ptr.255 = internal global ptr @iscsi_check_acceptor_state._entry.253, section ".printk_index", align 4
@iscsi_enforce_integrity_rules.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.256, ptr @.str.2, ptr @.str.257, i8 1, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.256 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"iscsi_enforce_integrity_rules\00", [34 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Reset \22%s\22 to \22%s\22.\0A\00", [43 x i8] zeroinitializer }, align 32
@iscsi_enforce_integrity_rules.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.256, ptr @.str.2, ptr @.str.257, i8 1, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@iscsi_enforce_integrity_rules.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.256, ptr @.str.2, ptr @.str.257, i8 1, i8 79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__iscsi_check_key._entry = internal constant %struct.pi_entry { ptr @.str.168, ptr @.str.258, ptr @.str.2, i32 1197, ptr null, ptr null }, align 1
@.str.258 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__iscsi_check_key\00", [46 x i8] zeroinitializer }, align 32
@__iscsi_check_key._entry_ptr = internal global ptr @__iscsi_check_key._entry, section ".printk_index", align 4
@__iscsi_check_key._entry.259 = internal constant %struct.pi_entry { ptr @.str.171, ptr @.str.258, ptr @.str.2, i32 1208, ptr null, ptr null }, align 1
@__iscsi_check_key._entry_ptr.260 = internal global ptr @__iscsi_check_key._entry.259, section ".printk_index", align 4
@__iscsi_check_key._entry.261 = internal constant %struct.pi_entry { ptr @.str.171, ptr @.str.258, ptr @.str.2, i32 1215, ptr null, ptr null }, align 1
@__iscsi_check_key._entry_ptr.262 = internal global ptr @__iscsi_check_key._entry.261, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 16, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32, i64 64, i64 128, i64 256, i64 512, i64 1024, i64 2048, i64 4096, i64 8192, i64 16384]
@__sancov_gen_cov_switch_values.263 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 31, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 62, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 72, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 74, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 76, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 82, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 83, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 84, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 85, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 86, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 88, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 89, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 91, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 93, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 94, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 95, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 96, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 98, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 100, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 102, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 104, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 106, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 115, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 201, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 219, i32 38 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 219, i32 50 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 225, i32 38 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 225, i32 52 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 231, i32 38 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 237, i32 38 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 238, i32 4 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 244, i32 38 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 244, i32 51 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 250, i32 38 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 250, i32 50 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 256, i32 38 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 257, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 263, i32 38 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 263, i32 51 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 269, i32 38 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 270, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 276, i32 38 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 277, i32 4 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 283, i32 38 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 290, i32 38 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 296, i32 38 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 303, i32 38 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 304, i32 4 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 310, i32 38 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 311, i32 4 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 317, i32 38 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 324, i32 38 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 325, i32 4 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 331, i32 38 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 332, i32 4 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 338, i32 38 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 339, i32 4 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 345, i32 38 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 352, i32 38 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 359, i32 38 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 366, i32 38 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 367, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 373, i32 38 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 379, i32 38 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 385, i32 38 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 391, i32 38 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 391, i32 49 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 397, i32 38 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 406, i32 38 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 412, i32 38 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 419, i32 38 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 572, i32 3 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 588, i32 4 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 598, i32 4 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 616, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 663, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 672, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 681, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 699, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 703, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1362, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1376, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1444, i32 35 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1449, i32 4 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1491, i32 4 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1542, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1553, i32 4 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1560, i32 4 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1564, i32 4 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1568, i32 4 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1576, i32 4 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1581, i32 4 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1585, i32 4 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1589, i32 4 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1593, i32 4 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1608, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1619, i32 7 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1620, i32 4 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1628, i32 4 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1637, i32 4 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1644, i32 4 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1649, i32 4 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1654, i32 4 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1658, i32 4 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1662, i32 4 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1667, i32 4 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1672, i32 4 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1677, i32 4 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1682, i32 4 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1687, i32 4 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1691, i32 4 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1695, i32 4 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1700, i32 4 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1704, i32 4 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1708, i32 4 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 126, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 133, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 139, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 176, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 743, i32 19 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 743, i32 45 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 744, i32 19 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 744, i32 45 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 745, i32 19 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 751, i32 19 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 751, i32 44 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 752, i32 19 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 752, i32 44 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 753, i32 19 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 753, i32 44 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 754, i32 19 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 754, i32 44 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1233, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1243, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1249, i32 3 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1256, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1265, i32 3 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1269, i32 4 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1272, i32 4 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1275, i32 4 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 716, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 723, i32 3 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 730, i32 33 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1124, i32 3 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1127, i32 21 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1128, i32 3 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1134, i32 4 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1140, i32 3 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1150, i32 4 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1159, i32 4 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1175, i32 4 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 801, i32 3 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 818, i32 4 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 826, i32 4 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 834, i32 4 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 842, i32 4 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 850, i32 4 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 858, i32 4 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 866, i32 4 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 882, i32 21 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 882, i32 44 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 883, i32 21 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 883, i32 45 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 885, i32 4 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 894, i32 4 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 902, i32 4 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1084, i32 3 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1094, i32 4 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 964, i32 3 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1010, i32 18 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1043, i32 4 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1058, i32 4 }
@___asan_gen_.999 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1065, i32 4 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1320, i32 5 }
@___asan_gen_.1011 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1012 = private constant [50 x i8] c"../drivers/target/iscsi/iscsi_target_parameters.c\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1012, i32 1196, i32 3 }
@llvm.compiler.used = appending global [302 x ptr] [ptr @__iscsi_check_key._entry, ptr @__iscsi_check_key._entry.259, ptr @__iscsi_check_key._entry.261, ptr @__iscsi_check_key._entry_ptr, ptr @__iscsi_check_key._entry_ptr.260, ptr @__iscsi_check_key._entry_ptr.262, ptr @__ksymtab_iscsi_find_param_from_key, ptr @iscsi_add_notunderstood_response._entry, ptr @iscsi_add_notunderstood_response._entry.188, ptr @iscsi_add_notunderstood_response._entry_ptr, ptr @iscsi_add_notunderstood_response._entry_ptr.190, ptr @iscsi_check_acceptor_state._entry, ptr @iscsi_check_acceptor_state._entry.253, ptr @iscsi_check_acceptor_state._entry_ptr, ptr @iscsi_check_acceptor_state._entry_ptr.255, ptr @iscsi_check_boolean_value._entry, ptr @iscsi_check_boolean_value._entry_ptr, ptr @iscsi_check_key._entry, ptr @iscsi_check_key._entry.170, ptr @iscsi_check_key._entry.175, ptr @iscsi_check_key._entry.177, ptr @iscsi_check_key._entry.180, ptr @iscsi_check_key._entry_ptr, ptr @iscsi_check_key._entry_ptr.172, ptr @iscsi_check_key._entry_ptr.176, ptr @iscsi_check_key._entry_ptr.179, ptr @iscsi_check_key._entry_ptr.182, ptr @iscsi_check_negotiated_keys._entry, ptr @iscsi_check_negotiated_keys._entry_ptr, ptr @iscsi_check_numerical_value._entry, ptr @iscsi_check_numerical_value._entry.215, ptr @iscsi_check_numerical_value._entry.218, ptr @iscsi_check_numerical_value._entry.221, ptr @iscsi_check_numerical_value._entry.224, ptr @iscsi_check_numerical_value._entry.227, ptr @iscsi_check_numerical_value._entry.230, ptr @iscsi_check_numerical_value._entry_ptr, ptr @iscsi_check_numerical_value._entry_ptr.217, ptr @iscsi_check_numerical_value._entry_ptr.220, ptr @iscsi_check_numerical_value._entry_ptr.223, ptr @iscsi_check_numerical_value._entry_ptr.226, ptr @iscsi_check_numerical_value._entry_ptr.229, ptr @iscsi_check_numerical_value._entry_ptr.232, ptr @iscsi_check_proposer_state._entry, ptr @iscsi_check_proposer_state._entry.246, ptr @iscsi_check_proposer_state._entry_ptr, ptr @iscsi_check_proposer_state._entry_ptr.248, ptr @iscsi_check_string_or_list_value._entry, ptr @iscsi_check_string_or_list_value._entry.239, ptr @iscsi_check_string_or_list_value._entry.242, ptr @iscsi_check_string_or_list_value._entry_ptr, ptr @iscsi_check_string_or_list_value._entry_ptr.241, ptr @iscsi_check_string_or_list_value._entry_ptr.243, ptr @iscsi_check_value._entry, ptr @iscsi_check_value._entry.196, ptr @iscsi_check_value._entry.199, ptr @iscsi_check_value._entry.202, ptr @iscsi_check_value._entry.205, ptr @iscsi_check_value._entry.208, ptr @iscsi_check_value._entry_ptr, ptr @iscsi_check_value._entry_ptr.198, ptr @iscsi_check_value._entry_ptr.201, ptr @iscsi_check_value._entry_ptr.204, ptr @iscsi_check_value._entry_ptr.207, ptr @iscsi_check_value._entry_ptr.210, ptr @iscsi_copy_param_list._entry, ptr @iscsi_copy_param_list._entry.86, ptr @iscsi_copy_param_list._entry.89, ptr @iscsi_copy_param_list._entry.92, ptr @iscsi_copy_param_list._entry_ptr, ptr @iscsi_copy_param_list._entry_ptr.88, ptr @iscsi_copy_param_list._entry_ptr.91, ptr @iscsi_copy_param_list._entry_ptr.94, ptr @iscsi_create_default_params._entry, ptr @iscsi_create_default_params._entry_ptr, ptr @iscsi_decode_text_input._entry, ptr @iscsi_decode_text_input._entry_ptr, ptr @iscsi_extract_key_value._entry, ptr @iscsi_extract_key_value._entry_ptr, ptr @iscsi_find_param_from_key._entry, ptr @iscsi_find_param_from_key._entry.97, ptr @iscsi_find_param_from_key._entry_ptr, ptr @iscsi_find_param_from_key._entry_ptr.99, ptr @iscsi_login_rx_data._entry, ptr @iscsi_login_rx_data._entry_ptr, ptr @iscsi_login_tx_data._entry, ptr @iscsi_login_tx_data._entry_ptr, ptr @iscsi_set_default_param._entry, ptr @iscsi_set_default_param._entry.146, ptr @iscsi_set_default_param._entry.149, ptr @iscsi_set_default_param._entry.152, ptr @iscsi_set_default_param._entry_ptr, ptr @iscsi_set_default_param._entry_ptr.148, ptr @iscsi_set_default_param._entry_ptr.151, ptr @iscsi_set_default_param._entry_ptr.154, ptr @iscsi_update_param_value._entry, ptr @iscsi_update_param_value._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.173, ptr @.str.174, ptr @.str.178, ptr @.str.181, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.189, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.197, ptr @.str.200, ptr @.str.203, ptr @.str.206, ptr @.str.209, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.225, ptr @.str.228, ptr @.str.231, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.240, ptr @.str.244, ptr @.str.245, ptr @.str.247, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.254, ptr @.str.256, ptr @.str.257, ptr @.str.258], section "llvm.metadata"
@0 = internal global [250 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_rx_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_login_tx_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_create_default_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_copy_param_list._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_copy_param_list._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_copy_param_list._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_copy_param_list._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_find_param_from_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_find_param_from_key._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_extract_key_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_update_param_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_decode_text_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_negotiated_keys._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_set_default_param._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_set_default_param._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_set_default_param._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_set_default_param._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_key._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_key._entry.175 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_key._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_key._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_add_notunderstood_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_add_notunderstood_response._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_value._entry.196 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_value._entry.199 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_value._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 91, i32 128, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_value._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_value._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_boolean_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_numerical_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_numerical_value._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_numerical_value._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_numerical_value._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_numerical_value._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_numerical_value._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_numerical_value._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_string_or_list_value._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_string_or_list_value._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_string_or_list_value._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_proposer_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_proposer_state._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_acceptor_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_check_acceptor_state._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_login_rx_data(ptr noundef %conn, ptr noundef %buf, i32 noundef %length) local_unnamed_addr #0 align 64 {
entry:
  %iov = alloca %struct.kvec, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iov) #9
  %0 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %length, ptr %0, align 4
  %2 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buf, ptr %iov, align 8
  %call = call i32 @rx_data(ptr noundef %conn, ptr noundef nonnull %iov, i32 noundef 1, i32 noundef %length) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %length)
  %cmp.not = icmp eq i32 %call, %length
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call, i32 noundef %length) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iov) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rx_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_login_tx_data(ptr noundef %conn, ptr noundef %pdu_buf, ptr noundef %text_buf, i32 noundef %text_length) local_unnamed_addr #0 align 64 {
entry:
  %iov = alloca [2 x %struct.kvec], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iov) #9
  %0 = getelementptr inbounds %struct.kvec, ptr %iov, i32 0, i32 1
  %add = add i32 %text_length, 48
  %1 = getelementptr inbounds i8, ptr %iov, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 0, ptr %1, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 48, ptr %0, align 4
  %4 = ptrtoint ptr %iov to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pdu_buf, ptr %iov, align 4
  %tobool.not = icmp eq ptr %text_buf, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %text_length)
  %tobool3.not = icmp eq i32 %text_length, 0
  %or.cond = or i1 %tobool.not, %tobool3.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1, i32 1
  %6 = getelementptr inbounds [2 x %struct.kvec], ptr %iov, i32 0, i32 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %text_length, ptr %5, align 4
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %text_buf, ptr %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %iov_cnt.0 = phi i32 [ 2, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %call = call i32 @tx_data(ptr noundef %conn, ptr noundef nonnull %iov, i32 noundef %iov_cnt.0, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %add)
  %cmp.not = icmp eq i32 %call, %add
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %call, i32 noundef %add) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iov) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tx_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsi_dump_conn_ops(ptr nocapture noundef readonly %conn_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_conn_ops.__UNIQUE_ID_ddebug221, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_conn_ops, %if.then)) #9
          to label %do.body4 [label %if.then], !srcloc !561

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %conn_ops, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool3.not = icmp eq i8 %1, 0
  %cond = select i1 %tobool3.not, ptr @.str.9, ptr @.str.8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_conn_ops.__UNIQUE_ID_ddebug221, ptr noundef nonnull @.str.7, ptr noundef nonnull %cond) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_conn_ops.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_conn_ops, %if.then16)) #9
          to label %do.body22 [label %if.then16], !srcloc !561

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  %DataDigest = getelementptr inbounds %struct.iscsi_conn_ops, ptr %conn_ops, i32 0, i32 1
  %2 = ptrtoint ptr %DataDigest to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %DataDigest, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool18.not = icmp eq i8 %3, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.9, ptr @.str.8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_conn_ops.__UNIQUE_ID_ddebug222, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond19) #9
  br label %do.body22

do.body22:                                        ; preds = %if.then16, %do.body4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_conn_ops.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_conn_ops, %if.then34)) #9
          to label %do.end36 [label %if.then34], !srcloc !561

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %MaxRecvDataSegmentLength = getelementptr inbounds %struct.iscsi_conn_ops, ptr %conn_ops, i32 0, i32 2
  %4 = ptrtoint ptr %MaxRecvDataSegmentLength to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %MaxRecvDataSegmentLength, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_conn_ops.__UNIQUE_ID_ddebug223, ptr noundef nonnull @.str.11, i32 noundef %5) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then34, %do.body22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsi_dump_sess_ops(ptr noundef %sess_ops) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then)) #9
          to label %do.body3 [label %if.then], !srcloc !561

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug224, ptr noundef nonnull @.str.13, ptr noundef %sess_ops) #9
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then15)) #9
          to label %do.body19 [label %if.then15], !srcloc !561

if.then15:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #11
  %InitiatorAlias = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 1
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug225, ptr noundef nonnull @.str.14, ptr noundef %InitiatorAlias) #9
  br label %do.body19

do.body19:                                        ; preds = %if.then15, %do.body3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then31)) #9
          to label %do.body35 [label %if.then31], !srcloc !561

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %TargetName = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug226, ptr noundef nonnull @.str.15, ptr noundef %TargetName) #9
  br label %do.body35

do.body35:                                        ; preds = %if.then31, %do.body19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then47)) #9
          to label %do.body51 [label %if.then47], !srcloc !561

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #11
  %TargetAlias = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 3
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug227, ptr noundef nonnull @.str.16, ptr noundef %TargetAlias) #9
  br label %do.body51

do.body51:                                        ; preds = %if.then47, %do.body35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then63)) #9
          to label %do.body66 [label %if.then63], !srcloc !561

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  %TargetPortalGroupTag = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 5
  %0 = ptrtoint ptr %TargetPortalGroupTag to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %TargetPortalGroupTag, align 4
  %conv = zext i16 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug228, ptr noundef nonnull @.str.17, i32 noundef %conv) #9
  br label %do.body66

do.body66:                                        ; preds = %if.then63, %do.body51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then78)) #9
          to label %do.body82 [label %if.then78], !srcloc !561

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  %MaxConnections = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 6
  %2 = ptrtoint ptr %MaxConnections to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %MaxConnections, align 2
  %conv79 = zext i16 %3 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug229, ptr noundef nonnull @.str.18, i32 noundef %conv79) #9
  br label %do.body82

do.body82:                                        ; preds = %if.then78, %do.body66
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then94)) #9
          to label %do.body99 [label %if.then94], !srcloc !561

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #11
  %InitialR2T = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 7
  %4 = ptrtoint ptr %InitialR2T to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %InitialR2T, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool96.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool96.not, ptr @.str.21, ptr @.str.20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond) #9
  br label %do.body99

do.body99:                                        ; preds = %if.then94, %do.body82
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then111)) #9
          to label %do.body117 [label %if.then111], !srcloc !561

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  %ImmediateData = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 8
  %6 = ptrtoint ptr %ImmediateData to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ImmediateData, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool113.not = icmp eq i8 %7, 0
  %cond114 = select i1 %tobool113.not, ptr @.str.21, ptr @.str.20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.22, ptr noundef nonnull %cond114) #9
  br label %do.body117

do.body117:                                       ; preds = %if.then111, %do.body99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then129)) #9
          to label %do.body132 [label %if.then129], !srcloc !561

if.then129:                                       ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #11
  %MaxBurstLength = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 9
  %8 = ptrtoint ptr %MaxBurstLength to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %MaxBurstLength, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.23, i32 noundef %9) #9
  br label %do.body132

do.body132:                                       ; preds = %if.then129, %do.body117
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then144)) #9
          to label %do.body147 [label %if.then144], !srcloc !561

if.then144:                                       ; preds = %do.body132
  call void @__sanitizer_cov_trace_pc() #11
  %FirstBurstLength = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 10
  %10 = ptrtoint ptr %FirstBurstLength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %FirstBurstLength, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.24, i32 noundef %11) #9
  br label %do.body147

do.body147:                                       ; preds = %if.then144, %do.body132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then159)) #9
          to label %do.body163 [label %if.then159], !srcloc !561

if.then159:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #11
  %DefaultTime2Wait = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 11
  %12 = ptrtoint ptr %DefaultTime2Wait to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %DefaultTime2Wait, align 4
  %conv160 = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.25, i32 noundef %conv160) #9
  br label %do.body163

do.body163:                                       ; preds = %if.then159, %do.body147
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then175)) #9
          to label %do.body179 [label %if.then175], !srcloc !561

if.then175:                                       ; preds = %do.body163
  call void @__sanitizer_cov_trace_pc() #11
  %DefaultTime2Retain = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 12
  %14 = ptrtoint ptr %DefaultTime2Retain to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %DefaultTime2Retain, align 2
  %conv176 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.26, i32 noundef %conv176) #9
  br label %do.body179

do.body179:                                       ; preds = %if.then175, %do.body163
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then191)) #9
          to label %do.body195 [label %if.then191], !srcloc !561

if.then191:                                       ; preds = %do.body179
  call void @__sanitizer_cov_trace_pc() #11
  %MaxOutstandingR2T = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 13
  %16 = ptrtoint ptr %MaxOutstandingR2T to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %MaxOutstandingR2T, align 4
  %conv192 = zext i16 %17 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.27, i32 noundef %conv192) #9
  br label %do.body195

do.body195:                                       ; preds = %if.then191, %do.body179
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then207)) #9
          to label %do.body213 [label %if.then207], !srcloc !561

if.then207:                                       ; preds = %do.body195
  call void @__sanitizer_cov_trace_pc() #11
  %DataPDUInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 14
  %18 = ptrtoint ptr %DataPDUInOrder to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %DataPDUInOrder, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool209.not = icmp eq i8 %19, 0
  %cond210 = select i1 %tobool209.not, ptr @.str.21, ptr @.str.20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond210) #9
  br label %do.body213

do.body213:                                       ; preds = %if.then207, %do.body195
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then225)) #9
          to label %do.body231 [label %if.then225], !srcloc !561

if.then225:                                       ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #11
  %DataSequenceInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 15
  %20 = ptrtoint ptr %DataSequenceInOrder to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %DataSequenceInOrder, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool227.not = icmp eq i8 %21, 0
  %cond228 = select i1 %tobool227.not, ptr @.str.21, ptr @.str.20
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond228) #9
  br label %do.body231

do.body231:                                       ; preds = %if.then225, %do.body213
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then243)) #9
          to label %do.body247 [label %if.then243], !srcloc !561

if.then243:                                       ; preds = %do.body231
  call void @__sanitizer_cov_trace_pc() #11
  %ErrorRecoveryLevel = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 16
  %22 = ptrtoint ptr %ErrorRecoveryLevel to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ErrorRecoveryLevel, align 4
  %conv244 = zext i8 %23 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.30, i32 noundef %conv244) #9
  br label %do.body247

do.body247:                                       ; preds = %if.then243, %do.body231
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_dump_sess_ops, %if.then259)) #9
          to label %do.end264 [label %if.then259], !srcloc !561

if.then259:                                       ; preds = %do.body247
  call void @__sanitizer_cov_trace_pc() #11
  %SessionType = getelementptr inbounds %struct.iscsi_sess_ops, ptr %sess_ops, i32 0, i32 17
  %24 = ptrtoint ptr %SessionType to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %SessionType, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool261.not = icmp eq i8 %25, 0
  %cond262 = select i1 %tobool261.not, ptr @.str.33, ptr @.str.32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond262) #9
  br label %do.end264

do.end264:                                        ; preds = %if.then259, %do.body247
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsi_print_params(ptr noundef readonly %param_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %param_list1 = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 1
  %0 = ptrtoint ptr %param_list1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn17 = load ptr, ptr %param_list1, align 4
  %cmp.not19 = icmp eq ptr %.pn17, %param_list1
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  %.pn20 = phi ptr [ %.pn, %for.inc.do.body_crit_edge ], [ %.pn17, %entry.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_print_params.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_print_params, %if.then)) #9
          to label %for.inc [label %if.then], !srcloc !561

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %param.021 = getelementptr i8, ptr %.pn20, i32 -20
  %1 = ptrtoint ptr %param.021 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %param.021, align 128
  %value = getelementptr i8, ptr %.pn20, i32 -16
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %value, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_print_params.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.35, ptr noundef %2, ptr noundef %4) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then, %do.body
  %5 = ptrtoint ptr %.pn20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn20, align 4
  %cmp.not = icmp eq ptr %.pn, %param_list1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_create_default_params(ptr nocapture noundef writeonly %param_list_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list = getelementptr inbounds %struct.iscsi_param_list, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %param_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %param_list, ptr %param_list, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_param_list, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %param_list, ptr %prev.i, align 8
  %extra_response_list = getelementptr inbounds %struct.iscsi_param_list, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %extra_response_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %extra_response_list, ptr %extra_response_list, align 4
  %prev.i192 = getelementptr inbounds %struct.iscsi_param_list, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i192 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %extra_response_list, ptr %prev.i192, align 8
  %call2 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 3, i16 noundef zeroext 512, i8 noundef zeroext 2)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 3, i16 noundef zeroext 1024, i8 noundef zeroext 2)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end9:                                          ; preds = %if.end5
  %call10 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 3, i16 noundef zeroext 1024, i8 noundef zeroext 2)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.out_crit_edge, label %if.end13

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end13:                                         ; preds = %if.end9
  %call14 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 3, i16 noundef zeroext 64, i8 noundef zeroext 1)
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.end13.out_crit_edge, label %if.end17

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end17:                                         ; preds = %if.end13
  %call18 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 1, i16 noundef zeroext 16384, i8 noundef zeroext 0)
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.out_crit_edge, label %if.end21

if.end17.out_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end21:                                         ; preds = %if.end17
  %call22 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i8 noundef zeroext 4, i8 noundef zeroext 2, i8 noundef zeroext 3, i16 noundef zeroext 2048, i8 noundef zeroext 4)
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.out_crit_edge, label %if.end25

if.end21.out_crit_edge:                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end25:                                         ; preds = %if.end21
  %call26 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i8 noundef zeroext 4, i8 noundef zeroext 2, i8 noundef zeroext 1, i16 noundef zeroext 2048, i8 noundef zeroext 2)
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.out_crit_edge, label %if.end29

if.end25.out_crit_edge:                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end29:                                         ; preds = %if.end25
  %call30 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i8 noundef zeroext 4, i8 noundef zeroext 2, i8 noundef zeroext 2, i16 noundef zeroext 16384, i8 noundef zeroext 4)
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end29.out_crit_edge, label %if.end33

if.end29.out_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end33:                                         ; preds = %if.end29
  %call34 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i8 noundef zeroext 4, i8 noundef zeroext 2, i8 noundef zeroext 1, i16 noundef zeroext 16384, i8 noundef zeroext 4)
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.out_crit_edge, label %if.end37

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end37:                                         ; preds = %if.end33
  %call38 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i8 noundef zeroext 4, i8 noundef zeroext 2, i8 noundef zeroext 2, i16 noundef zeroext 8192, i8 noundef zeroext 4)
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %if.end37.out_crit_edge, label %if.end41

if.end37.out_crit_edge:                           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end41:                                         ; preds = %if.end37
  %call42 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.44, i8 noundef zeroext 4, i8 noundef zeroext 2, i8 noundef zeroext 2, i16 noundef zeroext 32, i8 noundef zeroext 2)
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %if.end41.out_crit_edge, label %if.end45

if.end41.out_crit_edge:                           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end45:                                         ; preds = %if.end41
  %call46 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.20, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 3, i16 noundef zeroext 2, i8 noundef zeroext 1)
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.end45.out_crit_edge, label %if.end49

if.end45.out_crit_edge:                           ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end49:                                         ; preds = %if.end45
  %call50 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.20, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 3, i16 noundef zeroext 1, i8 noundef zeroext 1)
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %if.end49.out_crit_edge, label %if.end53

if.end49.out_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end53:                                         ; preds = %if.end49
  %call54 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 3, i16 noundef zeroext 256, i8 noundef zeroext 4)
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %if.end53.out_crit_edge, label %if.end57

if.end53.out_crit_edge:                           ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end57:                                         ; preds = %if.end53
  %call58 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 3, i16 noundef zeroext 256, i8 noundef zeroext 4)
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %if.end57.out_crit_edge, label %if.end61

if.end57.out_crit_edge:                           ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end61:                                         ; preds = %if.end57
  %call62 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.61, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 3, i16 noundef zeroext 256, i8 noundef zeroext 1)
  %tobool63.not = icmp eq ptr %call62, null
  br i1 %tobool63.not, label %if.end61.out_crit_edge, label %if.end65

if.end61.out_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end65:                                         ; preds = %if.end61
  %call66 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 3, i16 noundef zeroext 256, i8 noundef zeroext 1)
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.end65.out_crit_edge, label %if.end69

if.end65.out_crit_edge:                           ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end69:                                         ; preds = %if.end65
  %call70 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 3, i16 noundef zeroext 8, i8 noundef zeroext 1)
  %tobool71.not = icmp eq ptr %call70, null
  br i1 %tobool71.not, label %if.end69.out_crit_edge, label %if.end73

if.end69.out_crit_edge:                           ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end73:                                         ; preds = %if.end69
  %call74 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 3, i16 noundef zeroext 8, i8 noundef zeroext 1)
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %if.end73.out_crit_edge, label %if.end77

if.end73.out_crit_edge:                           ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end77:                                         ; preds = %if.end73
  %call78 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.44, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 3, i16 noundef zeroext 64, i8 noundef zeroext 1)
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.end77.out_crit_edge, label %if.end81

if.end77.out_crit_edge:                           ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end81:                                         ; preds = %if.end77
  %call82 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.20, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 3, i16 noundef zeroext 2, i8 noundef zeroext 1)
  %tobool83.not = icmp eq ptr %call82, null
  br i1 %tobool83.not, label %if.end81.out_crit_edge, label %if.end85

if.end81.out_crit_edge:                           ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end85:                                         ; preds = %if.end81
  %call86 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.20, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 3, i16 noundef zeroext 2, i8 noundef zeroext 1)
  %tobool87.not = icmp eq ptr %call86, null
  br i1 %tobool87.not, label %if.end85.out_crit_edge, label %if.end89

if.end85.out_crit_edge:                           ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end89:                                         ; preds = %if.end85
  %call90 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 3, i16 noundef zeroext 4, i8 noundef zeroext 1)
  %tobool91.not = icmp eq ptr %call90, null
  br i1 %tobool91.not, label %if.end89.out_crit_edge, label %if.end93

if.end89.out_crit_edge:                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end93:                                         ; preds = %if.end89
  %call94 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.33, i8 noundef zeroext 4, i8 noundef zeroext 2, i8 noundef zeroext 1, i16 noundef zeroext 4096, i8 noundef zeroext 1)
  %tobool95.not = icmp eq ptr %call94, null
  br i1 %tobool95.not, label %if.end93.out_crit_edge, label %if.end97

if.end93.out_crit_edge:                           ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end97:                                         ; preds = %if.end93
  %call98 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.21, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 3, i16 noundef zeroext 1, i8 noundef zeroext 2)
  %tobool99.not = icmp eq ptr %call98, null
  br i1 %tobool99.not, label %if.end97.out_crit_edge, label %if.end101

if.end97.out_crit_edge:                           ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end101:                                        ; preds = %if.end97
  %call102 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.21, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 3, i16 noundef zeroext 1, i8 noundef zeroext 2)
  %tobool103.not = icmp eq ptr %call102, null
  br i1 %tobool103.not, label %if.end101.out_crit_edge, label %if.end105

if.end101.out_crit_edge:                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end105:                                        ; preds = %if.end101
  %call106 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 3, i16 noundef zeroext 16384, i8 noundef zeroext 2)
  %tobool107.not = icmp eq ptr %call106, null
  br i1 %tobool107.not, label %if.end105.out_crit_edge, label %if.end109

if.end105.out_crit_edge:                          ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end109:                                        ; preds = %if.end105
  %call110 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.80, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 3, i16 noundef zeroext 16384, i8 noundef zeroext 2)
  %tobool111.not = icmp eq ptr %call110, null
  br i1 %tobool111.not, label %if.end109.out_crit_edge, label %if.end113

if.end109.out_crit_edge:                          ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end113:                                        ; preds = %if.end109
  %call114 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.21, i8 noundef zeroext 2, i8 noundef zeroext 2, i8 noundef zeroext 3, i16 noundef zeroext 1, i8 noundef zeroext 1)
  %tobool115.not = icmp eq ptr %call114, null
  br i1 %tobool115.not, label %if.end113.out_crit_edge, label %if.end117

if.end113.out_crit_edge:                          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end117:                                        ; preds = %if.end113
  %call118 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.61, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 3, i16 noundef zeroext 256, i8 noundef zeroext 4)
  %tobool119.not = icmp eq ptr %call118, null
  br i1 %tobool119.not, label %if.end117.out_crit_edge, label %if.end121

if.end117.out_crit_edge:                          ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end121:                                        ; preds = %if.end117
  %call122 = tail call fastcc ptr @iscsi_set_default_param(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.63, i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 3, i16 noundef zeroext 256, i8 noundef zeroext 4)
  %tobool123.not = icmp eq ptr %call122, null
  br i1 %tobool123.not, label %if.end121.out_crit_edge, label %if.end125

if.end121.out_crit_edge:                          ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end125:                                        ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %param_list_ptr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %param_list_ptr, align 4
  br label %cleanup

out:                                              ; preds = %if.end121.out_crit_edge, %if.end117.out_crit_edge, %if.end113.out_crit_edge, %if.end109.out_crit_edge, %if.end105.out_crit_edge, %if.end101.out_crit_edge, %if.end97.out_crit_edge, %if.end93.out_crit_edge, %if.end89.out_crit_edge, %if.end85.out_crit_edge, %if.end81.out_crit_edge, %if.end77.out_crit_edge, %if.end73.out_crit_edge, %if.end69.out_crit_edge, %if.end65.out_crit_edge, %if.end61.out_crit_edge, %if.end57.out_crit_edge, %if.end53.out_crit_edge, %if.end49.out_crit_edge, %if.end45.out_crit_edge, %if.end41.out_crit_edge, %if.end37.out_crit_edge, %if.end33.out_crit_edge, %if.end29.out_crit_edge, %if.end25.out_crit_edge, %if.end21.out_crit_edge, %if.end17.out_crit_edge, %if.end13.out_crit_edge, %if.end9.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge
  tail call void @iscsi_release_param_list(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end125, %do.end
  %retval.0 = phi i32 [ 0, %if.end125 ], [ -1, %out ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @iscsi_set_default_param(ptr noundef %param_list, ptr noundef %name, ptr noundef %value, i8 noundef zeroext %phase, i8 noundef zeroext %scope, i8 noundef zeroext %sender, i16 noundef zeroext %type_range, i8 noundef zeroext %use) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 128) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %p_list = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i, i32 0, i32 10
  %1 = ptrtoint ptr %p_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %p_list, ptr %p_list, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %p_list, ptr %prev.i, align 8
  %call2 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #9
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %call7.i.i, align 128
  %tobool5.not = icmp eq ptr %call2, null
  br i1 %tobool5.not, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147) #12
  br label %if.then48

if.end12:                                         ; preds = %if.end
  %call13 = tail call noalias ptr @kstrdup(ptr noundef %value, i32 noundef 3264) #9
  %value14 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %value14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call13, ptr %value14, align 4
  %tobool16.not = icmp eq ptr %call13, null
  br i1 %tobool16.not, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150) #12
  br label %if.then48

if.end23:                                         ; preds = %if.end12
  %phase24 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %phase24 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %phase, ptr %phase24, align 1
  %scope25 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %scope25 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %scope, ptr %scope25, align 2
  %sender26 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %sender26 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %sender, ptr %sender26, align 1
  %use27 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i, i32 0, i32 7
  %8 = ptrtoint ptr %use27 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %use, ptr %use27, align 1
  %type_range28 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %type_range28 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %type_range, ptr %type_range28, align 2
  %10 = zext i16 %type_range to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i16 %type_range, label %do.end40 [
    i16 1, label %if.end23.sw.epilog_crit_edge
    i16 2, label %sw.bb30
    i16 4, label %if.end23.sw.bb32_crit_edge
    i16 8, label %if.end23.sw.bb32_crit_edge78
    i16 16, label %if.end23.sw.bb32_crit_edge79
    i16 32, label %if.end23.sw.bb32_crit_edge80
    i16 64, label %if.end23.sw.bb32_crit_edge81
    i16 128, label %if.end23.sw.bb32_crit_edge82
    i16 256, label %if.end23.sw.bb32_crit_edge83
    i16 512, label %if.end23.sw.bb34_crit_edge
    i16 1024, label %if.end23.sw.bb34_crit_edge84
    i16 2048, label %if.end23.sw.bb36_crit_edge
    i16 4096, label %if.end23.sw.bb36_crit_edge85
    i16 8192, label %if.end23.sw.bb36_crit_edge86
    i16 16384, label %if.end23.sw.bb36_crit_edge87
  ]

if.end23.sw.bb36_crit_edge87:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.end23.sw.bb36_crit_edge86:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.end23.sw.bb36_crit_edge85:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.end23.sw.bb36_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb36

if.end23.sw.bb34_crit_edge84:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb34

if.end23.sw.bb34_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb34

if.end23.sw.bb32_crit_edge83:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end23.sw.bb32_crit_edge82:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end23.sw.bb32_crit_edge81:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end23.sw.bb32_crit_edge80:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end23.sw.bb32_crit_edge79:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end23.sw.bb32_crit_edge78:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end23.sw.bb32_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end23.sw.epilog_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end23.sw.bb32_crit_edge, %if.end23.sw.bb32_crit_edge78, %if.end23.sw.bb32_crit_edge79, %if.end23.sw.bb32_crit_edge80, %if.end23.sw.bb32_crit_edge81, %if.end23.sw.bb32_crit_edge82, %if.end23.sw.bb32_crit_edge83
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.end23.sw.bb34_crit_edge, %if.end23.sw.bb34_crit_edge84
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end23.sw.bb36_crit_edge, %if.end23.sw.bb36_crit_edge85, %if.end23.sw.bb36_crit_edge86, %if.end23.sw.bb36_crit_edge87
  br label %sw.epilog

do.end40:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %type_range to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %conv) #12
  br label %if.then48

sw.epilog:                                        ; preds = %sw.bb36, %sw.bb34, %sw.bb32, %sw.bb30, %if.end23.sw.epilog_crit_edge
  %.sink = phi i8 [ 16, %sw.bb36 ], [ 48, %sw.bb34 ], [ 4, %sw.bb32 ], [ 2, %sw.bb30 ], [ 1, %if.end23.sw.epilog_crit_edge ]
  %type37 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %type37 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %.sink, ptr %type37, align 4
  %param_list46 = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 1
  %prev.i77 = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i77 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i77, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p_list, ptr noundef %13, ptr noundef %param_list46) #9
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i77 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %p_list, ptr %prev.i77, align 4
  %15 = ptrtoint ptr %p_list to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %param_list46, ptr %p_list, align 4
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev.i, align 8
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %p_list, ptr %13, align 4
  br label %cleanup

if.then48:                                        ; preds = %do.end40, %do.end20, %do.end9
  %value49 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %value49 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %value49, align 4
  tail call void @kfree(ptr noundef %19) #9
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i, align 128
  tail call void @kfree(ptr noundef %21) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then48, %if.end.i.i, %sw.epilog.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %if.then48 ], [ %call7.i.i, %sw.epilog.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsi_release_param_list(ptr noundef %param_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %param_list1 = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 1
  %0 = ptrtoint ptr %param_list1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list1, align 4
  %cmp.not25 = icmp eq ptr %1, %param_list1
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in26 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %param.0 = getelementptr i8, ptr %.pn.in26, i32 -20
  %2 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in26, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in26) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in26, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in26, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in26, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %param.0 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %param.0, align 128
  tail call void @kfree(ptr noundef %12) #9
  %value = getelementptr i8, ptr %.pn.in26, i32 -16
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %value, align 4
  tail call void @kfree(ptr noundef %14) #9
  tail call void @kfree(ptr noundef %param.0) #9
  %cmp.not = icmp eq ptr %.pn, %param_list1
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %extra_response_list.i = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 2
  %15 = ptrtoint ptr %extra_response_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %extra_response_list.i, align 4
  %cmp.not19.i = icmp eq ptr %16, %extra_response_list.i
  br i1 %cmp.not19.i, label %for.end.iscsi_release_extra_responses.exit_crit_edge, label %for.end.for.body.i_crit_edge

for.end.for.body.i_crit_edge:                     ; preds = %for.end
  br label %for.body.i

for.end.iscsi_release_extra_responses.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_release_extra_responses.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.end.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %16, %for.end.for.body.i_crit_edge ]
  %er.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -96
  %17 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 32
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i, align 4
  %20 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn.in20.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %24 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i, align 4
  %prev.i.i24 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i24, align 4
  tail call void @kfree(ptr noundef %er.0.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %extra_response_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.iscsi_release_extra_responses.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.iscsi_release_extra_responses.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_release_extra_responses.exit

iscsi_release_extra_responses.exit:               ; preds = %list_del.exit.i.iscsi_release_extra_responses.exit_crit_edge, %for.end.iscsi_release_extra_responses.exit_crit_edge
  tail call void @kfree(ptr noundef %param_list) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_set_keys_to_negotiate(ptr noundef %param_list, i1 noundef zeroext %iser) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %iser to i8
  %0 = ptrtoint ptr %param_list to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %param_list, align 4
  %param_list3 = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 1
  %1 = ptrtoint ptr %param_list3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn313 = load ptr, ptr %param_list3, align 4
  %cmp.not314 = icmp eq ptr %.pn313, %param_list3
  br i1 %cmp.not314, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn315 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn313, %entry.for.body_crit_edge ]
  %param.0 = getelementptr i8, ptr %.pn315, i32 -20
  %state = getelementptr i8, ptr %.pn315, i32 -4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %state, align 16
  %3 = ptrtoint ptr %param.0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %param.0, align 128
  %call = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(11) @.str.38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %for.body.for.inc.sink.split_crit_edge, label %if.else

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  %call8 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(13) @.str.40) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %if.else15

if.then10:                                        ; preds = %if.else
  br i1 %iser, label %if.then10.for.inc_crit_edge, label %if.then10.for.inc.sink.split_crit_edge

if.then10.for.inc.sink.split_crit_edge:           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.then10.for.inc_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else15:                                        ; preds = %if.else
  %call17 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(11) @.str.42) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then19, label %if.else25

if.then19:                                        ; preds = %if.else15
  br i1 %iser, label %if.then19.for.inc_crit_edge, label %if.then19.for.inc.sink.split_crit_edge

if.then19.for.inc.sink.split_crit_edge:           ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.then19.for.inc_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else25:                                        ; preds = %if.else15
  %call27 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(15) @.str.43) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.else25.for.inc.sink.split_crit_edge, label %if.else32

if.else25.for.inc.sink.split_crit_edge:           ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else32:                                        ; preds = %if.else25
  %call34 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(11) @.str.47) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.else32.for.inc_crit_edge, label %if.else37

if.else32.for.inc_crit_edge:                      ; preds = %if.else32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else37:                                        ; preds = %if.else32
  %call39 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(14) @.str.49) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.else37.for.inc_crit_edge, label %if.else42

if.else37.for.inc_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else42:                                        ; preds = %if.else37
  %call44 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(12) @.str.51) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %if.else52

if.then46:                                        ; preds = %if.else42
  %value = getelementptr i8, ptr %.pn315, i32 -16
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %value, align 4
  %tobool47.not = icmp eq ptr %6, null
  br i1 %tobool47.not, label %if.then46.for.inc_crit_edge, label %if.then46.for.inc.sink.split_crit_edge

if.then46.for.inc.sink.split_crit_edge:           ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.then46.for.inc_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else52:                                        ; preds = %if.else42
  %call54 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(15) @.str.53) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.else52.for.inc_crit_edge, label %if.else57

if.else52.for.inc_crit_edge:                      ; preds = %if.else52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else57:                                        ; preds = %if.else52
  %call59 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(21) @.str.57) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.else57.for.inc.sink.split_crit_edge, label %if.else64

if.else57.for.inc.sink.split_crit_edge:           ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else64:                                        ; preds = %if.else57
  %call66 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(11) @.str.58) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.else64.for.inc.sink.split_crit_edge, label %if.else71

if.else64.for.inc.sink.split_crit_edge:           ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else71:                                        ; preds = %if.else64
  %call73 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(14) @.str.59) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.else71.for.inc.sink.split_crit_edge, label %if.else78

if.else71.for.inc.sink.split_crit_edge:           ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else78:                                        ; preds = %if.else71
  %call80 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(25) @.str.62) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then82, label %if.else88

if.then82:                                        ; preds = %if.else78
  br i1 %iser, label %if.then82.for.inc_crit_edge, label %if.then82.for.inc.sink.split_crit_edge

if.then82.for.inc.sink.split_crit_edge:           ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.then82.for.inc_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else88:                                        ; preds = %if.else78
  %call90 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(25) @.str.60) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.else88.for.inc_crit_edge, label %if.else93

if.else88.for.inc_crit_edge:                      ; preds = %if.else88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else93:                                        ; preds = %if.else88
  %call95 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(15) @.str.64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.else93.for.inc.sink.split_crit_edge, label %if.else100

if.else93.for.inc.sink.split_crit_edge:           ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else100:                                       ; preds = %if.else93
  %call102 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(17) @.str.65) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.else100.for.inc.sink.split_crit_edge, label %if.else107

if.else100.for.inc.sink.split_crit_edge:          ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else107:                                       ; preds = %if.else100
  %call109 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(17) @.str.67) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.else107.for.inc.sink.split_crit_edge, label %if.else114

if.else107.for.inc.sink.split_crit_edge:          ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else114:                                       ; preds = %if.else107
  %call116 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(19) @.str.69) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.else114.for.inc.sink.split_crit_edge, label %if.else121

if.else114.for.inc.sink.split_crit_edge:          ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else121:                                       ; preds = %if.else114
  %call123 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(18) @.str.71) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.else121.for.inc.sink.split_crit_edge, label %if.else128

if.else121.for.inc.sink.split_crit_edge:          ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else128:                                       ; preds = %if.else121
  %call130 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(15) @.str.72) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.else128.for.inc.sink.split_crit_edge, label %if.else135

if.else128.for.inc.sink.split_crit_edge:          ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else135:                                       ; preds = %if.else128
  %call137 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(20) @.str.73) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.else135.for.inc.sink.split_crit_edge, label %if.else142

if.else135.for.inc.sink.split_crit_edge:          ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else142:                                       ; preds = %if.else135
  %call144 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(19) @.str.74) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.else142.for.inc.sink.split_crit_edge, label %if.else149

if.else142.for.inc.sink.split_crit_edge:          ; preds = %if.else142
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else149:                                       ; preds = %if.else142
  %call151 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(12) @.str.76) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.else149.for.inc.sink.split_crit_edge, label %if.else156

if.else149.for.inc.sink.split_crit_edge:          ; preds = %if.else149
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else156:                                       ; preds = %if.else149
  %call158 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(9) @.str.77) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.else156.for.inc.sink.split_crit_edge, label %if.else163

if.else156.for.inc.sink.split_crit_edge:          ; preds = %if.else156
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else163:                                       ; preds = %if.else156
  %call165 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(9) @.str.78) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call165)
  %tobool166.not = icmp eq i32 %call165, 0
  br i1 %tobool166.not, label %if.else163.for.inc.sink.split_crit_edge, label %if.else170

if.else163.for.inc.sink.split_crit_edge:          ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else170:                                       ; preds = %if.else163
  %call172 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(10) @.str.79) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.else170.for.inc.sink.split_crit_edge, label %if.else177

if.else170.for.inc.sink.split_crit_edge:          ; preds = %if.else170
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else177:                                       ; preds = %if.else170
  %call179 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(10) @.str.81) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %tobool180.not = icmp eq i32 %call179, 0
  br i1 %tobool180.not, label %if.else177.for.inc.sink.split_crit_edge, label %if.else184

if.else177.for.inc.sink.split_crit_edge:          ; preds = %if.else177
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else184:                                       ; preds = %if.else177
  %call186 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(15) @.str.82) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.then188, label %if.else194

if.then188:                                       ; preds = %if.else184
  br i1 %iser, label %if.then188.for.inc.sink.split_crit_edge, label %if.then188.for.inc_crit_edge

if.then188.for.inc_crit_edge:                     ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then188.for.inc.sink.split_crit_edge:          ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else194:                                       ; preds = %if.else184
  %call196 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(31) @.str.83) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call196)
  %tobool197.not = icmp eq i32 %call196, 0
  br i1 %tobool197.not, label %if.then198, label %if.else204

if.then198:                                       ; preds = %if.else194
  br i1 %iser, label %if.then198.for.inc.sink.split_crit_edge, label %if.then198.for.inc_crit_edge

if.then198.for.inc_crit_edge:                     ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then198.for.inc.sink.split_crit_edge:          ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else204:                                       ; preds = %if.else194
  %call206 = tail call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(28) @.str.84) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  %7 = and i1 %tobool207.not, %iser
  br i1 %7, label %if.else204.for.inc.sink.split_crit_edge, label %if.else204.for.inc_crit_edge

if.else204.for.inc_crit_edge:                     ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else204.for.inc.sink.split_crit_edge:          ; preds = %if.else204
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else204.for.inc.sink.split_crit_edge, %if.then198.for.inc.sink.split_crit_edge, %if.then188.for.inc.sink.split_crit_edge, %if.else177.for.inc.sink.split_crit_edge, %if.else170.for.inc.sink.split_crit_edge, %if.else163.for.inc.sink.split_crit_edge, %if.else156.for.inc.sink.split_crit_edge, %if.else149.for.inc.sink.split_crit_edge, %if.else142.for.inc.sink.split_crit_edge, %if.else135.for.inc.sink.split_crit_edge, %if.else128.for.inc.sink.split_crit_edge, %if.else121.for.inc.sink.split_crit_edge, %if.else114.for.inc.sink.split_crit_edge, %if.else107.for.inc.sink.split_crit_edge, %if.else100.for.inc.sink.split_crit_edge, %if.else93.for.inc.sink.split_crit_edge, %if.then82.for.inc.sink.split_crit_edge, %if.else71.for.inc.sink.split_crit_edge, %if.else64.for.inc.sink.split_crit_edge, %if.else57.for.inc.sink.split_crit_edge, %if.then46.for.inc.sink.split_crit_edge, %if.else25.for.inc.sink.split_crit_edge, %if.then19.for.inc.sink.split_crit_edge, %if.then10.for.inc.sink.split_crit_edge, %for.body.for.inc.sink.split_crit_edge
  %.sink = phi i32 [ 2, %for.body.for.inc.sink.split_crit_edge ], [ 2, %if.then10.for.inc.sink.split_crit_edge ], [ 2, %if.then19.for.inc.sink.split_crit_edge ], [ 2, %if.else25.for.inc.sink.split_crit_edge ], [ 2, %if.then46.for.inc.sink.split_crit_edge ], [ 2, %if.else57.for.inc.sink.split_crit_edge ], [ 2, %if.else64.for.inc.sink.split_crit_edge ], [ 2, %if.else71.for.inc.sink.split_crit_edge ], [ 2, %if.then82.for.inc.sink.split_crit_edge ], [ 2, %if.else93.for.inc.sink.split_crit_edge ], [ 2, %if.else100.for.inc.sink.split_crit_edge ], [ 2, %if.else107.for.inc.sink.split_crit_edge ], [ 2, %if.else114.for.inc.sink.split_crit_edge ], [ 2, %if.else121.for.inc.sink.split_crit_edge ], [ 2, %if.else128.for.inc.sink.split_crit_edge ], [ 2, %if.else135.for.inc.sink.split_crit_edge ], [ 2, %if.else142.for.inc.sink.split_crit_edge ], [ 2, %if.else149.for.inc.sink.split_crit_edge ], [ 16, %if.else156.for.inc.sink.split_crit_edge ], [ 16, %if.else163.for.inc.sink.split_crit_edge ], [ 16, %if.else170.for.inc.sink.split_crit_edge ], [ 16, %if.else177.for.inc.sink.split_crit_edge ], [ 2, %if.then188.for.inc.sink.split_crit_edge ], [ 2, %if.then198.for.inc.sink.split_crit_edge ], [ 2, %if.else204.for.inc.sink.split_crit_edge ]
  %8 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %state, align 16
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else204.for.inc_crit_edge, %if.then198.for.inc_crit_edge, %if.then188.for.inc_crit_edge, %if.else88.for.inc_crit_edge, %if.then82.for.inc_crit_edge, %if.else52.for.inc_crit_edge, %if.then46.for.inc_crit_edge, %if.else37.for.inc_crit_edge, %if.else32.for.inc_crit_edge, %if.then19.for.inc_crit_edge, %if.then10.for.inc_crit_edge
  %9 = ptrtoint ptr %.pn315 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn315, align 4
  %cmp.not = icmp eq ptr %.pn, %param_list3
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_set_keys_irrelevant_for_discovery(ptr noundef readonly %param_list) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %param_list1 = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 1
  %0 = ptrtoint ptr %param_list1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn181 = load ptr, ptr %param_list1, align 4
  %cmp.not182 = icmp eq ptr %.pn181, %param_list1
  br i1 %cmp.not182, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn183 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn181, %entry.for.body_crit_edge ]
  %param.0 = getelementptr i8, ptr %.pn183, i32 -20
  %1 = ptrtoint ptr %param.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %param.0, align 128
  %call = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(15) @.str.43) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.body.for.inc.sink.split_crit_edge, label %if.else

for.body.for.inc.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else:                                          ; preds = %for.body
  %call4 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(11) @.str.58) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.else.for.inc.sink.split_crit_edge, label %if.else9

if.else.for.inc.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else9:                                         ; preds = %if.else
  %call11 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(14) @.str.59) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.else9.for.inc.sink.split_crit_edge, label %if.else16

if.else9.for.inc.sink.split_crit_edge:            ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else16:                                        ; preds = %if.else9
  %call18 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(15) @.str.64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.else16.for.inc.sink.split_crit_edge, label %if.else23

if.else16.for.inc.sink.split_crit_edge:           ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else23:                                        ; preds = %if.else16
  %call25 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(17) @.str.65) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.else23.for.inc.sink.split_crit_edge, label %if.else30

if.else23.for.inc.sink.split_crit_edge:           ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else30:                                        ; preds = %if.else23
  %call32 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(18) @.str.71) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.else30.for.inc.sink.split_crit_edge, label %if.else37

if.else30.for.inc.sink.split_crit_edge:           ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else37:                                        ; preds = %if.else30
  %call39 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(15) @.str.72) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.else37.for.inc.sink.split_crit_edge, label %if.else44

if.else37.for.inc.sink.split_crit_edge:           ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else44:                                        ; preds = %if.else37
  %call46 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(20) @.str.73) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.else44.for.inc.sink.split_crit_edge, label %if.else51

if.else44.for.inc.sink.split_crit_edge:           ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else51:                                        ; preds = %if.else44
  %call53 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(19) @.str.74) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.else51.for.inc.sink.split_crit_edge, label %if.else58

if.else51.for.inc.sink.split_crit_edge:           ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else58:                                        ; preds = %if.else51
  %call60 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(17) @.str.67) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.else58.for.inc.sink.split_crit_edge, label %if.else65

if.else58.for.inc.sink.split_crit_edge:           ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else65:                                        ; preds = %if.else58
  %call67 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(19) @.str.69) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.else65.for.inc.sink.split_crit_edge, label %if.else72

if.else65.for.inc.sink.split_crit_edge:           ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else72:                                        ; preds = %if.else65
  %call74 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(9) @.str.77) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.else72.for.inc.sink.split_crit_edge, label %if.else79

if.else72.for.inc.sink.split_crit_edge:           ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else79:                                        ; preds = %if.else72
  %call81 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(9) @.str.78) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.else79.for.inc.sink.split_crit_edge, label %if.else86

if.else79.for.inc.sink.split_crit_edge:           ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else86:                                        ; preds = %if.else79
  %call88 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(10) @.str.79) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.else86.for.inc.sink.split_crit_edge, label %if.else93

if.else86.for.inc.sink.split_crit_edge:           ; preds = %if.else86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else93:                                        ; preds = %if.else86
  %call95 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(10) @.str.81) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.else93.for.inc.sink.split_crit_edge, label %if.else100

if.else93.for.inc.sink.split_crit_edge:           ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else100:                                       ; preds = %if.else93
  %call102 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(15) @.str.82) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.else100.for.inc.sink.split_crit_edge, label %if.else107

if.else100.for.inc.sink.split_crit_edge:          ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else107:                                       ; preds = %if.else100
  %call109 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(31) @.str.83) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.else107.for.inc.sink.split_crit_edge, label %if.else114

if.else107.for.inc.sink.split_crit_edge:          ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

if.else114:                                       ; preds = %if.else107
  %call116 = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(28) @.str.84) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.else114.for.inc.sink.split_crit_edge, label %if.else114.for.inc_crit_edge

if.else114.for.inc_crit_edge:                     ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.else114.for.inc.sink.split_crit_edge:          ; preds = %if.else114
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.else114.for.inc.sink.split_crit_edge, %if.else107.for.inc.sink.split_crit_edge, %if.else100.for.inc.sink.split_crit_edge, %if.else93.for.inc.sink.split_crit_edge, %if.else86.for.inc.sink.split_crit_edge, %if.else79.for.inc.sink.split_crit_edge, %if.else72.for.inc.sink.split_crit_edge, %if.else65.for.inc.sink.split_crit_edge, %if.else58.for.inc.sink.split_crit_edge, %if.else51.for.inc.sink.split_crit_edge, %if.else44.for.inc.sink.split_crit_edge, %if.else37.for.inc.sink.split_crit_edge, %if.else30.for.inc.sink.split_crit_edge, %if.else23.for.inc.sink.split_crit_edge, %if.else16.for.inc.sink.split_crit_edge, %if.else9.for.inc.sink.split_crit_edge, %if.else.for.inc.sink.split_crit_edge, %for.body.for.inc.sink.split_crit_edge
  %state7 = getelementptr i8, ptr %.pn183, i32 -4
  %3 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state7, align 16
  %and = and i32 %4, -3
  store i32 %and, ptr %state7, align 16
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.else114.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn183 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn183, align 4
  %cmp.not = icmp eq ptr %.pn, %param_list1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_copy_param_list(ptr nocapture noundef writeonly %dst_param_list, ptr noundef readonly %src_param_list, i32 noundef %leading) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list2 = getelementptr inbounds %struct.iscsi_param_list, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %param_list2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %param_list2, ptr %param_list2, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_param_list, ptr %call7.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %param_list2, ptr %prev.i, align 8
  %extra_response_list = getelementptr inbounds %struct.iscsi_param_list, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %extra_response_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %extra_response_list, ptr %extra_response_list, align 4
  %prev.i115 = getelementptr inbounds %struct.iscsi_param_list, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i115 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %extra_response_list, ptr %prev.i115, align 8
  %param_list3 = getelementptr inbounds %struct.iscsi_param_list, ptr %src_param_list, i32 0, i32 1
  %5 = ptrtoint ptr %param_list3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn119 = load ptr, ptr %param_list3, align 4
  %cmp.not121 = icmp eq ptr %.pn119, %param_list3
  br i1 %cmp.not121, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %leading)
  %tobool6.not = icmp eq i32 %leading, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn122 = phi ptr [ %.pn119, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %param.0123 = getelementptr i8, ptr %.pn122, i32 -20
  br i1 %tobool6.not, label %land.lhs.true, label %for.body.if.end24_crit_edge

for.body.if.end24_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

land.lhs.true:                                    ; preds = %for.body
  %scope = getelementptr i8, ptr %.pn122, i32 -10
  %6 = ptrtoint ptr %scope to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %scope, align 2
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end24_crit_edge, label %if.then8

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then8:                                         ; preds = %land.lhs.true
  %9 = ptrtoint ptr %param.0123 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %param.0123, align 128
  %call9 = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(11) @.str.47) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.then8.if.end24_crit_edge, label %land.lhs.true12

if.then8.if.end24_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

land.lhs.true12:                                  ; preds = %if.then8
  %call14 = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(14) @.str.49) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15.not = icmp eq i32 %call14, 0
  br i1 %cmp15.not, label %land.lhs.true12.if.end24_crit_edge, label %land.lhs.true17

land.lhs.true12.if.end24_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %call19 = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(21) @.str.57) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %land.lhs.true17.if.end24_crit_edge, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true17.if.end24_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end24:                                         ; preds = %land.lhs.true17.if.end24_crit_edge, %land.lhs.true12.if.end24_crit_edge, %if.then8.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %for.body.if.end24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i116 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 128) #13
  %tobool26.not = icmp eq ptr %call7.i.i116, null
  br i1 %tobool26.not, label %if.end24.err_out_crit_edge, label %if.end33

if.end24.err_out_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end33:                                         ; preds = %if.end24
  %12 = ptrtoint ptr %param.0123 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %param.0123, align 128
  %call35 = tail call noalias ptr @kstrdup(ptr noundef %13, i32 noundef 3264) #9
  %14 = ptrtoint ptr %call7.i.i116 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call35, ptr %call7.i.i116, align 128
  %value = getelementptr i8, ptr %.pn122, i32 -16
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %value, align 4
  %call37 = tail call noalias ptr @kstrdup(ptr noundef %16, i32 noundef 3264) #9
  %value38 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i116, i32 0, i32 1
  %17 = ptrtoint ptr %value38 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call37, ptr %value38, align 4
  %tobool40.not = icmp eq ptr %call37, null
  br i1 %tobool40.not, label %if.end33.if.then43_crit_edge, label %lor.lhs.false

if.end33.if.then43_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

lor.lhs.false:                                    ; preds = %if.end33
  %18 = ptrtoint ptr %call7.i.i116 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7.i.i116, align 128
  %tobool42.not = icmp eq ptr %19, null
  br i1 %tobool42.not, label %lor.lhs.false.if.then43_crit_edge, label %if.end51

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false.if.then43_crit_edge, %if.end33.if.then43_crit_edge
  tail call void @kfree(ptr noundef %call37) #9
  %20 = ptrtoint ptr %call7.i.i116 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i116, align 128
  tail call void @kfree(ptr noundef %21) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i116) #9
  br label %err_out

if.end51:                                         ; preds = %lor.lhs.false
  %set_param = getelementptr i8, ptr %.pn122, i32 -12
  %22 = ptrtoint ptr %set_param to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %set_param, align 8
  %set_param52 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i116, i32 0, i32 2
  %24 = ptrtoint ptr %set_param52 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %set_param52, align 8
  %phase = getelementptr i8, ptr %.pn122, i32 -11
  %25 = ptrtoint ptr %phase to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %phase, align 1
  %phase53 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i116, i32 0, i32 3
  %27 = ptrtoint ptr %phase53 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %phase53, align 1
  %scope54 = getelementptr i8, ptr %.pn122, i32 -10
  %28 = ptrtoint ptr %scope54 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %scope54, align 2
  %scope55 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i116, i32 0, i32 4
  %30 = ptrtoint ptr %scope55 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %scope55, align 2
  %sender = getelementptr i8, ptr %.pn122, i32 -9
  %31 = ptrtoint ptr %sender to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sender, align 1
  %sender56 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i116, i32 0, i32 5
  %33 = ptrtoint ptr %sender56 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %sender56, align 1
  %type = getelementptr i8, ptr %.pn122, i32 -8
  %34 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %type, align 4
  %type57 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i116, i32 0, i32 6
  %36 = ptrtoint ptr %type57 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %type57, align 4
  %use = getelementptr i8, ptr %.pn122, i32 -7
  %37 = ptrtoint ptr %use to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %use, align 1
  %use58 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i116, i32 0, i32 7
  %39 = ptrtoint ptr %use58 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %use58, align 1
  %type_range = getelementptr i8, ptr %.pn122, i32 -6
  %40 = ptrtoint ptr %type_range to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %type_range, align 2
  %type_range59 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i116, i32 0, i32 8
  %42 = ptrtoint ptr %type_range59 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %type_range59, align 2
  %p_list60 = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i116, i32 0, i32 10
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %p_list60, ptr noundef %44, ptr noundef %param_list2) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end51.for.inc_crit_edge

if.end51.for.inc_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i.i:                                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %p_list60, ptr %prev.i, align 8
  %46 = ptrtoint ptr %p_list60 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %param_list2, ptr %p_list60, align 4
  %prev3.i.i = getelementptr inbounds %struct.iscsi_param, ptr %call7.i.i116, i32 0, i32 10, i32 1
  %47 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i, align 8
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %p_list60, ptr %44, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.end51.for.inc_crit_edge, %land.lhs.true17.for.inc_crit_edge
  %49 = ptrtoint ptr %.pn122 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn = load ptr, ptr %.pn122, align 4
  %cmp.not = icmp eq ptr %.pn, %param_list3
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %50 = ptrtoint ptr %param_list2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile ptr, ptr %param_list2, align 4
  %cmp.i.not = icmp eq ptr %51, %param_list2
  br i1 %cmp.i.not, label %for.end.err_out_crit_edge, label %if.then70

for.end.err_out_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.then70:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %dst_param_list to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i, ptr %dst_param_list, align 4
  br label %cleanup

err_out:                                          ; preds = %for.end.err_out_crit_edge, %if.then43, %if.end24.err_out_crit_edge
  %.str.93.sink = phi ptr [ @.str.90, %if.then43 ], [ @.str.93, %for.end.err_out_crit_edge ], [ @.str.87, %if.end24.err_out_crit_edge ]
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.93.sink) #12
  tail call void @iscsi_release_param_list(ptr noundef nonnull %call7.i.i)
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.then70, %do.end
  %retval.0 = phi i32 [ -12, %err_out ], [ 0, %if.then70 ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsi_find_param_from_key(ptr noundef %key, ptr noundef readonly %param_list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %key, null
  %tobool1.not = icmp eq ptr %param_list, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %param_list2 = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %param_list2, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %param_list2
  br i1 %cmp.not, label %do.end16, label %for.body

for.body:                                         ; preds = %for.cond
  %param.0 = getelementptr i8, ptr %.pn, i32 -20
  %1 = ptrtoint ptr %param.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %param.0, align 128
  %call5 = tail call i32 @strcmp(ptr noundef nonnull %key, ptr noundef %2) #14
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %cleanup.loopexit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

do.end16:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull %key) #12
  br label %cleanup

cleanup.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %param.0.le = getelementptr i8, ptr %.pn, i32 -20
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %do.end16, %do.end
  %retval.0 = phi ptr [ null, %do.end16 ], [ null, %do.end ], [ %param.0.le, %cleanup.loopexit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_extract_key_value(ptr noundef %textbuf, ptr nocapture noundef writeonly %key, ptr nocapture noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @strchr(ptr noundef %textbuf, i32 noundef 61)
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %value, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #12
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %textbuf, ptr %key, align 4
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %value, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %3, align 1
  %5 = load ptr, ptr %value, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1
  store ptr %add.ptr, ptr %value, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_update_param_value(ptr nocapture noundef %param, ptr noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %value1 = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 1
  %0 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %value1, align 4
  tail call void @kfree(ptr noundef %1) #9
  %call = tail call noalias ptr @kstrdup(ptr noundef %value, i32 noundef 3264) #9
  %2 = ptrtoint ptr %value1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %value1, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %do.body5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  br label %return

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_update_param_value.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_update_param_value, %if.then11)) #9
          to label %return [label %if.then11], !srcloc !561

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %param, align 128
  %5 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %value1, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_update_param_value.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.104, ptr noundef %4, ptr noundef %6) #9
  br label %return

return:                                           ; preds = %if.then11, %do.body5, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.then11 ], [ 0, %do.body5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_decode_text_input(i8 noundef zeroext %phase, i8 noundef zeroext %sender, ptr noundef %textbuf, i32 noundef %length, ptr nocapture noundef readonly %conn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %param_list1 = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 62
  %0 = ptrtoint ptr %param_list1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param_list1, align 4
  %call = tail call ptr @kmemdup_nul(ptr noundef %textbuf, i32 noundef %length, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105, i32 noundef %length) #12
  br label %cleanup69

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call, i32 %length
  %cmp138 = icmp ult ptr %call, %add.ptr
  br i1 %cmp138, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %conv = zext i8 %phase to i32
  %and = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  %conv26 = zext i8 %sender to i32
  %extra_response_list.i = getelementptr inbounds %struct.iscsi_param_list, ptr %1, i32 0, i32 2
  %prev.i21.i = getelementptr inbounds %struct.iscsi_param_list, ptr %1, i32 0, i32 2, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %start.0139 = phi ptr [ %call, %while.body.lr.ph ], [ %start.1, %cleanup.while.body_crit_edge ]
  %call.i = tail call ptr @strchr(ptr noundef %start.0139, i32 noundef 61) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %iscsi_extract_key_value.exit.thread, label %do.body7

iscsi_extract_key_value.exit.thread:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #12
  br label %free_buffer

do.body7:                                         ; preds = %while.body
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %call.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_decode_text_input.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_decode_text_input, %if.then13)) #9
          to label %do.end16 [label %if.then13], !srcloc !561

if.then13:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_decode_text_input.__UNIQUE_ID_ddebug252, ptr noundef nonnull @.str.107, ptr noundef %start.0139, ptr noundef %add.ptr.i) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %do.body7
  br i1 %tobool17.not, label %do.end16.if.end24_crit_edge, label %if.then18

do.end16.if.end24_crit_edge:                      ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18:                                        ; preds = %do.end16
  %call.i93 = tail call i32 @strcmp(ptr noundef %start.0139, ptr noundef nonnull dereferenceable(7) @.str.155) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool.not.i94 = icmp eq i32 %call.i93, 0
  br i1 %tobool.not.i94, label %if.then18.cleanup.thread130_crit_edge, label %lor.lhs.false.i

if.then18.cleanup.thread130_crit_edge:            ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread130

lor.lhs.false.i:                                  ; preds = %if.then18
  %call1.i95 = tail call i32 @strcmp(ptr noundef %start.0139, ptr noundef nonnull dereferenceable(7) @.str.156) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95)
  %tobool2.not.i = icmp eq i32 %call1.i95, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.cleanup.thread130_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.cleanup.thread130_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread130

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @strcmp(ptr noundef %start.0139, ptr noundef nonnull dereferenceable(7) @.str.157) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.cleanup.thread130_crit_edge, label %lor.lhs.false6.i

lor.lhs.false3.i.cleanup.thread130_crit_edge:     ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread130

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  %call7.i = tail call i32 @strcmp(ptr noundef %start.0139, ptr noundef nonnull dereferenceable(7) @.str.158) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %lor.lhs.false6.i.cleanup.thread130_crit_edge, label %lor.lhs.false9.i

lor.lhs.false6.i.cleanup.thread130_crit_edge:     ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread130

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false6.i
  %call10.i = tail call i32 @strcmp(ptr noundef %start.0139, ptr noundef nonnull dereferenceable(7) @.str.159) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %lor.lhs.false9.i.cleanup.thread130_crit_edge, label %if.end.i96

lor.lhs.false9.i.cleanup.thread130_crit_edge:     ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread130

if.end.i96:                                       ; preds = %lor.lhs.false9.i
  %call12.i = tail call i32 @strcmp(ptr noundef %start.0139, ptr noundef nonnull dereferenceable(6) @.str.160) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end.i96.cleanup.thread130_crit_edge, label %lor.lhs.false14.i

if.end.i96.cleanup.thread130_crit_edge:           ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread130

lor.lhs.false14.i:                                ; preds = %if.end.i96
  %call15.i = tail call i32 @strcmp(ptr noundef %start.0139, ptr noundef nonnull dereferenceable(6) @.str.161) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %lor.lhs.false14.i.cleanup.thread130_crit_edge, label %lor.lhs.false17.i

lor.lhs.false14.i.cleanup.thread130_crit_edge:    ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread130

lor.lhs.false17.i:                                ; preds = %lor.lhs.false14.i
  %call18.i = tail call i32 @strcmp(ptr noundef %start.0139, ptr noundef nonnull dereferenceable(6) @.str.162) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %lor.lhs.false17.i.cleanup.thread130_crit_edge, label %lor.lhs.false20.i

lor.lhs.false17.i.cleanup.thread130_crit_edge:    ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread130

lor.lhs.false20.i:                                ; preds = %lor.lhs.false17.i
  %call21.i = tail call i32 @strcmp(ptr noundef %start.0139, ptr noundef nonnull dereferenceable(6) @.str.163) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %lor.lhs.false20.i.cleanup.thread130_crit_edge, label %lor.lhs.false23.i

lor.lhs.false20.i.cleanup.thread130_crit_edge:    ; preds = %lor.lhs.false20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread130

lor.lhs.false23.i:                                ; preds = %lor.lhs.false20.i
  %call24.i = tail call i32 @strcmp(ptr noundef %start.0139, ptr noundef nonnull dereferenceable(6) @.str.164) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %lor.lhs.false23.i.cleanup.thread130_crit_edge, label %lor.lhs.false26.i

lor.lhs.false23.i.cleanup.thread130_crit_edge:    ; preds = %lor.lhs.false23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread130

lor.lhs.false26.i:                                ; preds = %lor.lhs.false23.i
  %call27.i = tail call i32 @strcmp(ptr noundef %start.0139, ptr noundef nonnull dereferenceable(6) @.str.165) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %lor.lhs.false26.i.cleanup.thread130_crit_edge, label %lor.lhs.false29.i

lor.lhs.false26.i.cleanup.thread130_crit_edge:    ; preds = %lor.lhs.false26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread130

lor.lhs.false29.i:                                ; preds = %lor.lhs.false26.i
  %call30.i = tail call i32 @strcmp(ptr noundef %start.0139, ptr noundef nonnull dereferenceable(6) @.str.166) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %lor.lhs.false29.i.cleanup.thread130_crit_edge, label %iscsi_check_for_auth_key.exit

lor.lhs.false29.i.cleanup.thread130_crit_edge:    ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread130

iscsi_check_for_auth_key.exit:                    ; preds = %lor.lhs.false29.i
  %call33.i = tail call i32 @strcmp(ptr noundef %start.0139, ptr noundef nonnull dereferenceable(7) @.str.167) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %iscsi_check_for_auth_key.exit.cleanup.thread130_crit_edge, label %iscsi_check_for_auth_key.exit.if.end24_crit_edge

iscsi_check_for_auth_key.exit.if.end24_crit_edge: ; preds = %iscsi_check_for_auth_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

iscsi_check_for_auth_key.exit.cleanup.thread130_crit_edge: ; preds = %iscsi_check_for_auth_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread130

cleanup.thread130:                                ; preds = %iscsi_check_for_auth_key.exit.cleanup.thread130_crit_edge, %lor.lhs.false29.i.cleanup.thread130_crit_edge, %lor.lhs.false26.i.cleanup.thread130_crit_edge, %lor.lhs.false23.i.cleanup.thread130_crit_edge, %lor.lhs.false20.i.cleanup.thread130_crit_edge, %lor.lhs.false17.i.cleanup.thread130_crit_edge, %lor.lhs.false14.i.cleanup.thread130_crit_edge, %if.end.i96.cleanup.thread130_crit_edge, %lor.lhs.false9.i.cleanup.thread130_crit_edge, %lor.lhs.false6.i.cleanup.thread130_crit_edge, %lor.lhs.false3.i.cleanup.thread130_crit_edge, %lor.lhs.false.i.cleanup.thread130_crit_edge, %if.then18.cleanup.thread130_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #9
  br label %cleanup69

if.end24:                                         ; preds = %iscsi_check_for_auth_key.exit.if.end24_crit_edge, %do.end16.if.end24_crit_edge
  %call27 = tail call fastcc ptr @iscsi_check_key(ptr noundef %start.0139, i32 noundef %conv, i32 noundef %conv26, ptr noundef %1)
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %if.then29, label %if.end39

if.then29:                                        ; preds = %if.end24
  %call.i98 = tail call i32 @strlen(ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call.i98)
  %cmp.i = icmp ugt i32 %call.i98, 255
  br i1 %cmp.i, label %do.end.i100, label %if.end.i102

do.end.i100:                                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef %start.0139, i32 noundef 255) #12
  br label %free_buffer

if.end.i102:                                      ; preds = %if.then29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 128) #13
  %tobool.not.i101 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i101, label %do.end6.i, label %if.end9.i

do.end6.i:                                        ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.189) #12
  br label %free_buffer

if.end9.i:                                        ; preds = %if.end.i102
  %er_list.i = getelementptr inbounds %struct.iscsi_extra_response, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %er_list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %er_list.i, ptr %er_list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.iscsi_extra_response, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %er_list.i, ptr %prev.i.i, align 4
  %call11.i = tail call i32 @strlcpy(ptr noundef nonnull %call7.i.i.i, ptr noundef %start.0139, i32 noundef 64) #9
  %value12.i = getelementptr inbounds %struct.iscsi_extra_response, ptr %call7.i.i.i, i32 0, i32 1
  %call14.i = tail call i32 @strlcpy(ptr noundef %value12.i, ptr noundef nonnull @.str.191, i32 noundef 32) #9
  %6 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i21.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %er_list.i, ptr noundef %7, ptr noundef %extra_response_list.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end9.i.if.end34_crit_edge

if.end9.i.if.end34_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end.i.i.i:                                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %er_list.i, ptr %prev.i21.i, align 4
  %9 = ptrtoint ptr %er_list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %extra_response_list.i, ptr %er_list.i, align 8
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %er_list.i, ptr %7, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.end.i.i.i, %if.end9.i.if.end34_crit_edge
  %call35 = tail call i32 @strlen(ptr noundef %start.0139) #14
  %call36 = tail call i32 @strlen(ptr noundef %add.ptr.i) #14
  %add = add i32 %call36, %call35
  br label %cleanup

if.end39:                                         ; preds = %if.end24
  %call40 = tail call fastcc i32 @iscsi_check_value(ptr noundef nonnull %call27, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end39.free_buffer_crit_edge, label %if.end44

if.end39.free_buffer_crit_edge:                   ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_buffer

if.end44:                                         ; preds = %if.end39
  %call45 = tail call i32 @strlen(ptr noundef %start.0139) #14
  %call46 = tail call i32 @strlen(ptr noundef %add.ptr.i) #14
  %add47 = add i32 %call46, %call45
  %state = getelementptr inbounds %struct.iscsi_param, ptr %call27, i32 0, i32 9
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 16
  %and50 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.end44
  %call53 = tail call fastcc i32 @iscsi_check_proposer_state(ptr noundef nonnull %call27, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then52.free_buffer_crit_edge, label %if.then52.if.end66_crit_edge

if.then52.if.end66_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then52.free_buffer_crit_edge:                  ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_buffer

if.else:                                          ; preds = %if.end44
  %call59 = tail call fastcc i32 @iscsi_check_acceptor_state(ptr noundef nonnull %call27, ptr noundef %add.ptr.i, ptr noundef %conn)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.else.free_buffer_crit_edge, label %if.else.if.end66_crit_edge

if.else.if.end66_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.else.free_buffer_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_buffer

if.end66:                                         ; preds = %if.else.if.end66_crit_edge, %if.then52.if.end66_crit_edge
  %.sink151 = phi i32 [ 64, %if.then52.if.end66_crit_edge ], [ 1, %if.else.if.end66_crit_edge ]
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 16
  %or65 = or i32 %15, %.sink151
  store i32 %or65, ptr %state, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end34
  %add48.pn.in = phi i32 [ %add47, %if.end66 ], [ %add, %if.end34 ]
  %add48.pn = add i32 %add48.pn.in, 2
  %start.1 = getelementptr i8, ptr %start.0139, i32 %add48.pn
  %cmp = icmp ult ptr %start.1, %add.ptr
  br i1 %cmp, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %call) #9
  br label %cleanup69

free_buffer:                                      ; preds = %if.else.free_buffer_crit_edge, %if.then52.free_buffer_crit_edge, %if.end39.free_buffer_crit_edge, %do.end6.i, %do.end.i100, %iscsi_extract_key_value.exit.thread
  tail call void @kfree(ptr noundef nonnull %call) #9
  br label %cleanup69

cleanup69:                                        ; preds = %free_buffer, %while.end, %cleanup.thread130, %do.end
  %retval.2 = phi i32 [ -1, %free_buffer ], [ 0, %while.end ], [ -12, %do.end ], [ 1, %cleanup.thread130 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup_nul(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @iscsi_check_key(ptr noundef %key, i32 noundef %phase, i32 noundef %sender, ptr noundef readonly %param_list) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %key) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call)
  %cmp = icmp ugt i32 %call, 64
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %key, i32 noundef 64) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %key, null
  %tobool1.not.i = icmp eq ptr %param_list, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %param_list2.i = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %param_list2.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %param_list2.i
  br i1 %cmp.not.i, label %do.end16.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %param.0.i = getelementptr i8, ptr %.pn.i, i32 -20
  %1 = ptrtoint ptr %param.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %param.0.i, align 128
  %call5.i = tail call i32 @strcmp(ptr noundef nonnull %key, ptr noundef %2) #15
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %iscsi_find_param_from_key.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

do.end16.i:                                       ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull %key) #12
  br label %cleanup

iscsi_find_param_from_key.exit:                   ; preds = %for.body.i
  %param.0.i.le = getelementptr i8, ptr %.pn.i, i32 -20
  %tobool.not = icmp eq ptr %param.0.i.le, null
  br i1 %tobool.not, label %iscsi_find_param_from_key.exit.cleanup_crit_edge, label %if.end4

iscsi_find_param_from_key.exit.cleanup_crit_edge: ; preds = %iscsi_find_param_from_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %iscsi_find_param_from_key.exit
  %and = and i32 %sender, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.if.end17_crit_edge, label %land.lhs.true

if.end4.if.end17_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %if.end4
  %sender6 = getelementptr i8, ptr %.pn.i, i32 -9
  %3 = ptrtoint ptr %sender6 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sender6, align 1
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not = icmp eq i8 %5, 0
  br i1 %tobool8.not, label %do.end12, label %land.lhs.true.if.end17_crit_edge

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end12:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %param.0.i.le to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %param.0.i.le, align 128
  %and14 = and i32 %sender, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %cond = select i1 %tobool15.not, ptr @.str.174, ptr @.str.173
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef %7, ptr noundef nonnull %cond) #12
  br label %cleanup

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.end4.if.end17_crit_edge
  %and18 = and i32 %sender, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end17.if.end35_crit_edge, label %land.lhs.true20

if.end17.if.end35_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true20:                                  ; preds = %if.end17
  %sender21 = getelementptr i8, ptr %.pn.i, i32 -9
  %8 = ptrtoint ptr %sender21 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sender21, align 1
  %10 = and i8 %9, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool24.not = icmp eq i8 %10, 0
  br i1 %tobool24.not, label %do.end28, label %land.lhs.true20.if.end35_crit_edge

land.lhs.true20.if.end35_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

do.end28:                                         ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %param.0.i.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %param.0.i.le, align 128
  %and31 = and i32 %sender, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  %cond33 = select i1 %tobool32.not, ptr @.str.173, ptr @.str.174
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef %12, ptr noundef nonnull %cond33) #12
  br label %cleanup

if.end35:                                         ; preds = %land.lhs.true20.if.end35_crit_edge, %if.end17.if.end35_crit_edge
  %state = getelementptr i8, ptr %.pn.i, i32 -4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 16
  %and36 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end44, label %do.end41

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, ptr noundef %key) #12
  br label %cleanup

if.end44:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phase)
  %tobool45.not = icmp eq i32 %phase, 0
  br i1 %tobool45.not, label %if.end44.cleanup_crit_edge, label %if.end47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.end44
  %phase48 = getelementptr i8, ptr %.pn.i, i32 -11
  %15 = ptrtoint ptr %phase48 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %phase48, align 1
  %conv49 = zext i8 %16 to i32
  %and50 = and i32 %conv49, %phase
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.end55, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end55:                                         ; preds = %if.end47
  %17 = ptrtoint ptr %param.0.i.le to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %param.0.i.le, align 128
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef %18) #12
  %19 = zext i32 %phase to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.263)
  switch i32 %phase, label %do.body86 [
    i32 1, label %do.body59
    i32 2, label %do.body70
  ]

do.body59:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_check_key.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_check_key, %if.then65)) #9
          to label %cleanup [label %if.then65], !srcloc !561

if.then65:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_check_key.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.183) #9
  br label %cleanup

do.body70:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_check_key.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_check_key, %if.then82)) #9
          to label %cleanup [label %if.then82], !srcloc !561

if.then82:                                        ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_check_key.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.184) #9
  br label %cleanup

do.body86:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_check_key.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_check_key, %if.then98)) #9
          to label %cleanup [label %if.then98], !srcloc !561

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_check_key.__UNIQUE_ID_ddebug248, ptr noundef nonnull @.str.185) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then98, %do.body86, %if.then82, %do.body70, %if.then65, %do.body59, %if.end47.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %do.end41, %do.end28, %do.end12, %iscsi_find_param_from_key.exit.cleanup_crit_edge, %do.end16.i, %do.end.i, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end41 ], [ null, %do.end28 ], [ null, %do.end12 ], [ null, %iscsi_find_param_from_key.exit.cleanup_crit_edge ], [ %param.0.i.le, %if.end44.cleanup_crit_edge ], [ null, %if.then98 ], [ null, %if.then82 ], [ null, %if.then65 ], [ %param.0.i.le, %if.end47.cleanup_crit_edge ], [ null, %do.body59 ], [ null, %do.body70 ], [ null, %do.body86 ], [ null, %do.end16.i ], [ null, %do.end.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsi_check_value(ptr nocapture noundef %param, ptr noundef %value) unnamed_addr #0 align 64 {
entry:
  %tmpptr.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %value, ptr noundef nonnull dereferenceable(7) @.str.80) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %if.end9

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param, align 128
  %call1 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.79) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.then.if.then6_crit_edge, label %lor.lhs.false

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.then
  %call4 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(10) @.str.81) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false.if.then6_crit_edge, label %do.end

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.then.if.then6_crit_edge
  %state = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 9
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 16
  %or = or i32 %3, 16
  store i32 %or, ptr %state, align 16
  br label %cleanup

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.192, ptr noundef %1, ptr noundef %value) #12
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = tail call i32 @strcmp(ptr noundef %value, ptr noundef nonnull dereferenceable(11) @.str.194) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %do.body13, label %if.end26

do.body13:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_check_value.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_check_value, %if.then19)) #9
          to label %do.end23 [label %if.then19], !srcloc !561

if.then19:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param, align 128
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_check_value.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.195, ptr noundef %5, ptr noundef %value) #9
  br label %do.end23

do.end23:                                         ; preds = %if.then19, %do.body13
  %state24 = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 9
  %6 = ptrtoint ptr %state24 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state24, align 16
  %or25 = or i32 %7, 8
  store i32 %or25, ptr %state24, align 16
  br label %cleanup

if.end26:                                         ; preds = %if.end9
  %call27 = tail call i32 @strcmp(ptr noundef %value, ptr noundef nonnull dereferenceable(14) @.str.191) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then29, label %do.body47.preheader

do.body47.preheader:                              ; preds = %if.end26
  %type = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 6
  %type_range.i = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 8
  %state.i = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 9
  br label %do.body47

if.then29:                                        ; preds = %if.end26
  %state30 = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 9
  %8 = ptrtoint ptr %state30 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state30, align 16
  %and = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  %10 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %param, align 128
  br i1 %tobool31.not, label %do.end35, label %do.end42

do.end35:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.197, ptr noundef %11, ptr noundef %value) #12
  br label %cleanup

do.end42:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, ptr noundef %11, ptr noundef %value) #12
  br label %cleanup

do.body47:                                        ; preds = %if.end127.do.body47_crit_edge, %do.body47.preheader
  %value.addr.0 = phi ptr [ %incdec.ptr, %if.end127.do.body47_crit_edge ], [ %value, %do.body47.preheader ]
  %call48 = call ptr @strchr(ptr noundef %value.addr.0, i32 noundef 44)
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %do.body47.if.end62_crit_edge, label %land.lhs.true

do.body47.if.end62_crit_edge:                     ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

land.lhs.true:                                    ; preds = %do.body47
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type, align 4
  %14 = and i8 %13, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool51.not = icmp eq i8 %14, 0
  br i1 %tobool51.not, label %do.end55, label %if.then61.critedge

do.end55:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %param, align 128
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, ptr noundef %16) #12
  br label %cleanup

if.then61.critedge:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call48 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %call48, align 1
  br label %if.end62

if.end62:                                         ; preds = %if.then61.critedge, %do.body47.if.end62_crit_edge
  %call63 = call i32 @strlen(ptr noundef %value.addr.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call63)
  %cmp = icmp ugt i32 %call63, 255
  br i1 %cmp, label %do.end68, label %if.end72

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %param, align 128
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, ptr noundef %19, i32 noundef 255) #12
  br label %cleanup

if.end72:                                         ; preds = %if.end62
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type, align 4
  %conv74 = zext i8 %21 to i32
  %22 = and i32 %conv74, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %if.else, label %if.then82

if.then82:                                        ; preds = %if.end72
  %call.i = call i32 @strcmp(ptr noundef %value.addr.0, ptr noundef nonnull dereferenceable(4) @.str.20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then82.if.end124_crit_edge, label %land.lhs.true.i

if.then82.if.end124_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

land.lhs.true.i:                                  ; preds = %if.then82
  %call1.i = call i32 @strcmp(ptr noundef %value.addr.0, ptr noundef nonnull dereferenceable(3) @.str.21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end124_crit_edge, label %iscsi_check_boolean_value.exit

land.lhs.true.i.if.end124_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

iscsi_check_boolean_value.exit:                   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %param, align 128
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, ptr noundef %25, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #12
  br label %cleanup

if.else:                                          ; preds = %if.end72
  %and90 = and i32 %conv74, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.else98, label %if.then92

if.then92:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpptr.i) #9
  %26 = ptrtoint ptr %tmpptr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmpptr.i, align 4, !annotation !562
  %call.i170 = call i32 @simple_strtoul(ptr noundef %value.addr.0, ptr noundef nonnull %tmpptr.i, i32 noundef 0) #9
  %27 = ptrtoint ptr %type_range.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %type_range.i, align 2
  %conv.i = zext i16 %28 to i32
  %and.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i171 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i171, label %if.end6.i, label %if.then.i

if.then.i:                                        ; preds = %if.then92
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i170)
  %29 = icmp ugt i32 %call.i170, 2
  br i1 %29, label %if.then.i.iscsi_check_numerical_value.exit_crit_edge, label %if.then.i.iscsi_check_numerical_value.exit.thread_crit_edge

if.then.i.iscsi_check_numerical_value.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_numerical_value.exit.thread

if.then.i.iscsi_check_numerical_value.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_numerical_value.exit

if.end6.i:                                        ; preds = %if.then92
  %and9.i = and i32 %conv.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end25.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600, i32 %call.i170)
  %30 = icmp ugt i32 %call.i170, 3600
  br i1 %30, label %if.then11.i.iscsi_check_numerical_value.exit_crit_edge, label %if.then11.i.iscsi_check_numerical_value.exit.thread_crit_edge

if.then11.i.iscsi_check_numerical_value.exit.thread_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_numerical_value.exit.thread

if.then11.i.iscsi_check_numerical_value.exit_crit_edge: ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_numerical_value.exit

if.end25.i:                                       ; preds = %if.end6.i
  %and28.i = and i32 %conv.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %if.end44.i, label %if.then30.i

if.then30.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %call.i170)
  %31 = icmp ugt i32 %call.i170, 32767
  br i1 %31, label %if.then30.i.iscsi_check_numerical_value.exit_crit_edge, label %if.then30.i.iscsi_check_numerical_value.exit.thread_crit_edge

if.then30.i.iscsi_check_numerical_value.exit.thread_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_numerical_value.exit.thread

if.then30.i.iscsi_check_numerical_value.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_numerical_value.exit

if.end44.i:                                       ; preds = %if.end25.i
  %and47.i = and i32 %conv.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end63.i, label %if.then49.i

if.then49.i:                                      ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call.i170)
  %32 = icmp ugt i32 %call.i170, 65535
  br i1 %32, label %if.then49.i.iscsi_check_numerical_value.exit_crit_edge, label %if.then49.i.iscsi_check_numerical_value.exit.thread_crit_edge

if.then49.i.iscsi_check_numerical_value.exit.thread_crit_edge: ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_numerical_value.exit.thread

if.then49.i.iscsi_check_numerical_value.exit_crit_edge: ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_numerical_value.exit

if.end63.i:                                       ; preds = %if.end44.i
  %and66.i = and i32 %conv.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  br i1 %tobool67.not.i, label %if.end82.i, label %if.then68.i

if.then68.i:                                      ; preds = %if.end63.i
  %33 = add i32 %call.i170, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %33)
  %34 = icmp ult i32 %33, -65535
  br i1 %34, label %if.then68.i.iscsi_check_numerical_value.exit_crit_edge, label %if.then68.i.iscsi_check_numerical_value.exit.thread_crit_edge

if.then68.i.iscsi_check_numerical_value.exit.thread_crit_edge: ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_numerical_value.exit.thread

if.then68.i.iscsi_check_numerical_value.exit_crit_edge: ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_numerical_value.exit

if.end82.i:                                       ; preds = %if.end63.i
  %and85.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %if.end101.i, label %if.then87.i

if.then87.i:                                      ; preds = %if.end82.i
  %35 = add i32 %call.i170, -3601
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3599, i32 %35)
  %36 = icmp ult i32 %35, -3599
  br i1 %36, label %if.then87.i.iscsi_check_numerical_value.exit_crit_edge, label %if.then87.i.iscsi_check_numerical_value.exit.thread_crit_edge

if.then87.i.iscsi_check_numerical_value.exit.thread_crit_edge: ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_numerical_value.exit.thread

if.then87.i.iscsi_check_numerical_value.exit_crit_edge: ; preds = %if.then87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_numerical_value.exit

if.end101.i:                                      ; preds = %if.end82.i
  %and104.i = and i32 %conv.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104.i)
  %tobool105.not.i = icmp ne i32 %and104.i, 0
  %37 = add i32 %call.i170, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16776704, i32 %37)
  %38 = icmp ult i32 %37, -16776704
  %or.cond.i = select i1 %tobool105.not.i, i1 %38, i1 false
  br i1 %or.cond.i, label %if.end101.i.iscsi_check_numerical_value.exit_crit_edge, label %if.end101.i.iscsi_check_numerical_value.exit.thread_crit_edge

if.end101.i.iscsi_check_numerical_value.exit.thread_crit_edge: ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_numerical_value.exit.thread

if.end101.i.iscsi_check_numerical_value.exit_crit_edge: ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_numerical_value.exit

iscsi_check_numerical_value.exit.thread:          ; preds = %if.end101.i.iscsi_check_numerical_value.exit.thread_crit_edge, %if.then87.i.iscsi_check_numerical_value.exit.thread_crit_edge, %if.then68.i.iscsi_check_numerical_value.exit.thread_crit_edge, %if.then49.i.iscsi_check_numerical_value.exit.thread_crit_edge, %if.then30.i.iscsi_check_numerical_value.exit.thread_crit_edge, %if.then11.i.iscsi_check_numerical_value.exit.thread_crit_edge, %if.then.i.iscsi_check_numerical_value.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpptr.i) #9
  br label %if.end124

iscsi_check_numerical_value.exit:                 ; preds = %if.end101.i.iscsi_check_numerical_value.exit_crit_edge, %if.then87.i.iscsi_check_numerical_value.exit_crit_edge, %if.then68.i.iscsi_check_numerical_value.exit_crit_edge, %if.then49.i.iscsi_check_numerical_value.exit_crit_edge, %if.then30.i.iscsi_check_numerical_value.exit_crit_edge, %if.then11.i.iscsi_check_numerical_value.exit_crit_edge, %if.then.i.iscsi_check_numerical_value.exit_crit_edge
  %.str.231.sink.i = phi ptr [ @.str.213, %if.then.i.iscsi_check_numerical_value.exit_crit_edge ], [ @.str.216, %if.then11.i.iscsi_check_numerical_value.exit_crit_edge ], [ @.str.219, %if.then30.i.iscsi_check_numerical_value.exit_crit_edge ], [ @.str.222, %if.then49.i.iscsi_check_numerical_value.exit_crit_edge ], [ @.str.225, %if.then68.i.iscsi_check_numerical_value.exit_crit_edge ], [ @.str.228, %if.then87.i.iscsi_check_numerical_value.exit_crit_edge ], [ @.str.231, %if.end101.i.iscsi_check_numerical_value.exit_crit_edge ]
  %39 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %param, align 128
  %call118.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.231.sink.i, ptr noundef %40) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpptr.i) #9
  br label %cleanup

if.else98:                                        ; preds = %if.else
  %41 = and i32 %conv74, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %do.end117, label %if.then108

if.then108:                                       ; preds = %if.else98
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state.i, align 16
  %and.i173 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i173)
  %tobool.not.i174 = icmp eq i32 %and.i173, 0
  br i1 %tobool.not.i174, label %if.end.i, label %if.then108.if.end124_crit_edge

if.then108.if.end124_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.end.i:                                         ; preds = %if.then108
  %45 = ptrtoint ptr %type_range.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %type_range.i, align 2
  %47 = and i16 %46, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool2.not.i176 = icmp eq i16 %47, 0
  br i1 %tobool2.not.i176, label %if.end.i.if.end22.i_crit_edge, label %if.then3.i

if.end.i.if.end22.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i177 = call i32 @strcmp(ptr noundef %value.addr.0, ptr noundef nonnull dereferenceable(5) @.str.233) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %tobool4.not.i = icmp eq i32 %call.i177, 0
  br i1 %tobool4.not.i, label %if.then3.i.if.end22.i_crit_edge, label %land.lhs.true.i178

if.then3.i.if.end22.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true.i178:                               ; preds = %if.then3.i
  %call5.i = call i32 @strcmp(ptr noundef %value.addr.0, ptr noundef nonnull dereferenceable(6) @.str.234) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i178.if.end22.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i178.if.end22.i_crit_edge:          ; preds = %land.lhs.true.i178
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i178
  %call8.i = call i32 @strcmp(ptr noundef %value.addr.0, ptr noundef nonnull dereferenceable(6) @.str.235) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true7.i.if.end22.i_crit_edge, label %land.lhs.true10.i

land.lhs.true7.i.if.end22.i_crit_edge:            ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true10.i:                                ; preds = %land.lhs.true7.i
  %call11.i = call i32 @strcmp(ptr noundef %value.addr.0, ptr noundef nonnull dereferenceable(4) @.str.236) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true10.i.if.end22.i_crit_edge, label %land.lhs.true13.i

land.lhs.true10.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true13.i:                                ; preds = %land.lhs.true10.i
  %call14.i = call i32 @strcmp(ptr noundef %value.addr.0, ptr noundef nonnull dereferenceable(5) @.str.39) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %land.lhs.true13.i.if.end22.i_crit_edge, label %land.lhs.true16.i

land.lhs.true13.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

land.lhs.true16.i:                                ; preds = %land.lhs.true13.i
  %call17.i = call i32 @strcmp(ptr noundef %value.addr.0, ptr noundef nonnull dereferenceable(5) @.str.9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %land.lhs.true16.i.if.end22.i_crit_edge, label %do.end.i179

land.lhs.true16.i.if.end22.i_crit_edge:           ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i

do.end.i179:                                      ; preds = %land.lhs.true16.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %param, align 128
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.237, ptr noundef %49, ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end22.i:                                       ; preds = %land.lhs.true16.i.if.end22.i_crit_edge, %land.lhs.true13.i.if.end22.i_crit_edge, %land.lhs.true10.i.if.end22.i_crit_edge, %land.lhs.true7.i.if.end22.i_crit_edge, %land.lhs.true.i178.if.end22.i_crit_edge, %if.then3.i.if.end22.i_crit_edge, %if.end.i.if.end22.i_crit_edge
  %50 = and i16 %46, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %50)
  %tobool26.not.i = icmp eq i16 %50, 0
  br i1 %tobool26.not.i, label %if.end22.i.if.end40.i_crit_edge, label %if.then27.i

if.end22.i.if.end40.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

if.then27.i:                                      ; preds = %if.end22.i
  %call28.i = call i32 @strcmp(ptr noundef %value.addr.0, ptr noundef nonnull dereferenceable(7) @.str.8) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i180 = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i180, label %if.then27.i.if.end40.i_crit_edge, label %land.lhs.true30.i

if.then27.i.if.end40.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

land.lhs.true30.i:                                ; preds = %if.then27.i
  %call31.i = call i32 @strcmp(ptr noundef %value.addr.0, ptr noundef nonnull dereferenceable(5) @.str.9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %land.lhs.true30.i.if.end40.i_crit_edge, label %do.end35.i

land.lhs.true30.i.if.end40.i_crit_edge:           ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i

do.end35.i:                                       ; preds = %land.lhs.true30.i
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %param, align 128
  %call38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, ptr noundef %52, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #12
  br label %cleanup

if.end40.i:                                       ; preds = %land.lhs.true30.i.if.end40.i_crit_edge, %if.then27.i.if.end40.i_crit_edge, %if.end22.i.if.end40.i_crit_edge
  %53 = and i16 %46, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool44.not.i = icmp eq i16 %53, 0
  br i1 %tobool44.not.i, label %if.end40.i.if.end124_crit_edge, label %if.then45.i

if.end40.i.if.end124_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.then45.i:                                      ; preds = %if.end40.i
  %call46.i = call i32 @strcmp(ptr noundef %value.addr.0, ptr noundef nonnull dereferenceable(10) @.str.32) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.then45.i.if.end124_crit_edge, label %land.lhs.true48.i

if.then45.i.if.end124_crit_edge:                  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

land.lhs.true48.i:                                ; preds = %if.then45.i
  %call49.i = call i32 @strcmp(ptr noundef %value.addr.0, ptr noundef nonnull dereferenceable(7) @.str.33) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %land.lhs.true48.i.if.end124_crit_edge, label %do.end53.i

land.lhs.true48.i.if.end124_crit_edge:            ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

do.end53.i:                                       ; preds = %land.lhs.true48.i
  call void @__sanitizer_cov_trace_pc() #11
  %54 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %param, align 128
  %call56.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.240, ptr noundef %55, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33) #12
  br label %cleanup

do.end117:                                        ; preds = %if.else98
  call void @__sanitizer_cov_trace_pc() #11
  %conv74.le = zext i8 %21 to i32
  %call121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, i32 noundef %conv74.le) #12
  br label %cleanup

if.end124:                                        ; preds = %land.lhs.true48.i.if.end124_crit_edge, %if.then45.i.if.end124_crit_edge, %if.end40.i.if.end124_crit_edge, %if.then108.if.end124_crit_edge, %iscsi_check_numerical_value.exit.thread, %land.lhs.true.i.if.end124_crit_edge, %if.then82.if.end124_crit_edge
  br i1 %tobool49.not, label %if.end124.cleanup_crit_edge, label %if.end127

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end127:                                        ; preds = %if.end124
  %incdec.ptr = getelementptr i8, ptr %call48, i32 1
  %56 = ptrtoint ptr %call48 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 44, ptr %call48, align 1
  %tobool129.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool129.not, label %if.end127.cleanup_crit_edge, label %if.end127.do.body47_crit_edge

if.end127.do.body47_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body47

if.end127.cleanup_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end127.cleanup_crit_edge, %if.end124.cleanup_crit_edge, %do.end117, %do.end53.i, %do.end35.i, %do.end.i179, %iscsi_check_numerical_value.exit, %iscsi_check_boolean_value.exit, %do.end68, %do.end55, %do.end42, %do.end35, %do.end23, %do.end, %if.then6
  %retval.0 = phi i32 [ -1, %do.end68 ], [ -1, %do.end117 ], [ -1, %do.end55 ], [ -1, %do.end42 ], [ -1, %do.end35 ], [ 0, %do.end23 ], [ -1, %do.end ], [ 0, %if.then6 ], [ -1, %iscsi_check_boolean_value.exit ], [ -1, %iscsi_check_numerical_value.exit ], [ -1, %do.end.i179 ], [ -1, %do.end35.i ], [ -1, %do.end53.i ], [ 0, %if.end127.cleanup_crit_edge ], [ 0, %if.end124.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsi_check_proposer_state(ptr nocapture noundef %param, ptr noundef %value) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 16
  %and = and i32 %1, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param, align 128
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, ptr noundef %3) #12
  br label %return

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 6
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 4
  %6 = and i8 %5, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool2.not = icmp eq i8 %6, 0
  br i1 %tobool2.not, label %if.end.if.end18_crit_edge, label %if.then3

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then3:                                         ; preds = %if.end
  %call4 = tail call ptr @strchr(ptr noundef %value, i32 noundef 44)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %param, align 128
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef %8) #12
  br label %return

cleanup:                                          ; preds = %if.then3
  %call13 = tail call fastcc ptr @iscsi_check_valuelist_for_support(ptr noundef %param, ptr noundef %value)
  %tobool14.not.not = icmp eq ptr %call13, null
  br i1 %tobool14.not.not, label %cleanup.return_crit_edge, label %cleanup.if.end18_crit_edge

cleanup.if.end18_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

cleanup.return_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end18:                                         ; preds = %cleanup.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %value1.i = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 1
  %9 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %value1.i, align 4
  tail call void @kfree(ptr noundef %10) #9
  %call.i = tail call noalias ptr @kstrdup(ptr noundef %value, i32 noundef 3264) #9
  %11 = ptrtoint ptr %value1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %value1.i, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %16, label %do.body5.i

do.body5.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_update_param_value.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_check_proposer_state, %if.then11.i)) #9
          to label %return [label %if.then11.i], !srcloc !561

if.then11.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %param, align 128
  %14 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %value1.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_update_param_value.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.104, ptr noundef %13, ptr noundef %15) #9
  br label %return

16:                                               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  br label %return

return:                                           ; preds = %16, %if.then11.i, %do.body5.i, %cleanup.return_crit_edge, %cleanup.thread, %do.end
  %retval.1 = phi i32 [ -1, %do.end ], [ -1, %cleanup.return_crit_edge ], [ -1, %cleanup.thread ], [ -1, %16 ], [ 0, %do.body5.i ], [ 0, %if.then11.i ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsi_check_acceptor_state(ptr noundef %param, ptr noundef %value, ptr nocapture noundef readonly %conn) unnamed_addr #0 align 64 {
entry:
  %tmpptr = alloca ptr, align 4
  %buf = alloca [11 x i8], align 1
  %tmp151 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 16
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param, align 128
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, ptr noundef %3) #12
  br label %cleanup246

if.end:                                           ; preds = %entry
  %and2 = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup246_crit_edge

if.end.cleanup246_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup246

if.end5:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 6
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 4
  %conv = zext i8 %5 to i32
  %and6 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else35, label %if.then8

if.then8:                                         ; preds = %if.end5
  %call9 = tail call i32 @strcmp(ptr noundef %value, ptr noundef nonnull dereferenceable(4) @.str.20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %value13 = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 1
  %6 = ptrtoint ptr %value13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %value13, align 4
  %call14 = tail call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(4) @.str.20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp ne i32 %call14, 0
  %tobool10.not.not = xor i1 %tobool10.not, true
  %brmerge = select i1 %tobool15.not, i1 true, i1 %tobool10.not.not
  br i1 %brmerge, label %if.else, label %if.then8.cleanup246_crit_edge

if.then8.cleanup246_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup246

if.else:                                          ; preds = %if.then8
  tail call void @kfree(ptr noundef %7) #9
  %call.i = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.21, i32 noundef 3264) #9
  %8 = ptrtoint ptr %value13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %value13, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %iscsi_update_param_value.exit.thread, label %do.body5.i

iscsi_update_param_value.exit.thread:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  br label %cleanup246

do.body5.i:                                       ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_update_param_value.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_check_acceptor_state, %if.then11.i)) #9
          to label %if.end29 [label %if.then11.i], !srcloc !561

if.then11.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %param, align 128
  %11 = ptrtoint ptr %value13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %value13, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_update_param_value.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.104, ptr noundef %10, ptr noundef %12) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then11.i, %do.body5.i
  br i1 %tobool10.not, label %if.end29.cleanup246_crit_edge, label %if.then31

if.end29.cleanup246_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup246

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state, align 16
  %or = or i32 %14, 32
  store i32 %or, ptr %state, align 16
  br label %cleanup246

if.else35:                                        ; preds = %if.end5
  %and38 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else66, label %if.then40

if.then40:                                        ; preds = %if.else35
  %call41 = tail call i32 @strcmp(ptr noundef %value, ptr noundef nonnull dereferenceable(4) @.str.20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  %value45 = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 1
  %15 = ptrtoint ptr %value45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %value45, align 4
  %call46 = tail call i32 @strcmp(ptr noundef %16, ptr noundef nonnull dereferenceable(4) @.str.20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  %brmerge308 = select i1 %tobool47.not, i1 true, i1 %tobool42.not
  br i1 %brmerge308, label %if.then54, label %if.then40.cleanup246_crit_edge

if.then40.cleanup246_crit_edge:                   ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup246

if.then54:                                        ; preds = %if.then40
  tail call void @kfree(ptr noundef %16) #9
  %call.i323 = tail call noalias ptr @kstrdup(ptr noundef nonnull @.str.20, i32 noundef 3264) #9
  %17 = ptrtoint ptr %value45 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i323, ptr %value45, align 4
  %tobool.not.i324 = icmp eq ptr %call.i323, null
  br i1 %tobool.not.i324, label %iscsi_update_param_value.exit330.thread, label %do.body5.i327

iscsi_update_param_value.exit330.thread:          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i325 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  br label %cleanup246

do.body5.i327:                                    ; preds = %if.then54
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_update_param_value.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_check_acceptor_state, %if.then11.i328)) #9
          to label %if.end59 [label %if.then11.i328], !srcloc !561

if.then11.i328:                                   ; preds = %do.body5.i327
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %param, align 128
  %20 = ptrtoint ptr %value45 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value45, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_update_param_value.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.104, ptr noundef %19, ptr noundef %21) #9
  br label %if.end59

if.end59:                                         ; preds = %if.then11.i328, %do.body5.i327
  br i1 %tobool42.not, label %if.then61, label %if.end59.cleanup246_crit_edge

if.end59.cleanup246_crit_edge:                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup246

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 16
  %or63 = or i32 %23, 32
  store i32 %or63, ptr %state, align 16
  br label %cleanup246

if.else66:                                        ; preds = %if.else35
  %and69 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.else208, label %if.then71

if.then71:                                        ; preds = %if.else66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpptr) #9
  %24 = ptrtoint ptr %tmpptr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmpptr, align 4, !annotation !562
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buf) #9
  %value72 = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 1
  %25 = call ptr @memset(ptr %buf, i32 255, i32 11)
  %26 = ptrtoint ptr %value72 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %value72, align 4
  %call73 = call i32 @simple_strtoul(ptr noundef %27, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  %call74 = call i32 @simple_strtoul(ptr noundef %value, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  %28 = call ptr @memset(ptr %buf, i32 0, i32 11)
  %29 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %param, align 128
  %call76 = call i32 @strcmp(ptr noundef %30, ptr noundef nonnull dereferenceable(15) @.str.43) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then71.if.then98_crit_edge, label %lor.lhs.false78

if.then71.if.then98_crit_edge:                    ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

lor.lhs.false78:                                  ; preds = %if.then71
  %call80 = call i32 @strcmp(ptr noundef %30, ptr noundef nonnull dereferenceable(15) @.str.64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %lor.lhs.false78.if.then98_crit_edge, label %lor.lhs.false82

lor.lhs.false78.if.then98_crit_edge:              ; preds = %lor.lhs.false78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

lor.lhs.false82:                                  ; preds = %lor.lhs.false78
  %call84 = call i32 @strcmp(ptr noundef %30, ptr noundef nonnull dereferenceable(17) @.str.65) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %lor.lhs.false82.if.then98_crit_edge, label %lor.lhs.false86

lor.lhs.false82.if.then98_crit_edge:              ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

lor.lhs.false86:                                  ; preds = %lor.lhs.false82
  %call88 = call i32 @strcmp(ptr noundef %30, ptr noundef nonnull dereferenceable(18) @.str.71) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %lor.lhs.false86.if.then98_crit_edge, label %lor.lhs.false90

lor.lhs.false86.if.then98_crit_edge:              ; preds = %lor.lhs.false86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

lor.lhs.false90:                                  ; preds = %lor.lhs.false86
  %call92 = call i32 @strcmp(ptr noundef %30, ptr noundef nonnull dereferenceable(19) @.str.69) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %lor.lhs.false90.if.then98_crit_edge, label %lor.lhs.false94

lor.lhs.false90.if.then98_crit_edge:              ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

lor.lhs.false94:                                  ; preds = %lor.lhs.false90
  %call96 = call i32 @strcmp(ptr noundef %30, ptr noundef nonnull dereferenceable(19) @.str.74) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96)
  %tobool97.not = icmp eq i32 %call96, 0
  br i1 %tobool97.not, label %lor.lhs.false94.if.then98_crit_edge, label %if.else116

lor.lhs.false94.if.then98_crit_edge:              ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then98

if.then98:                                        ; preds = %lor.lhs.false94.if.then98_crit_edge, %lor.lhs.false90.if.then98_crit_edge, %lor.lhs.false86.if.then98_crit_edge, %lor.lhs.false82.if.then98_crit_edge, %lor.lhs.false78.if.then98_crit_edge, %if.then71.if.then98_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %call74, i32 %call73)
  %cmp99 = icmp ugt i32 %call74, %call73
  br i1 %cmp99, label %if.then101, label %if.else109

if.then101:                                       ; preds = %if.then98
  %call103 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.250, i32 noundef %call73)
  %31 = ptrtoint ptr %value72 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %value72, align 4
  call void @kfree(ptr noundef %32) #9
  %call.i332 = call noalias ptr @kstrdup(ptr noundef nonnull %buf, i32 noundef 3264) #9
  %33 = ptrtoint ptr %value72 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i332, ptr %value72, align 4
  %tobool.not.i333 = icmp eq ptr %call.i332, null
  br i1 %tobool.not.i333, label %cleanup246.critedge, label %do.body5.i336

do.body5.i336:                                    ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_update_param_value.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_check_acceptor_state, %if.end146.sink.split)) #9
          to label %if.end146 [label %if.end146.sink.split], !srcloc !561

if.else109:                                       ; preds = %if.then98
  %34 = ptrtoint ptr %value72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %value72, align 4
  call void @kfree(ptr noundef %35) #9
  %call.i341 = call noalias ptr @kstrdup(ptr noundef %value, i32 noundef 3264) #9
  %36 = ptrtoint ptr %value72 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i341, ptr %value72, align 4
  %tobool.not.i342 = icmp eq ptr %call.i341, null
  br i1 %tobool.not.i342, label %cleanup246.critedge311, label %do.body5.i345

do.body5.i345:                                    ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_update_param_value.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_check_acceptor_state, %if.end146.sink.split)) #9
          to label %if.end146 [label %if.end146.sink.split], !srcloc !561

if.else116:                                       ; preds = %lor.lhs.false94
  %call118 = call i32 @strcmp(ptr noundef %30, ptr noundef nonnull dereferenceable(17) @.str.67) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %tobool119.not = icmp eq i32 %call118, 0
  br i1 %tobool119.not, label %if.then120, label %if.else139

if.then120:                                       ; preds = %if.else116
  call void @__sanitizer_cov_trace_cmp4(i32 %call73, i32 %call74)
  %cmp121 = icmp ugt i32 %call73, %call74
  br i1 %cmp121, label %if.then123, label %if.else132

if.then123:                                       ; preds = %if.then120
  %call125 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.250, i32 noundef %call73)
  %call127 = call i32 @iscsi_update_param_value(ptr noundef %param, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %cmp128 = icmp slt i32 %call127, 0
  br i1 %cmp128, label %cleanup246.critedge312, label %if.then123.if.end146_crit_edge

if.then123.if.end146_crit_edge:                   ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

if.else132:                                       ; preds = %if.then120
  %call133 = call i32 @iscsi_update_param_value(ptr noundef %param, ptr noundef %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %cleanup246.critedge313, label %if.else132.if.end146_crit_edge

if.else132.if.end146_crit_edge:                   ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

if.else139:                                       ; preds = %if.else116
  %call140 = call i32 @iscsi_update_param_value(ptr noundef %param, ptr noundef %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %cmp141 = icmp slt i32 %call140, 0
  br i1 %cmp141, label %cleanup246.critedge314, label %if.else139.if.end146_crit_edge

if.else139.if.end146_crit_edge:                   ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end146

if.end146.sink.split:                             ; preds = %do.body5.i345, %do.body5.i336
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %param, align 128
  %39 = ptrtoint ptr %value72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %value72, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_update_param_value.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.104, ptr noundef %38, ptr noundef %40) #9
  br label %if.end146

if.end146:                                        ; preds = %if.end146.sink.split, %if.else139.if.end146_crit_edge, %if.else132.if.end146_crit_edge, %if.then123.if.end146_crit_edge, %do.body5.i345, %do.body5.i336
  %41 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %param, align 128
  %call148 = call i32 @strcmp(ptr noundef %42, ptr noundef nonnull dereferenceable(25) @.str.62) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.then150, label %if.end146.cleanup202_crit_edge

if.end146.cleanup202_crit_edge:                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup202

if.then150:                                       ; preds = %if.end146
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp151) #9
  %43 = ptrtoint ptr %tmp151 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 -1, ptr %tmp151, align 8, !annotation !562
  %44 = ptrtoint ptr %value72 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %value72, align 4
  %call153 = call i32 @kstrtoull(ptr noundef %45, i32 noundef 0, ptr noundef nonnull %tmp151) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call153)
  %cmp154 = icmp slt i32 %call153, 0
  br i1 %cmp154, label %cleanup202.critedge, label %if.end157

if.end157:                                        ; preds = %if.then150
  %46 = ptrtoint ptr %tmp151 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %tmp151, align 8
  %conv158 = trunc i64 %47 to i32
  %conn_ops = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 59
  %48 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %conn_ops, align 16
  %MaxRecvDataSegmentLength = getelementptr inbounds %struct.iscsi_conn_ops, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %MaxRecvDataSegmentLength to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv158, ptr %MaxRecvDataSegmentLength, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_check_acceptor_state.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_check_acceptor_state, %if.then165)) #9
          to label %do.end170 [label %if.then165], !srcloc !561

if.then165:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %conn_ops to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %conn_ops, align 16
  %MaxRecvDataSegmentLength167 = getelementptr inbounds %struct.iscsi_conn_ops, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %MaxRecvDataSegmentLength167 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %MaxRecvDataSegmentLength167, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_check_acceptor_state.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.251, i32 noundef %54) #9
  br label %do.end170

do.end170:                                        ; preds = %if.then165, %if.end157
  %param_list = getelementptr inbounds %struct.iscsi_conn, ptr %conn, i32 0, i32 62
  %55 = ptrtoint ptr %param_list to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %param_list, align 4
  %call171 = call ptr @iscsi_find_param_from_key(ptr noundef nonnull @.str.60, ptr noundef %56)
  %tobool172.not = icmp eq ptr %call171, null
  br i1 %tobool172.not, label %cleanup202.critedge309, label %if.end174

if.end174:                                        ; preds = %do.end170
  %value175 = getelementptr inbounds %struct.iscsi_param, ptr %call171, i32 0, i32 1
  %57 = ptrtoint ptr %value175 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %value175, align 4
  %call176 = call i32 @iscsi_update_param_value(ptr noundef %param, ptr noundef %58)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %cmp177 = icmp slt i32 %call176, 0
  br i1 %cmp177, label %cleanup202.critedge310, label %do.body181

do.body181:                                       ; preds = %if.end174
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_check_acceptor_state.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_check_acceptor_state, %if.then193)) #9
          to label %cleanup [label %if.then193], !srcloc !561

if.then193:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %param, align 128
  %61 = ptrtoint ptr %value72 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %value72, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_check_acceptor_state.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.252, ptr noundef %60, ptr noundef %62) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then193, %do.body181
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp151) #9
  br label %cleanup202

cleanup202.critedge:                              ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp151) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpptr) #9
  br label %cleanup246

cleanup202.critedge309:                           ; preds = %do.end170
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp151) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpptr) #9
  br label %cleanup246

cleanup202.critedge310:                           ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp151) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpptr) #9
  br label %cleanup246

cleanup202:                                       ; preds = %cleanup, %if.end146.cleanup202_crit_edge
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpptr) #9
  br label %cleanup246

if.else208:                                       ; preds = %if.else66
  %and211 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  br i1 %tobool212.not, label %if.else229, label %if.then213

if.then213:                                       ; preds = %if.else208
  %call214 = tail call fastcc ptr @iscsi_check_valuelist_for_support(ptr noundef %param, ptr noundef %value)
  %tobool215.not = icmp eq ptr %call214, null
  %value221 = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 1
  %63 = ptrtoint ptr %value221 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %value221, align 4
  br i1 %tobool215.not, label %do.end219, label %if.end223

do.end219:                                        ; preds = %if.then213
  call void @__sanitizer_cov_trace_pc() #11
  %call222 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.254, ptr noundef %value, ptr noundef %64) #12
  br label %cleanup246

if.end223:                                        ; preds = %if.then213
  tail call void @kfree(ptr noundef %64) #9
  %call.i350 = tail call noalias ptr @kstrdup(ptr noundef nonnull %call214, i32 noundef 3264) #9
  %65 = ptrtoint ptr %value221 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call.i350, ptr %value221, align 4
  %tobool.not.i351 = icmp eq ptr %call.i350, null
  br i1 %tobool.not.i351, label %iscsi_update_param_value.exit357.thread, label %do.body5.i354

iscsi_update_param_value.exit357.thread:          ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i352 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  br label %cleanup246

do.body5.i354:                                    ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_update_param_value.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_check_acceptor_state, %if.then11.i355)) #9
          to label %cleanup246 [label %if.then11.i355], !srcloc !561

if.then11.i355:                                   ; preds = %do.body5.i354
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %param, align 128
  %68 = ptrtoint ptr %value221 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %value221, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_update_param_value.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.104, ptr noundef %67, ptr noundef %69) #9
  br label %cleanup246

if.else229:                                       ; preds = %if.else208
  %phase = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 3
  %70 = ptrtoint ptr %phase to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %phase, align 1
  %72 = and i8 %71, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool232.not = icmp eq i8 %72, 0
  br i1 %tobool232.not, label %if.else229.cleanup246_crit_edge, label %if.then233

if.else229.cleanup246_crit_edge:                  ; preds = %if.else229
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup246

if.then233:                                       ; preds = %if.else229
  %call234 = tail call i32 @iscsi_update_param_value(ptr noundef %param, ptr noundef %value)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call234)
  %cmp235 = icmp slt i32 %call234, 0
  br i1 %cmp235, label %if.then233.cleanup246_crit_edge, label %if.end238

if.then233.cleanup246_crit_edge:                  ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup246

if.end238:                                        ; preds = %if.then233
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %state, align 16
  %or240 = or i32 %74, 32
  store i32 %or240, ptr %state, align 16
  br label %cleanup246

cleanup246.critedge:                              ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i334 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpptr) #9
  br label %cleanup246

cleanup246.critedge311:                           ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i343 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpptr) #9
  br label %cleanup246

cleanup246.critedge312:                           ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpptr) #9
  br label %cleanup246

cleanup246.critedge313:                           ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpptr) #9
  br label %cleanup246

cleanup246.critedge314:                           ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpptr) #9
  br label %cleanup246

cleanup246:                                       ; preds = %cleanup246.critedge314, %cleanup246.critedge313, %cleanup246.critedge312, %cleanup246.critedge311, %cleanup246.critedge, %if.end238, %if.then233.cleanup246_crit_edge, %if.else229.cleanup246_crit_edge, %if.then11.i355, %do.body5.i354, %iscsi_update_param_value.exit357.thread, %do.end219, %cleanup202, %cleanup202.critedge310, %cleanup202.critedge309, %cleanup202.critedge, %if.then61, %if.end59.cleanup246_crit_edge, %iscsi_update_param_value.exit330.thread, %if.then40.cleanup246_crit_edge, %if.then31, %if.end29.cleanup246_crit_edge, %iscsi_update_param_value.exit.thread, %if.then8.cleanup246_crit_edge, %if.end.cleanup246_crit_edge, %do.end
  %retval.3 = phi i32 [ -1, %do.end ], [ -1, %do.end219 ], [ 0, %if.end.cleanup246_crit_edge ], [ -1, %cleanup246.critedge ], [ -1, %cleanup246.critedge311 ], [ -1, %cleanup246.critedge312 ], [ -1, %cleanup246.critedge313 ], [ -1, %cleanup246.critedge314 ], [ -1, %cleanup202.critedge ], [ -1, %cleanup202.critedge309 ], [ -1, %cleanup202.critedge310 ], [ -1, %if.then233.cleanup246_crit_edge ], [ -1, %iscsi_update_param_value.exit.thread ], [ -1, %iscsi_update_param_value.exit330.thread ], [ -1, %iscsi_update_param_value.exit357.thread ], [ 0, %if.then11.i355 ], [ 0, %do.body5.i354 ], [ 0, %cleanup202 ], [ 0, %if.then40.cleanup246_crit_edge ], [ 0, %if.then8.cleanup246_crit_edge ], [ 0, %if.end59.cleanup246_crit_edge ], [ 0, %if.then61 ], [ 0, %if.end238 ], [ 0, %if.else229.cleanup246_crit_edge ], [ 0, %if.then31 ], [ 0, %if.end29.cleanup246_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_encode_text_output(i8 noundef zeroext %phase, i8 noundef zeroext %sender, ptr nocapture noundef writeonly %textbuf, ptr nocapture noundef %length, ptr noundef %param_list, i1 noundef zeroext %keys_workaround) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %length, align 4
  %call = tail call fastcc i32 @iscsi_enforce_integrity_rules(i8 noundef zeroext %phase, ptr noundef %param_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %textbuf, i32 %1
  %param_list1 = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 1
  %2 = ptrtoint ptr %param_list1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn201 = load ptr, ptr %param_list1, align 4
  %cmp4.not203 = icmp eq ptr %.pn201, %param_list1
  br i1 %cmp4.not203, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn205 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn201, %if.end.for.body_crit_edge ]
  %output_buf.0204 = phi ptr [ %output_buf.1, %for.inc.for.body_crit_edge ], [ %add.ptr, %if.end.for.body_crit_edge ]
  %param.0206 = getelementptr i8, ptr %.pn205, i32 -20
  %sender5 = getelementptr i8, ptr %.pn205, i32 -9
  %3 = ptrtoint ptr %sender5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sender5, align 1
  %and186 = and i8 %4, %sender
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and186)
  %tobool.not = icmp eq i8 %and186, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %state = getelementptr i8, ptr %.pn205, i32 -4
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 16
  %7 = and i32 %6, 161
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %land.lhs.true18, label %if.end8.if.end40_crit_edge

if.end8.if.end40_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true18:                                  ; preds = %if.end8
  %phase19 = getelementptr i8, ptr %.pn205, i32 -11
  %9 = ptrtoint ptr %phase19 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %phase19, align 1
  %and22188 = and i8 %10, %phase
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and22188)
  %tobool23.not = icmp eq i8 %and22188, 0
  br i1 %tobool23.not, label %land.lhs.true18.if.end40_crit_edge, label %if.then24

land.lhs.true18.if.end40_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then24:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %param.0206 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %param.0206, align 128
  %value = getelementptr i8, ptr %.pn205, i32 -16
  %13 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %value, align 4
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %output_buf.0204, ptr noundef nonnull @.str.108, ptr noundef %12, ptr noundef %14)
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 4
  %add = add i32 %call25, 1
  %add26 = add i32 %add, %16
  store i32 %add26, ptr %length, align 4
  %add.ptr27 = getelementptr i8, ptr %textbuf, i32 %add26
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 16
  %or = or i32 %18, 128
  store i32 %or, ptr %state, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_encode_text_output.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_encode_text_output, %for.inc.sink.split)) #9
          to label %for.inc [label %for.inc.sink.split], !srcloc !561

if.end40:                                         ; preds = %land.lhs.true18.if.end40_crit_edge, %if.end8.if.end40_crit_edge
  %19 = and i32 %6, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %land.lhs.true52, label %if.end40.for.inc_crit_edge

if.end40.for.inc_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true52:                                  ; preds = %if.end40
  %phase53 = getelementptr i8, ptr %.pn205, i32 -11
  %21 = ptrtoint ptr %phase53 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %phase53, align 1
  %and56187 = and i8 %22, %phase
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and56187)
  %tobool57.not = icmp eq i8 %and56187, 0
  br i1 %tobool57.not, label %land.lhs.true52.for.inc_crit_edge, label %if.then58

land.lhs.true52.for.inc_crit_edge:                ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then58:                                        ; preds = %land.lhs.true52
  %23 = ptrtoint ptr %param.0206 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %param.0206, align 128
  %value60 = getelementptr i8, ptr %.pn205, i32 -16
  %25 = ptrtoint ptr %value60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %value60, align 4
  %call61 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %output_buf.0204, ptr noundef nonnull @.str.108, ptr noundef %24, ptr noundef %26)
  %27 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length, align 4
  %add62 = add i32 %call61, 1
  %add63 = add i32 %add62, %28
  store i32 %add63, ptr %length, align 4
  %add.ptr64 = getelementptr i8, ptr %textbuf, i32 %add63
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %state, align 16
  %or66 = or i32 %30, 4
  store i32 %or66, ptr %state, align 16
  %type.i = getelementptr i8, ptr %.pn205, i32 -8
  %31 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %type.i, align 4
  %conv.i = zext i8 %32 to i32
  %and.i = and i32 %conv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then58
  %33 = ptrtoint ptr %value60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %value60, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %34, ptr noundef nonnull dereferenceable(3) @.str.21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.then.i.if.end64.sink.split.i_crit_edge, label %if.then.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge

if.then.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_proposer_for_optional_reply.exit

if.then.i.if.end64.sink.split.i_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.sink.split.i

if.else.i:                                        ; preds = %if.then58
  %and5.i = and i32 %conv.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.else24.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else.i
  %35 = ptrtoint ptr %value60 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %value60, align 4
  %call9.i = tail call i32 @strcmp(ptr noundef %36, ptr noundef nonnull dereferenceable(4) @.str.20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.then7.i.if.end14.i_crit_edge

if.then7.i.if.end14.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state, align 16
  %or13.i = or i32 %38, 32
  store i32 %or13.i, ptr %state, align 16
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.then7.i.if.end14.i_crit_edge
  br i1 %keys_workaround, label %if.then16.i, label %if.end14.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge

if.end14.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_proposer_for_optional_reply.exit

if.then16.i:                                      ; preds = %if.end14.i
  %39 = ptrtoint ptr %param.0206 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %param.0206, align 128
  %call17.i = tail call i32 @strcmp(ptr noundef %40, ptr noundef nonnull dereferenceable(14) @.str.59) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.then16.i.if.end64.sink.split.i_crit_edge, label %if.then16.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge

if.then16.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge: ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_proposer_for_optional_reply.exit

if.then16.i.if.end64.sink.split.i_crit_edge:      ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.sink.split.i

if.else24.i:                                      ; preds = %if.else.i
  %and27.i = and i32 %conv.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.else54.i, label %if.then29.i

if.then29.i:                                      ; preds = %if.else24.i
  %41 = ptrtoint ptr %param.0206 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %param.0206, align 128
  %call31.i = tail call i32 @strcmp(ptr noundef %42, ptr noundef nonnull dereferenceable(25) @.str.62) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.then33.i, label %if.then29.i.if.end36.i_crit_edge

if.then29.i.if.end36.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36.i

if.then33.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state, align 16
  %or35.i = or i32 %44, 32
  store i32 %or35.i, ptr %state, align 16
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then33.i, %if.then29.i.if.end36.i_crit_edge
  br i1 %keys_workaround, label %if.then38.i, label %if.end36.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge

if.end36.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_proposer_for_optional_reply.exit

if.then38.i:                                      ; preds = %if.end36.i
  %call40.i = tail call i32 @strcmp(ptr noundef %42, ptr noundef nonnull dereferenceable(17) @.str.65) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %if.then38.i.if.end45.i_crit_edge

if.then38.i.if.end45.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

if.then42.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state, align 16
  %or44.i = or i32 %46, 32
  store i32 %or44.i, ptr %state, align 16
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then42.i, %if.then38.i.if.end45.i_crit_edge
  %call47.i = tail call i32 @strcmp(ptr noundef %42, ptr noundef nonnull dereferenceable(15) @.str.43) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end45.i.if.end64.sink.split.i_crit_edge, label %if.end45.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge

if.end45.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_proposer_for_optional_reply.exit

if.end45.i.if.end64.sink.split.i_crit_edge:       ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.sink.split.i

if.else54.i:                                      ; preds = %if.else24.i
  %47 = ptrtoint ptr %phase53 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %phase53, align 1
  %49 = and i8 %48, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool57.not.i = icmp eq i8 %49, 0
  br i1 %tobool57.not.i, label %if.else54.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge, label %if.else54.i.if.end64.sink.split.i_crit_edge

if.else54.i.if.end64.sink.split.i_crit_edge:      ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64.sink.split.i

if.else54.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge: ; preds = %if.else54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %iscsi_check_proposer_for_optional_reply.exit

if.end64.sink.split.i:                            ; preds = %if.else54.i.if.end64.sink.split.i_crit_edge, %if.end45.i.if.end64.sink.split.i_crit_edge, %if.then16.i.if.end64.sink.split.i_crit_edge, %if.then.i.if.end64.sink.split.i_crit_edge
  %50 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %state, align 16
  %or21.i = or i32 %51, 32
  store i32 %or21.i, ptr %state, align 16
  br label %iscsi_check_proposer_for_optional_reply.exit

iscsi_check_proposer_for_optional_reply.exit:     ; preds = %if.end64.sink.split.i, %if.else54.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge, %if.end45.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge, %if.end36.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge, %if.then16.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge, %if.end14.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge, %if.then.i.iscsi_check_proposer_for_optional_reply.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_encode_text_output.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_encode_text_output, %for.inc.sink.split)) #9
          to label %for.inc [label %for.inc.sink.split], !srcloc !561

for.inc.sink.split:                               ; preds = %iscsi_check_proposer_for_optional_reply.exit, %if.then24
  %value60.sink = phi ptr [ %value, %if.then24 ], [ %value60, %iscsi_check_proposer_for_optional_reply.exit ]
  %iscsi_encode_text_output.__UNIQUE_ID_ddebug254.sink = phi ptr [ @iscsi_encode_text_output.__UNIQUE_ID_ddebug253, %if.then24 ], [ @iscsi_encode_text_output.__UNIQUE_ID_ddebug254, %iscsi_check_proposer_for_optional_reply.exit ]
  %output_buf.1.ph = phi ptr [ %add.ptr27, %if.then24 ], [ %add.ptr64, %iscsi_check_proposer_for_optional_reply.exit ]
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %param.0206 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %param.0206, align 128
  %54 = ptrtoint ptr %value60.sink to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %value60.sink, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull %iscsi_encode_text_output.__UNIQUE_ID_ddebug254.sink, ptr noundef nonnull @.str.110, ptr noundef %53, ptr noundef %55) #9
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %iscsi_check_proposer_for_optional_reply.exit, %land.lhs.true52.for.inc_crit_edge, %if.end40.for.inc_crit_edge, %if.then24, %for.body.for.inc_crit_edge
  %output_buf.1 = phi ptr [ %output_buf.0204, %land.lhs.true52.for.inc_crit_edge ], [ %output_buf.0204, %if.end40.for.inc_crit_edge ], [ %output_buf.0204, %for.body.for.inc_crit_edge ], [ %add.ptr27, %if.then24 ], [ %add.ptr64, %iscsi_check_proposer_for_optional_reply.exit ], [ %output_buf.1.ph, %for.inc.sink.split ]
  %56 = ptrtoint ptr %.pn205 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn = load ptr, ptr %.pn205, align 4
  %cmp4.not = icmp eq ptr %.pn, %param_list1
  br i1 %cmp4.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %output_buf.0.lcssa = phi ptr [ %add.ptr, %if.end.for.end_crit_edge ], [ %output_buf.1, %for.inc.for.end_crit_edge ]
  %extra_response_list = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 2
  %57 = ptrtoint ptr %extra_response_list to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn185209 = load ptr, ptr %extra_response_list, align 4
  %cmp98.not211 = icmp eq ptr %.pn185209, %extra_response_list
  br i1 %cmp98.not211, label %for.end.for.end135_crit_edge, label %for.end.for.body102_crit_edge

for.end.for.body102_crit_edge:                    ; preds = %for.end
  br label %for.body102

for.end.for.end135_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end135

for.body102:                                      ; preds = %for.inc129.for.body102_crit_edge, %for.end.for.body102_crit_edge
  %.pn185213 = phi ptr [ %.pn185, %for.inc129.for.body102_crit_edge ], [ %.pn185209, %for.end.for.body102_crit_edge ]
  %output_buf.2212 = phi ptr [ %add.ptr108, %for.inc129.for.body102_crit_edge ], [ %output_buf.0.lcssa, %for.end.for.body102_crit_edge ]
  %er.0214 = getelementptr i8, ptr %.pn185213, i32 -96
  %value103 = getelementptr i8, ptr %.pn185213, i32 -32
  %call105 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %output_buf.2212, ptr noundef nonnull @.str.108, ptr noundef %er.0214, ptr noundef %value103)
  %58 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %length, align 4
  %add106 = add i32 %call105, 1
  %add107 = add i32 %add106, %59
  store i32 %add107, ptr %length, align 4
  %add.ptr108 = getelementptr i8, ptr %textbuf, i32 %add107
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_encode_text_output.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_encode_text_output, %if.then121)) #9
          to label %for.inc129 [label %if.then121], !srcloc !561

if.then121:                                       ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_encode_text_output.__UNIQUE_ID_ddebug255, ptr noundef nonnull @.str.110, ptr noundef %er.0214, ptr noundef %value103) #9
  br label %for.inc129

for.inc129:                                       ; preds = %if.then121, %for.body102
  %60 = ptrtoint ptr %.pn185213 to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn185 = load ptr, ptr %.pn185213, align 4
  %cmp98.not = icmp eq ptr %.pn185, %extra_response_list
  br i1 %cmp98.not, label %for.inc129.for.end135_crit_edge, label %for.inc129.for.body102_crit_edge

for.inc129.for.body102_crit_edge:                 ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body102

for.inc129.for.end135_crit_edge:                  ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end135

for.end135:                                       ; preds = %for.inc129.for.end135_crit_edge, %for.end.for.end135_crit_edge
  %61 = ptrtoint ptr %extra_response_list to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %extra_response_list, align 4
  %cmp.not19.i = icmp eq ptr %62, %extra_response_list
  br i1 %cmp.not19.i, label %for.end135.cleanup_crit_edge, label %for.end135.for.body.i_crit_edge

for.end135.for.body.i_crit_edge:                  ; preds = %for.end135
  br label %for.body.i

for.end135.cleanup_crit_edge:                     ; preds = %for.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.end135.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %62, %for.end135.for.body.i_crit_edge ]
  %er.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -96
  %63 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 32
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i.i, align 4
  %66 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %.pn.in20.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev1.i.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %65, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %70 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %er.0.i) #9
  %cmp.not.i = icmp eq ptr %.pn.i, %extra_response_list
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %for.end135.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %for.end135.cleanup_crit_edge ], [ 0, %list_del.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iscsi_enforce_integrity_rules(i8 noundef zeroext %phase, ptr noundef readonly %param_list) unnamed_addr #0 align 64 {
entry:
  %tmpptr = alloca ptr, align 4
  %tmpbuf = alloca [11 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpptr) #9
  %0 = ptrtoint ptr %tmpptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmpptr, align 4, !annotation !562
  %param_list1 = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 1
  %1 = ptrtoint ptr %param_list1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn261 = load ptr, ptr %param_list1, align 4
  %cmp.not263 = icmp eq ptr %.pn261, %param_list1
  br i1 %cmp.not263, label %entry.for.cond47.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond47.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond47.preheader

for.cond47.preheader:                             ; preds = %for.inc.for.cond47.preheader_crit_edge, %entry.for.cond47.preheader_crit_edge
  %MaxBurstLength.0.lcssa = phi i32 [ 0, %entry.for.cond47.preheader_crit_edge ], [ %MaxBurstLength.1, %for.inc.for.cond47.preheader_crit_edge ]
  %SessionType.0.lcssa = phi i8 [ 0, %entry.for.cond47.preheader_crit_edge ], [ %SessionType.2, %for.inc.for.cond47.preheader_crit_edge ]
  %ErrorRecoveryLevel.0.lcssa = phi i8 [ 0, %entry.for.cond47.preheader_crit_edge ], [ %ErrorRecoveryLevel.2, %for.inc.for.cond47.preheader_crit_edge ]
  %DataSequenceInOrder.0.lcssa = phi i8 [ 0, %entry.for.cond47.preheader_crit_edge ], [ %DataSequenceInOrder.2, %for.inc.for.cond47.preheader_crit_edge ]
  %2 = ptrtoint ptr %param_list1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn218273 = load ptr, ptr %param_list1, align 4
  %cmp50.not275 = icmp eq ptr %.pn218273, %param_list1
  br i1 %cmp50.not275, label %for.cond47.preheader.cleanup176_crit_edge, label %for.body53.lr.ph

for.cond47.preheader.cleanup176_crit_edge:        ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

for.body53.lr.ph:                                 ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %SessionType.0.lcssa)
  %tobool61.not = icmp eq i8 %SessionType.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %DataSequenceInOrder.0.lcssa)
  %tobool71.not = icmp eq i8 %DataSequenceInOrder.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %ErrorRecoveryLevel.0.lcssa)
  %cmp74.not = icmp eq i8 %ErrorRecoveryLevel.0.lcssa, 0
  %tobool61.not.not = xor i1 %tobool61.not, true
  br label %for.body53

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn268 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn261, %entry.for.body_crit_edge ]
  %DataSequenceInOrder.0267 = phi i8 [ %DataSequenceInOrder.2, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %ErrorRecoveryLevel.0266 = phi i8 [ %ErrorRecoveryLevel.2, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %SessionType.0265 = phi i8 [ %SessionType.2, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %MaxBurstLength.0264 = phi i32 [ %MaxBurstLength.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %param.0269 = getelementptr i8, ptr %.pn268, i32 -20
  %phase3 = getelementptr i8, ptr %.pn268, i32 -11
  %3 = ptrtoint ptr %phase3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %phase3, align 1
  %and220 = and i8 %4, %phase
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and220)
  %tobool.not = icmp eq i8 %and220, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %param.0269 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %param.0269, align 128
  %call = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(12) @.str.76) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %value = getelementptr i8, ptr %.pn268, i32 -16
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %value, align 4
  %call7 = call i32 @strcmp(ptr noundef %8, ptr noundef nonnull dereferenceable(7) @.str.33) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  %spec.select = select i1 %tobool8.not, i8 1, i8 %SessionType.0265
  br label %if.end11

if.end11:                                         ; preds = %if.then6, %if.end.if.end11_crit_edge
  %SessionType.1 = phi i8 [ %SessionType.0265, %if.end.if.end11_crit_edge ], [ %spec.select, %if.then6 ]
  %call13 = call i32 @strcmp(ptr noundef %6, ptr noundef nonnull dereferenceable(19) @.str.74) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.then15, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %value16 = getelementptr i8, ptr %.pn268, i32 -16
  %9 = ptrtoint ptr %value16 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %value16, align 4
  %call17 = call i32 @simple_strtoul(ptr noundef %10, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  %conv18 = trunc i32 %call17 to i8
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %if.end11.if.end19_crit_edge
  %ErrorRecoveryLevel.1 = phi i8 [ %ErrorRecoveryLevel.0266, %if.end11.if.end19_crit_edge ], [ %conv18, %if.then15 ]
  %11 = ptrtoint ptr %param.0269 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %param.0269, align 128
  %call21 = call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(20) @.str.73) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end19.if.end29_crit_edge

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %value24 = getelementptr i8, ptr %.pn268, i32 -16
  %13 = ptrtoint ptr %value24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %value24, align 4
  %call25 = call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(4) @.str.20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  %spec.select221 = select i1 %tobool26.not, i8 1, i8 %DataSequenceInOrder.0267
  br label %if.end29

if.end29:                                         ; preds = %if.then23, %if.end19.if.end29_crit_edge
  %DataSequenceInOrder.1 = phi i8 [ %DataSequenceInOrder.0267, %if.end19.if.end29_crit_edge ], [ %spec.select221, %if.then23 ]
  %call31 = call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(15) @.str.64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.end29.for.inc_crit_edge

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %value34 = getelementptr i8, ptr %.pn268, i32 -16
  %15 = ptrtoint ptr %value34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %value34, align 4
  %call35 = call i32 @simple_strtoul(ptr noundef %16, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %if.end29.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %MaxBurstLength.1 = phi i32 [ %MaxBurstLength.0264, %if.end29.for.inc_crit_edge ], [ %call35, %if.then33 ], [ %MaxBurstLength.0264, %for.body.for.inc_crit_edge ]
  %SessionType.2 = phi i8 [ %SessionType.1, %if.end29.for.inc_crit_edge ], [ %SessionType.1, %if.then33 ], [ %SessionType.0265, %for.body.for.inc_crit_edge ]
  %ErrorRecoveryLevel.2 = phi i8 [ %ErrorRecoveryLevel.1, %if.end29.for.inc_crit_edge ], [ %ErrorRecoveryLevel.1, %if.then33 ], [ %ErrorRecoveryLevel.0266, %for.body.for.inc_crit_edge ]
  %DataSequenceInOrder.2 = phi i8 [ %DataSequenceInOrder.1, %if.end29.for.inc_crit_edge ], [ %DataSequenceInOrder.1, %if.then33 ], [ %DataSequenceInOrder.0267, %for.body.for.inc_crit_edge ]
  %17 = ptrtoint ptr %.pn268 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn268, align 4
  %cmp.not = icmp eq ptr %.pn, %param_list1
  br i1 %cmp.not, label %for.inc.for.cond47.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.cond47.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond47.preheader

for.body53:                                       ; preds = %for.inc169.for.body53_crit_edge, %for.body53.lr.ph
  %.pn218276 = phi ptr [ %.pn218273, %for.body53.lr.ph ], [ %.pn218, %for.inc169.for.body53_crit_edge ]
  %param.1278 = getelementptr i8, ptr %.pn218276, i32 -20
  %phase54 = getelementptr i8, ptr %.pn218276, i32 -11
  %18 = ptrtoint ptr %phase54 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %phase54, align 1
  %and57219 = and i8 %19, %phase
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and57219)
  %tobool58.not = icmp eq i8 %and57219, 0
  br i1 %tobool58.not, label %for.body53.for.inc169_crit_edge, label %if.end60

for.body53.for.inc169_crit_edge:                  ; preds = %for.body53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc169

if.end60:                                         ; preds = %for.body53
  br i1 %tobool61.not, label %land.lhs.true, label %if.end60.if.end65_crit_edge

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

land.lhs.true:                                    ; preds = %if.end60
  %state = getelementptr i8, ptr %.pn218276, i32 -4
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 16
  %and62 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %land.lhs.true.for.inc169_crit_edge, label %land.lhs.true.if.end65_crit_edge

land.lhs.true.if.end65_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

land.lhs.true.for.inc169_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc169

if.end65:                                         ; preds = %land.lhs.true.if.end65_crit_edge, %if.end60.if.end65_crit_edge
  %22 = ptrtoint ptr %param.1278 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %param.1278, align 128
  %call67 = call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(18) @.str.71) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp ne i32 %call67, 0
  %or.cond = select i1 %tobool68.not, i1 true, i1 %tobool71.not
  %or.cond222 = select i1 %or.cond, i1 true, i1 %cmp74.not
  br i1 %or.cond222, label %if.end65.if.end97_crit_edge, label %if.then76

if.end65.if.end97_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then76:                                        ; preds = %if.end65
  %value77 = getelementptr i8, ptr %.pn218276, i32 -16
  %24 = ptrtoint ptr %value77 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %value77, align 4
  %call78 = call i32 @strcmp(ptr noundef %25, ptr noundef nonnull dereferenceable(2) @.str.44) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.then76.if.end97_crit_edge, label %if.then80

if.then76.if.end97_crit_edge:                     ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then80:                                        ; preds = %if.then76
  %26 = ptrtoint ptr %value77 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %value77, align 4
  call void @kfree(ptr noundef %27) #9
  %call.i = call noalias ptr @kstrdup(ptr noundef nonnull @.str.44, i32 noundef 3264) #9
  %28 = ptrtoint ptr %value77 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %value77, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %iscsi_update_param_value.exit.thread, label %do.body5.i

iscsi_update_param_value.exit.thread:             ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  br label %cleanup176

do.body5.i:                                       ; preds = %if.then80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_update_param_value.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_enforce_integrity_rules, %if.then11.i)) #9
          to label %do.body [label %if.then11.i], !srcloc !561

if.then11.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %param.1278 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %param.1278, align 128
  %31 = ptrtoint ptr %value77 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %value77, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_update_param_value.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.104, ptr noundef %30, ptr noundef %32) #9
  br label %do.body

do.body:                                          ; preds = %if.then11.i, %do.body5.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_enforce_integrity_rules.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_enforce_integrity_rules, %if.then92)) #9
          to label %if.end97 [label %if.then92], !srcloc !561

if.then92:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %param.1278 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %param.1278, align 128
  %35 = ptrtoint ptr %value77 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %value77, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_enforce_integrity_rules.__UNIQUE_ID_ddebug249, ptr noundef nonnull @.str.257, ptr noundef %34, ptr noundef %36) #9
  br label %if.end97

if.end97:                                         ; preds = %if.then92, %do.body, %if.then76.if.end97_crit_edge, %if.end65.if.end97_crit_edge
  %37 = ptrtoint ptr %param.1278 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %param.1278, align 128
  %call99 = call i32 @strcmp(ptr noundef %38, ptr noundef nonnull dereferenceable(15) @.str.43) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp ne i32 %call99, 0
  %brmerge = select i1 %tobool100.not, i1 true, i1 %tobool61.not.not
  br i1 %brmerge, label %if.end97.if.end132_crit_edge, label %if.then103

if.end97.if.end132_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then103:                                       ; preds = %if.end97
  %value104 = getelementptr i8, ptr %.pn218276, i32 -16
  %39 = ptrtoint ptr %value104 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %value104, align 4
  %call105 = call i32 @strcmp(ptr noundef %40, ptr noundef nonnull dereferenceable(2) @.str.44) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %tobool106.not = icmp eq i32 %call105, 0
  br i1 %tobool106.not, label %if.then103.if.end132_crit_edge, label %if.then107

if.then103.if.end132_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end132

if.then107:                                       ; preds = %if.then103
  %41 = ptrtoint ptr %value104 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %value104, align 4
  call void @kfree(ptr noundef %42) #9
  %call.i232 = call noalias ptr @kstrdup(ptr noundef nonnull @.str.44, i32 noundef 3264) #9
  %43 = ptrtoint ptr %value104 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i232, ptr %value104, align 4
  %tobool.not.i233 = icmp eq ptr %call.i232, null
  br i1 %tobool.not.i233, label %iscsi_update_param_value.exit239.thread, label %do.body5.i236

iscsi_update_param_value.exit239.thread:          ; preds = %if.then107
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  br label %cleanup176

do.body5.i236:                                    ; preds = %if.then107
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_update_param_value.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_enforce_integrity_rules, %if.then11.i237)) #9
          to label %do.body113 [label %if.then11.i237], !srcloc !561

if.then11.i237:                                   ; preds = %do.body5.i236
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %param.1278 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %param.1278, align 128
  %46 = ptrtoint ptr %value104 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %value104, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_update_param_value.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.104, ptr noundef %45, ptr noundef %47) #9
  br label %do.body113

do.body113:                                       ; preds = %if.then11.i237, %do.body5.i236
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_enforce_integrity_rules.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_enforce_integrity_rules, %if.then125)) #9
          to label %if.end132 [label %if.then125], !srcloc !561

if.then125:                                       ; preds = %do.body113
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %param.1278 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %param.1278, align 128
  %50 = ptrtoint ptr %value104 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %value104, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_enforce_integrity_rules.__UNIQUE_ID_ddebug250, ptr noundef nonnull @.str.257, ptr noundef %49, ptr noundef %51) #9
  br label %if.end132

if.end132:                                        ; preds = %if.then125, %do.body113, %if.then103.if.end132_crit_edge, %if.end97.if.end132_crit_edge
  %52 = ptrtoint ptr %param.1278 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %param.1278, align 128
  %call134 = call i32 @strcmp(ptr noundef %53, ptr noundef nonnull dereferenceable(17) @.str.65) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then136, label %if.end132.for.inc169_crit_edge

if.end132.for.inc169_crit_edge:                   ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc169

if.then136:                                       ; preds = %if.end132
  %value137 = getelementptr i8, ptr %.pn218276, i32 -16
  %54 = ptrtoint ptr %value137 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %value137, align 4
  %call138 = call i32 @simple_strtoul(ptr noundef %55, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call138, i32 %MaxBurstLength.0.lcssa)
  %cmp139 = icmp ugt i32 %call138, %MaxBurstLength.0.lcssa
  br i1 %cmp139, label %if.then141, label %if.then136.for.inc169_crit_edge

if.then136.for.inc169_crit_edge:                  ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc169

if.then141:                                       ; preds = %if.then136
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %tmpbuf) #9
  %56 = call ptr @memset(ptr %tmpbuf, i32 0, i32 11)
  %call143 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %tmpbuf, ptr noundef nonnull @.str.250, i32 noundef %MaxBurstLength.0.lcssa)
  %57 = ptrtoint ptr %value137 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %value137, align 4
  call void @kfree(ptr noundef %58) #9
  %call.i241 = call noalias ptr @kstrdup(ptr noundef nonnull %tmpbuf, i32 noundef 3264) #9
  %59 = ptrtoint ptr %value137 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call.i241, ptr %value137, align 4
  %tobool.not.i242 = icmp eq ptr %call.i241, null
  br i1 %tobool.not.i242, label %cleanup176.critedge, label %do.body5.i245

do.body5.i245:                                    ; preds = %if.then141
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_update_param_value.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_enforce_integrity_rules, %iscsi_update_param_value.exit248.thread)) #9
          to label %do.body149 [label %iscsi_update_param_value.exit248.thread], !srcloc !561

iscsi_update_param_value.exit248.thread:          ; preds = %do.body5.i245
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %param.1278 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %param.1278, align 128
  %62 = ptrtoint ptr %value137 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %value137, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_update_param_value.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.104, ptr noundef %61, ptr noundef %63) #9
  br label %do.body149

do.body149:                                       ; preds = %iscsi_update_param_value.exit248.thread, %do.body5.i245
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_enforce_integrity_rules.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_enforce_integrity_rules, %if.then161)) #9
          to label %for.inc169.critedge [label %if.then161], !srcloc !561

if.then161:                                       ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %param.1278 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %param.1278, align 128
  %66 = ptrtoint ptr %value137 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %value137, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_enforce_integrity_rules.__UNIQUE_ID_ddebug251, ptr noundef nonnull @.str.257, ptr noundef %65, ptr noundef %67) #9
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tmpbuf) #9
  br label %for.inc169

for.inc169.critedge:                              ; preds = %do.body149
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tmpbuf) #9
  br label %for.inc169

for.inc169:                                       ; preds = %for.inc169.critedge, %if.then161, %if.then136.for.inc169_crit_edge, %if.end132.for.inc169_crit_edge, %land.lhs.true.for.inc169_crit_edge, %for.body53.for.inc169_crit_edge
  %68 = ptrtoint ptr %.pn218276 to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pn218 = load ptr, ptr %.pn218276, align 4
  %cmp50.not = icmp eq ptr %.pn218, %param_list1
  br i1 %cmp50.not, label %for.inc169.cleanup176_crit_edge, label %for.inc169.for.body53_crit_edge

for.inc169.for.body53_crit_edge:                  ; preds = %for.inc169
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body53

for.inc169.cleanup176_crit_edge:                  ; preds = %for.inc169
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup176

cleanup176.critedge:                              ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %tmpbuf) #9
  br label %cleanup176

cleanup176:                                       ; preds = %cleanup176.critedge, %for.inc169.cleanup176_crit_edge, %iscsi_update_param_value.exit239.thread, %iscsi_update_param_value.exit.thread, %for.cond47.preheader.cleanup176_crit_edge
  %retval.3 = phi i32 [ -1, %cleanup176.critedge ], [ -1, %iscsi_update_param_value.exit.thread ], [ -1, %iscsi_update_param_value.exit239.thread ], [ 0, %for.cond47.preheader.cleanup176_crit_edge ], [ 0, %for.inc169.cleanup176_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpptr) #9
  ret i32 %retval.3
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_check_negotiated_keys(ptr noundef readonly %param_list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %param_list1 = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 1
  %0 = ptrtoint ptr %param_list1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn33 = load ptr, ptr %param_list1, align 4
  %cmp.not35 = icmp eq ptr %.pn33, %param_list1
  br i1 %cmp.not35, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn37 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn33, %entry.for.body_crit_edge ]
  %ret.036 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %param.038 = getelementptr i8, ptr %.pn37, i32 -20
  %state = getelementptr i8, ptr %.pn37, i32 -4
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 16
  %3 = and i32 %2, 102
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %4 = icmp eq i32 %3, 6
  br i1 %4, label %land.lhs.true14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true14:                                  ; preds = %for.body
  %phase = getelementptr i8, ptr %.pn37, i32 -11
  %5 = ptrtoint ptr %phase to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %phase, align 1
  %7 = and i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  br i1 %tobool16.not, label %do.end, label %land.lhs.true14.for.inc_crit_edge

land.lhs.true14.for.inc_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %param.038 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %param.038, align 128
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %9) #12
  br label %for.inc

for.inc:                                          ; preds = %do.end, %land.lhs.true14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.036, %land.lhs.true14.for.inc_crit_edge ], [ -1, %do.end ], [ %ret.036, %for.body.for.inc_crit_edge ]
  %10 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn37, align 4
  %cmp.not = icmp eq ptr %.pn, %param_list1
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iscsi_change_param_value(ptr noundef %keyvalue, ptr noundef %param_list, i32 noundef %check_key) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @strchr(ptr noundef %keyvalue, i32 noundef 61) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %iscsi_extract_key_value.exit.thread, label %if.end

iscsi_extract_key_value.exit.thread:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %call.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %check_key)
  %tobool.not = icmp eq i32 %check_key, 0
  br i1 %tobool.not, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %call.i34 = tail call i32 @strlen(ptr noundef %keyvalue) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i34)
  %cmp.i = icmp ugt i32 %call.i34, 64
  br i1 %cmp.i, label %do.end.i36, label %if.end.i37

do.end.i36:                                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef %keyvalue, i32 noundef 64) #12
  br label %cleanup

if.end.i37:                                       ; preds = %if.then1
  %tobool.not.i.i = icmp eq ptr %keyvalue, null
  %tobool1.not.i.i = icmp eq ptr %param_list, null
  %or.cond.i.i = or i1 %tobool.not.i.i, %tobool1.not.i.i
  br i1 %or.cond.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i37
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #12
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end.i37
  %param_list2.i.i = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 1
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i
  %.pn.in.i.i = phi ptr [ %param_list2.i.i, %if.end.i.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %1 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %param_list2.i.i
  br i1 %cmp.not.i.i, label %do.end16.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %param.0.i.i = getelementptr i8, ptr %.pn.i.i, i32 -20
  %2 = ptrtoint ptr %param.0.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param.0.i.i, align 128
  %call5.i.i = tail call i32 @strcmp(ptr noundef nonnull %keyvalue, ptr noundef %3) #15
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %__iscsi_check_key.exit, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

do.end16.i.i:                                     ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call18.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull %keyvalue) #12
  br label %cleanup

__iscsi_check_key.exit:                           ; preds = %for.body.i.i
  %param.0.i.i.le = getelementptr i8, ptr %.pn.i.i, i32 -20
  %tobool3.not = icmp eq ptr %param.0.i.i.le, null
  br i1 %tobool3.not, label %__iscsi_check_key.exit.cleanup_crit_edge, label %__iscsi_check_key.exit.if.end16_crit_edge

__iscsi_check_key.exit.if.end16_crit_edge:        ; preds = %__iscsi_check_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

__iscsi_check_key.exit.cleanup_crit_edge:         ; preds = %__iscsi_check_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call6 = tail call fastcc ptr @iscsi_check_key(ptr noundef %keyvalue, i32 noundef 0, i32 noundef 0, ptr noundef %param_list)
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.else.cleanup_crit_edge, label %if.end9

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.else
  %set_param = getelementptr inbounds %struct.iscsi_param, ptr %call6, i32 0, i32 2
  %4 = ptrtoint ptr %set_param to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %set_param, align 8
  %call10 = tail call fastcc i32 @iscsi_check_value(ptr noundef nonnull %call6, ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  %5 = ptrtoint ptr %set_param to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %set_param, align 8
  br i1 %cmp11, label %if.end9.cleanup_crit_edge, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end9.if.end16_crit_edge, %__iscsi_check_key.exit.if.end16_crit_edge
  %param.0 = phi ptr [ %param.0.i.i.le, %__iscsi_check_key.exit.if.end16_crit_edge ], [ %call6, %if.end9.if.end16_crit_edge ]
  %value1.i = getelementptr inbounds %struct.iscsi_param, ptr %param.0, i32 0, i32 1
  %6 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %value1.i, align 4
  tail call void @kfree(ptr noundef %7) #9
  %call.i39 = tail call noalias ptr @kstrdup(ptr noundef %add.ptr.i, i32 noundef 3264) #9
  %8 = ptrtoint ptr %value1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i39, ptr %value1.i, align 4
  %tobool.not.i40 = icmp eq ptr %call.i39, null
  br i1 %tobool.not.i40, label %13, label %do.body5.i

do.body5.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_update_param_value.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_change_param_value, %if.then11.i)) #9
          to label %cleanup [label %if.then11.i], !srcloc !561

if.then11.i:                                      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %param.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %param.0, align 128
  %11 = ptrtoint ptr %value1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %value1.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_update_param_value.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.104, ptr noundef %10, ptr noundef %12) #9
  br label %cleanup

13:                                               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call4.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102) #12
  br label %cleanup

cleanup:                                          ; preds = %13, %if.then11.i, %do.body5.i, %if.end9.cleanup_crit_edge, %if.else.cleanup_crit_edge, %__iscsi_check_key.exit.cleanup_crit_edge, %do.end16.i.i, %do.end.i.i, %do.end.i36, %iscsi_extract_key_value.exit.thread
  %retval.0 = phi i32 [ -1, %__iscsi_check_key.exit.cleanup_crit_edge ], [ -1, %if.else.cleanup_crit_edge ], [ -1, %iscsi_extract_key_value.exit.thread ], [ -1, %13 ], [ 0, %do.body5.i ], [ 0, %if.then11.i ], [ -1, %do.end.i36 ], [ -1, %do.end16.i.i ], [ -1, %do.end.i.i ], [ -1, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsi_set_connection_parameters(ptr nocapture noundef %ops, ptr noundef readonly %param_list) local_unnamed_addr #0 align 64 {
entry:
  %tmpptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpptr) #9
  %0 = ptrtoint ptr %tmpptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmpptr, align 4, !annotation !562
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_connection_parameters, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !561

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug256, ptr noundef nonnull @.str.114) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %param_list3 = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 1
  %1 = ptrtoint ptr %param_list3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn315 = load ptr, ptr %param_list3, align 4
  %cmp.not317 = icmp eq ptr %.pn315, %param_list3
  br i1 %cmp.not317, label %do.end.do.body227_crit_edge, label %for.body.lr.ph

do.end.do.body227_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body227

for.body.lr.ph:                                   ; preds = %do.end
  %MaxXmitDataSegmentLength = getelementptr inbounds %struct.iscsi_conn_ops, ptr %ops, i32 0, i32 3
  %TargetRecvDataSegmentLength = getelementptr inbounds %struct.iscsi_conn_ops, ptr %ops, i32 0, i32 5
  %InitiatorRecvDataSegmentLength = getelementptr inbounds %struct.iscsi_conn_ops, ptr %ops, i32 0, i32 4
  %MaxRecvDataSegmentLength157 = getelementptr inbounds %struct.iscsi_conn_ops, ptr %ops, i32 0, i32 2
  %DataDigest = getelementptr inbounds %struct.iscsi_conn_ops, ptr %ops, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn318 = phi ptr [ %.pn315, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %param.0319 = getelementptr i8, ptr %.pn318, i32 -20
  %2 = ptrtoint ptr %param.0319 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %param.0319, align 128
  %call8 = call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(25) @.str.60) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %for.body.if.end29_crit_edge

for.body.if.end29_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %value = getelementptr i8, ptr %.pn318, i32 -16
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %value, align 4
  %call11 = call i32 @simple_strtoul(ptr noundef %5, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  %6 = ptrtoint ptr %MaxXmitDataSegmentLength to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call11, ptr %MaxXmitDataSegmentLength, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_connection_parameters, %if.then24)) #9
          to label %if.end29 [label %if.then24], !srcloc !561

if.then24:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %value, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug257, ptr noundef nonnull @.str.115, ptr noundef %8) #9
  br label %if.end29

if.end29:                                         ; preds = %if.then24, %if.then10, %for.body.if.end29_crit_edge
  %state = getelementptr i8, ptr %.pn318, i32 -4
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 16
  %11 = and i32 %10, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.end29.for.inc_crit_edge, label %if.end35

if.end29.for.inc_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end35:                                         ; preds = %if.end29
  %13 = ptrtoint ptr %param.0319 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %param.0319, align 128
  %call37 = call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(11) @.str.38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %do.body40, label %if.else

do.body40:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_connection_parameters, %if.then52)) #9
          to label %for.inc [label %if.then52], !srcloc !561

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  %value53 = getelementptr i8, ptr %.pn318, i32 -16
  %15 = ptrtoint ptr %value53 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %value53, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug258, ptr noundef nonnull @.str.116, ptr noundef %16) #9
  br label %for.inc

if.else:                                          ; preds = %if.end35
  %call58 = call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(13) @.str.40) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then60, label %if.else83

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %value61 = getelementptr i8, ptr %.pn318, i32 -16
  %17 = ptrtoint ptr %value61 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %value61, align 4
  %call62 = call i32 @strcmp(ptr noundef %18, ptr noundef nonnull dereferenceable(7) @.str.8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  %conv = zext i1 %tobool63.not to i8
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %ops, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_connection_parameters, %if.then78)) #9
          to label %for.inc [label %if.then78], !srcloc !561

if.then78:                                        ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %value61 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value61, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug259, ptr noundef nonnull @.str.117, ptr noundef %21) #9
  br label %for.inc

if.else83:                                        ; preds = %if.else
  %call85 = call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(11) @.str.42) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then87, label %if.else111

if.then87:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #11
  %value88 = getelementptr i8, ptr %.pn318, i32 -16
  %22 = ptrtoint ptr %value88 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %value88, align 4
  %call89 = call i32 @strcmp(ptr noundef %23, ptr noundef nonnull dereferenceable(7) @.str.8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  %conv93 = zext i1 %tobool90.not to i8
  %24 = ptrtoint ptr %DataDigest to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv93, ptr %DataDigest, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_connection_parameters, %if.then106)) #9
          to label %for.inc [label %if.then106], !srcloc !561

if.then106:                                       ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %value88 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %value88, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug260, ptr noundef nonnull @.str.118, ptr noundef %26) #9
  br label %for.inc

if.else111:                                       ; preds = %if.else83
  %call113 = call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(25) @.str.62) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %tobool114.not = icmp eq i32 %call113, 0
  br i1 %tobool114.not, label %do.body116, label %if.else132

do.body116:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_connection_parameters, %if.then128)) #9
          to label %for.inc [label %if.then128], !srcloc !561

if.then128:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %MaxRecvDataSegmentLength157 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %MaxRecvDataSegmentLength157, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug261, ptr noundef nonnull @.str.119, i32 noundef %28) #9
  br label %for.inc

if.else132:                                       ; preds = %if.else111
  %call134 = call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(31) @.str.83) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool135.not = icmp eq i32 %call134, 0
  br i1 %tobool135.not, label %if.then136, label %if.else174

if.then136:                                       ; preds = %if.else132
  %value137 = getelementptr i8, ptr %.pn318, i32 -16
  %29 = ptrtoint ptr %value137 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %value137, align 4
  %call138 = call i32 @simple_strtoul(ptr noundef %30, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  %31 = ptrtoint ptr %InitiatorRecvDataSegmentLength to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call138, ptr %InitiatorRecvDataSegmentLength, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_connection_parameters, %if.then151)) #9
          to label %do.end155 [label %if.then151], !srcloc !561

if.then151:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %value137 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %value137, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug262, ptr noundef nonnull @.str.120, ptr noundef %33) #9
  br label %do.end155

do.end155:                                        ; preds = %if.then151, %if.then136
  %34 = ptrtoint ptr %InitiatorRecvDataSegmentLength to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %InitiatorRecvDataSegmentLength, align 4
  %36 = ptrtoint ptr %MaxRecvDataSegmentLength157 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %MaxRecvDataSegmentLength157, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_connection_parameters, %if.then170)) #9
          to label %for.inc [label %if.then170], !srcloc !561

if.then170:                                       ; preds = %do.end155
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug263, ptr noundef nonnull @.str.121) #9
  br label %for.inc

if.else174:                                       ; preds = %if.else132
  %call176 = call i32 @strcmp(ptr noundef %14, ptr noundef nonnull dereferenceable(28) @.str.84) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool177.not = icmp eq i32 %call176, 0
  br i1 %tobool177.not, label %if.then178, label %if.else174.for.inc_crit_edge

if.else174.for.inc_crit_edge:                     ; preds = %if.else174
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then178:                                       ; preds = %if.else174
  %value179 = getelementptr i8, ptr %.pn318, i32 -16
  %37 = ptrtoint ptr %value179 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %value179, align 4
  %call180 = call i32 @simple_strtoul(ptr noundef %38, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  %39 = ptrtoint ptr %TargetRecvDataSegmentLength to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call180, ptr %TargetRecvDataSegmentLength, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_connection_parameters, %if.then193)) #9
          to label %do.end197 [label %if.then193], !srcloc !561

if.then193:                                       ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %value179 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %value179, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug264, ptr noundef nonnull @.str.122, ptr noundef %41) #9
  br label %do.end197

do.end197:                                        ; preds = %if.then193, %if.then178
  %42 = ptrtoint ptr %TargetRecvDataSegmentLength to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %TargetRecvDataSegmentLength, align 4
  %44 = ptrtoint ptr %MaxXmitDataSegmentLength to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %MaxXmitDataSegmentLength, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_connection_parameters, %if.then212)) #9
          to label %for.inc [label %if.then212], !srcloc !561

if.then212:                                       ; preds = %do.end197
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug265, ptr noundef nonnull @.str.123) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then212, %do.end197, %if.else174.for.inc_crit_edge, %if.then170, %do.end155, %if.then128, %do.body116, %if.then106, %if.then87, %if.then78, %if.then60, %if.then52, %do.body40, %if.end29.for.inc_crit_edge
  %45 = ptrtoint ptr %.pn318 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn = load ptr, ptr %.pn318, align 4
  %cmp.not = icmp eq ptr %.pn, %param_list3
  br i1 %cmp.not, label %for.inc.do.body227_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body227_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body227

do.body227:                                       ; preds = %for.inc.do.body227_crit_edge, %do.end.do.body227_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_connection_parameters, %if.then239)) #9
          to label %do.end242 [label %if.then239], !srcloc !561

if.then239:                                       ; preds = %do.body227
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug266, ptr noundef nonnull @.str.114) #9
  br label %do.end242

do.end242:                                        ; preds = %if.then239, %do.body227
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpptr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsi_set_session_parameters(ptr nocapture noundef writeonly %ops, ptr noundef readonly %param_list, i32 noundef %leading) local_unnamed_addr #0 align 64 {
entry:
  %tmpptr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmpptr) #9
  %0 = ptrtoint ptr %tmpptr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmpptr, align 4, !annotation !562
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !561

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug267, ptr noundef nonnull @.str.114) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %param_list3 = getelementptr inbounds %struct.iscsi_param_list, ptr %param_list, i32 0, i32 1
  %1 = ptrtoint ptr %param_list3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn695 = load ptr, ptr %param_list3, align 4
  %cmp.not697 = icmp eq ptr %.pn695, %param_list3
  br i1 %cmp.not697, label %do.end.do.body519_crit_edge, label %for.body.lr.ph

do.end.do.body519_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body519

for.body.lr.ph:                                   ; preds = %do.end
  %RDMAExtensions = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 18
  %SessionType = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 17
  %ErrorRecoveryLevel = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 16
  %DataSequenceInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 15
  %DataPDUInOrder = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 14
  %MaxOutstandingR2T = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 13
  %DefaultTime2Retain = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 12
  %DefaultTime2Wait = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 11
  %FirstBurstLength = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 10
  %MaxBurstLength = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 9
  %ImmediateData = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 8
  %InitialR2T = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 7
  %MaxConnections = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 6
  %TargetPortalGroupTag = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 5
  %TargetAlias = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %leading)
  %tobool79.not = icmp eq i32 %leading, 0
  %TargetName = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 2
  %InitiatorAlias = getelementptr inbounds %struct.iscsi_sess_ops, ptr %ops, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn698 = phi ptr [ %.pn695, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %state = getelementptr i8, ptr %.pn698, i32 -4
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 16
  %4 = and i32 %3, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %for.body.for.inc_crit_edge, label %if.end13

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end13:                                         ; preds = %for.body
  %param.0699 = getelementptr i8, ptr %.pn698, i32 -20
  %6 = ptrtoint ptr %param.0699 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %param.0699, align 128
  %call14 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(14) @.str.49) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end13
  %value = getelementptr i8, ptr %.pn698, i32 -16
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %value, align 4
  %tobool17.not = icmp eq ptr %9, null
  br i1 %tobool17.not, label %if.then16.for.inc_crit_edge, label %if.end19

if.then16.for.inc_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end19:                                         ; preds = %if.then16
  br i1 %tobool79.not, label %if.end19.do.body25_crit_edge, label %if.then21

if.end19.do.body25_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body25

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %ops, i32 noundef 224, ptr noundef nonnull @.str.125, ptr noundef nonnull %9)
  br label %do.body25

do.body25:                                        ; preds = %if.then21, %if.end19.do.body25_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then37)) #9
          to label %for.inc [label %if.then37], !srcloc !561

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %value, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug268, ptr noundef nonnull @.str.126, ptr noundef %11) #9
  br label %for.inc

if.else:                                          ; preds = %if.end13
  %call43 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(15) @.str.53) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then45, label %if.else70

if.then45:                                        ; preds = %if.else
  %value46 = getelementptr i8, ptr %.pn698, i32 -16
  %12 = ptrtoint ptr %value46 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %value46, align 4
  %tobool47.not = icmp eq ptr %13, null
  br i1 %tobool47.not, label %if.then45.for.inc_crit_edge, label %if.end49

if.then45.for.inc_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end49:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %call52 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %InitiatorAlias, i32 noundef 256, ptr noundef nonnull @.str.125, ptr noundef nonnull %13)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then65)) #9
          to label %for.inc [label %if.then65], !srcloc !561

if.then65:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %value46 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %value46, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug269, ptr noundef nonnull @.str.127, ptr noundef %15) #9
  br label %for.inc

if.else70:                                        ; preds = %if.else
  %call72 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(11) @.str.47) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.then74, label %if.else102

if.then74:                                        ; preds = %if.else70
  %value75 = getelementptr i8, ptr %.pn698, i32 -16
  %16 = ptrtoint ptr %value75 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %value75, align 4
  %tobool76.not = icmp eq ptr %17, null
  br i1 %tobool76.not, label %if.then74.for.inc_crit_edge, label %if.end78

if.then74.for.inc_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end78:                                         ; preds = %if.then74
  br i1 %tobool79.not, label %if.end78.do.body85_crit_edge, label %if.then80

if.end78.do.body85_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body85

if.then80:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %call83 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %TargetName, i32 noundef 224, ptr noundef nonnull @.str.125, ptr noundef nonnull %17)
  br label %do.body85

do.body85:                                        ; preds = %if.then80, %if.end78.do.body85_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then97)) #9
          to label %for.inc [label %if.then97], !srcloc !561

if.then97:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %value75 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %value75, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug270, ptr noundef nonnull @.str.128, ptr noundef %19) #9
  br label %for.inc

if.else102:                                       ; preds = %if.else70
  %call104 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(12) @.str.51) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.then106, label %if.else131

if.then106:                                       ; preds = %if.else102
  %value107 = getelementptr i8, ptr %.pn698, i32 -16
  %20 = ptrtoint ptr %value107 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %value107, align 4
  %tobool108.not = icmp eq ptr %21, null
  br i1 %tobool108.not, label %if.then106.for.inc_crit_edge, label %if.end110

if.then106.for.inc_crit_edge:                     ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end110:                                        ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #11
  %call113 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %TargetAlias, i32 noundef 256, ptr noundef nonnull @.str.125, ptr noundef nonnull %21)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then126)) #9
          to label %for.inc [label %if.then126], !srcloc !561

if.then126:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %value107 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %value107, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug271, ptr noundef nonnull @.str.129, ptr noundef %23) #9
  br label %for.inc

if.else131:                                       ; preds = %if.else102
  %call133 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(21) @.str.57) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133)
  %tobool134.not = icmp eq i32 %call133, 0
  br i1 %tobool134.not, label %if.then135, label %if.else155

if.then135:                                       ; preds = %if.else131
  call void @__sanitizer_cov_trace_pc() #11
  %value136 = getelementptr i8, ptr %.pn698, i32 -16
  %24 = ptrtoint ptr %value136 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %value136, align 4
  %call137 = call i32 @simple_strtoul(ptr noundef %25, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  %conv = trunc i32 %call137 to i16
  %26 = ptrtoint ptr %TargetPortalGroupTag to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %TargetPortalGroupTag, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then150)) #9
          to label %for.inc [label %if.then150], !srcloc !561

if.then150:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %value136 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %value136, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug272, ptr noundef nonnull @.str.130, ptr noundef %28) #9
  br label %for.inc

if.else155:                                       ; preds = %if.else131
  %call157 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(15) @.str.43) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.then159, label %if.else180

if.then159:                                       ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #11
  %value160 = getelementptr i8, ptr %.pn698, i32 -16
  %29 = ptrtoint ptr %value160 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %value160, align 4
  %call161 = call i32 @simple_strtoul(ptr noundef %30, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  %conv162 = trunc i32 %call161 to i16
  %31 = ptrtoint ptr %MaxConnections to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv162, ptr %MaxConnections, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then175)) #9
          to label %for.inc [label %if.then175], !srcloc !561

if.then175:                                       ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %value160 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %value160, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug273, ptr noundef nonnull @.str.131, ptr noundef %33) #9
  br label %for.inc

if.else180:                                       ; preds = %if.else155
  %call182 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(11) @.str.58) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.then184, label %if.else208

if.then184:                                       ; preds = %if.else180
  call void @__sanitizer_cov_trace_pc() #11
  %value185 = getelementptr i8, ptr %.pn698, i32 -16
  %34 = ptrtoint ptr %value185 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %value185, align 4
  %call186 = call i32 @strcmp(ptr noundef %35, ptr noundef nonnull dereferenceable(4) @.str.20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  %conv190 = zext i1 %tobool187.not to i8
  %36 = ptrtoint ptr %InitialR2T to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv190, ptr %InitialR2T, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then203)) #9
          to label %for.inc [label %if.then203], !srcloc !561

if.then203:                                       ; preds = %if.then184
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %value185 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %value185, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug274, ptr noundef nonnull @.str.132, ptr noundef %38) #9
  br label %for.inc

if.else208:                                       ; preds = %if.else180
  %call210 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(14) @.str.59) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %tobool211.not = icmp eq i32 %call210, 0
  br i1 %tobool211.not, label %if.then212, label %if.else236

if.then212:                                       ; preds = %if.else208
  call void @__sanitizer_cov_trace_pc() #11
  %value213 = getelementptr i8, ptr %.pn698, i32 -16
  %39 = ptrtoint ptr %value213 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %value213, align 4
  %call214 = call i32 @strcmp(ptr noundef %40, ptr noundef nonnull dereferenceable(4) @.str.20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  %conv218 = zext i1 %tobool215.not to i8
  %41 = ptrtoint ptr %ImmediateData to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv218, ptr %ImmediateData, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then231)) #9
          to label %for.inc [label %if.then231], !srcloc !561

if.then231:                                       ; preds = %if.then212
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %value213 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %value213, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug275, ptr noundef nonnull @.str.133, ptr noundef %43) #9
  br label %for.inc

if.else236:                                       ; preds = %if.else208
  %call238 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(15) @.str.64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %if.then240, label %if.else260

if.then240:                                       ; preds = %if.else236
  call void @__sanitizer_cov_trace_pc() #11
  %value241 = getelementptr i8, ptr %.pn698, i32 -16
  %44 = ptrtoint ptr %value241 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %value241, align 4
  %call242 = call i32 @simple_strtoul(ptr noundef %45, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  %46 = ptrtoint ptr %MaxBurstLength to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call242, ptr %MaxBurstLength, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then255)) #9
          to label %for.inc [label %if.then255], !srcloc !561

if.then255:                                       ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %value241 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %value241, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug276, ptr noundef nonnull @.str.134, ptr noundef %48) #9
  br label %for.inc

if.else260:                                       ; preds = %if.else236
  %call262 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(17) @.str.65) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call262)
  %tobool263.not = icmp eq i32 %call262, 0
  br i1 %tobool263.not, label %if.then264, label %if.else284

if.then264:                                       ; preds = %if.else260
  call void @__sanitizer_cov_trace_pc() #11
  %value265 = getelementptr i8, ptr %.pn698, i32 -16
  %49 = ptrtoint ptr %value265 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %value265, align 4
  %call266 = call i32 @simple_strtoul(ptr noundef %50, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  %51 = ptrtoint ptr %FirstBurstLength to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call266, ptr %FirstBurstLength, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then279)) #9
          to label %for.inc [label %if.then279], !srcloc !561

if.then279:                                       ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %value265 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %value265, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug277, ptr noundef nonnull @.str.135, ptr noundef %53) #9
  br label %for.inc

if.else284:                                       ; preds = %if.else260
  %call286 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(17) @.str.67) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call286)
  %tobool287.not = icmp eq i32 %call286, 0
  br i1 %tobool287.not, label %if.then288, label %if.else309

if.then288:                                       ; preds = %if.else284
  call void @__sanitizer_cov_trace_pc() #11
  %value289 = getelementptr i8, ptr %.pn698, i32 -16
  %54 = ptrtoint ptr %value289 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %value289, align 4
  %call290 = call i32 @simple_strtoul(ptr noundef %55, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  %conv291 = trunc i32 %call290 to i16
  %56 = ptrtoint ptr %DefaultTime2Wait to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv291, ptr %DefaultTime2Wait, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then304)) #9
          to label %for.inc [label %if.then304], !srcloc !561

if.then304:                                       ; preds = %if.then288
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %value289 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %value289, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug278, ptr noundef nonnull @.str.136, ptr noundef %58) #9
  br label %for.inc

if.else309:                                       ; preds = %if.else284
  %call311 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(19) @.str.69) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call311)
  %tobool312.not = icmp eq i32 %call311, 0
  br i1 %tobool312.not, label %if.then313, label %if.else334

if.then313:                                       ; preds = %if.else309
  call void @__sanitizer_cov_trace_pc() #11
  %value314 = getelementptr i8, ptr %.pn698, i32 -16
  %59 = ptrtoint ptr %value314 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %value314, align 4
  %call315 = call i32 @simple_strtoul(ptr noundef %60, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  %conv316 = trunc i32 %call315 to i16
  %61 = ptrtoint ptr %DefaultTime2Retain to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv316, ptr %DefaultTime2Retain, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then329)) #9
          to label %for.inc [label %if.then329], !srcloc !561

if.then329:                                       ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %value314 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %value314, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug279, ptr noundef nonnull @.str.137, ptr noundef %63) #9
  br label %for.inc

if.else334:                                       ; preds = %if.else309
  %call336 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(18) @.str.71) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call336)
  %tobool337.not = icmp eq i32 %call336, 0
  br i1 %tobool337.not, label %if.then338, label %if.else359

if.then338:                                       ; preds = %if.else334
  call void @__sanitizer_cov_trace_pc() #11
  %value339 = getelementptr i8, ptr %.pn698, i32 -16
  %64 = ptrtoint ptr %value339 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %value339, align 4
  %call340 = call i32 @simple_strtoul(ptr noundef %65, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  %conv341 = trunc i32 %call340 to i16
  %66 = ptrtoint ptr %MaxOutstandingR2T to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv341, ptr %MaxOutstandingR2T, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then354)) #9
          to label %for.inc [label %if.then354], !srcloc !561

if.then354:                                       ; preds = %if.then338
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %value339 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %value339, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug280, ptr noundef nonnull @.str.138, ptr noundef %68) #9
  br label %for.inc

if.else359:                                       ; preds = %if.else334
  %call361 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(15) @.str.72) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call361)
  %tobool362.not = icmp eq i32 %call361, 0
  br i1 %tobool362.not, label %if.then363, label %if.else387

if.then363:                                       ; preds = %if.else359
  call void @__sanitizer_cov_trace_pc() #11
  %value364 = getelementptr i8, ptr %.pn698, i32 -16
  %69 = ptrtoint ptr %value364 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %value364, align 4
  %call365 = call i32 @strcmp(ptr noundef %70, ptr noundef nonnull dereferenceable(4) @.str.20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call365)
  %tobool366.not = icmp eq i32 %call365, 0
  %conv369 = zext i1 %tobool366.not to i8
  %71 = ptrtoint ptr %DataPDUInOrder to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv369, ptr %DataPDUInOrder, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then382)) #9
          to label %for.inc [label %if.then382], !srcloc !561

if.then382:                                       ; preds = %if.then363
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %value364 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %value364, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug281, ptr noundef nonnull @.str.139, ptr noundef %73) #9
  br label %for.inc

if.else387:                                       ; preds = %if.else359
  %call389 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(20) @.str.73) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call389)
  %tobool390.not = icmp eq i32 %call389, 0
  br i1 %tobool390.not, label %if.then391, label %if.else415

if.then391:                                       ; preds = %if.else387
  call void @__sanitizer_cov_trace_pc() #11
  %value392 = getelementptr i8, ptr %.pn698, i32 -16
  %74 = ptrtoint ptr %value392 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %value392, align 4
  %call393 = call i32 @strcmp(ptr noundef %75, ptr noundef nonnull dereferenceable(4) @.str.20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call393)
  %tobool394.not = icmp eq i32 %call393, 0
  %conv397 = zext i1 %tobool394.not to i8
  %76 = ptrtoint ptr %DataSequenceInOrder to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv397, ptr %DataSequenceInOrder, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then410)) #9
          to label %for.inc [label %if.then410], !srcloc !561

if.then410:                                       ; preds = %if.then391
  call void @__sanitizer_cov_trace_pc() #11
  %77 = ptrtoint ptr %value392 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %value392, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug282, ptr noundef nonnull @.str.140, ptr noundef %78) #9
  br label %for.inc

if.else415:                                       ; preds = %if.else387
  %call417 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(19) @.str.74) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call417)
  %tobool418.not = icmp eq i32 %call417, 0
  br i1 %tobool418.not, label %if.then419, label %if.else440

if.then419:                                       ; preds = %if.else415
  call void @__sanitizer_cov_trace_pc() #11
  %value420 = getelementptr i8, ptr %.pn698, i32 -16
  %79 = ptrtoint ptr %value420 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %value420, align 4
  %call421 = call i32 @simple_strtoul(ptr noundef %80, ptr noundef nonnull %tmpptr, i32 noundef 0) #9
  %conv422 = trunc i32 %call421 to i8
  %81 = ptrtoint ptr %ErrorRecoveryLevel to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv422, ptr %ErrorRecoveryLevel, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then435)) #9
          to label %for.inc [label %if.then435], !srcloc !561

if.then435:                                       ; preds = %if.then419
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %value420 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %value420, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug283, ptr noundef nonnull @.str.141, ptr noundef %83) #9
  br label %for.inc

if.else440:                                       ; preds = %if.else415
  %call442 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(12) @.str.76) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call442)
  %tobool443.not = icmp eq i32 %call442, 0
  br i1 %tobool443.not, label %if.then444, label %if.else468

if.then444:                                       ; preds = %if.else440
  call void @__sanitizer_cov_trace_pc() #11
  %value445 = getelementptr i8, ptr %.pn698, i32 -16
  %84 = ptrtoint ptr %value445 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %value445, align 4
  %call446 = call i32 @strcmp(ptr noundef %85, ptr noundef nonnull dereferenceable(10) @.str.32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call446)
  %tobool447.not = icmp eq i32 %call446, 0
  %conv450 = zext i1 %tobool447.not to i8
  %86 = ptrtoint ptr %SessionType to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv450, ptr %SessionType, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then463)) #9
          to label %for.inc [label %if.then463], !srcloc !561

if.then463:                                       ; preds = %if.then444
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %value445 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %value445, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug284, ptr noundef nonnull @.str.142, ptr noundef %88) #9
  br label %for.inc

if.else468:                                       ; preds = %if.else440
  %call470 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(15) @.str.82) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call470)
  %tobool471.not = icmp eq i32 %call470, 0
  br i1 %tobool471.not, label %if.then472, label %if.else468.for.inc_crit_edge

if.else468.for.inc_crit_edge:                     ; preds = %if.else468
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then472:                                       ; preds = %if.else468
  call void @__sanitizer_cov_trace_pc() #11
  %value473 = getelementptr i8, ptr %.pn698, i32 -16
  %89 = ptrtoint ptr %value473 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %value473, align 4
  %call474 = call i32 @strcmp(ptr noundef %90, ptr noundef nonnull dereferenceable(4) @.str.20) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call474)
  %tobool475.not = icmp eq i32 %call474, 0
  %conv478 = zext i1 %tobool475.not to i8
  %91 = ptrtoint ptr %RDMAExtensions to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv478, ptr %RDMAExtensions, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then491)) #9
          to label %for.inc [label %if.then491], !srcloc !561

if.then491:                                       ; preds = %if.then472
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %value473 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %value473, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug285, ptr noundef nonnull @.str.143, ptr noundef %93) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then491, %if.then472, %if.else468.for.inc_crit_edge, %if.then463, %if.then444, %if.then435, %if.then419, %if.then410, %if.then391, %if.then382, %if.then363, %if.then354, %if.then338, %if.then329, %if.then313, %if.then304, %if.then288, %if.then279, %if.then264, %if.then255, %if.then240, %if.then231, %if.then212, %if.then203, %if.then184, %if.then175, %if.then159, %if.then150, %if.then135, %if.then126, %if.end110, %if.then106.for.inc_crit_edge, %if.then97, %do.body85, %if.then74.for.inc_crit_edge, %if.then65, %if.end49, %if.then45.for.inc_crit_edge, %if.then37, %do.body25, %if.then16.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %94 = ptrtoint ptr %.pn698 to i32
  call void @__asan_load4_noabort(i32 %94)
  %.pn = load ptr, ptr %.pn698, align 4
  %cmp.not = icmp eq ptr %.pn, %param_list3
  br i1 %cmp.not, label %for.inc.do.body519_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.do.body519_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body519

do.body519:                                       ; preds = %for.inc.do.body519_crit_edge, %do.end.do.body519_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@iscsi_set_session_parameters, %if.then531)) #9
          to label %do.end534 [label %if.then531], !srcloc !561

if.then531:                                       ; preds = %do.body519
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @iscsi_set_session_parameters.__UNIQUE_ID_ddebug286, ptr noundef nonnull @.str.114) #9
  br label %do.end534

do.end534:                                        ; preds = %if.then531, %do.body519
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmpptr) #9
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @iscsi_check_valuelist_for_support(ptr nocapture noundef readonly %param, ptr noundef %value) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %value1 = getelementptr inbounds %struct.iscsi_param, ptr %param, i32 0, i32 1
  br label %do.body

do.body:                                          ; preds = %if.end31.do.body_crit_edge, %entry
  %proposer_values.0 = phi ptr [ %value, %entry ], [ %incdec.ptr30, %if.end31.do.body_crit_edge ]
  %tobool.not = icmp eq ptr %proposer_values.0, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %do.body
  %call = tail call ptr @strchr(ptr noundef nonnull %proposer_values.0, i32 noundef 44)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %call, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %1 = ptrtoint ptr %value1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %value1, align 4
  br label %do.body6

do.body6:                                         ; preds = %if.end26.do.body6_crit_edge, %if.end4
  %acceptor_values.0 = phi ptr [ %2, %if.end4 ], [ %incdec.ptr, %if.end26.do.body6_crit_edge ]
  %tobool7.not = icmp eq ptr %acceptor_values.0, null
  br i1 %tobool7.not, label %if.then8, label %if.end12

if.then8:                                         ; preds = %do.body6
  br i1 %tobool2.not, label %if.then8.cleanup_crit_edge, label %if.then10

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 44, ptr %call, align 1
  br label %cleanup

if.end12:                                         ; preds = %do.body6
  %call13 = tail call ptr @strchr(ptr noundef nonnull %acceptor_values.0, i32 noundef 44)
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end16, label %if.end16.thread

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @strcmp(ptr noundef nonnull %acceptor_values.0, ptr noundef nonnull %proposer_values.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  %brmerge = select i1 %tobool18.not, i1 true, i1 %tobool2.not
  br i1 %brmerge, label %cleanup.loopexit.split.loop.exit77, label %if.end16.if.end31_crit_edge

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end16.thread:                                  ; preds = %if.end12
  %4 = ptrtoint ptr %call13 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %call13, align 1
  %call1758 = tail call i32 @strcmp(ptr noundef nonnull %acceptor_values.0, ptr noundef nonnull %proposer_values.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1758)
  %tobool18.not59 = icmp eq i32 %call1758, 0
  br i1 %tobool18.not59, label %if.then21, label %if.end26

if.then21:                                        ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %call13 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 44, ptr %call13, align 1
  br label %cleanup

if.end26:                                         ; preds = %if.end16.thread
  %incdec.ptr = getelementptr i8, ptr %call13, i32 1
  %6 = ptrtoint ptr %call13 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 44, ptr %call13, align 1
  %tobool27.not = icmp eq ptr %incdec.ptr, null
  br i1 %tobool27.not, label %do.end, label %if.end26.do.body6_crit_edge

if.end26.do.body6_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body6

do.end:                                           ; preds = %if.end26
  br i1 %tobool2.not, label %do.end.cleanup_crit_edge, label %do.end.if.end31_crit_edge

do.end.if.end31_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %do.end.if.end31_crit_edge, %if.end16.if.end31_crit_edge
  %incdec.ptr30 = getelementptr i8, ptr %call, i32 1
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 44, ptr %call, align 1
  %tobool33.not = icmp eq ptr %incdec.ptr30, null
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.end31.do.body_crit_edge

if.end31.do.body_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.loopexit.split.loop.exit77:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %proposer_values.0.mux.le = select i1 %tobool18.not, ptr %proposer_values.0, ptr null
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit77, %if.end31.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then21, %if.then10, %if.then8.cleanup_crit_edge, %do.body.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then10 ], [ null, %if.then8.cleanup_crit_edge ], [ %proposer_values.0, %if.then21 ], [ %proposer_values.0.mux.le, %cleanup.loopexit.split.loop.exit77 ], [ null, %do.end.cleanup_crit_edge ], [ null, %if.end31.cleanup_crit_edge ], [ null, %do.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 250)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 250)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !20, !21, !23, !24, !26, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !212, !213, !214, !215, !217, !218, !219, !220, !222, !223, !225, !226, !227, !228, !230, !231, !233, !235, !236, !237, !239, !241, !243, !244, !245, !246, !248, !249, !250, !252, !253, !255, !256, !258, !259, !261, !262, !264, !265, !267, !268, !270, !271, !273, !274, !276, !277, !279, !281, !282, !284, !286, !287, !289, !290, !292, !293, !295, !296, !298, !299, !301, !302, !304, !305, !307, !308, !310, !311, !313, !314, !316, !317, !319, !320, !322, !323, !325, !326, !328, !329, !331, !332, !334, !335, !337, !338, !340, !342, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !386, !387, !388, !390, !391, !392, !393, !394, !396, !397, !399, !400, !401, !403, !404, !405, !407, !408, !410, !411, !413, !414, !416, !417, !418, !419, !421, !422, !423, !425, !427, !428, !429, !430, !432, !434, !435, !437, !438, !439, !441, !442, !443, !445, !446, !447, !449, !450, !451, !453, !454, !455, !457, !458, !459, !460, !462, !463, !464, !465, !467, !468, !469, !471, !472, !473, !475, !476, !477, !479, !480, !481, !483, !484, !485, !487, !488, !489, !491, !493, !495, !497, !499, !500, !501, !502, !504, !505, !506, !508, !509, !511, !512, !513, !514, !516, !517, !518, !520, !521, !522, !524, !526, !527, !529, !530, !532, !533, !534, !536, !537, !538, !540, !542, !544, !545, !546, !548, !549, !551}
!llvm.module.flags = !{!552, !553, !554, !555, !556, !557, !558, !559}
!llvm.ident = !{!560}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 31, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @iscsi_login_rx_data._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @iscsi_login_rx_data._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 62, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @iscsi_login_tx_data._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @iscsi_login_tx_data._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 72, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @iscsi_dump_conn_ops.__UNIQUE_ID_ddebug221, !12, !"__UNIQUE_ID_ddebug221", i1 false, i1 false}
!16 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !12, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 74, i32 2}
!20 = !{ptr @iscsi_dump_conn_ops.__UNIQUE_ID_ddebug222, !19, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 76, i32 2}
!23 = !{ptr @iscsi_dump_conn_ops.__UNIQUE_ID_ddebug223, !22, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 82, i32 2}
!26 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug224, !25, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 83, i32 2}
!30 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug225, !29, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 84, i32 2}
!33 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug226, !32, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 85, i32 2}
!36 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug227, !35, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 86, i32 2}
!39 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug228, !38, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 88, i32 2}
!42 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug229, !41, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 89, i32 2}
!45 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug230, !44, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!46 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 91, i32 2}
!50 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug231, !49, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 93, i32 2}
!53 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug232, !52, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 94, i32 2}
!56 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug233, !55, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 95, i32 2}
!59 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug234, !58, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!60 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 96, i32 2}
!62 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug235, !61, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 98, i32 2}
!65 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug236, !64, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 100, i32 2}
!68 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug237, !67, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 102, i32 2}
!71 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug238, !70, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 104, i32 2}
!74 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug239, !73, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 106, i32 2}
!77 = !{ptr @iscsi_dump_sess_ops.__UNIQUE_ID_ddebug240, !76, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!78 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 115, i32 3}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @iscsi_print_params.__UNIQUE_ID_ddebug241, !81, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 201, i32 3}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @iscsi_create_default_params._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @iscsi_create_default_params._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 219, i32 38}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 219, i32 50}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 225, i32 38}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 225, i32 52}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 231, i32 38}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 237, i32 38}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 238, i32 4}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 244, i32 38}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 244, i32 51}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 250, i32 38}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 250, i32 50}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 256, i32 38}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 257, i32 4}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 263, i32 38}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 263, i32 51}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 269, i32 38}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 270, i32 4}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 276, i32 38}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 277, i32 4}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 283, i32 38}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 290, i32 38}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 296, i32 38}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 303, i32 38}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 304, i32 4}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 310, i32 38}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 311, i32 4}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 317, i32 38}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 324, i32 38}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 325, i32 4}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 331, i32 38}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 332, i32 4}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 338, i32 38}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 339, i32 4}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 345, i32 38}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 352, i32 38}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 359, i32 38}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 366, i32 38}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 367, i32 4}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 373, i32 38}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 379, i32 38}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 385, i32 38}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 391, i32 38}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 391, i32 49}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 397, i32 38}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 406, i32 38}
!179 = !{ptr @.str.83, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 412, i32 38}
!181 = !{ptr @.str.84, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 419, i32 38}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 572, i32 3}
!185 = !{ptr @iscsi_copy_param_list._entry, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @iscsi_copy_param_list._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 588, i32 4}
!189 = !{ptr @iscsi_copy_param_list._entry.86, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @iscsi_copy_param_list._entry_ptr.88, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 598, i32 4}
!193 = !{ptr @iscsi_copy_param_list._entry.89, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @iscsi_copy_param_list._entry_ptr.91, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.93, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 616, i32 3}
!197 = !{ptr @iscsi_copy_param_list._entry.92, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @iscsi_copy_param_list._entry_ptr.94, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.95, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 663, i32 3}
!201 = !{ptr @.str.96, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @iscsi_find_param_from_key._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @iscsi_find_param_from_key._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.98, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 672, i32 2}
!206 = !{ptr @iscsi_find_param_from_key._entry.97, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @iscsi_find_param_from_key._entry_ptr.99, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @__ksymtab_iscsi_find_param_from_key, !209, !"__ksymtab_iscsi_find_param_from_key", i1 false, i1 false}
!209 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 675, i32 1}
!210 = !{ptr @.str.100, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 681, i32 3}
!212 = !{ptr @.str.101, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @iscsi_extract_key_value._entry, !211, !"_entry", i1 false, i1 false}
!214 = !{ptr @iscsi_extract_key_value._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.102, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 699, i32 3}
!217 = !{ptr @.str.103, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @iscsi_update_param_value._entry, !216, !"_entry", i1 false, i1 false}
!219 = !{ptr @iscsi_update_param_value._entry_ptr, !216, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.104, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 703, i32 2}
!222 = !{ptr @iscsi_update_param_value.__UNIQUE_ID_ddebug242, !221, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!223 = !{ptr @.str.105, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1362, i32 3}
!225 = !{ptr @.str.106, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @iscsi_decode_text_input._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @iscsi_decode_text_input._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.107, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1376, i32 3}
!230 = !{ptr @iscsi_decode_text_input.__UNIQUE_ID_ddebug252, !229, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!231 = !{ptr @.str.108, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1444, i32 35}
!233 = !{ptr @.str.109, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1449, i32 4}
!235 = !{ptr @.str.110, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @iscsi_encode_text_output.__UNIQUE_ID_ddebug253, !234, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!237 = !{ptr @iscsi_encode_text_output.__UNIQUE_ID_ddebug254, !238, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!238 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1464, i32 4}
!239 = !{ptr @iscsi_encode_text_output.__UNIQUE_ID_ddebug255, !240, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!240 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1473, i32 3}
!241 = !{ptr @.str.111, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1491, i32 4}
!243 = !{ptr @.str.112, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @iscsi_check_negotiated_keys._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @iscsi_check_negotiated_keys._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.113, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1542, i32 2}
!248 = !{ptr @.str.114, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug256, !247, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!250 = !{ptr @.str.115, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1553, i32 4}
!252 = !{ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug257, !251, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!253 = !{ptr @.str.116, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1560, i32 4}
!255 = !{ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug258, !254, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!256 = !{ptr @.str.117, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1564, i32 4}
!258 = !{ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug259, !257, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!259 = !{ptr @.str.118, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1568, i32 4}
!261 = !{ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug260, !260, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!262 = !{ptr @.str.119, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1576, i32 4}
!264 = !{ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug261, !263, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!265 = !{ptr @.str.120, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1581, i32 4}
!267 = !{ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug262, !266, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!268 = !{ptr @.str.121, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1585, i32 4}
!270 = !{ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug263, !269, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!271 = !{ptr @.str.122, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1589, i32 4}
!273 = !{ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug264, !272, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!274 = !{ptr @.str.123, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1593, i32 4}
!276 = !{ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug265, !275, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!277 = !{ptr @iscsi_set_connection_parameters.__UNIQUE_ID_ddebug266, !278, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!278 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1596, i32 2}
!279 = !{ptr @.str.124, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1608, i32 2}
!281 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug267, !280, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!282 = !{ptr @.str.125, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1619, i32 7}
!284 = !{ptr @.str.126, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1620, i32 4}
!286 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug268, !285, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!287 = !{ptr @.str.127, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1628, i32 4}
!289 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug269, !288, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!290 = !{ptr @.str.128, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1637, i32 4}
!292 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug270, !291, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!293 = !{ptr @.str.129, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1644, i32 4}
!295 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug271, !294, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!296 = !{ptr @.str.130, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1649, i32 4}
!298 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug272, !297, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!299 = !{ptr @.str.131, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1654, i32 4}
!301 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug273, !300, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!302 = !{ptr @.str.132, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1658, i32 4}
!304 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug274, !303, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!305 = !{ptr @.str.133, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1662, i32 4}
!307 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug275, !306, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!308 = !{ptr @.str.134, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1667, i32 4}
!310 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug276, !309, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!311 = !{ptr @.str.135, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1672, i32 4}
!313 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug277, !312, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!314 = !{ptr @.str.136, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1677, i32 4}
!316 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug278, !315, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!317 = !{ptr @.str.137, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1682, i32 4}
!319 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug279, !318, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!320 = !{ptr @.str.138, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1687, i32 4}
!322 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug280, !321, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!323 = !{ptr @.str.139, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1691, i32 4}
!325 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug281, !324, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!326 = !{ptr @.str.140, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1695, i32 4}
!328 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug282, !327, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!329 = !{ptr @.str.141, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1700, i32 4}
!331 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug283, !330, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!332 = !{ptr @.str.142, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1704, i32 4}
!334 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug284, !333, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!335 = !{ptr @.str.143, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1708, i32 4}
!337 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug285, !336, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!338 = !{ptr @iscsi_set_session_parameters.__UNIQUE_ID_ddebug286, !339, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!339 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1712, i32 2}
!340 = !{ptr @.str.144, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 126, i32 3}
!342 = !{ptr @.str.145, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @iscsi_set_default_param._entry, !341, !"_entry", i1 false, i1 false}
!344 = !{ptr @iscsi_set_default_param._entry_ptr, !341, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.147, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 133, i32 3}
!347 = !{ptr @iscsi_set_default_param._entry.146, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @iscsi_set_default_param._entry_ptr.148, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.150, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 139, i32 3}
!351 = !{ptr @iscsi_set_default_param._entry.149, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @iscsi_set_default_param._entry_ptr.151, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.153, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 176, i32 3}
!355 = !{ptr @iscsi_set_default_param._entry.152, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @iscsi_set_default_param._entry_ptr.154, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.155, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 743, i32 19}
!359 = !{ptr @.str.156, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 743, i32 45}
!361 = !{ptr @.str.157, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 744, i32 19}
!363 = !{ptr @.str.158, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 744, i32 45}
!365 = !{ptr @.str.159, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 745, i32 19}
!367 = !{ptr @.str.160, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 751, i32 19}
!369 = !{ptr @.str.161, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 751, i32 44}
!371 = !{ptr @.str.162, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 752, i32 19}
!373 = !{ptr @.str.163, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 752, i32 44}
!375 = !{ptr @.str.164, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 753, i32 19}
!377 = !{ptr @.str.165, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 753, i32 44}
!379 = !{ptr @.str.166, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 754, i32 19}
!381 = !{ptr @.str.167, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 754, i32 44}
!383 = !{ptr @.str.168, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1233, i32 3}
!385 = !{ptr @.str.169, !384, !"<string literal>", i1 false, i1 false}
!386 = !{ptr @iscsi_check_key._entry, !384, !"_entry", i1 false, i1 false}
!387 = !{ptr @iscsi_check_key._entry_ptr, !384, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.171, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1243, i32 3}
!390 = !{ptr @iscsi_check_key._entry.170, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @iscsi_check_key._entry_ptr.172, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.173, !389, !"<string literal>", i1 false, i1 false}
!393 = !{ptr @.str.174, !389, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @iscsi_check_key._entry.175, !395, !"_entry", i1 false, i1 false}
!395 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1249, i32 3}
!396 = !{ptr @iscsi_check_key._entry_ptr.176, !395, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.178, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1256, i32 3}
!399 = !{ptr @iscsi_check_key._entry.177, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @iscsi_check_key._entry_ptr.179, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.181, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1265, i32 3}
!403 = !{ptr @iscsi_check_key._entry.180, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @iscsi_check_key._entry_ptr.182, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.183, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1269, i32 4}
!407 = !{ptr @iscsi_check_key.__UNIQUE_ID_ddebug246, !406, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!408 = !{ptr @.str.184, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1272, i32 4}
!410 = !{ptr @iscsi_check_key.__UNIQUE_ID_ddebug247, !409, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!411 = !{ptr @.str.185, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1275, i32 4}
!413 = !{ptr @iscsi_check_key.__UNIQUE_ID_ddebug248, !412, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!414 = !{ptr @.str.186, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 716, i32 3}
!416 = !{ptr @.str.187, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @iscsi_add_notunderstood_response._entry, !415, !"_entry", i1 false, i1 false}
!418 = !{ptr @iscsi_add_notunderstood_response._entry_ptr, !415, !"_entry_ptr", i1 false, i1 false}
!419 = !{ptr @.str.189, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 723, i32 3}
!421 = !{ptr @iscsi_add_notunderstood_response._entry.188, !420, !"_entry", i1 false, i1 false}
!422 = !{ptr @iscsi_add_notunderstood_response._entry_ptr.190, !420, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.191, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 730, i32 33}
!425 = !{ptr @.str.192, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1124, i32 3}
!427 = !{ptr @.str.193, !426, !"<string literal>", i1 false, i1 false}
!428 = !{ptr @iscsi_check_value._entry, !426, !"_entry", i1 false, i1 false}
!429 = !{ptr @iscsi_check_value._entry_ptr, !426, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.194, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1127, i32 21}
!432 = !{ptr @.str.195, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1128, i32 3}
!434 = !{ptr @iscsi_check_value.__UNIQUE_ID_ddebug245, !433, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!435 = !{ptr @.str.197, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1134, i32 4}
!437 = !{ptr @iscsi_check_value._entry.196, !436, !"_entry", i1 false, i1 false}
!438 = !{ptr @iscsi_check_value._entry_ptr.198, !436, !"_entry_ptr", i1 false, i1 false}
!439 = !{ptr @.str.200, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1140, i32 3}
!441 = !{ptr @iscsi_check_value._entry.199, !440, !"_entry", i1 false, i1 false}
!442 = !{ptr @iscsi_check_value._entry_ptr.201, !440, !"_entry_ptr", i1 false, i1 false}
!443 = !{ptr @.str.203, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1150, i32 4}
!445 = !{ptr @iscsi_check_value._entry.202, !444, !"_entry", i1 false, i1 false}
!446 = !{ptr @iscsi_check_value._entry_ptr.204, !444, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.206, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1159, i32 4}
!449 = !{ptr @iscsi_check_value._entry.205, !448, !"_entry", i1 false, i1 false}
!450 = !{ptr @iscsi_check_value._entry_ptr.207, !448, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.209, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1175, i32 4}
!453 = !{ptr @iscsi_check_value._entry.208, !452, !"_entry", i1 false, i1 false}
!454 = !{ptr @iscsi_check_value._entry_ptr.210, !452, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @.str.211, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 801, i32 3}
!457 = !{ptr @.str.212, !456, !"<string literal>", i1 false, i1 false}
!458 = !{ptr @iscsi_check_boolean_value._entry, !456, !"_entry", i1 false, i1 false}
!459 = !{ptr @iscsi_check_boolean_value._entry_ptr, !456, !"_entry_ptr", i1 false, i1 false}
!460 = !{ptr @.str.213, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 818, i32 4}
!462 = !{ptr @.str.214, !461, !"<string literal>", i1 false, i1 false}
!463 = !{ptr @iscsi_check_numerical_value._entry, !461, !"_entry", i1 false, i1 false}
!464 = !{ptr @iscsi_check_numerical_value._entry_ptr, !461, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.216, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 826, i32 4}
!467 = !{ptr @iscsi_check_numerical_value._entry.215, !466, !"_entry", i1 false, i1 false}
!468 = !{ptr @iscsi_check_numerical_value._entry_ptr.217, !466, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.219, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 834, i32 4}
!471 = !{ptr @iscsi_check_numerical_value._entry.218, !470, !"_entry", i1 false, i1 false}
!472 = !{ptr @iscsi_check_numerical_value._entry_ptr.220, !470, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.222, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 842, i32 4}
!475 = !{ptr @iscsi_check_numerical_value._entry.221, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @iscsi_check_numerical_value._entry_ptr.223, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.225, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 850, i32 4}
!479 = !{ptr @iscsi_check_numerical_value._entry.224, !478, !"_entry", i1 false, i1 false}
!480 = !{ptr @iscsi_check_numerical_value._entry_ptr.226, !478, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @.str.228, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 858, i32 4}
!483 = !{ptr @iscsi_check_numerical_value._entry.227, !482, !"_entry", i1 false, i1 false}
!484 = !{ptr @iscsi_check_numerical_value._entry_ptr.229, !482, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @.str.231, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 866, i32 4}
!487 = !{ptr @iscsi_check_numerical_value._entry.230, !486, !"_entry", i1 false, i1 false}
!488 = !{ptr @iscsi_check_numerical_value._entry_ptr.232, !486, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.233, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 882, i32 21}
!491 = !{ptr @.str.234, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 882, i32 44}
!493 = !{ptr @.str.235, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 883, i32 21}
!495 = !{ptr @.str.236, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 883, i32 45}
!497 = !{ptr @.str.237, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 885, i32 4}
!499 = !{ptr @.str.238, !498, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @iscsi_check_string_or_list_value._entry, !498, !"_entry", i1 false, i1 false}
!501 = !{ptr @iscsi_check_string_or_list_value._entry_ptr, !498, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.240, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 894, i32 4}
!504 = !{ptr @iscsi_check_string_or_list_value._entry.239, !503, !"_entry", i1 false, i1 false}
!505 = !{ptr @iscsi_check_string_or_list_value._entry_ptr.241, !503, !"_entry_ptr", i1 false, i1 false}
!506 = !{ptr @iscsi_check_string_or_list_value._entry.242, !507, !"_entry", i1 false, i1 false}
!507 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 902, i32 4}
!508 = !{ptr @iscsi_check_string_or_list_value._entry_ptr.243, !507, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.244, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1084, i32 3}
!511 = !{ptr @.str.245, !510, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @iscsi_check_proposer_state._entry, !510, !"_entry", i1 false, i1 false}
!513 = !{ptr @iscsi_check_proposer_state._entry_ptr, !510, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.247, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1094, i32 4}
!516 = !{ptr @iscsi_check_proposer_state._entry.246, !515, !"_entry", i1 false, i1 false}
!517 = !{ptr @iscsi_check_proposer_state._entry_ptr.248, !515, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.249, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 964, i32 3}
!520 = !{ptr @iscsi_check_acceptor_state._entry, !519, !"_entry", i1 false, i1 false}
!521 = !{ptr @iscsi_check_acceptor_state._entry_ptr, !519, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @.str.250, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1010, i32 18}
!524 = !{ptr @.str.251, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1043, i32 4}
!526 = !{ptr @iscsi_check_acceptor_state.__UNIQUE_ID_ddebug243, !525, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!527 = !{ptr @.str.252, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1058, i32 4}
!529 = !{ptr @iscsi_check_acceptor_state.__UNIQUE_ID_ddebug244, !528, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!530 = !{ptr @.str.254, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1065, i32 4}
!532 = !{ptr @iscsi_check_acceptor_state._entry.253, !531, !"_entry", i1 false, i1 false}
!533 = !{ptr @iscsi_check_acceptor_state._entry_ptr.255, !531, !"_entry_ptr", i1 false, i1 false}
!534 = !{ptr @.str.256, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1320, i32 5}
!536 = !{ptr @.str.257, !535, !"<string literal>", i1 false, i1 false}
!537 = !{ptr @iscsi_enforce_integrity_rules.__UNIQUE_ID_ddebug249, !535, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!538 = !{ptr @iscsi_enforce_integrity_rules.__UNIQUE_ID_ddebug250, !539, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!539 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1328, i32 5}
!540 = !{ptr @iscsi_enforce_integrity_rules.__UNIQUE_ID_ddebug251, !541, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!541 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1341, i32 5}
!542 = !{ptr @.str.258, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1196, i32 3}
!544 = !{ptr @__iscsi_check_key._entry, !543, !"_entry", i1 false, i1 false}
!545 = !{ptr @__iscsi_check_key._entry_ptr, !543, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @__iscsi_check_key._entry.259, !547, !"_entry", i1 false, i1 false}
!547 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1206, i32 3}
!548 = !{ptr @__iscsi_check_key._entry_ptr.260, !547, !"_entry_ptr", i1 false, i1 false}
!549 = !{ptr @__iscsi_check_key._entry.261, !550, !"_entry", i1 false, i1 false}
!550 = !{!"../drivers/target/iscsi/iscsi_target_parameters.c", i32 1213, i32 3}
!551 = !{ptr @__iscsi_check_key._entry_ptr.262, !550, !"_entry_ptr", i1 false, i1 false}
!552 = !{i32 1, !"wchar_size", i32 2}
!553 = !{i32 1, !"min_enum_size", i32 4}
!554 = !{i32 8, !"branch-target-enforcement", i32 0}
!555 = !{i32 8, !"sign-return-address", i32 0}
!556 = !{i32 8, !"sign-return-address-all", i32 0}
!557 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!558 = !{i32 7, !"uwtable", i32 1}
!559 = !{i32 7, !"frame-pointer", i32 2}
!560 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!561 = !{i64 2148246355, i64 2148246360, i64 2148246373, i64 2148246417, i64 2148246451, i64 2148246472}
!562 = !{!"auto-init"}
