; ModuleID = '/llk/IR_all_yes/drivers/target/iscsi/iscsi_target_datain_values.c_pt.bc'
source_filename = "../drivers/target/iscsi/iscsi_target_datain_values.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iscsit_get_datain_values\22, \22a\22\09"
module asm "\09.weak\09__crc_iscsit_get_datain_values\09\09\09\09"
module asm "\09.long\09__crc_iscsit_get_datain_values\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iscsit_get_datain_values:\09\09\09\09\09"
module asm "\09.asciz \09\22iscsit_get_datain_values\22\09\09\09\09\09"
module asm "__kstrtabns_iscsit_get_datain_values:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.iscsi_datain_req = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, [76 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.iscsi_cmd = type { i32, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, [52 x i8], %struct.atomic_t, %struct.atomic_t, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.timer_list, ptr, ptr, [5 x %struct.kvec], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.se_cmd, [98 x i8], i32, [4 x i8], ptr, i32, i32, i32, [124 x i8] }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.kvec = type { ptr, i32 }
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
%struct.iscsi_conn_ops = type { i8, i8, i32, i32, i32, i32 }
%struct.iscsi_datain = type { i8, i32, i32, i32, [112 x i8] }
%struct.iscsi_seq = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.iscsi_pdu = type { i32, i32, i8, i32, i32, i32, i32, i32, [96 x i8] }

@lio_dr_cache = external dso_local local_unnamed_addr global ptr, align 4
@iscsit_allocate_datain_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 27, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013Unable to allocate memory for struct iscsi_datain_req\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"iscsit_allocate_datain_req\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/target/iscsi/iscsi_target_datain_values.c\00", [46 x i8] zeroinitializer }, align 32
@iscsit_allocate_datain_req._entry_ptr = internal global ptr @iscsit_allocate_datain_req._entry, section ".printk_index", align 4
@iscsit_get_datain_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 67, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013cmd->datain_list is empty for ITT: 0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"iscsit_get_datain_req\00", [42 x i8] zeroinitializer }, align 32
@iscsit_get_datain_req._entry_ptr = internal global ptr @iscsit_get_datain_req._entry, section ".printk_index", align 4
@__kstrtab_iscsit_get_datain_values = external dso_local constant [0 x i8], align 1
@__kstrtabns_iscsit_get_datain_values = external dso_local constant [0 x i8], align 1
@__ksymtab_iscsit_get_datain_values = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iscsit_get_datain_values to i32), ptr @__kstrtab_iscsit_get_datain_values, ptr @__kstrtabns_iscsit_get_datain_values }, section "___ksymtab+iscsit_get_datain_values", align 4
@iscsit_set_datain_values_yes_and_yes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ITT: 0x%08x read_data_left is zero!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"iscsit_set_datain_values_yes_and_yes\00", [59 x i8] zeroinitializer }, align 32
@iscsit_set_datain_values_yes_and_yes._entry_ptr = internal global ptr @iscsit_set_datain_values_yes_and_yes._entry, section ".printk_index", align 4
@iscsit_set_datain_values_no_and_yes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.7, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"iscsit_set_datain_values_no_and_yes\00", [60 x i8] zeroinitializer }, align 32
@iscsit_set_datain_values_no_and_yes._entry_ptr = internal global ptr @iscsit_set_datain_values_no_and_yes._entry, section ".printk_index", align 4
@iscsit_set_datain_values_yes_and_no._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.8, ptr @.str.2, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"iscsit_set_datain_values_yes_and_no\00", [60 x i8] zeroinitializer }, align 32
@iscsit_set_datain_values_yes_and_no._entry_ptr = internal global ptr @iscsit_set_datain_values_yes_and_no._entry, section ".printk_index", align 4
@iscsit_set_datain_values_no_and_no._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.9, ptr @.str.2, i32 426, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iscsit_set_datain_values_no_and_no\00", [61 x i8] zeroinitializer }, align 32
@iscsit_set_datain_values_no_and_no._entry_ptr = internal global ptr @iscsit_set_datain_values_no_and_no._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 26, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 66, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 105, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 204, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 325, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private constant [53 x i8] c"../drivers/target/iscsi/iscsi_target_datain_values.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 425, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__ksymtab_iscsit_get_datain_values, ptr @iscsit_allocate_datain_req._entry, ptr @iscsit_allocate_datain_req._entry_ptr, ptr @iscsit_get_datain_req._entry, ptr @iscsit_get_datain_req._entry_ptr, ptr @iscsit_set_datain_values_no_and_no._entry, ptr @iscsit_set_datain_values_no_and_no._entry_ptr, ptr @iscsit_set_datain_values_no_and_yes._entry, ptr @iscsit_set_datain_values_no_and_yes._entry_ptr, ptr @iscsit_set_datain_values_yes_and_no._entry, ptr @iscsit_set_datain_values_yes_and_no._entry_ptr, ptr @iscsit_set_datain_values_yes_and_yes._entry, ptr @iscsit_set_datain_values_yes_and_yes._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_allocate_datain_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_get_datain_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_set_datain_values_yes_and_yes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_set_datain_values_no_and_yes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_set_datain_values_yes_and_no._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iscsit_set_datain_values_no_and_no._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_allocate_datain_req() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_dr_cache to i32))
  %0 = load ptr, ptr @lio_dr_cache, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 2848) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %cmd_datain_node = getelementptr inbounds %struct.iscsi_datain_req, ptr %call.i, i32 0, i32 11
  %1 = ptrtoint ptr %cmd_datain_node to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %cmd_datain_node, ptr %cmd_datain_node, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_datain_req, ptr %call.i, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cmd_datain_node, ptr %prev.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret ptr %call.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_attach_datain_req(ptr noundef %cmd, ptr noundef %dr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %datain_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 50
  tail call void @_raw_spin_lock(ptr noundef %datain_lock) #3
  %cmd_datain_node = getelementptr inbounds %struct.iscsi_datain_req, ptr %dr, i32 0, i32 11
  %datain_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 55
  %prev.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 55, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %cmd_datain_node, ptr noundef %1, ptr noundef %datain_list) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cmd_datain_node, ptr %prev.i, align 4
  %3 = ptrtoint ptr %cmd_datain_node to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %datain_list, ptr %cmd_datain_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.iscsi_datain_req, ptr %dr, i32 0, i32 11, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %cmd_datain_node, ptr %1, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %datain_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_free_datain_req(ptr noundef %cmd, ptr noundef %dr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %datain_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 50
  tail call void @_raw_spin_lock(ptr noundef %datain_lock) #3
  %cmd_datain_node = getelementptr inbounds %struct.iscsi_datain_req, ptr %dr, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cmd_datain_node) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.iscsi_datain_req, ptr %dr, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %cmd_datain_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmd_datain_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %cmd_datain_node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %cmd_datain_node, align 4
  %prev.i = getelementptr inbounds %struct.iscsi_datain_req, ptr %dr, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %datain_lock) #3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_dr_cache to i32))
  %8 = load ptr, ptr @lio_dr_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %8, ptr noundef %dr) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iscsit_free_all_datain_reqs(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %datain_lock = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 50
  tail call void @_raw_spin_lock(ptr noundef %datain_lock) #3
  %datain_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 55
  %0 = ptrtoint ptr %datain_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %datain_list, align 4
  %cmp.not22 = icmp eq ptr %1, %datain_list
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in23 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %dr.0 = getelementptr i8, ptr %.pn.in23, i32 -44
  %2 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in23, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23) #3
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @lio_dr_cache to i32))
  %11 = load ptr, ptr @lio_dr_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %11, ptr noundef %dr.0) #3
  %cmp.not = icmp eq ptr %.pn, %datain_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %datain_lock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_datain_req(ptr noundef %cmd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %datain_list = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 55
  %0 = ptrtoint ptr %datain_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %datain_list, align 4
  %cmp.i.not = icmp eq ptr %1, %datain_list
  br i1 %cmp.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %init_task_tag = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %2 = ptrtoint ptr %init_task_tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %init_task_tag, align 32
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %3) #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %add.ptr = getelementptr i8, ptr %1, i32 -44
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %add.ptr, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @iscsit_get_datain_values(ptr noundef %cmd, ptr noundef %datain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %DataPDUInOrder13 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %DataPDUInOrder13 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %DataPDUInOrder13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %land.lhs.true10, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  br i1 %tobool15.not, label %land.lhs.true24, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %datain_list.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 55
  %10 = ptrtoint ptr %datain_list.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %datain_list.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %11, %datain_list.i.i
  br i1 %cmp.i.not.i.i, label %iscsit_get_datain_req.exit.thread.i, label %iscsit_get_datain_req.exit.i

iscsit_get_datain_req.exit.thread.i:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %init_task_tag.i.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %12 = ptrtoint ptr %init_task_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %init_task_tag.i.i, align 32
  %call1.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %13) #6
  br label %cleanup

iscsit_get_datain_req.exit.i:                     ; preds = %if.then
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 -44
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not.i, label %iscsit_get_datain_req.exit.i.cleanup_crit_edge, label %if.end.i

iscsit_get_datain_req.exit.i.cleanup_crit_edge:   ; preds = %iscsit_get_datain_req.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %iscsit_get_datain_req.exit.i
  %recovery.i = getelementptr i8, ptr %11, i32 -36
  %14 = ptrtoint ptr %recovery.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %recovery.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool2.not.i = icmp eq i32 %15, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end9.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %generate_recovery_values.i = getelementptr i8, ptr %11, i32 -40
  %16 = ptrtoint ptr %generate_recovery_values.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %generate_recovery_values.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool3.not.i = icmp eq i32 %17, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end9.i_crit_edge, label %if.then4.i

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i

