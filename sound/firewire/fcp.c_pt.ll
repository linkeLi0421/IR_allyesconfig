; ModuleID = '/llk/IR_all_yes/sound/firewire/fcp.c_pt.bc'
source_filename = "../sound/firewire/fcp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+avc_general_set_sig_fmt\22, \22a\22\09"
module asm "\09.weak\09__crc_avc_general_set_sig_fmt\09\09\09\09"
module asm "\09.long\09__crc_avc_general_set_sig_fmt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_avc_general_set_sig_fmt:\09\09\09\09\09"
module asm "\09.asciz \09\22avc_general_set_sig_fmt\22\09\09\09\09\09"
module asm "__kstrtabns_avc_general_set_sig_fmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+avc_general_get_sig_fmt\22, \22a\22\09"
module asm "\09.weak\09__crc_avc_general_get_sig_fmt\09\09\09\09"
module asm "\09.long\09__crc_avc_general_get_sig_fmt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_avc_general_get_sig_fmt:\09\09\09\09\09"
module asm "\09.asciz \09\22avc_general_get_sig_fmt\22\09\09\09\09\09"
module asm "__kstrtabns_avc_general_get_sig_fmt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+avc_general_get_plug_info\22, \22a\22\09"
module asm "\09.weak\09__crc_avc_general_get_plug_info\09\09\09\09"
module asm "\09.long\09__crc_avc_general_get_plug_info\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_avc_general_get_plug_info:\09\09\09\09\09"
module asm "\09.asciz \09\22avc_general_get_plug_info\22\09\09\09\09\09"
module asm "__kstrtabns_avc_general_get_plug_info:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fcp_avc_transaction\22, \22a\22\09"
module asm "\09.weak\09__crc_fcp_avc_transaction\09\09\09\09"
module asm "\09.long\09__crc_fcp_avc_transaction\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fcp_avc_transaction:\09\09\09\09\09"
module asm "\09.asciz \09\22fcp_avc_transaction\22\09\09\09\09\09"
module asm "__kstrtabns_fcp_avc_transaction:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fcp_bus_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_fcp_bus_reset\09\09\09\09"
module asm "\09.long\09__crc_fcp_bus_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fcp_bus_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22fcp_bus_reset\22\09\09\09\09\09"
module asm "__kstrtabns_fcp_bus_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.fw_address_region = type { i64, i64 }
%struct.fcp_transaction = type { %struct.list_head, ptr, ptr, i32, i32, i32, %struct.wait_queue_head, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }

@amdtp_rate_table = external dso_local local_unnamed_addr constant [7 x i32], align 4
@__kstrtab_avc_general_set_sig_fmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_avc_general_set_sig_fmt = external dso_local constant [0 x i8], align 1
@__ksymtab_avc_general_set_sig_fmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @avc_general_set_sig_fmt to i32), ptr @__kstrtab_avc_general_set_sig_fmt, ptr @__kstrtabns_avc_general_set_sig_fmt }, section "___ksymtab+avc_general_set_sig_fmt", align 4
@__kstrtab_avc_general_get_sig_fmt = external dso_local constant [0 x i8], align 1
@__kstrtabns_avc_general_get_sig_fmt = external dso_local constant [0 x i8], align 1
@__ksymtab_avc_general_get_sig_fmt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @avc_general_get_sig_fmt to i32), ptr @__kstrtab_avc_general_get_sig_fmt, ptr @__kstrtabns_avc_general_get_sig_fmt }, section "___ksymtab+avc_general_get_sig_fmt", align 4
@__kstrtab_avc_general_get_plug_info = external dso_local constant [0 x i8], align 1
@__kstrtabns_avc_general_get_plug_info = external dso_local constant [0 x i8], align 1
@__ksymtab_avc_general_get_plug_info = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @avc_general_get_plug_info to i32), ptr @__kstrtab_avc_general_get_plug_info, ptr @__kstrtabns_avc_general_get_plug_info }, section "___ksymtab+avc_general_get_plug_info", align 4
@fcp_avc_transaction.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"&t.wait\00", [24 x i8] zeroinitializer }, align 32
@transactions_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@transactions = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @transactions, ptr @transactions }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sound/firewire/fcp.c\00", [43 x i8] zeroinitializer }, align 32
@fcp_avc_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FCP command timed out\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fcp_avc_transaction\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fcp_avc_transaction._entry_ptr = internal global ptr @fcp_avc_transaction._entry, section ".printk_index", align 4
@__kstrtab_fcp_avc_transaction = external dso_local constant [0 x i8], align 1
@__kstrtabns_fcp_avc_transaction = external dso_local constant [0 x i8], align 1
@__ksymtab_fcp_avc_transaction = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fcp_avc_transaction to i32), ptr @__kstrtab_fcp_avc_transaction, ptr @__kstrtabns_fcp_avc_transaction }, section "___ksymtab+fcp_avc_transaction", align 4
@__kstrtab_fcp_bus_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_fcp_bus_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_fcp_bus_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fcp_bus_reset to i32), ptr @__kstrtab_fcp_bus_reset, ptr @__kstrtabns_fcp_bus_reset }, section "___ksymtab+fcp_bus_reset", align 4
@response_register_handler = internal global { %struct.fw_address_handler, [32 x i8] } { %struct.fw_address_handler { i64 0, i64 512, ptr @fcp_response, ptr null, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_snd_firewire_lib__237_402_fcp_module_init6 = internal global ptr @fcp_module_init, section ".initcall6.init", align 4
@__exitcall_fcp_module_exit = internal global ptr @fcp_module_exit, section ".exitcall.exit", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"transactions_lock\00", [46 x i8] zeroinitializer }, align 32
@fcp_module_init.response_register_region = internal constant { %struct.fw_address_region, [16 x i8] } { %struct.fw_address_region { i64 281474708278528, i64 281474708279040 }, [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 10]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 10, i64 11]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@___asan_gen_.12 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 242, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"transactions_lock\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"transactions\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 187, i32 8 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 260, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 279, i32 4 }
@___asan_gen_.42 = private unnamed_addr constant [26 x i8] c"response_register_handler\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 378, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 186, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant [25 x i8] c"response_register_region\00", align 1
@___asan_gen_.49 = private constant [24 x i8] c"../sound/firewire/fcp.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 385, i32 40 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__exitcall_fcp_module_exit, ptr @__initcall__kmod_snd_firewire_lib__237_402_fcp_module_init6, ptr @__ksymtab_avc_general_get_plug_info, ptr @__ksymtab_avc_general_get_sig_fmt, ptr @__ksymtab_avc_general_set_sig_fmt, ptr @__ksymtab_fcp_avc_transaction, ptr @__ksymtab_fcp_bus_reset, ptr @fcp_avc_transaction._entry, ptr @fcp_avc_transaction._entry_ptr, ptr @fcp_module_exit, ptr @fcp_avc_transaction.__key, ptr @.str, ptr @transactions_lock, ptr @transactions, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @response_register_handler, ptr @.str.6, ptr @fcp_module_init.response_register_region], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcp_avc_transaction.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transactions_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transactions to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcp_avc_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @response_register_handler to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcp_module_init.response_register_region to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_general_set_sig_fmt(ptr noundef %unit, i32 noundef %rate, i32 noundef %dir, i16 noundef zeroext %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @amdtp_rate_table to i32))
  %0 = load i32, ptr @amdtp_rate_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %rate)
  %cmp1 = icmp eq i32 %0, %rate
  br i1 %cmp1, label %entry.if.end3_crit_edge, label %for.inc

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.inc:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 1) to i32))
  %1 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp1.1 = icmp eq i32 %1, %rate
  br i1 %cmp1.1, label %for.inc.if.end3_crit_edge, label %for.inc.1

for.inc.if.end3_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.inc.1:                                        ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 2) to i32))
  %2 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %rate)
  %cmp1.2 = icmp eq i32 %2, %rate
  br i1 %cmp1.2, label %for.inc.1.if.end3_crit_edge, label %for.inc.2

for.inc.1.if.end3_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.inc.2:                                        ; preds = %for.inc.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 3) to i32))
  %3 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rate)
  %cmp1.3 = icmp eq i32 %3, %rate
  br i1 %cmp1.3, label %for.inc.2.if.end3_crit_edge, label %for.inc.3

for.inc.2.if.end3_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.inc.3:                                        ; preds = %for.inc.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 4) to i32))
  %4 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %rate)
  %cmp1.4 = icmp eq i32 %4, %rate
  br i1 %cmp1.4, label %for.inc.3.if.end3_crit_edge, label %for.inc.4

for.inc.3.if.end3_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.inc.4:                                        ; preds = %for.inc.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 5) to i32))
  %5 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp1.5 = icmp eq i32 %5, %rate
  br i1 %cmp1.5, label %for.inc.4.if.end3_crit_edge, label %for.inc.5

for.inc.4.if.end3_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

for.inc.5:                                        ; preds = %for.inc.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 6) to i32))
  %6 = load i32, ptr getelementptr inbounds ([7 x i32], ptr @amdtp_rate_table, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %rate)
  %cmp1.6 = icmp eq i32 %6, %rate
  br i1 %cmp1.6, label %for.inc.5.if.end3_crit_edge, label %for.inc.5.cleanup_crit_edge

