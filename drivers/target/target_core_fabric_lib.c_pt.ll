; ModuleID = '/llk/IR_all_yes/drivers/target/target_core_fabric_lib.c_pt.bc'
source_filename = "../drivers/target/target_core_fabric_lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.t10_pr_registration = type { [16 x i8], [256 x i8], [256 x i8], i16, i16, i32, i32, i32, i32, i32, i8, i64, i64, i16, i32, i64, i64, %struct.atomic_t, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head }

@target_get_pr_transport_id_len._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 357, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Unknown proto_id: 0x%02x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"target_get_pr_transport_id_len\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/target/target_core_fabric_lib.c\00", [56 x i8] zeroinitializer }, align 32
@target_get_pr_transport_id_len._entry_ptr = internal global ptr @target_get_pr_transport_id_len._entry, section ".printk_index", align 4
@target_get_pr_transport_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"target_get_pr_transport_id\00", [37 x i8] zeroinitializer }, align 32
@target_get_pr_transport_id._entry_ptr = internal global ptr @target_get_pr_transport_id._entry, section ".printk_index", align 4
@target_parse_pr_out_transport_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.2, i32 412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"target_parse_pr_out_transport_id\00", [63 x i8] zeroinitializer }, align 32
@target_parse_pr_out_transport_id._entry_ptr = internal global ptr @target_parse_pr_out_transport_id._entry, section ".printk_index", align 4
@sas_get_pr_transport_id.__UNIQUE_ID_ddebug158 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 11, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"target_core_mod\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sas_get_pr_transport_id\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: invalid hex string\0A\00", [40 x i8] zeroinitializer }, align 32
@sbp_get_pr_transport_id.__UNIQUE_ID_ddebug160 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.7, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sbp_get_pr_transport_id\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0x\00", [29 x i8] zeroinitializer }, align 32
@srp_get_pr_transport_id.__UNIQUE_ID_ddebug163 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 30, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"srp_get_pr_transport_id\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hex2bin failed for %s: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@fc_get_pr_transport_id.__UNIQUE_ID_ddebug159 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.13, ptr @.str.2, ptr @.str.7, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fc_get_pr_transport_id\00", [41 x i8] zeroinitializer }, align 32
@iscsi_parse_pr_out_transport_id._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013Illegal format code: 0x%02x for iSCSI Initiator Transport ID\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"iscsi_parse_pr_out_transport_id\00", [32 x i8] zeroinitializer }, align 32
@iscsi_parse_pr_out_transport_id._entry_ptr = internal global ptr @iscsi_parse_pr_out_transport_id._entry, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c",i,0x\00", [26 x i8] zeroinitializer }, align 32
@iscsi_parse_pr_out_transport_id._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.16, ptr @.str.2, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013Unable to locate \22,i,0x\22 separator for Initiator port identifier: %s\0A\00", [56 x i8] zeroinitializer }, align 32
@iscsi_parse_pr_out_transport_id._entry_ptr.20 = internal global ptr @iscsi_parse_pr_out_transport_id._entry.18, section ".printk_index", align 4
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.21 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.22 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 64]
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 357, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 385, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 412, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 45, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 93, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 110, i32 21 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 121, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 73, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 283, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 304, i32 23 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [43 x i8] c"../drivers/target/target_core_fabric_lib.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 306, i32 4 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @iscsi_parse_pr_out_transport_id._entry, ptr @iscsi_parse_pr_out_transport_id._entry.18, ptr @iscsi_parse_pr_out_transport_id._entry_ptr, ptr @iscsi_parse_pr_out_transport_id._entry_ptr.20, ptr @target_get_pr_transport_id._entry, ptr @target_get_pr_transport_id._entry_ptr, ptr @target_get_pr_transport_id_len._entry, ptr @target_get_pr_transport_id_len._entry_ptr, ptr @target_parse_pr_out_transport_id._entry, ptr @target_parse_pr_out_transport_id._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_get_pr_transport_id_len._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_get_pr_transport_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_parse_pr_out_transport_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_parse_pr_out_transport_id._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsi_parse_pr_out_transport_id._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_get_pr_transport_id_len(ptr noundef %nacl, ptr nocapture noundef readonly %pr_reg, ptr nocapture noundef writeonly %format_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %nacl, i32 0, i32 10
  %0 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.epilog_crit_edge8
    i32 4, label %entry.sw.epilog_crit_edge9
    i32 6, label %entry.sw.epilog_crit_edge10
    i32 5, label %sw.bb1
  ]