if.then4.i:                                       ; preds = %land.lhs.true.i
  %call5.i = tail call i32 @iscsit_create_recovery_datain_values_datasequenceinorder_yes(ptr noundef %cmd, ptr noundef nonnull %add.ptr.i.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp.i = icmp slt i32 %call5.i, 0
  br i1 %cmp.i, label %if.then4.i.cleanup_crit_edge, label %if.end7.i

if.then4.i.cleanup_crit_edge:                     ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #5
  %18 = ptrtoint ptr %generate_recovery_values.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %generate_recovery_values.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.end7.i, %land.lhs.true.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %19 = ptrtoint ptr %recovery.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %recovery.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool11.not.i = icmp eq i32 %20, 0
  %next_burst_len12.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 42
  %next_burst_len13.i = getelementptr i8, ptr %11, i32 -12
  %cond.in.i = select i1 %tobool11.not.i, ptr %next_burst_len12.i, ptr %next_burst_len13.i
  %21 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %cond.i = load i32, ptr %cond.in.i, align 8
  %read_data_done17.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 39
  %read_data_done19.i = getelementptr i8, ptr %11, i32 -8
  %cond21.in.i = select i1 %tobool11.not.i, ptr %read_data_done17.i, ptr %read_data_done19.i
  %22 = ptrtoint ptr %cond21.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %cond21.i = load i32, ptr %cond21.in.i, align 4
  %data_length.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %23 = ptrtoint ptr %data_length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_length.i, align 4
  %sub.i = sub i32 %24, %cond21.i
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %cond21.i)
  %tobool22.not.i = icmp eq i32 %24, %cond21.i
  br i1 %tobool22.not.i, label %do.end.i, label %if.end25.i

do.end.i:                                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  %init_task_tag.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %25 = ptrtoint ptr %init_task_tag.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %init_task_tag.i, align 32
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %26) #6
  br label %cleanup

if.end25.i:                                       ; preds = %if.end9.i
  %conn_ops.i = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 59
  %27 = ptrtoint ptr %conn_ops.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %conn_ops.i, align 16
  %MaxRecvDataSegmentLength.i = getelementptr inbounds %struct.iscsi_conn_ops, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %MaxRecvDataSegmentLength.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %MaxRecvDataSegmentLength.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %30)
  %cmp26.not.i = icmp ugt i32 %sub.i, %30
  br i1 %cmp26.not.i, label %if.end25.i.if.else.i_crit_edge, label %land.lhs.true27.i

if.end25.i.if.else.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

land.lhs.true27.i:                                ; preds = %if.end25.i
  %31 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sess, align 4
  %sess_ops.i = getelementptr inbounds %struct.iscsi_session, ptr %32, i32 0, i32 47
  %33 = ptrtoint ptr %sess_ops.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sess_ops.i, align 8
  %MaxBurstLength.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %MaxBurstLength.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %MaxBurstLength.i, align 4
  %sub28.i = sub i32 %36, %cond.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub28.i)
  %cmp29.not.i = icmp ugt i32 %sub.i, %sub28.i
  br i1 %cmp29.not.i, label %land.lhs.true27.i.if.else.i_crit_edge, label %if.then30.i

land.lhs.true27.i.if.else.i_crit_edge:            ; preds = %land.lhs.true27.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else.i

if.then30.i:                                      ; preds = %land.lhs.true27.i
  %length.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 2
  %37 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %sub.i, ptr %length.i, align 8
  %38 = ptrtoint ptr %datain to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %datain, align 128
  %40 = or i8 %39, -127
  store i8 %40, ptr %datain, align 128
  %41 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sess, align 4
  %sess_ops33.i = getelementptr inbounds %struct.iscsi_session, ptr %42, i32 0, i32 47
  %43 = ptrtoint ptr %sess_ops33.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sess_ops33.i, align 8
  %ErrorRecoveryLevel.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %44, i32 0, i32 16
  %45 = ptrtoint ptr %ErrorRecoveryLevel.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %ErrorRecoveryLevel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %cmp35.not.i = icmp eq i8 %46, 0
  br i1 %cmp35.not.i, label %if.then30.i.if.end79.i_crit_edge, label %if.then37.i

if.then30.i.if.end79.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end79.i

if.then37.i:                                      ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #5
  %47 = or i8 %39, -63
  %48 = ptrtoint ptr %datain to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %47, ptr %datain, align 128
  br label %if.end79.i

if.else.i:                                        ; preds = %land.lhs.true27.i.if.else.i_crit_edge, %if.end25.i.if.else.i_crit_edge
  %add.i = add i32 %30, %cond.i
  %49 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sess, align 4
  %sess_ops46.i = getelementptr inbounds %struct.iscsi_session, ptr %50, i32 0, i32 47
  %51 = ptrtoint ptr %sess_ops46.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sess_ops46.i, align 8
  %MaxBurstLength47.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %MaxBurstLength47.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %MaxBurstLength47.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %54)
  %cmp48.i = icmp ult i32 %add.i, %54
  br i1 %cmp48.i, label %if.then50.i, label %if.else56.i

if.then50.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %length53.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 2
  %55 = ptrtoint ptr %length53.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %30, ptr %length53.i, align 8
  br label %if.end79.i

if.else56.i:                                      ; preds = %if.else.i
  %sub60.i = sub i32 %54, %cond.i
  %length61.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 2
  %56 = ptrtoint ptr %length61.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub60.i, ptr %length61.i, align 8
  %57 = ptrtoint ptr %datain to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %datain, align 128
  %59 = or i8 %58, -128
  store i8 %59, ptr %datain, align 128
  %60 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sess, align 4
  %sess_ops67.i = getelementptr inbounds %struct.iscsi_session, ptr %61, i32 0, i32 47
  %62 = ptrtoint ptr %sess_ops67.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %sess_ops67.i, align 8
  %ErrorRecoveryLevel68.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %63, i32 0, i32 16
  %64 = ptrtoint ptr %ErrorRecoveryLevel68.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ErrorRecoveryLevel68.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp70.not.i = icmp eq i8 %65, 0
  br i1 %cmp70.not.i, label %if.else56.i.if.end79.i_crit_edge, label %if.then72.i

if.else56.i.if.end79.i_crit_edge:                 ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end79.i

if.then72.i:                                      ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #5
  %66 = or i8 %58, -64
  %67 = ptrtoint ptr %datain to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %datain, align 128
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then72.i, %if.else56.i.if.end79.i_crit_edge, %if.then50.i, %if.then37.i, %if.then30.i.if.end79.i_crit_edge
  %next_burst_len.0.i = phi i32 [ %cond.i, %if.then37.i ], [ %cond.i, %if.then30.i.if.end79.i_crit_edge ], [ %add.i, %if.then50.i ], [ 0, %if.then72.i ], [ 0, %if.else56.i.if.end79.i_crit_edge ]
  %68 = ptrtoint ptr %recovery.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %recovery.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool81.not.i = icmp eq i32 %69, 0
  %data_sn84.i = getelementptr i8, ptr %11, i32 -16
  %data_sn.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 21
  %data_sn84.sink.i = select i1 %tobool81.not.i, ptr %data_sn.i, ptr %data_sn84.i
  %70 = ptrtoint ptr %data_sn84.sink.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.sink.i = load i32, ptr %data_sn84.sink.i, align 4
  %inc85.i = add i32 %.sink.i, 1
  store i32 %inc85.i, ptr %data_sn84.sink.i, align 4
  %data_sn88.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 1
  %71 = ptrtoint ptr %data_sn88.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink.i, ptr %data_sn88.i, align 4
  %offset.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 3
  %72 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %cond21.i, ptr %offset.i, align 4
  %73 = ptrtoint ptr %recovery.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %recovery.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool90.not.i = icmp eq i32 %74, 0
  br i1 %tobool90.not.i, label %if.then91.i, label %if.else96.i

if.then91.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #5
  %75 = ptrtoint ptr %next_burst_len12.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %next_burst_len.0.i, ptr %next_burst_len12.i, align 8
  br label %if.end101.i

if.else96.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #5
  %76 = ptrtoint ptr %next_burst_len13.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %next_burst_len.0.i, ptr %next_burst_len13.i, align 32
  br label %if.end101.i

if.end101.i:                                      ; preds = %if.else96.i, %if.then91.i
  %read_data_done19.sink211.i = phi ptr [ %read_data_done19.i, %if.else96.i ], [ %read_data_done17.i, %if.then91.i ]
  %length98.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 2
  %77 = ptrtoint ptr %length98.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length98.i, align 8
  %79 = ptrtoint ptr %read_data_done19.sink211.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %read_data_done19.sink211.i, align 4
  %add100.i = add i32 %80, %78
  store i32 %add100.i, ptr %read_data_done19.sink211.i, align 4
  %81 = ptrtoint ptr %recovery.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %recovery.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool103.not.i = icmp eq i32 %82, 0
  br i1 %tobool103.not.i, label %if.then104.i, label %if.end110.i

if.then104.i:                                     ; preds = %if.end101.i
  %83 = ptrtoint ptr %datain to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %datain, align 128
  %85 = and i8 %84, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool107.not.i = icmp eq i8 %85, 0
  br i1 %tobool107.not.i, label %if.then104.i.cleanup_crit_edge, label %if.then108.i

if.then104.i.cleanup_crit_edge:                   ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then108.i:                                     ; preds = %if.then104.i
  call void @__sanitizer_cov_trace_pc() #5
  %86 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 1, ptr %add.ptr.i.i, align 128
  br label %cleanup

if.end110.i:                                      ; preds = %if.end101.i
  %runlength.i = getelementptr i8, ptr %11, i32 -28
  %87 = ptrtoint ptr %runlength.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %runlength.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool111.not.i = icmp eq i32 %88, 0
  br i1 %tobool111.not.i, label %if.then112.i, label %if.else124.i

if.then112.i:                                     ; preds = %if.end110.i
  %89 = ptrtoint ptr %datain to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %datain, align 128
  %91 = and i8 %90, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool116.not.i = icmp eq i8 %91, 0
  br i1 %tobool116.not.i, label %if.then112.i.cleanup_crit_edge, label %if.then117.i

if.then112.i.cleanup_crit_edge:                   ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then117.i:                                     ; preds = %if.then112.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp119.i = icmp eq i32 %82, 1
  %cond121.i = select i1 %cmp119.i, i32 2, i32 3
  %92 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %cond121.i, ptr %add.ptr.i.i, align 128
  br label %cleanup

if.else124.i:                                     ; preds = %if.end110.i
  %begrun.i = getelementptr i8, ptr %11, i32 -32
  %93 = ptrtoint ptr %begrun.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %begrun.i, align 4
  %add126.i = add i32 %94, %88
  %95 = ptrtoint ptr %data_sn84.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %data_sn84.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add126.i, i32 %96)
  %cmp128.i = icmp eq i32 %add126.i, %96
  br i1 %cmp128.i, label %if.then130.i, label %if.else124.i.cleanup_crit_edge

if.else124.i.cleanup_crit_edge:                   ; preds = %if.else124.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then130.i:                                     ; preds = %if.else124.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %82)
  %cmp132.i = icmp eq i32 %82, 1
  %cond134.i = select i1 %cmp132.i, i32 2, i32 3
  %97 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %cond134.i, ptr %add.ptr.i.i, align 128
  br label %cleanup