for.inc.5.cleanup_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.5.if.end3_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end3:                                          ; preds = %for.inc.5.if.end3_crit_edge, %for.inc.4.if.end3_crit_edge, %for.inc.3.if.end3_crit_edge, %for.inc.2.if.end3_crit_edge, %for.inc.1.if.end3_crit_edge, %for.inc.if.end3_crit_edge, %entry.if.end3_crit_edge
  %sfc.074.lcssa = phi i8 [ 0, %entry.if.end3_crit_edge ], [ 1, %for.inc.if.end3_crit_edge ], [ 2, %for.inc.1.if.end3_crit_edge ], [ 3, %for.inc.2.if.end3_crit_edge ], [ 4, %for.inc.3.if.end3_crit_edge ], [ 5, %for.inc.4.if.end3_crit_edge ], [ 6, %for.inc.5.if.end3_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 8) #10
  %cmp4 = icmp eq ptr %call7.i.i, null
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %call7.i.i, align 8
  %arrayidx8 = getelementptr i8, ptr %call7.i.i, i32 1
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %arrayidx8, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp9 = icmp eq i32 %dir, 0
  %spec.select = select i1 %cmp9, i8 25, i8 24
  %10 = getelementptr i8, ptr %call7.i.i, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %10, align 2
  %conv14 = trunc i16 %pid to i8
  %arrayidx15 = getelementptr i8, ptr %call7.i.i, i32 3
  %12 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv14, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr i8, ptr %call7.i.i, i32 4
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -112, ptr %arrayidx16, align 4
  %arrayidx19 = getelementptr i8, ptr %call7.i.i, i32 5
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %sfc.074.lcssa, ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr i8, ptr %call7.i.i, i32 6
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %arrayidx20, align 2
  %arrayidx21 = getelementptr i8, ptr %call7.i.i, i32 7
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %arrayidx21, align 1
  %call22 = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef nonnull %call7.i.i, i32 noundef 8, ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 62)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end6.if.end45_crit_edge, label %if.else26

if.end6.if.end45_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.else26:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call22)
  %cmp27 = icmp ult i32 %call22, 8
  br i1 %cmp27, label %if.else26.if.end45_crit_edge, label %if.else30

if.else26.if.end45_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.else30:                                        ; preds = %if.else26
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %call7.i.i, align 8
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i8 %18, label %if.end45.fold.split [
    i8 8, label %if.else30.if.end45_crit_edge
    i8 10, label %if.then41
  ]

if.else30.if.end45_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then41:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.end45.fold.split:                              ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.end45:                                         ; preds = %if.end45.fold.split, %if.then41, %if.else30.if.end45_crit_edge, %if.else26.if.end45_crit_edge, %if.end6.if.end45_crit_edge
  %err.0 = phi i32 [ %call22, %if.end6.if.end45_crit_edge ], [ -22, %if.then41 ], [ -5, %if.else26.if.end45_crit_edge ], [ -38, %if.else30.if.end45_crit_edge ], [ %call22, %if.end45.fold.split ]
  %20 = tail call i32 @llvm.smin.i32(i32 %err.0, i32 0)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end3.cleanup_crit_edge, %for.inc.5.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.end45 ], [ -12, %if.end3.cleanup_crit_edge ], [ -22, %for.inc.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef %command, i32 noundef %command_size, ptr noundef %response, i32 noundef %response_size, i32 noundef %response_match_bytes) #0 align 64 {
entry:
  %t = alloca %struct.fcp_transaction, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 84, ptr nonnull %t) #7
  %0 = call ptr @memset(ptr %t, i32 255, i32 84)
  %unit1 = getelementptr inbounds %struct.fcp_transaction, ptr %t, i32 0, i32 1
  %1 = ptrtoint ptr %unit1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %unit, ptr %unit1, align 4
  %response_buffer = getelementptr inbounds %struct.fcp_transaction, ptr %t, i32 0, i32 2
  %2 = ptrtoint ptr %response_buffer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %response, ptr %response_buffer, align 4
  %response_size2 = getelementptr inbounds %struct.fcp_transaction, ptr %t, i32 0, i32 3
  %3 = ptrtoint ptr %response_size2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %response_size, ptr %response_size2, align 4
  %response_match_bytes3 = getelementptr inbounds %struct.fcp_transaction, ptr %t, i32 0, i32 4
  %4 = ptrtoint ptr %response_match_bytes3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %response_match_bytes, ptr %response_match_bytes3, align 4
  %state = getelementptr inbounds %struct.fcp_transaction, ptr %t, i32 0, i32 5
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %state, align 4
  %wait = getelementptr inbounds %struct.fcp_transaction, ptr %t, i32 0, i32 6
  call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str, ptr noundef nonnull @fcp_avc_transaction.__key) #7
  %6 = ptrtoint ptr %command to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %command, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %7, label %entry.if.end_crit_edge [
    i8 0, label %entry.if.then_crit_edge
    i8 3, label %entry.if.then_crit_edge125
  ]