entry.sw.epilog_crit_edge10:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %nacl_sess_lock.i = getelementptr inbounds %struct.se_node_acl, ptr %nacl, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %nacl_sess_lock.i) #7
  %call.i = tail call i32 @strlen(ptr noundef %nacl) #10
  %isid_present_at_reg.i = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 10
  %5 = ptrtoint ptr %isid_present_at_reg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %isid_present_at_reg.i, align 8, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %call.i, 6
  %call2.i = tail call i32 @strlen(ptr noundef %pr_reg) #10
  %add3.i = add i32 %add.i, %call2.i
  br label %iscsi_get_pr_transport_id_len.exit

if.else.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %inc.i = add i32 %call.i, 1
  br label %iscsi_get_pr_transport_id_len.exit

iscsi_get_pr_transport_id_len.exit:               ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ 0, %if.else.i ], [ 1, %if.then.i ]
  %len.0.i = phi i32 [ %inc.i, %if.else.i ], [ %add3.i, %if.then.i ]
  %7 = ptrtoint ptr %format_code to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge.i, ptr %format_code, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %nacl_sess_lock.i) #7
  %sub.i = sub i32 0, %len.0.i
  %and.i = and i32 %sub.i, 3
  %add6.i = add i32 %len.0.i, 4
  %add8.i = add i32 %add6.i, %and.i
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3) #11
  br label %return

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge8, %entry.sw.epilog_crit_edge9, %entry.sw.epilog_crit_edge10
  %8 = ptrtoint ptr %format_code to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %format_code, align 4
  br label %return

return:                                           ; preds = %sw.epilog, %do.end, %iscsi_get_pr_transport_id_len.exit
  %retval.0 = phi i32 [ -22, %do.end ], [ %add8.i, %iscsi_get_pr_transport_id_len.exit ], [ 24, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @target_get_pr_transport_id(ptr noundef %nacl, ptr nocapture noundef readonly %pr_reg, ptr nocapture noundef readonly %format_code, ptr noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %se_tpg = getelementptr inbounds %struct.se_node_acl, ptr %nacl, i32 0, i32 10
  %0 = ptrtoint ptr %se_tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %se_tpg, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %3, label %do.end [
    i32 6, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb3
    i32 0, label %entry.for.body.lr.ph.i_crit_edge
    i32 5, label %sw.bb7
  ]

entry.for.body.lr.ph.i_crit_edge:                 ; preds = %entry
  br label %for.body.lr.ph.i

sw.bb:                                            ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %buf, i32 4
  %arrayidx1.i = getelementptr [224 x i8], ptr %nacl, i32 0, i32 4
  %call.i = tail call i32 @hex2bin(ptr noundef %arrayidx.i, ptr noundef %arrayidx1.i, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sw.bb.return_crit_edge, label %do.body.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sas_get_pr_transport_id.__UNIQUE_ID_ddebug158, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_get_pr_transport_id, %if.then6.i)) #7
          to label %return [label %if.then6.i], !srcloc !56

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sas_get_pr_transport_id.__UNIQUE_ID_ddebug158, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6) #7
  br label %return

sw.bb1:                                           ; preds = %entry
  %arrayidx.i26 = getelementptr i8, ptr %buf, i32 8
  %call.i27 = tail call i32 @hex2bin(ptr noundef %arrayidx.i26, ptr noundef %nacl, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool.not.i28 = icmp eq i32 %call.i27, 0
  br i1 %tobool.not.i28, label %sw.bb1.return_crit_edge, label %do.body.i29

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body.i29:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbp_get_pr_transport_id.__UNIQUE_ID_ddebug160, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_get_pr_transport_id, %if.then5.i)) #7
          to label %return [label %if.then5.i], !srcloc !56

if.then5.i:                                       ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sbp_get_pr_transport_id.__UNIQUE_ID_ddebug160, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #7
  br label %return