land.lhs.true10:                                  ; preds = %entry
  br i1 %tobool15.not, label %land.lhs.true36, label %if.then16

if.then16:                                        ; preds = %land.lhs.true10
  %datain_list.i.i61 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 55
  %98 = ptrtoint ptr %datain_list.i.i61 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile ptr, ptr %datain_list.i.i61, align 4
  %cmp.i.not.i.i62 = icmp eq ptr %99, %datain_list.i.i61
  br i1 %cmp.i.not.i.i62, label %iscsit_get_datain_req.exit.thread.i65, label %iscsit_get_datain_req.exit.i68

iscsit_get_datain_req.exit.thread.i65:            ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  %init_task_tag.i.i63 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %100 = ptrtoint ptr %init_task_tag.i.i63 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %init_task_tag.i.i63, align 32
  %call1.i.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %101) #6
  br label %cleanup

iscsit_get_datain_req.exit.i68:                   ; preds = %if.then16
  %add.ptr.i.i66 = getelementptr i8, ptr %99, i32 -44
  %tobool.not.i67 = icmp eq ptr %add.ptr.i.i66, null
  br i1 %tobool.not.i67, label %iscsit_get_datain_req.exit.i68.cleanup_crit_edge, label %if.end.i71

iscsit_get_datain_req.exit.i68.cleanup_crit_edge: ; preds = %iscsit_get_datain_req.exit.i68
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i71:                                       ; preds = %iscsit_get_datain_req.exit.i68
  %recovery.i69 = getelementptr i8, ptr %99, i32 -36
  %102 = ptrtoint ptr %recovery.i69 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %recovery.i69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool2.not.i70 = icmp eq i32 %103, 0
  br i1 %tobool2.not.i70, label %if.end.i71.if.end9.i86_crit_edge, label %land.lhs.true.i74

if.end.i71.if.end9.i86_crit_edge:                 ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i86

land.lhs.true.i74:                                ; preds = %if.end.i71
  %generate_recovery_values.i72 = getelementptr i8, ptr %99, i32 -40
  %104 = ptrtoint ptr %generate_recovery_values.i72 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %generate_recovery_values.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool3.not.i73 = icmp eq i32 %105, 0
  br i1 %tobool3.not.i73, label %land.lhs.true.i74.if.end9.i86_crit_edge, label %if.then4.i77

land.lhs.true.i74.if.end9.i86_crit_edge:          ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i86

if.then4.i77:                                     ; preds = %land.lhs.true.i74
  %call5.i75 = tail call i32 @iscsit_create_recovery_datain_values_datasequenceinorder_no(ptr noundef %cmd, ptr noundef nonnull %add.ptr.i.i66) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i75)
  %cmp.i76 = icmp slt i32 %call5.i75, 0
  br i1 %cmp.i76, label %if.then4.i77.cleanup_crit_edge, label %if.end7.i78

if.then4.i77.cleanup_crit_edge:                   ; preds = %if.then4.i77
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7.i78:                                      ; preds = %if.then4.i77
  call void @__sanitizer_cov_trace_pc() #5
  %106 = ptrtoint ptr %generate_recovery_values.i72 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %generate_recovery_values.i72, align 4
  br label %if.end9.i86

if.end9.i86:                                      ; preds = %if.end7.i78, %land.lhs.true.i74.if.end9.i86_crit_edge, %if.end.i71.if.end9.i86_crit_edge
  %107 = ptrtoint ptr %recovery.i69 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %recovery.i69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool11.not.i79 = icmp eq i32 %108, 0
  %read_data_done12.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 39
  %read_data_done13.i = getelementptr i8, ptr %99, i32 -8
  %cond.in.i80 = select i1 %tobool11.not.i79, ptr %read_data_done12.i, ptr %read_data_done13.i
  %109 = ptrtoint ptr %cond.in.i80 to i32
  call void @__asan_load4_noabort(i32 %109)
  %cond.i81 = load i32, ptr %cond.in.i80, align 4
  %seq_send_order17.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 34
  %seq_send_order19.i = getelementptr i8, ptr %99, i32 -4
  %cond21.in.i82 = select i1 %tobool11.not.i79, ptr %seq_send_order17.i, ptr %seq_send_order19.i
  %110 = ptrtoint ptr %cond21.in.i82 to i32
  call void @__asan_load4_noabort(i32 %110)
  %cond21.i83 = load i32, ptr %cond21.in.i82, align 8
  %data_length.i84 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %111 = ptrtoint ptr %data_length.i84 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %data_length.i84, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %cond.i81)
  %tobool22.not.i85 = icmp eq i32 %112, %cond.i81
  br i1 %tobool22.not.i85, label %do.end.i89, label %if.end25.i90

do.end.i89:                                       ; preds = %if.end9.i86
  call void @__sanitizer_cov_trace_pc() #5
  %init_task_tag.i87 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %113 = ptrtoint ptr %init_task_tag.i87 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %init_task_tag.i87, align 32
  %call24.i88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %114) #6
  br label %cleanup

if.end25.i90:                                     ; preds = %if.end9.i86
  %call26.i = tail call ptr @iscsit_get_seq_holder_for_datain(ptr noundef %cmd, i32 noundef %cond21.i83) #3
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.end25.i90.cleanup_crit_edge, label %if.end29.i

if.end25.i90.cleanup_crit_edge:                   ; preds = %if.end25.i90
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end29.i:                                       ; preds = %if.end25.i90
  %115 = ptrtoint ptr %call26.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %call26.i, align 128
  %116 = ptrtoint ptr %recovery.i69 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %recovery.i69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool31.not.i = icmp eq i32 %117, 0
  br i1 %tobool31.not.i, label %land.lhs.true32.i, label %if.end29.i.if.end35.i_crit_edge

if.end29.i.if.end35.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35.i

land.lhs.true32.i:                                ; preds = %if.end29.i
  %next_burst_len.i = getelementptr inbounds %struct.iscsi_seq, ptr %call26.i, i32 0, i32 6
  %118 = ptrtoint ptr %next_burst_len.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %next_burst_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool33.not.i = icmp eq i32 %119, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %land.lhs.true32.i.if.end35.i_crit_edge

land.lhs.true32.i.if.end35.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35.i

if.then34.i:                                      ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #5
  %data_sn.i91 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 21
  %120 = ptrtoint ptr %data_sn.i91 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %data_sn.i91, align 4
  %first_datasn.i = getelementptr inbounds %struct.iscsi_seq, ptr %call26.i, i32 0, i32 4
  %122 = ptrtoint ptr %first_datasn.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %first_datasn.i, align 16
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then34.i, %land.lhs.true32.i.if.end35.i_crit_edge, %if.end29.i.if.end35.i_crit_edge
  %offset36.i = getelementptr inbounds %struct.iscsi_seq, ptr %call26.i, i32 0, i32 9
  %123 = ptrtoint ptr %offset36.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %offset36.i, align 4
  %next_burst_len37.i = getelementptr inbounds %struct.iscsi_seq, ptr %call26.i, i32 0, i32 6
  %125 = ptrtoint ptr %next_burst_len37.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %next_burst_len37.i, align 8
  %add.i92 = add i32 %126, %124
  %conn_ops.i93 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 59
  %127 = ptrtoint ptr %conn_ops.i93 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %conn_ops.i93, align 16
  %MaxRecvDataSegmentLength.i94 = getelementptr inbounds %struct.iscsi_conn_ops, ptr %128, i32 0, i32 2
  %129 = ptrtoint ptr %MaxRecvDataSegmentLength.i94 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %MaxRecvDataSegmentLength.i94, align 4
  %add38.i = add i32 %130, %add.i92
  %131 = ptrtoint ptr %data_length.i84 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %data_length.i84, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add38.i, i32 %132)
  %cmp41.not.i = icmp ult i32 %add38.i, %132
  br i1 %cmp41.not.i, label %if.else.i100, label %if.then42.i

if.then42.i:                                      ; preds = %if.end35.i
  %sub45.i = sub i32 %132, %add.i92
  %length.i95 = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 2
  %133 = ptrtoint ptr %length.i95 to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %sub45.i, ptr %length.i95, align 8
  %offset46.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 3
  %134 = ptrtoint ptr %offset46.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %add.i92, ptr %offset46.i, align 4
  %135 = ptrtoint ptr %datain to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %datain, align 128
  %137 = or i8 %136, -128
  store i8 %137, ptr %datain, align 128
  %138 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %sess, align 4
  %sess_ops.i97 = getelementptr inbounds %struct.iscsi_session, ptr %139, i32 0, i32 47
  %140 = ptrtoint ptr %sess_ops.i97 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %sess_ops.i97, align 8
  %ErrorRecoveryLevel.i98 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %141, i32 0, i32 16
  %142 = ptrtoint ptr %ErrorRecoveryLevel.i98 to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %ErrorRecoveryLevel.i98, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %143)
  %cmp49.not.i = icmp eq i8 %143, 0
  br i1 %cmp49.not.i, label %if.then42.i.if.end56.i_crit_edge, label %if.then51.i

if.then42.i.if.end56.i_crit_edge:                 ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end56.i

if.then51.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #5
  %144 = or i8 %136, -64
  %145 = ptrtoint ptr %datain to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 %144, ptr %datain, align 128
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then51.i, %if.then42.i.if.end56.i_crit_edge
  %146 = ptrtoint ptr %next_burst_len37.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %next_burst_len37.i, align 8
  %inc.i = add i32 %cond21.i83, 1
  br label %if.end107.i

if.else.i100:                                     ; preds = %if.end35.i
  %add61.i = add i32 %130, %126
  %147 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %sess, align 4
  %sess_ops63.i = getelementptr inbounds %struct.iscsi_session, ptr %148, i32 0, i32 47
  %149 = ptrtoint ptr %sess_ops63.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %sess_ops63.i, align 8
  %MaxBurstLength.i99 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %150, i32 0, i32 9
  %151 = ptrtoint ptr %MaxBurstLength.i99 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %MaxBurstLength.i99, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add61.i, i32 %152)
  %cmp64.i = icmp ult i32 %add61.i, %152
  br i1 %cmp64.i, label %if.then66.i, label %if.else77.i

