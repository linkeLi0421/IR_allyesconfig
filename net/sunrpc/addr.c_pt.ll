; ModuleID = '/llk/IR_all_yes/net/sunrpc/addr.c_pt.bc'
source_filename = "../net/sunrpc/addr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rpc_ntop\22, \22a\22\09"
module asm "\09.weak\09__crc_rpc_ntop\09\09\09\09"
module asm "\09.long\09__crc_rpc_ntop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_ntop:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_ntop\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_ntop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rpc_pton\22, \22a\22\09"
module asm "\09.weak\09__crc_rpc_pton\09\09\09\09"
module asm "\09.long\09__crc_rpc_pton\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_pton:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_pton\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_pton:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rpc_uaddr2sockaddr\22, \22a\22\09"
module asm "\09.weak\09__crc_rpc_uaddr2sockaddr\09\09\09\09"
module asm "\09.long\09__crc_rpc_uaddr2sockaddr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rpc_uaddr2sockaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22rpc_uaddr2sockaddr\22\09\09\09\09\09"
module asm "__kstrtabns_rpc_uaddr2sockaddr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sockaddr_in = type { i16, i16, %struct.in_addr, [8 x i8] }
%struct.in_addr = type { i32 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.108 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_rpc_ntop = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_ntop = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_ntop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_ntop to i32), ptr @__kstrtab_rpc_ntop, ptr @__kstrtabns_rpc_ntop }, section "___ksymtab_gpl+rpc_ntop", align 4
@__kstrtab_rpc_pton = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_pton = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_pton = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_pton to i32), ptr @__kstrtab_rpc_pton, ptr @__kstrtabns_rpc_pton }, section "___ksymtab_gpl+rpc_pton", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c".%u.%u\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_rpc_uaddr2sockaddr = external dso_local constant [0 x i8], align 1
@__kstrtabns_rpc_uaddr2sockaddr = external dso_local constant [0 x i8], align 1
@__ksymtab_rpc_uaddr2sockaddr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rpc_uaddr2sockaddr to i32), ptr @__kstrtab_rpc_uaddr2sockaddr, ptr @__kstrtabns_rpc_uaddr2sockaddr }, section "___ksymtab_gpl+rpc_uaddr2sockaddr", align 4
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%c%u\00", [27 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"::\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"::1\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"::ffff:%pI4\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pI6c\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 287, i32 8 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 117, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 83, i32 44 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 40, i32 32 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 48, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 57, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [21 x i8] c"../net/sunrpc/addr.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 63, i32 31 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__ksymtab_rpc_ntop, ptr @__ksymtab_rpc_pton, ptr @__ksymtab_rpc_uaddr2sockaddr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpc_ntop(ptr noundef %sap, ptr noundef %buf, i32 noundef %buflen) #0 align 64 {
entry:
  %scopebuf.i = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sap to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %sap, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.return_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %sap, i32 0, i32 2
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %buflen, ptr noundef nonnull @.str.1, ptr noundef %sin_addr.i) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %scopebuf.i) #9
  %3 = call ptr @memset(ptr %scopebuf.i, i32 255, i32 12)
  %call.i7 = tail call fastcc i32 @rpc_ntop6_noscopeid(ptr noundef %sap, ptr noundef %buf, i32 noundef %buflen) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %cmp.i = icmp eq i32 %call.i7, 0
  br i1 %cmp.i, label %sw.bb1.rpc_ntop6.exit_crit_edge, label %if.end.i, !prof !30

sw.bb1.rpc_ntop6.exit_crit_edge:                  ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_ntop6.exit

if.end.i:                                         ; preds = %sw.bb1
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 3
  %call.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %sin6_addr.i) #9
  %and.i = and i32 %call.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool3.not.i, label %if.end.i.rpc_ntop6.exit_crit_edge, label %if.end5.i

if.end.i.rpc_ntop6.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_ntop6.exit