sw.bb3:                                           ; preds = %entry
  %call.i31 = tail call i32 @strncasecmp(ptr noundef %nacl, ptr noundef nonnull @.str.9, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp.i = icmp eq i32 %call.i31, 0
  %spec.select.idx.i = select i1 %cmp.i, i32 2, i32 0
  %spec.select.i = getelementptr i8, ptr %nacl, i32 %spec.select.idx.i
  %call1.i = tail call i32 @strlen(ptr noundef %spec.select.i) #10
  %rem.i = and i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i32 = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i32, label %if.end3.i, label %sw.bb3.return_crit_edge

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end3.i:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call1.i)
  %cmp4.i = icmp ult i32 %call1.i, 32
  %div1.i = lshr i32 %call1.i, 1
  %cond.i = select i1 %cmp4.i, i32 %div1.i, i32 16
  %sub.i = sub nsw i32 16, %cond.i
  %add.ptr5.i = getelementptr i8, ptr %buf, i32 8
  %5 = call ptr @memset(ptr %add.ptr5.i, i32 0, i32 %sub.i)
  %add.ptr7.i = getelementptr i8, ptr %add.ptr5.i, i32 %sub.i
  %call8.i = tail call i32 @hex2bin(ptr noundef %add.ptr7.i, ptr noundef %spec.select.i, i32 noundef %cond.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.body.i33, label %if.end3.i.return_crit_edge

if.end3.i.return_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.body.i33:                                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @srp_get_pr_transport_id.__UNIQUE_ID_ddebug163, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_get_pr_transport_id, %if.then16.i)) #7
          to label %return [label %if.then16.i], !srcloc !56

if.then16.i:                                      ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @srp_get_pr_transport_id.__UNIQUE_ID_ddebug163, ptr noundef nonnull @.str.11, ptr noundef %spec.select.i, i32 noundef %call8.i) #7
  br label %return

for.body.lr.ph.i:                                 ; preds = %if.end14.i.for.body.lr.ph.i_crit_edge, %entry.for.body.lr.ph.i_crit_edge
  %off.0.ph6.i = phi i32 [ %inc2.i, %if.end14.i.for.body.lr.ph.i_crit_edge ], [ 8, %entry.for.body.lr.ph.i_crit_edge ]
  %i.0.ph5.i = phi i32 [ %add.i, %if.end14.i.for.body.lr.ph.i_crit_edge ], [ %3, %entry.for.body.lr.ph.i_crit_edge ]
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.0.ph5.i, i32 22) #7
  br label %for.body.i

for.body.i:                                       ; preds = %if.then.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.04.i = phi i32 [ %i.0.ph5.i, %for.body.lr.ph.i ], [ %inc.i, %if.then.i.for.body.i_crit_edge ]
  %arrayidx1.i35 = getelementptr i8, ptr %nacl, i32 %i.04.i
  %6 = ptrtoint ptr %arrayidx1.i35 to i32
  call void @__asan_load1_noabort(i32 %6)
  %lhsc.i = load i8, ptr %arrayidx1.i35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %lhsc.i)
  %tobool.not.i36 = icmp eq i8 %lhsc.i, 58
  br i1 %tobool.not.i36, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %i.04.i, %smax.i
  br i1 %exitcond.not.i, label %if.then.i.return_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end.i:                                         ; preds = %for.body.i
  %arrayidx1.i35.le = getelementptr i8, ptr %nacl, i32 %i.04.i
  %arrayidx3.i = getelementptr i8, ptr %buf, i32 %off.0.ph6.i
  %call5.i = tail call i32 @hex2bin(ptr noundef %arrayidx3.i, ptr noundef %arrayidx1.i35.le, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %do.body.i37, label %if.end14.i

do.body.i37:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc_get_pr_transport_id.__UNIQUE_ID_ddebug159, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@target_get_pr_transport_id, %if.then12.i)) #7
          to label %return [label %if.then12.i], !srcloc !56

if.then12.i:                                      ; preds = %do.body.i37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @fc_get_pr_transport_id.__UNIQUE_ID_ddebug159, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.13) #7
  br label %return

if.end14.i:                                       ; preds = %if.end.i
  %inc2.i = add i32 %off.0.ph6.i, 1
  %add.i = add nsw i32 %i.04.i, 2
  %cmp3.i = icmp slt i32 %i.04.i, 21
  br i1 %cmp3.i, label %if.end14.i.for.body.lr.ph.i_crit_edge, label %if.end14.i.return_crit_edge

if.end14.i.return_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end14.i.for.body.lr.ph.i_crit_edge:            ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph.i