if.then66.i:                                      ; preds = %if.else.i100
  call void @__sanitizer_cov_trace_pc() #5
  %length69.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 2
  %153 = ptrtoint ptr %length69.i to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %130, ptr %length69.i, align 8
  %154 = ptrtoint ptr %offset36.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %offset36.i, align 4
  %156 = ptrtoint ptr %next_burst_len37.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %next_burst_len37.i, align 8
  %add72.i = add i32 %157, %155
  %offset73.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 3
  %158 = ptrtoint ptr %offset73.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %add72.i, ptr %offset73.i, align 4
  %159 = load i32, ptr %next_burst_len37.i, align 8
  %add76.i = add i32 %159, %130
  store i32 %add76.i, ptr %next_burst_len37.i, align 8
  br label %if.end107.i

if.else77.i:                                      ; preds = %if.else.i100
  %sub82.i = sub i32 %152, %126
  %length83.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 2
  %160 = ptrtoint ptr %length83.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %sub82.i, ptr %length83.i, align 8
  %161 = ptrtoint ptr %offset36.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %offset36.i, align 4
  %163 = ptrtoint ptr %next_burst_len37.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %next_burst_len37.i, align 8
  %add86.i = add i32 %164, %162
  %offset87.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 3
  %165 = ptrtoint ptr %offset87.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 %add86.i, ptr %offset87.i, align 4
  %166 = ptrtoint ptr %datain to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %datain, align 128
  %168 = or i8 %167, -128
  store i8 %168, ptr %datain, align 128
  %169 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %sess, align 4
  %sess_ops93.i = getelementptr inbounds %struct.iscsi_session, ptr %170, i32 0, i32 47
  %171 = ptrtoint ptr %sess_ops93.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %sess_ops93.i, align 8
  %ErrorRecoveryLevel94.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %172, i32 0, i32 16
  %173 = ptrtoint ptr %ErrorRecoveryLevel94.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %ErrorRecoveryLevel94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %cmp96.not.i = icmp eq i8 %174, 0
  br i1 %cmp96.not.i, label %if.else77.i.if.end103.i_crit_edge, label %if.then98.i

if.else77.i.if.end103.i_crit_edge:                ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end103.i

if.then98.i:                                      ; preds = %if.else77.i
  call void @__sanitizer_cov_trace_pc() #5
  %175 = or i8 %167, -64
  %176 = ptrtoint ptr %datain to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %datain, align 128
  br label %if.end103.i

if.end103.i:                                      ; preds = %if.then98.i, %if.else77.i.if.end103.i_crit_edge
  %177 = ptrtoint ptr %next_burst_len37.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 0, ptr %next_burst_len37.i, align 8
  %inc105.i = add i32 %cond21.i83, 1
  br label %if.end107.i

if.end107.i:                                      ; preds = %if.end103.i, %if.then66.i, %if.end56.i
  %seq_send_order.0.i = phi i32 [ %inc.i, %if.end56.i ], [ %cond21.i83, %if.then66.i ], [ %inc105.i, %if.end103.i ]
  %length108.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 2
  %178 = ptrtoint ptr %length108.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %length108.i, align 8
  %add109.i = add i32 %179, %cond.i81
  %180 = ptrtoint ptr %data_length.i84 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %data_length.i84, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add109.i, i32 %181)
  %cmp112.i = icmp eq i32 %add109.i, %181
  br i1 %cmp112.i, label %if.then114.i, label %if.end107.i.if.end119.i_crit_edge

if.end107.i.if.end119.i_crit_edge:                ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end119.i

if.then114.i:                                     ; preds = %if.end107.i
  call void @__sanitizer_cov_trace_pc() #5
  %182 = ptrtoint ptr %datain to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %datain, align 128
  %184 = or i8 %183, 1
  store i8 %184, ptr %datain, align 128
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.then114.i, %if.end107.i.if.end119.i_crit_edge
  %185 = ptrtoint ptr %recovery.i69 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %recovery.i69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool121.not.i = icmp eq i32 %186, 0
  %data_sn126.i = getelementptr i8, ptr %99, i32 -16
  %data_sn123.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 21
  %data_sn126.sink.i = select i1 %tobool121.not.i, ptr %data_sn123.i, ptr %data_sn126.i
  %187 = ptrtoint ptr %data_sn126.sink.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %.sink.i101 = load i32, ptr %data_sn126.sink.i, align 4
  %inc127.i = add i32 %.sink.i101, 1
  store i32 %inc127.i, ptr %data_sn126.sink.i, align 4
  %data_sn130.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 1
  %188 = ptrtoint ptr %data_sn130.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %.sink.i101, ptr %data_sn130.i, align 4
  %189 = ptrtoint ptr %recovery.i69 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %recovery.i69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool132.not.i = icmp eq i32 %190, 0
  %seq_send_order17.seq_send_order19.i = select i1 %tobool132.not.i, ptr %seq_send_order17.i, ptr %seq_send_order19.i
  %read_data_done12.read_data_done13.i = select i1 %tobool132.not.i, ptr %read_data_done12.i, ptr %read_data_done13.i
  %191 = ptrtoint ptr %seq_send_order17.seq_send_order19.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %seq_send_order.0.i, ptr %seq_send_order17.seq_send_order19.i, align 8
  %192 = ptrtoint ptr %length108.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %length108.i, align 8
  %194 = ptrtoint ptr %read_data_done12.read_data_done13.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %read_data_done12.read_data_done13.i, align 4
  %add142.i = add i32 %195, %193
  store i32 %add142.i, ptr %read_data_done12.read_data_done13.i, align 4
  %196 = ptrtoint ptr %recovery.i69 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %recovery.i69, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %tobool145.not.i = icmp eq i32 %197, 0
  br i1 %tobool145.not.i, label %if.then146.i, label %if.end159.i

if.then146.i:                                     ; preds = %if.end119.i
  %198 = ptrtoint ptr %datain to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %datain, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %199)
  %tobool149.not.i = icmp sgt i8 %199, -1
  br i1 %tobool149.not.i, label %if.then146.i.if.end152.i_crit_edge, label %if.then150.i

if.then146.i.if.end152.i_crit_edge:               ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end152.i

if.then150.i:                                     ; preds = %if.then146.i
  call void @__sanitizer_cov_trace_pc() #5
  %200 = ptrtoint ptr %data_sn130.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %data_sn130.i, align 4
  %last_datasn.i = getelementptr inbounds %struct.iscsi_seq, ptr %call26.i, i32 0, i32 5
  %202 = ptrtoint ptr %last_datasn.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %201, ptr %last_datasn.i, align 4
  br label %if.end152.i

if.end152.i:                                      ; preds = %if.then150.i, %if.then146.i.if.end152.i_crit_edge
  %203 = ptrtoint ptr %datain to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %datain, align 128
  %205 = and i8 %204, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %205)
  %tobool156.not.i = icmp eq i8 %205, 0
  br i1 %tobool156.not.i, label %if.end152.i.cleanup_crit_edge, label %if.then157.i

if.end152.i.cleanup_crit_edge:                    ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then157.i:                                     ; preds = %if.end152.i
  call void @__sanitizer_cov_trace_pc() #5
  %206 = ptrtoint ptr %add.ptr.i.i66 to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 1, ptr %add.ptr.i.i66, align 128
  br label %cleanup

if.end159.i:                                      ; preds = %if.end119.i
  %runlength.i102 = getelementptr i8, ptr %99, i32 -28
  %207 = ptrtoint ptr %runlength.i102 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %runlength.i102, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool160.not.i = icmp eq i32 %208, 0
  br i1 %tobool160.not.i, label %if.then161.i, label %if.else173.i

if.then161.i:                                     ; preds = %if.end159.i
  %209 = ptrtoint ptr %datain to i32
  call void @__asan_load1_noabort(i32 %209)
  %210 = load i8, ptr %datain, align 128
  %211 = and i8 %210, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool165.not.i = icmp eq i8 %211, 0
  br i1 %tobool165.not.i, label %if.then161.i.cleanup_crit_edge, label %if.then166.i

if.then161.i.cleanup_crit_edge:                   ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then166.i:                                     ; preds = %if.then161.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %197)
  %cmp168.i = icmp eq i32 %197, 1
  %cond170.i = select i1 %cmp168.i, i32 2, i32 3
  %212 = ptrtoint ptr %add.ptr.i.i66 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %cond170.i, ptr %add.ptr.i.i66, align 128
  br label %cleanup

if.else173.i:                                     ; preds = %if.end159.i
  %begrun.i103 = getelementptr i8, ptr %99, i32 -32
  %213 = ptrtoint ptr %begrun.i103 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %begrun.i103, align 4
  %add175.i = add i32 %214, %208
  %215 = ptrtoint ptr %data_sn126.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %data_sn126.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add175.i, i32 %216)
  %cmp177.i = icmp eq i32 %add175.i, %216
  br i1 %cmp177.i, label %if.then179.i, label %if.else173.i.cleanup_crit_edge

if.else173.i.cleanup_crit_edge:                   ; preds = %if.else173.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then179.i:                                     ; preds = %if.else173.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %197)
  %cmp181.i = icmp eq i32 %197, 1
  %cond183.i = select i1 %cmp181.i, i32 2, i32 3
  %217 = ptrtoint ptr %add.ptr.i.i66 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %cond183.i, ptr %add.ptr.i.i66, align 128
  br label %cleanup

land.lhs.true24:                                  ; preds = %land.lhs.true
  %218 = ptrtoint ptr %DataPDUInOrder13 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %DataPDUInOrder13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %219)
  %tobool28.not = icmp eq i8 %219, 0
  br i1 %tobool28.not, label %if.then29, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then29:                                        ; preds = %land.lhs.true24
  %datain_list.i.i106 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 55
  %220 = ptrtoint ptr %datain_list.i.i106 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load volatile ptr, ptr %datain_list.i.i106, align 4
  %cmp.i.not.i.i107 = icmp eq ptr %221, %datain_list.i.i106
  br i1 %cmp.i.not.i.i107, label %iscsit_get_datain_req.exit.thread.i110, label %iscsit_get_datain_req.exit.i113

iscsit_get_datain_req.exit.thread.i110:           ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #5
  %init_task_tag.i.i108 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %222 = ptrtoint ptr %init_task_tag.i.i108 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %init_task_tag.i.i108, align 32
  %call1.i.i109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %223) #6
  br label %cleanup

iscsit_get_datain_req.exit.i113:                  ; preds = %if.then29
  %add.ptr.i.i111 = getelementptr i8, ptr %221, i32 -44
  %tobool.not.i112 = icmp eq ptr %add.ptr.i.i111, null
  br i1 %tobool.not.i112, label %iscsit_get_datain_req.exit.i113.cleanup_crit_edge, label %if.end.i116