if.end5.i:                                        ; preds = %if.end.i
  %sin6_scope_id.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 4
  %4 = ptrtoint ptr %sin6_scope_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sin6_scope_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6.i = icmp eq i32 %5, 0
  br i1 %cmp6.i, label %if.end5.i.rpc_ntop6.exit_crit_edge, label %if.end8.i

if.end5.i.rpc_ntop6.exit_crit_edge:               ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_ntop6.exit

if.end8.i:                                        ; preds = %if.end5.i
  %call10.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %scopebuf.i, i32 noundef 12, ptr noundef nonnull @.str.2, i32 noundef 37, i32 noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call10.i)
  %cmp11.i = icmp ugt i32 %call10.i, 11
  br i1 %cmp11.i, label %if.end8.i.rpc_ntop6.exit_crit_edge, label %if.end19.i, !prof !30

if.end8.i.rpc_ntop6.exit_crit_edge:               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_ntop6.exit

if.end19.i:                                       ; preds = %if.end8.i
  %add.i = add i32 %call10.i, %call.i7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %buflen)
  %cmp20.not.i = icmp ult i32 %add.i, %buflen
  br i1 %cmp20.not.i, label %if.end28.i, label %if.end19.i.rpc_ntop6.exit_crit_edge, !prof !31

if.end19.i.rpc_ntop6.exit_crit_edge:              ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_ntop6.exit

if.end28.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  %call30.i = call ptr @strcat(ptr noundef %buf, ptr noundef nonnull %scopebuf.i) #9
  br label %rpc_ntop6.exit

rpc_ntop6.exit:                                   ; preds = %if.end28.i, %if.end19.i.rpc_ntop6.exit_crit_edge, %if.end8.i.rpc_ntop6.exit_crit_edge, %if.end5.i.rpc_ntop6.exit_crit_edge, %if.end.i.rpc_ntop6.exit_crit_edge, %sw.bb1.rpc_ntop6.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.end28.i ], [ 0, %sw.bb1.rpc_ntop6.exit_crit_edge ], [ %call.i7, %if.end.i.rpc_ntop6.exit_crit_edge ], [ %call.i7, %if.end5.i.rpc_ntop6.exit_crit_edge ], [ 0, %if.end8.i.rpc_ntop6.exit_crit_edge ], [ 0, %if.end19.i.rpc_ntop6.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %scopebuf.i) #9
  br label %return

return:                                           ; preds = %rpc_ntop6.exit, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %rpc_ntop6.exit ], [ %call.i, %sw.bb ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpc_pton(ptr noundef %net, ptr noundef %buf, i32 noundef %buflen, ptr noundef %sap, i32 noundef %salen) #0 align 64 {
entry:
  %p.i.i = alloca [13 x i8], align 1
  %scope_id.i.i = alloca i32, align 4
  %delim.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buflen)
  %cmp20.not = icmp eq i32 %buflen, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %buflen
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.021
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %1)
  %cmp1 = icmp eq i8 %1, 58
  br i1 %cmp1, label %if.then, label %for.cond

if.then:                                          ; preds = %for.body
  %sin6_addr.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delim.i) #9
  %2 = ptrtoint ptr %delim.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %delim.i, align 4, !annotation !32
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %buflen)
  %cmp.i = icmp ugt i32 %buflen, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %salen)
  %cmp1.i = icmp ult i32 %salen, 28
  %or.cond.i = or i1 %cmp.i, %cmp1.i
  br i1 %or.cond.i, label %if.then.rpc_pton6.exit_crit_edge, label %if.end.i

if.then.rpc_pton6.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_pton6.exit

if.end.i:                                         ; preds = %if.then
  %3 = call ptr @memset(ptr %sap, i32 0, i32 28)
  %call.i = call i32 @in6_pton(ptr noundef %buf, i32 noundef %buflen, ptr noundef %sin6_addr.i, i32 noundef 37, ptr noundef nonnull %delim.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp eq i32 %call.i, 0
  br i1 %cmp2.i, label %if.end.i.rpc_pton6.exit_crit_edge, label %if.end4.i

if.end.i.rpc_pton6.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_pton6.exit

if.end4.i:                                        ; preds = %if.end.i
  %4 = ptrtoint ptr %delim.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %delim.i, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %p.i.i) #9
  %6 = call ptr @memset(ptr %p.i.i, i32 255, i32 13)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scope_id.i.i) #9
  %7 = ptrtoint ptr %scope_id.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %scope_id.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %buflen
  %cmp.i.i = icmp eq ptr %add.ptr.i.i, %5
  br i1 %cmp.i.i, label %if.end4.i.if.end7.i_crit_edge, label %if.end.i.i