sw.bb7:                                           ; preds = %entry
  %nacl_sess_lock.i = getelementptr inbounds %struct.se_node_acl, ptr %nacl, i32 0, i32 12
  tail call void @_raw_spin_lock_irq(ptr noundef %nacl_sess_lock.i) #7
  %arrayidx.i39 = getelementptr i8, ptr %buf, i32 4
  %stpcpy.i = tail call ptr @stpcpy(ptr %arrayidx.i39, ptr %nacl) #10
  %7 = ptrtoint ptr %stpcpy.i to i32
  %8 = zext i32 %7 to i64
  %9 = ptrtoint ptr %arrayidx.i39 to i32
  %10 = zext i32 %9 to i64
  %11 = sub nsw i64 %8, %10
  %conv.i = trunc i64 %11 to i16
  %12 = trunc i64 %11 to i32
  %conv1.i = and i32 %12, 65535
  %add.i40 = add nuw nsw i32 %conv1.i, 4
  %13 = ptrtoint ptr %format_code to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %format_code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp.i41 = icmp eq i32 %14, 1
  br i1 %cmp.i41, label %land.lhs.true.i, label %sw.bb7.iscsi_get_pr_transport_id.exit_crit_edge

sw.bb7.iscsi_get_pr_transport_id.exit_crit_edge:  ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %iscsi_get_pr_transport_id.exit

land.lhs.true.i:                                  ; preds = %sw.bb7
  %isid_present_at_reg.i = getelementptr inbounds %struct.t10_pr_registration, ptr %pr_reg, i32 0, i32 10
  %15 = ptrtoint ptr %isid_present_at_reg.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %isid_present_at_reg.i, align 8, !range !55
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i42 = icmp eq i8 %16, 0
  br i1 %tobool.not.i42, label %land.lhs.true.i.iscsi_get_pr_transport_id.exit_crit_edge, label %if.then.i44

land.lhs.true.i.iscsi_get_pr_transport_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iscsi_get_pr_transport_id.exit

if.then.i44:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %buf, align 1
  %19 = or i8 %18, 64
  store i8 %19, ptr %buf, align 1
  %inc.i43 = add nuw nsw i32 %conv1.i, 5
  %arrayidx7.i = getelementptr i8, ptr %buf, i32 %add.i40
  %20 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 44, ptr %arrayidx7.i, align 1
  %inc8.i = add nuw nsw i32 %conv1.i, 6
  %arrayidx9.i = getelementptr i8, ptr %buf, i32 %inc.i43
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 105, ptr %arrayidx9.i, align 1
  %inc10.i = add nuw nsw i32 %conv1.i, 7
  %arrayidx11.i = getelementptr i8, ptr %buf, i32 %inc8.i
  %22 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 44, ptr %arrayidx11.i, align 1
  %inc12.i = add nuw nsw i32 %conv1.i, 8
  %arrayidx13.i = getelementptr i8, ptr %buf, i32 %inc10.i
  %23 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 48, ptr %arrayidx13.i, align 1
  %inc14.i = add nuw nsw i32 %conv1.i, 9
  %arrayidx15.i = getelementptr i8, ptr %buf, i32 %inc12.i
  %24 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 120, ptr %arrayidx15.i, align 1
  %conv18.i = add i32 %12, 5
  %add.ptr.i = getelementptr i8, ptr %buf, i32 %inc14.i
  %stpcpy74.i = tail call ptr @stpcpy(ptr %add.ptr.i, ptr %pr_reg) #10
  %25 = ptrtoint ptr %stpcpy74.i to i32
  %26 = ptrtoint ptr %add.ptr.i to i32
  %27 = sub i32 %25, %26
  %add21.i = add i32 %27, %inc14.i
  %add23.i = add i32 %conv18.i, %27
  %conv24.i = trunc i32 %add23.i to i16
  br label %iscsi_get_pr_transport_id.exit

iscsi_get_pr_transport_id.exit:                   ; preds = %if.then.i44, %land.lhs.true.i.iscsi_get_pr_transport_id.exit_crit_edge, %sw.bb7.iscsi_get_pr_transport_id.exit_crit_edge
  %off.0.i = phi i32 [ %add21.i, %if.then.i44 ], [ %add.i40, %land.lhs.true.i.iscsi_get_pr_transport_id.exit_crit_edge ], [ %add.i40, %sw.bb7.iscsi_get_pr_transport_id.exit_crit_edge ]
  %len.0.i = phi i16 [ %conv24.i, %if.then.i44 ], [ %conv.i, %land.lhs.true.i.iscsi_get_pr_transport_id.exit_crit_edge ], [ %conv.i, %sw.bb7.iscsi_get_pr_transport_id.exit_crit_edge ]
  %arrayidx25.i = getelementptr i8, ptr %buf, i32 %off.0.i
  %28 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %arrayidx25.i, align 1
  tail call void @_raw_spin_unlock_irq(ptr noundef %nacl_sess_lock.i) #7
  %29 = or i16 %len.0.i, -4
  %sub.i45 = sub i16 %len.0.i, %29
  %arrayidx38.i = getelementptr i8, ptr %buf, i32 2
  %30 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 2)
  store i16 %sub.i45, ptr %arrayidx38.i, align 1
  %add40.i = add i16 %sub.i45, 4
  %conv42.i = zext i16 %add40.i to i32
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %3) #11
  br label %return