entry.if.then_crit_edge125:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge125
  %deferrable = getelementptr inbounds %struct.fcp_transaction, ptr %t, i32 0, i32 7
  %9 = ptrtoint ptr %deferrable to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %deferrable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef nonnull @transactions_lock) #7
  %10 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @transactions, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %t, ptr noundef %10, ptr noundef nonnull @transactions) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %t, ptr getelementptr inbounds (%struct.list_head, ptr @transactions, i32 0, i32 1), align 4
  %11 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @transactions, ptr %t, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %t, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %t, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @transactions_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %command_size)
  %cmp8 = icmp ne i32 %command_size, 4
  %cond = zext i1 %cmp8 to i32
  %14 = ptrtoint ptr %unit1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unit1, align 4
  %call122 = call i32 @snd_fw_transaction(ptr noundef %15, i32 noundef %cond, i64 noundef 281474708278016, ptr noundef %command, i32 noundef %command_size, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %cmp11123 = icmp slt i32 %call122, 0
  br i1 %cmp11123, label %list_add_tail.exit.for.end93_crit_edge, label %list_add_tail.exit.deferred.preheader_crit_edge

list_add_tail.exit.deferred.preheader_crit_edge:  ; preds = %list_add_tail.exit
  br label %deferred.preheader

list_add_tail.exit.for.end93_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93

deferred.preheader:                               ; preds = %if.end92.deferred.preheader_crit_edge, %list_add_tail.exit.deferred.preheader_crit_edge
  %tries.0124 = phi i32 [ %tries.1, %if.end92.deferred.preheader_crit_edge ], [ 0, %list_add_tail.exit.deferred.preheader_crit_edge ]
  br label %deferred

deferred:                                         ; preds = %if.then69, %deferred.preheader
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 261) #7
  %16 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp23.not = icmp eq i32 %17, 0
  br i1 %cmp23.not, label %if.then33, label %deferred.if.end64_crit_edge

deferred.if.end64_crit_edge:                      ; preds = %deferred
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.then33:                                        ; preds = %deferred
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %18 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %call38118 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp41.not119.not = icmp eq i32 %20, 0
  br i1 %cmp41.not119.not, label %if.then33.cleanup_crit_edge, label %if.then33.for.end_crit_edge

if.then33.for.end_crit_edge:                      ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then33.cleanup_crit_edge:                      ; preds = %if.then33
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then33.cleanup_crit_edge
  %__ret34.1121 = phi i32 [ %__ret34.1, %cleanup.cleanup_crit_edge ], [ 13, %if.then33.cleanup_crit_edge ]
  %call61 = call i32 @schedule_timeout(i32 noundef %__ret34.1121) #7
  %call38 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp41.not = icmp eq i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool47.not = icmp eq i32 %call61, 0
  %spec.store.select99 = select i1 %tobool47.not, i32 1, i32 %call61
  %__ret34.1 = select i1 %cmp41.not, i32 %call61, i32 %spec.store.select99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret34.1)
  %tobool54.not = icmp eq i32 %__ret34.1, 0
  %not.cmp41.not = xor i1 %cmp41.not, true
  %23 = select i1 %not.cmp41.not, i1 true, i1 %tobool54.not
  br i1 %23, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then33.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %state, align 4
  br label %if.end64

if.end64:                                         ; preds = %for.end, %deferred.if.end64_crit_edge
  %25 = phi i32 [ %.pr, %for.end ], [ %17, %deferred.if.end64_crit_edge ]
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %25, label %if.else81 [
    i32 3, label %if.then69
    i32 2, label %if.then74
    i32 1, label %if.then80
  ]

if.then69:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %state, align 4
  br label %deferred

if.then74:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %response_size2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %response_size2, align 4
  br label %for.end93

if.then80:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  call void @msleep(i32 noundef 5) #7
  br label %if.end92

if.else81:                                        ; preds = %if.end64
  %inc = add i32 %tries.0124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc)
  %cmp82 = icmp sgt i32 %inc, 2
  br i1 %cmp82, label %do.end87, label %if.else81.if.end92_crit_edge

if.else81.if.end92_crit_edge:                     ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

do.end87:                                         ; preds = %if.else81
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %unit1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %unit1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.2) #11
  br label %for.end93