if.end4.i.if.end7.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.end.i.i:                                       ; preds = %if.end4.i
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %9)
  %cmp1.not.i.i = icmp eq i8 %9, 37
  br i1 %cmp1.not.i.i, label %if.end4.i.i, label %if.end.i.i.rpc_parse_scope_id.exit.thread.i_crit_edge

if.end.i.i.rpc_parse_scope_id.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_parse_scope_id.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %call.i.i.i = call i32 @__ipv6_addr_type(ptr noundef %sin6_addr.i) #9
  %and.i.i = and i32 %call.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i.rpc_parse_scope_id.exit.thread.i_crit_edge, label %if.end6.i.i

if.end4.i.i.rpc_parse_scope_id.exit.thread.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_parse_scope_id.exit.thread.i

if.end6.i.i:                                      ; preds = %if.end4.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %5 to i32
  %10 = xor i32 %sub.ptr.rhs.cast.i.i, -1
  %sub.i.i = add i32 %10, %sub.ptr.lhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %sub.i.i)
  %cmp8.i.i = icmp ugt i32 %sub.i.i, 12
  br i1 %cmp8.i.i, label %if.end6.i.i.rpc_parse_scope_id.exit.thread.i_crit_edge, label %if.end11.i.i

if.end6.i.i.rpc_parse_scope_id.exit.thread.i_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_parse_scope_id.exit.thread.i

if.end11.i.i:                                     ; preds = %if.end6.i.i
  %add.ptr12.i.i = getelementptr i8, ptr %5, i32 1
  %11 = call ptr @memcpy(ptr %p.i.i, ptr %add.ptr12.i.i, i32 %sub.i.i)
  %arrayidx.i.i = getelementptr [13 x i8], ptr %p.i.i, i32 0, i32 %sub.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx.i.i, align 1
  %call14.i.i = call ptr @dev_get_by_name(ptr noundef %net, ptr noundef nonnull %p.i.i) #9
  %cmp15.not.i.i = icmp eq ptr %call14.i.i, null
  br i1 %cmp15.not.i.i, label %if.else.i.i, label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %if.end11.i.i
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %call14.i.i, i32 0, i32 17
  %13 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ifindex.i.i, align 4
  %15 = ptrtoint ptr %scope_id.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %scope_id.i.i, align 4
  %16 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !33
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %call14.i.i, i32 0, i32 118
  %17 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = call i32 @llvm.read_register.i32(metadata !20) #9
  %and.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %25, %19
  %26 = inttoptr i32 %add.i.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %add13.i.i.i = add i32 %28, -1
  store i32 %add13.i.i.i, ptr %26, align 4
  %29 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !34
  %and.i.i.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !30

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @warn_bogus_irq_restore() #9
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %16) #9, !srcloc !35
  br label %if.end24.i.i

if.else.i.i:                                      ; preds = %if.end11.i.i
  %call.i38.i.i = call i32 @kstrtouint(ptr noundef nonnull %p.i.i, i32 noundef 10, ptr noundef nonnull %scope_id.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i.i)
  %cmp20.not.i.i = icmp eq i32 %call.i38.i.i, 0
  br i1 %cmp20.not.i.i, label %if.else.i.i.if.end24.i.i_crit_edge, label %if.else.i.i.rpc_parse_scope_id.exit.thread.i_crit_edge

if.else.i.i.rpc_parse_scope_id.exit.thread.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpc_parse_scope_id.exit.thread.i