iscsit_get_datain_req.exit.i113.cleanup_crit_edge: ; preds = %iscsit_get_datain_req.exit.i113
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i116:                                      ; preds = %iscsit_get_datain_req.exit.i113
  %recovery.i114 = getelementptr i8, ptr %221, i32 -36
  %224 = ptrtoint ptr %recovery.i114 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %recovery.i114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %225)
  %tobool2.not.i115 = icmp eq i32 %225, 0
  br i1 %tobool2.not.i115, label %if.end.i116.if.end9.i135_crit_edge, label %land.lhs.true.i119

if.end.i116.if.end9.i135_crit_edge:               ; preds = %if.end.i116
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i135

land.lhs.true.i119:                               ; preds = %if.end.i116
  %generate_recovery_values.i117 = getelementptr i8, ptr %221, i32 -40
  %226 = ptrtoint ptr %generate_recovery_values.i117 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %generate_recovery_values.i117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool3.not.i118 = icmp eq i32 %227, 0
  br i1 %tobool3.not.i118, label %land.lhs.true.i119.if.end9.i135_crit_edge, label %if.then4.i122

land.lhs.true.i119.if.end9.i135_crit_edge:        ; preds = %land.lhs.true.i119
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i135

if.then4.i122:                                    ; preds = %land.lhs.true.i119
  %call5.i120 = tail call i32 @iscsit_create_recovery_datain_values_datasequenceinorder_yes(ptr noundef %cmd, ptr noundef nonnull %add.ptr.i.i111) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i120)
  %cmp.i121 = icmp slt i32 %call5.i120, 0
  br i1 %cmp.i121, label %if.then4.i122.cleanup_crit_edge, label %if.end7.i123

if.then4.i122.cleanup_crit_edge:                  ; preds = %if.then4.i122
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7.i123:                                     ; preds = %if.then4.i122
  call void @__sanitizer_cov_trace_pc() #5
  %228 = ptrtoint ptr %generate_recovery_values.i117 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 0, ptr %generate_recovery_values.i117, align 4
  br label %if.end9.i135

if.end9.i135:                                     ; preds = %if.end7.i123, %land.lhs.true.i119.if.end9.i135_crit_edge, %if.end.i116.if.end9.i135_crit_edge
  %229 = ptrtoint ptr %recovery.i114 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %recovery.i114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool11.not.i124 = icmp eq i32 %230, 0
  %next_burst_len12.i125 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 42
  %next_burst_len13.i126 = getelementptr i8, ptr %221, i32 -12
  %cond.in.i127 = select i1 %tobool11.not.i124, ptr %next_burst_len12.i125, ptr %next_burst_len13.i126
  %231 = ptrtoint ptr %cond.in.i127 to i32
  call void @__asan_load4_noabort(i32 %231)
  %cond.i128 = load i32, ptr %cond.in.i127, align 8
  %read_data_done17.i129 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 39
  %read_data_done19.i130 = getelementptr i8, ptr %221, i32 -8
  %cond21.in.i131 = select i1 %tobool11.not.i124, ptr %read_data_done17.i129, ptr %read_data_done19.i130
  %232 = ptrtoint ptr %cond21.in.i131 to i32
  call void @__asan_load4_noabort(i32 %232)
  %cond21.i132 = load i32, ptr %cond21.in.i131, align 4
  %data_length.i133 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %233 = ptrtoint ptr %data_length.i133 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %data_length.i133, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %234, i32 %cond21.i132)
  %tobool22.not.i134 = icmp eq i32 %234, %cond21.i132
  br i1 %tobool22.not.i134, label %do.end.i138, label %if.end25.i141

do.end.i138:                                      ; preds = %if.end9.i135
  call void @__sanitizer_cov_trace_pc() #5
  %init_task_tag.i136 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %235 = ptrtoint ptr %init_task_tag.i136 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %init_task_tag.i136, align 32
  %call24.i137 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %236) #6
  br label %cleanup

if.end25.i141:                                    ; preds = %if.end9.i135
  %call26.i139 = tail call ptr @iscsit_get_pdu_holder_for_seq(ptr noundef %cmd, ptr noundef null) #3
  %tobool27.not.i140 = icmp eq ptr %call26.i139, null
  br i1 %tobool27.not.i140, label %if.end25.i141.cleanup_crit_edge, label %if.end29.i144

if.end25.i141.cleanup_crit_edge:                  ; preds = %if.end25.i141
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end29.i144:                                    ; preds = %if.end25.i141
  %length.i142 = getelementptr inbounds %struct.iscsi_pdu, ptr %call26.i139, i32 0, i32 4
  %237 = ptrtoint ptr %length.i142 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %length.i142, align 16
  %add.i143 = add i32 %238, %cond21.i132
  %239 = ptrtoint ptr %data_length.i133 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %data_length.i133, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i143, i32 %240)
  %cmp32.i = icmp eq i32 %add.i143, %240
  br i1 %cmp32.i, label %if.then33.i, label %if.else.i153

if.then33.i:                                      ; preds = %if.end29.i144
  %flags.i = getelementptr inbounds %struct.iscsi_pdu, ptr %call26.i139, i32 0, i32 2
  %241 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %flags.i, align 8
  %243 = or i8 %242, -127
  store i8 %243, ptr %flags.i, align 8
  %244 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %sess, align 4
  %sess_ops.i146 = getelementptr inbounds %struct.iscsi_session, ptr %245, i32 0, i32 47
  %246 = ptrtoint ptr %sess_ops.i146 to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %sess_ops.i146, align 8
  %ErrorRecoveryLevel.i147 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %247, i32 0, i32 16
  %248 = ptrtoint ptr %ErrorRecoveryLevel.i147 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %ErrorRecoveryLevel.i147, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %249)
  %cmp36.not.i = icmp eq i8 %249, 0
  br i1 %cmp36.not.i, label %if.then33.i.if.end70.i_crit_edge, label %if.then38.i

if.then33.i.if.end70.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end70.i

if.then38.i:                                      ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #5
  %250 = or i8 %242, -63
  %251 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %251)
  store i8 %250, ptr %flags.i, align 8
  br label %if.end70.i

if.else.i153:                                     ; preds = %if.end29.i144
  %conn_ops.i148 = getelementptr inbounds %struct.iscsi_conn, ptr %1, i32 0, i32 59
  %252 = ptrtoint ptr %conn_ops.i148 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %conn_ops.i148, align 16
  %MaxRecvDataSegmentLength.i149 = getelementptr inbounds %struct.iscsi_conn_ops, ptr %253, i32 0, i32 2
  %254 = ptrtoint ptr %MaxRecvDataSegmentLength.i149 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %MaxRecvDataSegmentLength.i149, align 4
  %add44.i = add i32 %255, %cond.i128
  %256 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %sess, align 4
  %sess_ops46.i151 = getelementptr inbounds %struct.iscsi_session, ptr %257, i32 0, i32 47
  %258 = ptrtoint ptr %sess_ops46.i151 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %sess_ops46.i151, align 8
  %MaxBurstLength.i152 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %259, i32 0, i32 9
  %260 = ptrtoint ptr %MaxBurstLength.i152 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %MaxBurstLength.i152, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add44.i, i32 %261)
  %cmp47.i = icmp ult i32 %add44.i, %261
  br i1 %cmp47.i, label %if.then49.i, label %if.else52.i

if.then49.i:                                      ; preds = %if.else.i153
  call void @__sanitizer_cov_trace_pc() #5
  %add51.i = add i32 %238, %cond.i128
  br label %if.end70.i

if.else52.i:                                      ; preds = %if.else.i153
  %flags53.i = getelementptr inbounds %struct.iscsi_pdu, ptr %call26.i139, i32 0, i32 2
  %262 = ptrtoint ptr %flags53.i to i32
  call void @__asan_load1_noabort(i32 %262)
  %263 = load i8, ptr %flags53.i, align 8
  %264 = or i8 %263, -128
  store i8 %264, ptr %flags53.i, align 8
  %265 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %sess, align 4
  %sess_ops58.i = getelementptr inbounds %struct.iscsi_session, ptr %266, i32 0, i32 47
  %267 = ptrtoint ptr %sess_ops58.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %sess_ops58.i, align 8
  %ErrorRecoveryLevel59.i = getelementptr inbounds %struct.iscsi_sess_ops, ptr %268, i32 0, i32 16
  %269 = ptrtoint ptr %ErrorRecoveryLevel59.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %ErrorRecoveryLevel59.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %270)
  %cmp61.not.i = icmp eq i8 %270, 0
  br i1 %cmp61.not.i, label %if.else52.i.if.end70.i_crit_edge, label %if.then63.i

if.else52.i.if.end70.i_crit_edge:                 ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end70.i

if.then63.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #5
  %271 = or i8 %263, -64
  %272 = ptrtoint ptr %flags53.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 %271, ptr %flags53.i, align 8
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then63.i, %if.else52.i.if.end70.i_crit_edge, %if.then49.i, %if.then38.i, %if.then33.i.if.end70.i_crit_edge
  %next_burst_len.0.i154 = phi i32 [ %add51.i, %if.then49.i ], [ 0, %if.then38.i ], [ 0, %if.then33.i.if.end70.i_crit_edge ], [ 0, %if.then63.i ], [ 0, %if.else52.i.if.end70.i_crit_edge ]
  %273 = ptrtoint ptr %recovery.i114 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %recovery.i114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %tobool72.not.i = icmp eq i32 %274, 0
  %data_sn75.i = getelementptr i8, ptr %221, i32 -16
  %data_sn.i155 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 21
  %data_sn75.sink.i = select i1 %tobool72.not.i, ptr %data_sn.i155, ptr %data_sn75.i
  %275 = ptrtoint ptr %data_sn75.sink.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %.sink.i156 = load i32, ptr %data_sn75.sink.i, align 4
  %inc76.i = add i32 %.sink.i156, 1
  store i32 %inc76.i, ptr %data_sn75.sink.i, align 4
  %data_sn79.i = getelementptr inbounds %struct.iscsi_pdu, ptr %call26.i139, i32 0, i32 3
  %276 = ptrtoint ptr %data_sn79.i to i32
  call void @__asan_store4_noabort(i32 %276)
  store i32 %.sink.i156, ptr %data_sn79.i, align 4
  %277 = ptrtoint ptr %recovery.i114 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %recovery.i114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %278)
  %tobool81.not.i157 = icmp eq i32 %278, 0
  br i1 %tobool81.not.i157, label %if.then82.i, label %if.else87.i