if.end92:                                         ; preds = %if.else81.if.end92_crit_edge, %if.then80
  %tries.1 = phi i32 [ %tries.0124, %if.then80 ], [ %inc, %if.else81.if.end92_crit_edge ]
  %32 = ptrtoint ptr %unit1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %unit1, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %33, i32 noundef %cond, i64 noundef 281474708278016, ptr noundef %command, i32 noundef %command_size, i32 noundef 0) #7
  %cmp11 = icmp slt i32 %call, 0
  br i1 %cmp11, label %if.end92.for.end93_crit_edge, label %if.end92.deferred.preheader_crit_edge

if.end92.deferred.preheader_crit_edge:            ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %deferred.preheader

if.end92.for.end93_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end93

for.end93:                                        ; preds = %if.end92.for.end93_crit_edge, %do.end87, %if.then74, %list_add_tail.exit.for.end93_crit_edge
  %ret.0 = phi i32 [ %29, %if.then74 ], [ -5, %do.end87 ], [ %call122, %list_add_tail.exit.for.end93_crit_edge ], [ %call, %if.end92.for.end93_crit_edge ]
  call void @_raw_spin_lock_irq(ptr noundef nonnull @transactions_lock) #7
  %call.i.i111 = call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %t) #7
  br i1 %call.i.i111, label %if.end.i.i112, label %for.end93.list_del.exit_crit_edge

for.end93.list_del.exit_crit_edge:                ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i112:                                    ; preds = %for.end93
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %t, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %t to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %t, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i112, %for.end93.list_del.exit_crit_edge
  %40 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %t, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %t, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @transactions_lock) #7
  call void @llvm.lifetime.end.p0(i64 84, ptr nonnull %t) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_general_get_sig_fmt(ptr noundef %unit, ptr nocapture noundef writeonly %rate, i32 noundef %dir, i16 noundef zeroext %pid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %call7.i.i, align 8
  %arrayidx1 = getelementptr i8, ptr %call7.i.i, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp2 = icmp eq i32 %dir, 0
  %spec.select = select i1 %cmp2, i8 25, i8 24
  %3 = getelementptr i8, ptr %call7.i.i, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %spec.select, ptr %3, align 2
  %conv7 = trunc i16 %pid to i8
  %arrayidx8 = getelementptr i8, ptr %call7.i.i, i32 3
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv7, ptr %arrayidx8, align 1
  %arrayidx9 = getelementptr i8, ptr %call7.i.i, i32 4
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -112, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr i8, ptr %call7.i.i, i32 5
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr i8, ptr %call7.i.i, i32 6
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %arrayidx11, align 2
  %arrayidx12 = getelementptr i8, ptr %call7.i.i, i32 7
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %arrayidx12, align 1
  %call13 = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef nonnull %call7.i.i, i32 noundef 8, ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end.end_crit_edge, label %if.else17

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.else17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call13)
  %cmp18 = icmp ult i32 %call13, 8
  br i1 %cmp18, label %if.else17.end_crit_edge, label %if.else21

if.else17.end_crit_edge:                          ; preds = %if.else17
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.else21:                                        ; preds = %if.else17
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %call7.i.i, align 8
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %11, label %if.end47 [
    i8 8, label %if.else21.end_crit_edge
    i8 10, label %if.then32
    i8 11, label %if.then38
  ]

if.else21.end_crit_edge:                          ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.then32:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.then38:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end47:                                         ; preds = %if.else21
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx10, align 1
  %15 = and i8 %14, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %15)
  %cmp51 = icmp eq i8 %15, 7
  br i1 %cmp51, label %if.end47.end_crit_edge, label %if.end54

if.end47.end_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %and50 = zext i8 %15 to i32
  %arrayidx55 = getelementptr [7 x i32], ptr @amdtp_rate_table, i32 0, i32 %and50
  %16 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx55, align 4
  %18 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rate, align 4
  br label %end