if.else.i.i.if.end24.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.else.i.i.if.end24.i.i_crit_edge, %dev_put.exit.i.i
  %30 = ptrtoint ptr %scope_id.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %scope_id.i.i, align 4
  %sin6_scope_id.i.i = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 4
  %32 = ptrtoint ptr %sin6_scope_id.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %sin6_scope_id.i.i, align 4
  br label %if.end7.i

rpc_parse_scope_id.exit.thread.i:                 ; preds = %if.else.i.i.rpc_parse_scope_id.exit.thread.i_crit_edge, %if.end6.i.i.rpc_parse_scope_id.exit.thread.i_crit_edge, %if.end4.i.i.rpc_parse_scope_id.exit.thread.i_crit_edge, %if.end.i.i.rpc_parse_scope_id.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scope_id.i.i) #9
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %p.i.i) #9
  br label %rpc_pton6.exit

if.end7.i:                                        ; preds = %if.end24.i.i, %if.end4.i.if.end7.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scope_id.i.i) #9
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %p.i.i) #9
  %33 = ptrtoint ptr %sap to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 10, ptr %sap, align 4
  br label %rpc_pton6.exit

rpc_pton6.exit:                                   ; preds = %if.end7.i, %rpc_parse_scope_id.exit.thread.i, %if.end.i.rpc_pton6.exit_crit_edge, %if.then.rpc_pton6.exit_crit_edge
  %retval.0.i = phi i32 [ 28, %if.end7.i ], [ 0, %if.then.rpc_pton6.exit_crit_edge ], [ 0, %if.end.i.rpc_pton6.exit_crit_edge ], [ 0, %rpc_parse_scope_id.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delim.i) #9
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %buflen)
  %cmp.i12 = icmp ugt i32 %buflen, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %salen)
  %cmp1.i13 = icmp ult i32 %salen, 16
  %or.cond.i14 = or i1 %cmp.i12, %cmp1.i13
  br i1 %or.cond.i14, label %for.end.cleanup_crit_edge, label %if.end.i17

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i17:                                       ; preds = %for.end
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %sap, i32 0, i32 2
  %34 = call ptr @memset(ptr %sap, i32 0, i32 16)
  %call.i15 = tail call i32 @in4_pton(ptr noundef %buf, i32 noundef %buflen, ptr noundef %sin_addr.i, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %cmp2.i16 = icmp eq i32 %call.i15, 0
  br i1 %cmp2.i16, label %if.end.i17.cleanup_crit_edge, label %if.end4.i18

if.end.i17.cleanup_crit_edge:                     ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4.i18:                                      ; preds = %if.end.i17
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %sap to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 2, ptr %sap, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i18, %if.end.i17.cleanup_crit_edge, %for.end.cleanup_crit_edge, %rpc_pton6.exit
  %retval.0 = phi i32 [ %retval.0.i, %rpc_pton6.exit ], [ 16, %if.end4.i18 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %if.end.i17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @rpc_sockaddr2uaddr(ptr noundef %sap, i32 noundef %gfp_flags) local_unnamed_addr #0 align 64 {
entry:
  %portbuf = alloca [9 x i8], align 1
  %addrbuf = alloca [57 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %portbuf) #9
  %0 = call ptr @memset(ptr %portbuf, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 57, ptr nonnull %addrbuf) #9
  %1 = call ptr @memset(ptr %addrbuf, i32 255, i32 57)
  %2 = ptrtoint ptr %sap to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sap, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %3, label %entry.cleanup_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %sin_addr.i = getelementptr inbounds %struct.sockaddr_in, ptr %sap, i32 0, i32 2
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %addrbuf, i32 noundef 57, ptr noundef nonnull @.str.1, ptr noundef %sin_addr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %sap, i32 0, i32 1
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %call4 = call fastcc i32 @rpc_ntop6_noscopeid(ptr noundef %sap, ptr noundef nonnull %addrbuf, i32 noundef 57)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %sw.bb2.cleanup_crit_edge, label %if.end8

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end8, %if.end
  %port.0.in = phi ptr [ %sin6_port, %if.end8 ], [ %sin_port, %if.end ]
  %5 = ptrtoint ptr %port.0.in to i32
  call void @__asan_load2_noabort(i32 %5)
  %port.0 = load i16, ptr %port.0.in, align 2
  %conv10 = zext i16 %port.0 to i32
  %6 = lshr i32 %conv10, 8
  %and = and i32 %conv10, 255
  %call12 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %portbuf, i32 noundef 9, ptr noundef nonnull @.str, i32 noundef %6, i32 noundef %and)
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call12)
  %cmp13 = icmp sgt i32 %call12, 9
  br i1 %cmp13, label %sw.epilog.cleanup_crit_edge, label %if.end16

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog
  %call19 = call i32 @strlcat(ptr noundef nonnull %addrbuf, ptr noundef nonnull %portbuf, i32 noundef 57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %call19)
  %cmp20 = icmp ugt i32 %call19, 57
  br i1 %cmp20, label %if.end16.cleanup_crit_edge, label %if.end23

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %call25 = call noalias ptr @kstrdup(ptr noundef nonnull %addrbuf, i32 noundef %gfp_flags) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end16.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call25, %if.end23 ], [ null, %sw.bb.cleanup_crit_edge ], [ null, %sw.bb2.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %sw.epilog.cleanup_crit_edge ], [ null, %if.end16.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 57, ptr nonnull %addrbuf) #9
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %portbuf) #9
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rpc_ntop6_noscopeid(ptr noundef %sap, ptr nocapture noundef writeonly %buf, i32 noundef %buflen) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sin6_addr = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 3
  %0 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sin6_addr, align 4
  %arrayidx2.i = getelementptr %struct.sockaddr_in6, ptr %sap, i32 0, i32 3, i32 0, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %3, %1
  %arrayidx4.i = getelementptr %struct.sockaddr_in6, ptr %sap, i32 0, i32 3, i32 0, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %or5.i = or i32 %or.i, %5
  %arrayidx7.i = getelementptr %struct.sockaddr_in6, ptr %sap, i32 0, i32 3, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx7.i, align 4
  %or8.i = or i32 %or5.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i = icmp eq i32 %or8.i, 0
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %buflen, ptr noundef nonnull @.str.3)
  br label %cleanup