if.then82.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #5
  %279 = ptrtoint ptr %next_burst_len12.i125 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 %next_burst_len.0.i154, ptr %next_burst_len12.i125, align 8
  br label %if.end92.i

if.else87.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #5
  %280 = ptrtoint ptr %next_burst_len13.i126 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 %next_burst_len.0.i154, ptr %next_burst_len13.i126, align 32
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.else87.i, %if.then82.i
  %read_data_done19.sink209.i = phi ptr [ %read_data_done19.i130, %if.else87.i ], [ %read_data_done17.i129, %if.then82.i ]
  %281 = ptrtoint ptr %length.i142 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %length.i142, align 16
  %283 = ptrtoint ptr %read_data_done19.sink209.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %read_data_done19.sink209.i, align 4
  %add91.i = add i32 %284, %282
  store i32 %add91.i, ptr %read_data_done19.sink209.i, align 4
  %flags93.i = getelementptr inbounds %struct.iscsi_pdu, ptr %call26.i139, i32 0, i32 2
  %285 = ptrtoint ptr %flags93.i to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %flags93.i, align 8
  %287 = ptrtoint ptr %datain to i32
  call void @__asan_store1_noabort(i32 %287)
  store i8 %286, ptr %datain, align 128
  %288 = load i32, ptr %length.i142, align 16
  %length96.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 2
  %289 = ptrtoint ptr %length96.i to i32
  call void @__asan_store4_noabort(i32 %289)
  store i32 %288, ptr %length96.i, align 8
  %offset.i158 = getelementptr inbounds %struct.iscsi_pdu, ptr %call26.i139, i32 0, i32 5
  %290 = ptrtoint ptr %offset.i158 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %offset.i158, align 4
  %offset97.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 3
  %292 = ptrtoint ptr %offset97.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %291, ptr %offset97.i, align 4
  %293 = ptrtoint ptr %data_sn79.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %data_sn79.i, align 4
  %data_sn99.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 1
  %295 = ptrtoint ptr %data_sn99.i to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 %294, ptr %data_sn99.i, align 4
  %296 = ptrtoint ptr %recovery.i114 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %recovery.i114, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %297)
  %tobool101.not.i = icmp eq i32 %297, 0
  br i1 %tobool101.not.i, label %if.then102.i, label %if.end108.i

if.then102.i:                                     ; preds = %if.end92.i
  %298 = and i8 %286, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %tobool105.not.i = icmp eq i8 %298, 0
  br i1 %tobool105.not.i, label %if.then102.i.cleanup_crit_edge, label %if.then106.i

if.then102.i.cleanup_crit_edge:                   ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then106.i:                                     ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #5
  %299 = ptrtoint ptr %add.ptr.i.i111 to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 1, ptr %add.ptr.i.i111, align 128
  br label %cleanup

if.end108.i:                                      ; preds = %if.end92.i
  %runlength.i159 = getelementptr i8, ptr %221, i32 -28
  %300 = ptrtoint ptr %runlength.i159 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %runlength.i159, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %tobool109.not.i = icmp eq i32 %301, 0
  br i1 %tobool109.not.i, label %if.then110.i, label %if.else122.i

if.then110.i:                                     ; preds = %if.end108.i
  %302 = and i8 %286, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %302)
  %tobool114.not.i = icmp eq i8 %302, 0
  br i1 %tobool114.not.i, label %if.then110.i.cleanup_crit_edge, label %if.then115.i

if.then110.i.cleanup_crit_edge:                   ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then115.i:                                     ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %297)
  %cmp117.i = icmp eq i32 %297, 1
  %cond119.i = select i1 %cmp117.i, i32 2, i32 3
  %303 = ptrtoint ptr %add.ptr.i.i111 to i32
  call void @__asan_store4_noabort(i32 %303)
  store i32 %cond119.i, ptr %add.ptr.i.i111, align 128
  br label %cleanup

if.else122.i:                                     ; preds = %if.end108.i
  %begrun.i160 = getelementptr i8, ptr %221, i32 -32
  %304 = ptrtoint ptr %begrun.i160 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %begrun.i160, align 4
  %add124.i = add i32 %305, %301
  %306 = ptrtoint ptr %data_sn75.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %data_sn75.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add124.i, i32 %307)
  %cmp126.i = icmp eq i32 %add124.i, %307
  br i1 %cmp126.i, label %if.then128.i, label %if.else122.i.cleanup_crit_edge

if.else122.i.cleanup_crit_edge:                   ; preds = %if.else122.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then128.i:                                     ; preds = %if.else122.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %297)
  %cmp130.i = icmp eq i32 %297, 1
  %cond132.i = select i1 %cmp130.i, i32 2, i32 3
  %308 = ptrtoint ptr %add.ptr.i.i111 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 %cond132.i, ptr %add.ptr.i.i111, align 128
  br label %cleanup

land.lhs.true36:                                  ; preds = %land.lhs.true10
  %309 = ptrtoint ptr %DataPDUInOrder13 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %DataPDUInOrder13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %310)
  %tobool40.not = icmp eq i8 %310, 0
  br i1 %tobool40.not, label %if.then41, label %land.lhs.true36.cleanup_crit_edge

land.lhs.true36.cleanup_crit_edge:                ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then41:                                        ; preds = %land.lhs.true36
  %datain_list.i.i163 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 55
  %311 = ptrtoint ptr %datain_list.i.i163 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load volatile ptr, ptr %datain_list.i.i163, align 4
  %cmp.i.not.i.i164 = icmp eq ptr %312, %datain_list.i.i163
  br i1 %cmp.i.not.i.i164, label %iscsit_get_datain_req.exit.thread.i167, label %iscsit_get_datain_req.exit.i170

iscsit_get_datain_req.exit.thread.i167:           ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #5
  %init_task_tag.i.i165 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %313 = ptrtoint ptr %init_task_tag.i.i165 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %init_task_tag.i.i165, align 32
  %call1.i.i166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %314) #6
  br label %cleanup

iscsit_get_datain_req.exit.i170:                  ; preds = %if.then41
  %add.ptr.i.i168 = getelementptr i8, ptr %312, i32 -44
  %tobool.not.i169 = icmp eq ptr %add.ptr.i.i168, null
  br i1 %tobool.not.i169, label %iscsit_get_datain_req.exit.i170.cleanup_crit_edge, label %if.end.i173

iscsit_get_datain_req.exit.i170.cleanup_crit_edge: ; preds = %iscsit_get_datain_req.exit.i170
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i173:                                      ; preds = %iscsit_get_datain_req.exit.i170
  %recovery.i171 = getelementptr i8, ptr %312, i32 -36
  %315 = ptrtoint ptr %recovery.i171 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %recovery.i171, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %tobool2.not.i172 = icmp eq i32 %316, 0
  br i1 %tobool2.not.i172, label %if.end.i173.if.end9.i192_crit_edge, label %land.lhs.true.i176

if.end.i173.if.end9.i192_crit_edge:               ; preds = %if.end.i173
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i192

land.lhs.true.i176:                               ; preds = %if.end.i173
  %generate_recovery_values.i174 = getelementptr i8, ptr %312, i32 -40
  %317 = ptrtoint ptr %generate_recovery_values.i174 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %generate_recovery_values.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %tobool3.not.i175 = icmp eq i32 %318, 0
  br i1 %tobool3.not.i175, label %land.lhs.true.i176.if.end9.i192_crit_edge, label %if.then4.i179

land.lhs.true.i176.if.end9.i192_crit_edge:        ; preds = %land.lhs.true.i176
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i192

if.then4.i179:                                    ; preds = %land.lhs.true.i176
  %call5.i177 = tail call i32 @iscsit_create_recovery_datain_values_datasequenceinorder_no(ptr noundef %cmd, ptr noundef nonnull %add.ptr.i.i168) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i177)
  %cmp.i178 = icmp slt i32 %call5.i177, 0
  br i1 %cmp.i178, label %if.then4.i179.cleanup_crit_edge, label %if.end7.i180

if.then4.i179.cleanup_crit_edge:                  ; preds = %if.then4.i179
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7.i180:                                     ; preds = %if.then4.i179
  call void @__sanitizer_cov_trace_pc() #5
  %319 = ptrtoint ptr %generate_recovery_values.i174 to i32
  call void @__asan_store4_noabort(i32 %319)
  store i32 0, ptr %generate_recovery_values.i174, align 4
  br label %if.end9.i192

if.end9.i192:                                     ; preds = %if.end7.i180, %land.lhs.true.i176.if.end9.i192_crit_edge, %if.end.i173.if.end9.i192_crit_edge
  %320 = ptrtoint ptr %recovery.i171 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %recovery.i171, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %321)
  %tobool11.not.i181 = icmp eq i32 %321, 0
  %read_data_done12.i182 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 39
  %read_data_done13.i183 = getelementptr i8, ptr %312, i32 -8
  %cond.in.i184 = select i1 %tobool11.not.i181, ptr %read_data_done12.i182, ptr %read_data_done13.i183
  %322 = ptrtoint ptr %cond.in.i184 to i32
  call void @__asan_load4_noabort(i32 %322)
  %cond.i185 = load i32, ptr %cond.in.i184, align 4
  %seq_send_order17.i186 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 34
  %seq_send_order19.i187 = getelementptr i8, ptr %312, i32 -4
  %cond21.in.i188 = select i1 %tobool11.not.i181, ptr %seq_send_order17.i186, ptr %seq_send_order19.i187
  %323 = ptrtoint ptr %cond21.in.i188 to i32
  call void @__asan_load4_noabort(i32 %323)
  %cond21.i189 = load i32, ptr %cond21.in.i188, align 8
  %data_length.i190 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 70, i32 12
  %324 = ptrtoint ptr %data_length.i190 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %data_length.i190, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %325, i32 %cond.i185)
  %tobool22.not.i191 = icmp eq i32 %325, %cond.i185
  br i1 %tobool22.not.i191, label %do.end.i195, label %if.end25.i198

do.end.i195:                                      ; preds = %if.end9.i192
  call void @__sanitizer_cov_trace_pc() #5
  %init_task_tag.i193 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 16
  %326 = ptrtoint ptr %init_task_tag.i193 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %init_task_tag.i193, align 32
  %call24.i194 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %327) #6
  br label %cleanup