return:                                           ; preds = %do.end, %iscsi_get_pr_transport_id.exit, %if.end14.i.return_crit_edge, %if.then12.i, %do.body.i37, %if.then.i.return_crit_edge, %if.then16.i, %do.body.i33, %if.end3.i.return_crit_edge, %sw.bb3.return_crit_edge, %if.then5.i, %do.body.i29, %sw.bb1.return_crit_edge, %if.then6.i, %do.body.i, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %conv42.i, %iscsi_get_pr_transport_id.exit ], [ %call.i, %if.then6.i ], [ 24, %sw.bb.return_crit_edge ], [ %call.i, %do.body.i ], [ %call.i27, %if.then5.i ], [ 24, %sw.bb1.return_crit_edge ], [ %call.i27, %do.body.i29 ], [ -22, %sw.bb3.return_crit_edge ], [ %call8.i, %if.then16.i ], [ 24, %if.end3.i.return_crit_edge ], [ %call8.i, %do.body.i33 ], [ %call5.i, %if.then12.i ], [ %call5.i, %do.body.i37 ], [ 24, %if.then.i.return_crit_edge ], [ 24, %if.end14.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @target_parse_pr_out_transport_id(ptr nocapture noundef readonly %tpg, ptr noundef %buf, ptr noundef writeonly %out_tid_len, ptr nocapture noundef writeonly %port_nexus_ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tpg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tpg, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %1, label %do.end [
    i32 6, label %entry.sw.epilog_crit_edge
    i32 3, label %entry.sw.bb1_crit_edge
    i32 4, label %entry.sw.bb1_crit_edge10
    i32 0, label %entry.sw.bb1_crit_edge11
    i32 5, label %sw.bb2
  ]

entry.sw.bb1_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge10, %entry.sw.bb1_crit_edge11
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf, align 1
  %5 = and i8 %4, -64
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %5, label %do.end.i [
    i8 0, label %sw.bb2.if.end.i_crit_edge
    i8 64, label %sw.bb2.if.end.i_crit_edge12
  ]

sw.bb2.if.end.i_crit_edge12:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

sw.bb2.if.end.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %conv2.i = zext i8 %5 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %conv2.i) #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb2.if.end.i_crit_edge, %sw.bb2.if.end.i_crit_edge12
  %tobool.not.i = icmp eq ptr %out_tid_len, null
  br i1 %tobool.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then8.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx9.i = getelementptr i8, ptr %buf, i32 2
  %7 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %arrayidx9.i, align 1
  %conv11.i = zext i16 %8 to i32
  %add.i = add nuw nsw i32 %conv11.i, 4
  %9 = ptrtoint ptr %out_tid_len to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i, ptr %out_tid_len, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end.i.if.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %5)
  %cmp14.i = icmp eq i8 %5, 64
  br i1 %cmp14.i, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %if.end12.i
  %arrayidx17.i = getelementptr i8, ptr %buf, i32 4
  %call18.i = tail call ptr @strstr(ptr noundef %arrayidx17.i, ptr noundef nonnull @.str.17) #7
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %do.end23.i, label %if.end27.i

do.end23.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  %call26.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %arrayidx17.i) #11
  br label %cleanup