if.end:                                           ; preds = %entry
  %xor.i = xor i32 %7, 1
  %or8.i27 = or i32 %xor.i, %or5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i27)
  %cmp.i28 = icmp eq i32 %or8.i27, 0
  br i1 %cmp.i28, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %buflen, ptr noundef nonnull @.str.4)
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %xor.i32 = xor i32 %5, 65535
  %or5.i33 = or i32 %xor.i32, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i33)
  %cmp.i34 = icmp eq i32 %or5.i33, 0
  br i1 %cmp.i34, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %buflen, ptr noundef nonnull @.str.5, ptr noundef %arrayidx7.i)
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef %buflen, ptr noundef nonnull @.str.6, ptr noundef %sin6_addr)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call4, %if.then3 ], [ %call8, %if.then7 ], [ %call10, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rpc_uaddr2sockaddr(ptr noundef %net, ptr nocapture noundef readonly %uaddr, i32 noundef %uaddr_len, ptr noundef %sap, i32 noundef %salen) #0 align 64 {
entry:
  %buf = alloca [61 x i8], align 1
  %portlo = alloca i8, align 1
  %porthi = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 61, ptr nonnull %buf) #9
  %0 = call ptr @memset(ptr %buf, i32 255, i32 61)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %portlo) #9
  %1 = ptrtoint ptr %portlo to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %portlo, align 1, !annotation !32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %porthi) #9
  %2 = ptrtoint ptr %porthi to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %porthi, align 1, !annotation !32
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %uaddr_len)
  %cmp = icmp ugt i32 %uaddr_len, 57
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = call ptr @memcpy(ptr %buf, ptr %uaddr, i32 %uaddr_len)
  %arrayidx = getelementptr [61 x i8], ptr %buf, i32 0, i32 %uaddr_len
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %arrayidx, align 1
  %call = call ptr @strrchr(ptr noundef nonnull %buf, i32 noundef 46)
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5, !prof !30

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %call, i32 1
  %call6 = call i32 @kstrtou8(ptr noundef %add.ptr, i32 noundef 10, ptr noundef nonnull %portlo) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7.not = icmp eq i32 %call6, 0
  br i1 %cmp7.not, label %if.end15, label %if.end5.cleanup_crit_edge, !prof !31

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %5 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %call, align 1
  %call17 = call ptr @strrchr(ptr noundef nonnull %buf, i32 noundef 46)
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %if.end15.cleanup_crit_edge, label %if.end26, !prof !30

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  %add.ptr27 = getelementptr i8, ptr %call17, i32 1
  %call28 = call i32 @kstrtou8(ptr noundef %add.ptr27, i32 noundef 10, ptr noundef nonnull %porthi) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29.not = icmp eq i32 %call28, 0
  br i1 %cmp29.not, label %if.end37, label %if.end26.cleanup_crit_edge, !prof !31

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %if.end26
  %6 = ptrtoint ptr %porthi to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %porthi, align 1
  %conv = zext i8 %7 to i16
  %shl = shl nuw i16 %conv, 8
  %8 = ptrtoint ptr %portlo to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %portlo, align 1
  %conv38 = zext i8 %9 to i16
  %or = or i16 %shl, %conv38
  %10 = ptrtoint ptr %call17 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %call17, align 1
  %call42 = call i32 @strlen(ptr noundef nonnull %buf) #12
  %call43 = call i32 @rpc_pton(ptr noundef %net, ptr noundef nonnull %buf, i32 noundef %call42, ptr noundef %sap, i32 noundef %salen)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.end37.cleanup_crit_edge, label %if.end47

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.end37
  %11 = ptrtoint ptr %sap to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %sap, align 2
  %13 = zext i16 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.8)
  switch i16 %12, label %if.end47.cleanup_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb49
  ]

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %sin_port = getelementptr inbounds %struct.sockaddr_in, ptr %sap, i32 0, i32 1
  br label %cleanup.sink.split