if.end25.i198:                                    ; preds = %if.end9.i192
  %call26.i196 = tail call ptr @iscsit_get_seq_holder_for_datain(ptr noundef %cmd, i32 noundef %cond21.i189) #3
  %tobool27.not.i197 = icmp eq ptr %call26.i196, null
  br i1 %tobool27.not.i197, label %if.end25.i198.cleanup_crit_edge, label %if.end29.i200

if.end25.i198.cleanup_crit_edge:                  ; preds = %if.end25.i198
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end29.i200:                                    ; preds = %if.end25.i198
  %328 = ptrtoint ptr %call26.i196 to i32
  call void @__asan_store4_noabort(i32 %328)
  store i32 1, ptr %call26.i196, align 128
  %329 = ptrtoint ptr %recovery.i171 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %recovery.i171, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %tobool31.not.i199 = icmp eq i32 %330, 0
  br i1 %tobool31.not.i199, label %land.lhs.true32.i203, label %if.end29.i200.if.end35.i207_crit_edge

if.end29.i200.if.end35.i207_crit_edge:            ; preds = %if.end29.i200
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35.i207

land.lhs.true32.i203:                             ; preds = %if.end29.i200
  %next_burst_len.i201 = getelementptr inbounds %struct.iscsi_seq, ptr %call26.i196, i32 0, i32 6
  %331 = ptrtoint ptr %next_burst_len.i201 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %next_burst_len.i201, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %332)
  %tobool33.not.i202 = icmp eq i32 %332, 0
  br i1 %tobool33.not.i202, label %if.then34.i206, label %land.lhs.true32.i203.if.end35.i207_crit_edge

land.lhs.true32.i203.if.end35.i207_crit_edge:     ; preds = %land.lhs.true32.i203
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35.i207

if.then34.i206:                                   ; preds = %land.lhs.true32.i203
  call void @__sanitizer_cov_trace_pc() #5
  %data_sn.i204 = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 21
  %333 = ptrtoint ptr %data_sn.i204 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load i32, ptr %data_sn.i204, align 4
  %first_datasn.i205 = getelementptr inbounds %struct.iscsi_seq, ptr %call26.i196, i32 0, i32 4
  %335 = ptrtoint ptr %first_datasn.i205 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 %334, ptr %first_datasn.i205, align 16
  br label %if.end35.i207

if.end35.i207:                                    ; preds = %if.then34.i206, %land.lhs.true32.i203.if.end35.i207_crit_edge, %if.end29.i200.if.end35.i207_crit_edge
  %call36.i = tail call ptr @iscsit_get_pdu_holder_for_seq(ptr noundef %cmd, ptr noundef nonnull %call26.i196) #3
  %tobool37.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool37.not.i, label %if.end35.i207.cleanup_crit_edge, label %if.end39.i

if.end35.i207.cleanup_crit_edge:                  ; preds = %if.end35.i207
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end39.i:                                       ; preds = %if.end35.i207
  %pdu_send_order.i = getelementptr inbounds %struct.iscsi_seq, ptr %call26.i196, i32 0, i32 11
  %336 = ptrtoint ptr %pdu_send_order.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %pdu_send_order.i, align 4
  %pdu_count.i = getelementptr inbounds %struct.iscsi_seq, ptr %call26.i196, i32 0, i32 8
  %338 = ptrtoint ptr %pdu_count.i to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %pdu_count.i, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %337, i32 %339)
  %cmp40.i = icmp eq i32 %337, %339
  br i1 %cmp40.i, label %if.then41.i, label %if.else.i215

if.then41.i:                                      ; preds = %if.end39.i
  %flags.i208 = getelementptr inbounds %struct.iscsi_pdu, ptr %call36.i, i32 0, i32 2
  %340 = ptrtoint ptr %flags.i208 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %flags.i208, align 8
  %342 = or i8 %341, -128
  store i8 %342, ptr %flags.i208, align 8
  %343 = ptrtoint ptr %sess to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %sess, align 4
  %sess_ops.i210 = getelementptr inbounds %struct.iscsi_session, ptr %344, i32 0, i32 47
  %345 = ptrtoint ptr %sess_ops.i210 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %sess_ops.i210, align 8
  %ErrorRecoveryLevel.i211 = getelementptr inbounds %struct.iscsi_sess_ops, ptr %346, i32 0, i32 16
  %347 = ptrtoint ptr %ErrorRecoveryLevel.i211 to i32
  call void @__asan_load1_noabort(i32 %347)
  %348 = load i8, ptr %ErrorRecoveryLevel.i211, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %348)
  %cmp44.not.i = icmp eq i8 %348, 0
  br i1 %cmp44.not.i, label %if.then41.i.if.end51.i_crit_edge, label %if.then46.i

if.then41.i.if.end51.i_crit_edge:                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end51.i

if.then46.i:                                      ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #5
  %349 = or i8 %341, -64
  %350 = ptrtoint ptr %flags.i208 to i32
  call void @__asan_store1_noabort(i32 %350)
  store i8 %349, ptr %flags.i208, align 8
  br label %if.end51.i

if.end51.i:                                       ; preds = %if.then46.i, %if.then41.i.if.end51.i_crit_edge
  %next_burst_len52.i = getelementptr inbounds %struct.iscsi_seq, ptr %call26.i196, i32 0, i32 6
  %351 = ptrtoint ptr %next_burst_len52.i to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 0, ptr %next_burst_len52.i, align 8
  %inc.i212 = add i32 %cond21.i189, 1
  br label %if.end54.i

if.else.i215:                                     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #5
  %length.i213 = getelementptr inbounds %struct.iscsi_pdu, ptr %call36.i, i32 0, i32 4
  %352 = ptrtoint ptr %length.i213 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %length.i213, align 16
  %next_burst_len53.i = getelementptr inbounds %struct.iscsi_seq, ptr %call26.i196, i32 0, i32 6
  %354 = ptrtoint ptr %next_burst_len53.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %next_burst_len53.i, align 8
  %add.i214 = add i32 %355, %353
  store i32 %add.i214, ptr %next_burst_len53.i, align 8
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else.i215, %if.end51.i
  %seq_send_order.0.i216 = phi i32 [ %inc.i212, %if.end51.i ], [ %cond21.i189, %if.else.i215 ]
  %length55.i = getelementptr inbounds %struct.iscsi_pdu, ptr %call36.i, i32 0, i32 4
  %356 = ptrtoint ptr %length55.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %length55.i, align 16
  %add56.i = add i32 %357, %cond.i185
  %358 = ptrtoint ptr %data_length.i190 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load i32, ptr %data_length.i190, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add56.i, i32 %359)
  %cmp59.i = icmp eq i32 %add56.i, %359
  br i1 %cmp59.i, label %if.then61.i, label %if.end54.i.if.end66.i_crit_edge

if.end54.i.if.end66.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end66.i

if.then61.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #5
  %flags62.i = getelementptr inbounds %struct.iscsi_pdu, ptr %call36.i, i32 0, i32 2
  %360 = ptrtoint ptr %flags62.i to i32
  call void @__asan_load1_noabort(i32 %360)
  %361 = load i8, ptr %flags62.i, align 8
  %362 = or i8 %361, 1
  store i8 %362, ptr %flags62.i, align 8
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.then61.i, %if.end54.i.if.end66.i_crit_edge
  %363 = ptrtoint ptr %recovery.i171 to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %recovery.i171, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %tobool68.not.i = icmp eq i32 %364, 0
  %data_sn73.i = getelementptr i8, ptr %312, i32 -16
  %data_sn70.i = getelementptr inbounds %struct.iscsi_cmd, ptr %cmd, i32 0, i32 21
  %data_sn73.sink.i = select i1 %tobool68.not.i, ptr %data_sn70.i, ptr %data_sn73.i
  %365 = ptrtoint ptr %data_sn73.sink.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %.sink.i217 = load i32, ptr %data_sn73.sink.i, align 4
  %inc74.i = add i32 %.sink.i217, 1
  store i32 %inc74.i, ptr %data_sn73.sink.i, align 4
  %data_sn77.i = getelementptr inbounds %struct.iscsi_pdu, ptr %call36.i, i32 0, i32 3
  %366 = ptrtoint ptr %data_sn77.i to i32
  call void @__asan_store4_noabort(i32 %366)
  store i32 %.sink.i217, ptr %data_sn77.i, align 4
  %367 = ptrtoint ptr %recovery.i171 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %recovery.i171, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %368)
  %tobool79.not.i = icmp eq i32 %368, 0
  %seq_send_order17.seq_send_order19.i218 = select i1 %tobool79.not.i, ptr %seq_send_order17.i186, ptr %seq_send_order19.i187
  %read_data_done12.read_data_done13.i219 = select i1 %tobool79.not.i, ptr %read_data_done12.i182, ptr %read_data_done13.i183
  %369 = ptrtoint ptr %seq_send_order17.seq_send_order19.i218 to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 %seq_send_order.0.i216, ptr %seq_send_order17.seq_send_order19.i218, align 8
  %370 = ptrtoint ptr %length55.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %length55.i, align 16
  %372 = ptrtoint ptr %read_data_done12.read_data_done13.i219 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load i32, ptr %read_data_done12.read_data_done13.i219, align 4
  %add89.i = add i32 %373, %371
  store i32 %add89.i, ptr %read_data_done12.read_data_done13.i219, align 4
  %flags91.i = getelementptr inbounds %struct.iscsi_pdu, ptr %call36.i, i32 0, i32 2
  %374 = ptrtoint ptr %flags91.i to i32
  call void @__asan_load1_noabort(i32 %374)
  %375 = load i8, ptr %flags91.i, align 8
  %376 = ptrtoint ptr %datain to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 %375, ptr %datain, align 128
  %377 = load i32, ptr %length55.i, align 16
  %length94.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 2
  %378 = ptrtoint ptr %length94.i to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 %377, ptr %length94.i, align 8
  %offset.i220 = getelementptr inbounds %struct.iscsi_pdu, ptr %call36.i, i32 0, i32 5
  %379 = ptrtoint ptr %offset.i220 to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %offset.i220, align 4
  %offset95.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 3
  %381 = ptrtoint ptr %offset95.i to i32
  call void @__asan_store4_noabort(i32 %381)
  store i32 %380, ptr %offset95.i, align 4
  %382 = ptrtoint ptr %data_sn77.i to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load i32, ptr %data_sn77.i, align 4
  %data_sn97.i = getelementptr inbounds %struct.iscsi_datain, ptr %datain, i32 0, i32 1
  %384 = ptrtoint ptr %data_sn97.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 %383, ptr %data_sn97.i, align 4
  %385 = ptrtoint ptr %recovery.i171 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %recovery.i171, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %386)
  %tobool99.not.i = icmp eq i32 %386, 0
  br i1 %tobool99.not.i, label %if.then100.i, label %if.end113.i