if.end27.i:                                       ; preds = %if.then16.i
  %10 = ptrtoint ptr %call18.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %call18.i, align 1
  %add.ptr.i = getelementptr i8, ptr %call18.i, i32 5
  %11 = ptrtoint ptr %port_nexus_ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i, ptr %port_nexus_ptr, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end27.i
  %p.02.i = phi ptr [ %add.ptr.i, %if.end27.i ], [ %p.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.01.i = phi i32 [ 0, %if.end27.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %p.02.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %p.02.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp31.i = icmp eq i8 %13, 0
  br i1 %cmp31.i, label %for.body.i.if.end42.i_crit_edge, label %if.end34.i

for.body.i.if.end42.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.end34.i:                                       ; preds = %for.body.i
  %conv30.i = zext i8 %13 to i32
  %14 = add nsw i32 %conv30.i, -58
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %14)
  %15 = icmp ult i32 %14, -10
  br i1 %15, label %if.end39.i, label %if.end34.i.for.inc.i_crit_edge

if.end34.i.for.inc.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end39.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv30.i
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.not.i.i = icmp eq i8 %18, 0
  %sub.i.i = add i8 %13, 32
  %spec.select.i.i = select i1 %cmp.not.i.i, i8 %13, i8 %sub.i.i
  %19 = ptrtoint ptr %p.02.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select.i.i, ptr %p.02.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end39.i, %if.end34.i.for.inc.i_crit_edge
  %p.1.i = getelementptr i8, ptr %p.02.i, i32 1
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 12
  br i1 %exitcond.not.i, label %for.inc.i.if.end42.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end42.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.else.i:                                        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %port_nexus_ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %port_nexus_ptr, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else.i, %for.inc.i.if.end42.i_crit_edge, %for.body.i.if.end42.i_crit_edge
  %arrayidx43.i = getelementptr i8, ptr %buf, i32 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %1) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %offset.0 = phi i32 [ 8, %sw.bb1 ], [ 4, %entry.sw.epilog_crit_edge ]
  %21 = ptrtoint ptr %port_nexus_ptr to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %port_nexus_ptr, align 4
  %22 = ptrtoint ptr %out_tid_len to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 24, ptr %out_tid_len, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %offset.0
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end, %if.end42.i, %do.end23.i, %do.end.i
  %retval.0 = phi ptr [ null, %do.end ], [ %add.ptr, %sw.epilog ], [ null, %do.end.i ], [ %arrayidx43.i, %if.end42.i ], [ null, %do.end23.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hex2bin(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare ptr @stpcpy(ptr noalias writeonly, ptr noalias nocapture readonly) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin nounwind }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !24, !26, !27, !28, !30, !32, !33, !35, !37, !38, !39, !40, !42, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/target_core_fabric_lib.c", i32 357, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @target_get_pr_transport_id_len._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @target_get_pr_transport_id_len._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/target_core_fabric_lib.c", i32 385, i32 3}
!8 = !{ptr @target_get_pr_transport_id._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @target_get_pr_transport_id._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/target/target_core_fabric_lib.c", i32 412, i32 3}
!12 = !{ptr @target_parse_pr_out_transport_id._entry, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @target_parse_pr_out_transport_id._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/target/target_core_fabric_lib.c", i32 45, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sas_get_pr_transport_id.__UNIQUE_ID_ddebug158, !15, !"__UNIQUE_ID_ddebug158", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/target/target_core_fabric_lib.c", i32 93, i32 3}
!21 = !{ptr @sbp_get_pr_transport_id.__UNIQUE_ID_ddebug160, !20, !"__UNIQUE_ID_ddebug160", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/target/target_core_fabric_lib.c", i32 110, i32 21}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/target/target_core_fabric_lib.c", i32 121, i32 3}
!26 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @srp_get_pr_transport_id.__UNIQUE_ID_ddebug163, !25, !"__UNIQUE_ID_ddebug163", i1 false, i1 false}
!28 = distinct !{null, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/target/target_core_fabric_lib.c", i32 67, i32 25}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/target/target_core_fabric_lib.c", i32 73, i32 4}
!32 = !{ptr @fc_get_pr_transport_id.__UNIQUE_ID_ddebug159, !31, !"__UNIQUE_ID_ddebug159", i1 false, i1 false}
!33 = distinct !{null, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/target/target_core_fabric_lib.c", i32 154, i32 27}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/target/target_core_fabric_lib.c", i32 283, i32 3}
!37 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @iscsi_parse_pr_out_transport_id._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @iscsi_parse_pr_out_transport_id._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/target/target_core_fabric_lib.c", i32 304, i32 23}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/target/target_core_fabric_lib.c", i32 306, i32 4}
!44 = !{ptr @iscsi_parse_pr_out_transport_id._entry.18, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @iscsi_parse_pr_out_transport_id._entry_ptr.20, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i8 0, i8 2}
!56 = !{i64 2148700512, i64 2148700517, i64 2148700530, i64 2148700574, i64 2148700608, i64 2148700629}