end:                                              ; preds = %if.end54, %if.end47.end_crit_edge, %if.then38, %if.then32, %if.else21.end_crit_edge, %if.else17.end_crit_edge, %if.end.end_crit_edge
  %err.1 = phi i32 [ 0, %if.end54 ], [ -11, %if.end47.end_crit_edge ], [ -38, %if.else21.end_crit_edge ], [ -5, %if.else17.end_crit_edge ], [ -11, %if.then38 ], [ -22, %if.then32 ], [ %call13, %if.end.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @avc_general_get_plug_info(ptr noundef %unit, i32 noundef %subunit_type, i32 noundef %subunit_id, i32 noundef %subfunction, ptr nocapture noundef writeonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %subunit_type)
  %cmp = icmp eq i32 %subunit_type, 30
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %subunit_id)
  %cmp1 = icmp eq i32 %subunit_id, 5
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 8) #10
  %cmp2 = icmp eq ptr %call7.i.i, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %call7.i.i, align 8
  %and = shl i32 %subunit_type, 3
  %and5 = and i32 %subunit_id, 7
  %or = or i32 %and5, %and
  %conv = trunc i32 %or to i8
  %arrayidx6 = getelementptr i8, ptr %call7.i.i, i32 1
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr i8, ptr %call7.i.i, i32 2
  %3 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %arrayidx7, align 2
  %conv9 = trunc i32 %subfunction to i8
  %arrayidx10 = getelementptr i8, ptr %call7.i.i, i32 3
  %4 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv9, ptr %arrayidx10, align 1
  %call11 = tail call i32 @fcp_avc_transaction(ptr noundef %unit, ptr noundef nonnull %call7.i.i, i32 noundef 8, ptr noundef nonnull %call7.i.i, i32 noundef 8, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end4.end_crit_edge, label %if.else

if.end4.end_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call11)
  %cmp15 = icmp ult i32 %call11, 8
  br i1 %cmp15, label %if.else.end_crit_edge, label %if.else18

if.else.end_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.else18:                                        ; preds = %if.else
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call7.i.i, align 8
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %6, label %if.end44 [
    i8 8, label %if.else18.end_crit_edge
    i8 10, label %if.then29
    i8 11, label %if.then35
  ]

if.else18.end_crit_edge:                          ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.then29:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.then35:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  br label %end

if.end44:                                         ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx45 = getelementptr i8, ptr %call7.i.i, i32 4
  %8 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx45, align 4
  %10 = ptrtoint ptr %info to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %info, align 1
  %arrayidx47 = getelementptr i8, ptr %call7.i.i, i32 5
  %11 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx47, align 1
  %arrayidx48 = getelementptr i8, ptr %info, i32 1
  %13 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %arrayidx48, align 1
  %arrayidx49 = getelementptr i8, ptr %call7.i.i, i32 6
  %14 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx49, align 2
  %arrayidx50 = getelementptr i8, ptr %info, i32 2
  %16 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx50, align 1
  %arrayidx51 = getelementptr i8, ptr %call7.i.i, i32 7
  %17 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx51, align 1
  %arrayidx52 = getelementptr i8, ptr %info, i32 3
  %19 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %arrayidx52, align 1
  br label %end

end:                                              ; preds = %if.end44, %if.then35, %if.then29, %if.else18.end_crit_edge, %if.else.end_crit_edge, %if.end4.end_crit_edge
  %err.1 = phi i32 [ 0, %if.end44 ], [ -38, %if.else18.end_crit_edge ], [ -5, %if.else.end_crit_edge ], [ -11, %if.then35 ], [ -22, %if.then29 ], [ %call11, %if.end4.end_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %end ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fcp_bus_reset(ptr noundef readnone %unit) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @transactions_lock) #7
  %t.017 = load ptr, ptr @transactions, align 4
  %cmp.not18 = icmp eq ptr %t.017, @transactions
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %t.019 = phi ptr [ %t.0, %for.inc.for.body_crit_edge ], [ %t.017, %entry.for.body_crit_edge ]
  %unit1 = getelementptr inbounds %struct.fcp_transaction, ptr %t.019, i32 0, i32 1
  %0 = ptrtoint ptr %unit1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit1, align 4
  %cmp2 = icmp eq ptr %1, %unit
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %state = getelementptr inbounds %struct.fcp_transaction, ptr %t.019, i32 0, i32 5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %3, label %land.lhs.true.for.inc_crit_edge [
    i32 0, label %land.lhs.true.if.then_crit_edge
    i32 3, label %land.lhs.true.if.then_crit_edge20
  ]

land.lhs.true.if.then_crit_edge20:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge20
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %state, align 4
  %wait = getelementptr inbounds %struct.fcp_transaction, ptr %t.019, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %t.019 to i32
  call void @__asan_load4_noabort(i32 %6)
  %t.0 = load ptr, ptr %t.019, align 4
  %cmp.not = icmp eq ptr %t.0, @transactions
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @transactions_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fcp_module_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load volatile ptr, ptr @transactions, align 4
  %cmp.i.not = icmp eq ptr %0, @transactions
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end, !prof !44

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 398, i32 noundef 9, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @fw_core_remove_address_handler(ptr noundef nonnull @response_register_handler) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_address_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fcp_module_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fw_core_add_address_handler(ptr noundef nonnull @response_register_handler, ptr noundef nonnull @fcp_module_init.response_register_region) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fcp_response(ptr noundef readnone %card, ptr nocapture noundef readnone %request, i32 noundef %tcode, i32 noundef %destination, i32 noundef %source, i32 noundef %generation, i64 noundef %offset, ptr nocapture noundef readonly %data, i32 noundef %length, ptr nocapture noundef readnone %callback_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %length)
  %cmp = icmp eq i32 %length, 0
  br i1 %cmp, label %entry.cleanup56_crit_edge, label %lor.lhs.false