sw.bb49:                                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %sin6_port = getelementptr inbounds %struct.sockaddr_in6, ptr %sap, i32 0, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb49, %sw.bb
  %sin6_port.sink = phi ptr [ %sin6_port, %sw.bb49 ], [ %sin_port, %sw.bb ]
  %retval.0.ph = phi i32 [ 28, %sw.bb49 ], [ 16, %sw.bb ]
  %14 = ptrtoint ptr %sin6_port.sink to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %or, ptr %sin6_port.sink, align 2
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end47.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %if.end37.cleanup_crit_edge ], [ 0, %if.end47.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %porthi) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %portlo) #9
  call void @llvm.lifetime.end.p0(i64 61, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in6_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @in4_pton(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__ksymtab_rpc_ntop, !1, !"__ksymtab_rpc_ntop", i1 false, i1 false}
!1 = !{!"../net/sunrpc/addr.c", i32 140, i32 1}
!2 = !{ptr @__ksymtab_rpc_pton, !3, !"__ksymtab_rpc_pton", i1 false, i1 false}
!3 = !{!"../net/sunrpc/addr.c", i32 254, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/sunrpc/addr.c", i32 287, i32 8}
!6 = !{ptr @__ksymtab_rpc_uaddr2sockaddr, !7, !"__ksymtab_rpc_uaddr2sockaddr", i1 false, i1 false}
!7 = !{!"../net/sunrpc/addr.c", i32 354, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/sunrpc/addr.c", i32 117, i32 31}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/sunrpc/addr.c", i32 83, i32 44}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/sunrpc/addr.c", i32 40, i32 32}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/sunrpc/addr.c", i32 48, i32 32}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/sunrpc/addr.c", i32 57, i32 32}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/sunrpc/addr.c", i32 63, i32 31}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{!"auto-init"}
!33 = !{i64 864183, i64 864244}
!34 = !{i64 866915}
!35 = !{i64 867200}