if.then100.i:                                     ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %375)
  %tobool103.not.i221 = icmp sgt i8 %375, -1
  br i1 %tobool103.not.i221, label %if.then100.i.if.end106.i_crit_edge, label %if.then104.i223

if.then100.i.if.end106.i_crit_edge:               ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end106.i

if.then104.i223:                                  ; preds = %if.then100.i
  call void @__sanitizer_cov_trace_pc() #5
  %last_datasn.i222 = getelementptr inbounds %struct.iscsi_seq, ptr %call26.i196, i32 0, i32 5
  %387 = ptrtoint ptr %last_datasn.i222 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 %383, ptr %last_datasn.i222, align 4
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then104.i223, %if.then100.i.if.end106.i_crit_edge
  %388 = ptrtoint ptr %datain to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %datain, align 128
  %390 = and i8 %389, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %390)
  %tobool110.not.i = icmp eq i8 %390, 0
  br i1 %tobool110.not.i, label %if.end106.i.cleanup_crit_edge, label %if.then111.i

if.end106.i.cleanup_crit_edge:                    ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then111.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #5
  %391 = ptrtoint ptr %add.ptr.i.i168 to i32
  call void @__asan_store4_noabort(i32 %391)
  store i32 1, ptr %add.ptr.i.i168, align 128
  br label %cleanup

if.end113.i:                                      ; preds = %if.end66.i
  %runlength.i224 = getelementptr i8, ptr %312, i32 -28
  %392 = ptrtoint ptr %runlength.i224 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %runlength.i224, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %393)
  %tobool114.not.i225 = icmp eq i32 %393, 0
  br i1 %tobool114.not.i225, label %if.then115.i226, label %if.else127.i

if.then115.i226:                                  ; preds = %if.end113.i
  %394 = and i8 %375, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %394)
  %tobool119.not.i = icmp eq i8 %394, 0
  br i1 %tobool119.not.i, label %if.then115.i226.cleanup_crit_edge, label %if.then120.i

if.then115.i226.cleanup_crit_edge:                ; preds = %if.then115.i226
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then120.i:                                     ; preds = %if.then115.i226
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %386)
  %cmp122.i = icmp eq i32 %386, 1
  %cond124.i = select i1 %cmp122.i, i32 2, i32 3
  %395 = ptrtoint ptr %add.ptr.i.i168 to i32
  call void @__asan_store4_noabort(i32 %395)
  store i32 %cond124.i, ptr %add.ptr.i.i168, align 128
  br label %cleanup

if.else127.i:                                     ; preds = %if.end113.i
  %begrun.i227 = getelementptr i8, ptr %312, i32 -32
  %396 = ptrtoint ptr %begrun.i227 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load i32, ptr %begrun.i227, align 4
  %add129.i = add i32 %397, %393
  %398 = ptrtoint ptr %data_sn73.i to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %data_sn73.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add129.i, i32 %399)
  %cmp131.i = icmp eq i32 %add129.i, %399
  br i1 %cmp131.i, label %if.then133.i, label %if.else127.i.cleanup_crit_edge

if.else127.i.cleanup_crit_edge:                   ; preds = %if.else127.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then133.i:                                     ; preds = %if.else127.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %386)
  %cmp135.i = icmp eq i32 %386, 1
  %cond137.i = select i1 %cmp135.i, i32 2, i32 3
  %400 = ptrtoint ptr %add.ptr.i.i168 to i32
  call void @__asan_store4_noabort(i32 %400)
  store i32 %cond137.i, ptr %add.ptr.i.i168, align 128
  br label %cleanup

cleanup:                                          ; preds = %if.then133.i, %if.else127.i.cleanup_crit_edge, %if.then120.i, %if.then115.i226.cleanup_crit_edge, %if.then111.i, %if.end106.i.cleanup_crit_edge, %if.end35.i207.cleanup_crit_edge, %if.end25.i198.cleanup_crit_edge, %do.end.i195, %if.then4.i179.cleanup_crit_edge, %iscsit_get_datain_req.exit.i170.cleanup_crit_edge, %iscsit_get_datain_req.exit.thread.i167, %land.lhs.true36.cleanup_crit_edge, %if.then128.i, %if.else122.i.cleanup_crit_edge, %if.then115.i, %if.then110.i.cleanup_crit_edge, %if.then106.i, %if.then102.i.cleanup_crit_edge, %if.end25.i141.cleanup_crit_edge, %do.end.i138, %if.then4.i122.cleanup_crit_edge, %iscsit_get_datain_req.exit.i113.cleanup_crit_edge, %iscsit_get_datain_req.exit.thread.i110, %land.lhs.true24.cleanup_crit_edge, %if.then179.i, %if.else173.i.cleanup_crit_edge, %if.then166.i, %if.then161.i.cleanup_crit_edge, %if.then157.i, %if.end152.i.cleanup_crit_edge, %if.end25.i90.cleanup_crit_edge, %do.end.i89, %if.then4.i77.cleanup_crit_edge, %iscsit_get_datain_req.exit.i68.cleanup_crit_edge, %iscsit_get_datain_req.exit.thread.i65, %if.then130.i, %if.else124.i.cleanup_crit_edge, %if.then117.i, %if.then112.i.cleanup_crit_edge, %if.then108.i, %if.then104.i.cleanup_crit_edge, %do.end.i, %if.then4.i.cleanup_crit_edge, %iscsit_get_datain_req.exit.i.cleanup_crit_edge, %iscsit_get_datain_req.exit.thread.i
  %retval.0 = phi ptr [ null, %land.lhs.true36.cleanup_crit_edge ], [ null, %do.end.i ], [ null, %iscsit_get_datain_req.exit.i.cleanup_crit_edge ], [ null, %if.then4.i.cleanup_crit_edge ], [ %add.ptr.i.i, %if.then108.i ], [ %add.ptr.i.i, %if.then104.i.cleanup_crit_edge ], [ %add.ptr.i.i, %if.else124.i.cleanup_crit_edge ], [ %add.ptr.i.i, %if.then130.i ], [ %add.ptr.i.i, %if.then112.i.cleanup_crit_edge ], [ %add.ptr.i.i, %if.then117.i ], [ null, %iscsit_get_datain_req.exit.thread.i ], [ null, %do.end.i89 ], [ null, %iscsit_get_datain_req.exit.i68.cleanup_crit_edge ], [ null, %if.then4.i77.cleanup_crit_edge ], [ null, %if.end25.i90.cleanup_crit_edge ], [ %add.ptr.i.i66, %if.then157.i ], [ %add.ptr.i.i66, %if.end152.i.cleanup_crit_edge ], [ %add.ptr.i.i66, %if.else173.i.cleanup_crit_edge ], [ %add.ptr.i.i66, %if.then179.i ], [ %add.ptr.i.i66, %if.then161.i.cleanup_crit_edge ], [ %add.ptr.i.i66, %if.then166.i ], [ null, %iscsit_get_datain_req.exit.thread.i65 ], [ %add.ptr.i.i111, %do.end.i138 ], [ null, %iscsit_get_datain_req.exit.i113.cleanup_crit_edge ], [ null, %if.then4.i122.cleanup_crit_edge ], [ %add.ptr.i.i111, %if.end25.i141.cleanup_crit_edge ], [ %add.ptr.i.i111, %if.then106.i ], [ %add.ptr.i.i111, %if.then102.i.cleanup_crit_edge ], [ %add.ptr.i.i111, %if.else122.i.cleanup_crit_edge ], [ %add.ptr.i.i111, %if.then128.i ], [ %add.ptr.i.i111, %if.then110.i.cleanup_crit_edge ], [ %add.ptr.i.i111, %if.then115.i ], [ null, %iscsit_get_datain_req.exit.thread.i110 ], [ null, %land.lhs.true24.cleanup_crit_edge ], [ null, %do.end.i195 ], [ null, %iscsit_get_datain_req.exit.i170.cleanup_crit_edge ], [ null, %if.then4.i179.cleanup_crit_edge ], [ null, %if.end25.i198.cleanup_crit_edge ], [ null, %if.end35.i207.cleanup_crit_edge ], [ %add.ptr.i.i168, %if.then111.i ], [ %add.ptr.i.i168, %if.end106.i.cleanup_crit_edge ], [ %add.ptr.i.i168, %if.else127.i.cleanup_crit_edge ], [ %add.ptr.i.i168, %if.then133.i ], [ %add.ptr.i.i168, %if.then115.i226.cleanup_crit_edge ], [ %add.ptr.i.i168, %if.then120.i ], [ null, %iscsit_get_datain_req.exit.thread.i167 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_create_recovery_datain_values_datasequenceinorder_yes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsit_create_recovery_datain_values_datasequenceinorder_no(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_get_seq_holder_for_datain(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iscsit_get_pdu_holder_for_seq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/target/iscsi/iscsi_target_datain_values.c", i32 26, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @iscsit_allocate_datain_req._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @iscsit_allocate_datain_req._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/target/iscsi/iscsi_target_datain_values.c", i32 66, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @iscsit_get_datain_req._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @iscsit_get_datain_req._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @__ksymtab_iscsit_get_datain_values, !12, !"__ksymtab_iscsit_get_datain_values", i1 false, i1 false}
!12 = !{!"../drivers/target/iscsi/iscsi_target_datain_values.c", i32 519, i32 1}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/target/iscsi/iscsi_target_datain_values.c", i32 105, i32 3}
!15 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @iscsit_set_datain_values_yes_and_yes._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @iscsit_set_datain_values_yes_and_yes._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/target/iscsi/iscsi_target_datain_values.c", i32 204, i32 3}
!20 = !{ptr @iscsit_set_datain_values_no_and_yes._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @iscsit_set_datain_values_no_and_yes._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/target/iscsi/iscsi_target_datain_values.c", i32 325, i32 3}
!24 = !{ptr @iscsit_set_datain_values_yes_and_no._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @iscsit_set_datain_values_yes_and_no._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/target/iscsi/iscsi_target_datain_values.c", i32 425, i32 3}
!28 = !{ptr @iscsit_set_datain_values_no_and_no._entry, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @iscsit_set_datain_values_no_and_no._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