entry.cleanup56_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup56

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %1)
  %cmp1.not = icmp ult i8 %1, 16
  br i1 %cmp1.not, label %do.body3, label %lor.lhs.false.cleanup56_crit_edge

lor.lhs.false.cleanup56_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup56

do.body3:                                         ; preds = %lor.lhs.false
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @transactions_lock) #7
  %t.082 = load ptr, ptr @transactions, align 4
  %cmp10.not83 = icmp eq ptr %t.082, @transactions
  br i1 %cmp10.not83, label %do.body3.for.end_crit_edge, label %do.body3.for.body_crit_edge

do.body3.for.body_crit_edge:                      ; preds = %do.body3
  br label %for.body

do.body3.for.end_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.body3.for.body_crit_edge
  %t.084 = phi ptr [ %t.0, %cleanup.for.body_crit_edge ], [ %t.082, %do.body3.for.body_crit_edge ]
  %unit = getelementptr inbounds %struct.fcp_transaction, ptr %t.084, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %card13 = getelementptr i8, ptr %5, i32 -4
  %6 = ptrtoint ptr %card13 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card13, align 4
  %cmp14.not = icmp eq ptr %7, %card
  br i1 %cmp14.not, label %lor.lhs.false16, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false16:                                  ; preds = %for.body
  %generation17 = getelementptr i8, ptr %5, i32 -12
  %8 = ptrtoint ptr %generation17 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %generation17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %generation)
  %cmp18.not = icmp eq i32 %9, %generation
  br i1 %cmp18.not, label %do.end25, label %lor.lhs.false16.cleanup_crit_edge

lor.lhs.false16.cleanup_crit_edge:                ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end25:                                         ; preds = %lor.lhs.false16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !45
  %node_id = getelementptr i8, ptr %5, i32 -16
  %10 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node_id, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %source)
  %cmp28.not = icmp eq i32 %11, %source
  br i1 %cmp28.not, label %if.end31, label %do.end25.cleanup_crit_edge

do.end25.cleanup_crit_edge:                       ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end31:                                         ; preds = %do.end25
  %state = getelementptr inbounds %struct.fcp_transaction, ptr %t.084, i32 0, i32 5
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp32 = icmp eq i32 %13, 0
  br i1 %cmp32, label %land.lhs.true, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end31
  %response_buffer.i = getelementptr inbounds %struct.fcp_transaction, ptr %t.084, i32 0, i32 2
  %14 = ptrtoint ptr %response_buffer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %response_buffer.i, align 4
  %response_match_bytes.i = getelementptr inbounds %struct.fcp_transaction, ptr %t.084, i32 0, i32 4
  %16 = ptrtoint ptr %response_match_bytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %response_match_bytes.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end6.i.for.cond.i_crit_edge, %land.lhs.true
  %length.addr.0.i = phi i32 [ %length, %land.lhs.true ], [ %dec.i, %if.end6.i.for.cond.i_crit_edge ]
  %mask.0.i = phi i32 [ %17, %land.lhs.true ], [ %shr.i, %if.end6.i.for.cond.i_crit_edge ]
  %i.0.i = phi i32 [ 0, %land.lhs.true ], [ %inc.i, %if.end6.i.for.cond.i_crit_edge ]
  %and.i = and i32 %mask.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.cond.i.if.end.i_crit_edge, label %land.lhs.true.i

for.cond.i.if.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.cond.i
  %arrayidx.i = getelementptr i8, ptr %data, i32 %i.0.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %arrayidx1.i = getelementptr i8, ptr %15, i32 %i.0.i
  %20 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp.not.i = icmp eq i8 %19, %21
  br i1 %cmp.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.cond.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask.0.i)
  %tobool4.not.i = icmp ult i32 %mask.0.i, 2
  br i1 %tobool4.not.i, label %if.then36, label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i
  %shr.i = lshr i32 %mask.0.i, 1
  %dec.i = add i32 %length.addr.0.i, -1
  %cmp7.i = icmp eq i32 %dec.i, 0
  %inc.i = add nuw nsw i32 %i.0.i, 1
  br i1 %cmp7.i, label %if.end6.i.cleanup_crit_edge, label %if.end6.i.for.cond.i_crit_edge

if.end6.i.for.cond.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then36:                                        ; preds = %if.end.i
  %deferrable = getelementptr inbounds %struct.fcp_transaction, ptr %t.084, i32 0, i32 7
  %22 = ptrtoint ptr %deferrable to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %deferrable, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %if.then36.if.else_crit_edge, label %land.lhs.true38

if.then36.if.else_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true38:                                  ; preds = %if.then36
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %25)
  %cmp40 = icmp eq i8 %25, 15
  br i1 %cmp40, label %if.then42, label %land.lhs.true38.if.else_crit_edge

land.lhs.true38.if.else_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then42:                                        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %state, align 4
  br label %if.end50

if.else:                                          ; preds = %land.lhs.true38.if.else_crit_edge, %if.then36.if.else_crit_edge
  %27 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %state, align 4
  %response_size = getelementptr inbounds %struct.fcp_transaction, ptr %t.084, i32 0, i32 3
  %28 = ptrtoint ptr %response_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %response_size, align 4
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %length)
  %31 = ptrtoint ptr %response_size to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %response_size, align 4
  %32 = call ptr @memcpy(ptr %15, ptr %data, i32 %30)
  br label %if.end50

if.end50:                                         ; preds = %if.else, %if.then42
  %wait = getelementptr inbounds %struct.fcp_transaction, ptr %t.084, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %if.end6.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end25.cleanup_crit_edge, %lor.lhs.false16.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %33 = ptrtoint ptr %t.084 to i32
  call void @__asan_load4_noabort(i32 %33)
  %t.0 = load ptr, ptr %t.084, align 4
  %cmp10.not = icmp eq ptr %t.0, @transactions
  br i1 %cmp10.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %do.body3.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @transactions_lock, i32 noundef %call6) #7
  br label %cleanup56

cleanup56:                                        ; preds = %for.end, %lor.lhs.false.cleanup56_crit_edge, %entry.cleanup56_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_address_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !14, !15, !16, !17, !18, !20, !22, !24, !26, !28, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__ksymtab_avc_general_set_sig_fmt, !1, !"__ksymtab_avc_general_set_sig_fmt", i1 false, i1 false}
!1 = !{!"../sound/firewire/fcp.c", i32 82, i32 1}
!2 = !{ptr @__ksymtab_avc_general_get_sig_fmt, !3, !"__ksymtab_avc_general_get_sig_fmt", i1 false, i1 false}
!3 = !{!"../sound/firewire/fcp.c", i32 137, i32 1}
!4 = !{ptr @__ksymtab_avc_general_get_plug_info, !5, !"__ksymtab_avc_general_get_plug_info", i1 false, i1 false}
!5 = !{!"../sound/firewire/fcp.c", i32 184, i32 1}
!6 = !{ptr @fcp_avc_transaction.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../sound/firewire/fcp.c", i32 242, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/firewire/fcp.c", i32 260, i32 3}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/firewire/fcp.c", i32 279, i32 4}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @fcp_avc_transaction._entry, !12, !"_entry", i1 false, i1 false}
!17 = !{ptr @fcp_avc_transaction._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @__ksymtab_fcp_avc_transaction, !19, !"__ksymtab_fcp_avc_transaction", i1 false, i1 false}
!19 = !{!"../sound/firewire/fcp.c", i32 291, i32 1}
!20 = !{ptr @__ksymtab_fcp_bus_reset, !21, !"__ksymtab_fcp_bus_reset", i1 false, i1 false}
!21 = !{!"../sound/firewire/fcp.c", i32 316, i32 1}
!22 = !{ptr @__initcall__kmod_snd_firewire_lib__237_402_fcp_module_init6, !23, !"__initcall__kmod_snd_firewire_lib__237_402_fcp_module_init6", i1 false, i1 false}
!23 = !{!"../sound/firewire/fcp.c", i32 402, i32 1}
!24 = !{ptr @__exitcall_fcp_module_exit, !25, !"__exitcall_fcp_module_exit", i1 false, i1 false}
!25 = !{!"../sound/firewire/fcp.c", i32 403, i32 1}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/firewire/fcp.c", i32 186, i32 8}
!28 = !{ptr @transactions_lock, !27, !"transactions_lock", i1 false, i1 false}
!29 = !{ptr @transactions, !30, !"transactions", i1 false, i1 false}
!30 = !{!"../sound/firewire/fcp.c", i32 187, i32 8}
!31 = !{ptr @response_register_handler, !32, !"response_register_handler", i1 false, i1 false}
!32 = !{!"../sound/firewire/fcp.c", i32 378, i32 34}
!33 = !{ptr @fcp_module_init.response_register_region, !34, !"response_register_region", i1 false, i1 false}
!34 = !{!"../sound/firewire/fcp.c", i32 385, i32 40}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2154220546}
!46 = !{i8 0, i8 2}
