; ModuleID = '/llk/IR_all_yes/fs/nfs/nfs4renewd.c_pt.bc'
source_filename = "../fs/nfs/nfs4renewd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nfs4_minor_version_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfs4_state_maintenance_ops = type { ptr, ptr, ptr }
%struct.nfs_client = type { %struct.refcount_struct, %struct.atomic_t, i32, i32, i32, %struct.__kernel_sockaddr_storage, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32, i32, i32, ptr, %struct.list_head, i64, %struct.nfs4_verifier, i32, %struct.spinlock, i32, i32, %struct.delayed_work, %struct.rpc_wait_queue, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i8, ptr, ptr, ptr, i32, %struct.wait_queue_head, [48 x i8], ptr, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.__kernel_sockaddr_storage = type { %union.anon.0 }
%union.anon.0 = type { ptr, [124 x i8] }
%struct.nfs4_verifier = type { [8 x i8] }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rpc_wait_queue = type { %struct.spinlock, [4 x %struct.list_head], i8, i8, i8, i16, %struct.rpc_timer, ptr }
%struct.rpc_timer = type { %struct.list_head, i32, %struct.delayed_work }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }

@nfs_debug = external dso_local local_unnamed_addr global i32, align 4
@nfs4_renew_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 66, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: start\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfs4_renew_state\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fs/nfs/nfs4renewd.c\00", [44 x i8] zeroinitializer }, align 32
@nfs4_renew_state._entry_ptr = internal global ptr @nfs4_renew_state._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nfs4_renew_state._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: failed to call renewd. Reason: lease not expired \0A\00", [41 x i8] zeroinitializer }, align 32
@nfs4_renew_state._entry_ptr.5 = internal global ptr @nfs4_renew_state._entry.3, section ".printk_index", align 4
@nfs4_renew_state._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: done\0A\00", [22 x i8] zeroinitializer }, align 32
@nfs4_renew_state._entry_ptr.8 = internal global ptr @nfs4_renew_state._entry.6, section ".printk_index", align 4
@nfs4_schedule_state_renewal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: requeueing work. Lease period = %ld\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nfs4_schedule_state_renewal\00", [36 x i8] zeroinitializer }, align 32
@nfs4_schedule_state_renewal._entry_ptr = internal global ptr @nfs4_schedule_state_renewal._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 66, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 103, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 110, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private constant [23 x i8] c"../fs/nfs/nfs4renewd.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 123, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 286, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @nfs4_renew_state._entry, ptr @nfs4_renew_state._entry.3, ptr @nfs4_renew_state._entry.6, ptr @nfs4_renew_state._entry_ptr, ptr @nfs4_renew_state._entry_ptr.5, ptr @nfs4_renew_state._entry_ptr.8, ptr @nfs4_schedule_state_renewal._entry, ptr @nfs4_schedule_state_renewal._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_renew_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_renew_state._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_renew_state._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfs4_schedule_state_renewal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_renew_state(ptr noundef %work) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -288
  %cl_mvops = getelementptr i8, ptr %work, i32 312
  %0 = ptrtoint ptr %cl_mvops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl_mvops, align 8
  %state_renewal_ops = getelementptr inbounds %struct.nfs4_minor_version_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %state_renewal_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state_renewal_ops, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %4 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end, !prof !30

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %cl_res_state = getelementptr i8, ptr %work, i32 -276
  %5 = ptrtoint ptr %cl_res_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %cl_res_state, align 4
  %7 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool8.not = icmp eq i32 %7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end6.do.body49_crit_edge

do.end6.do.body49_crit_edge:                      ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49

if.end10:                                         ; preds = %do.end6
  %cl_lease_time = getelementptr i8, ptr %work, i32 -8
  %8 = ptrtoint ptr %cl_lease_time to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cl_lease_time, align 8
  %cl_last_renewal = getelementptr i8, ptr %work, i32 -4
  %10 = ptrtoint ptr %cl_last_renewal to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cl_last_renewal, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %div = sdiv i32 %9, 3
  %add = add i32 %11, %div
  %sub = sub i32 %add, %12
  %sub.lobit = lshr i32 %sub, 31
  %call13 = tail call i32 @nfs_delegations_present(ptr noundef %add.ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %or16 = or i32 %sub.lobit, 2
  %renew_flags.1 = select i1 %tobool14.not, i32 %sub.lobit, i32 %or16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %renew_flags.1)
  %cmp18.not = icmp eq i32 %renew_flags.1, 0
  br i1 %cmp18.not, label %do.body30, label %if.then19

if.then19:                                        ; preds = %if.end10
  %get_state_renewal_cred = getelementptr inbounds %struct.nfs4_state_maintenance_ops, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %get_state_renewal_cred to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_state_renewal_cred, align 4
  %call20 = tail call ptr %14(ptr noundef %add.ptr) #5
  %cmp21 = icmp eq ptr %call20, null
  br i1 %cmp21, label %if.then22, label %do.body.i

if.then22:                                        ; preds = %if.then19
  %and23 = and i32 %renew_flags.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %cl_state = getelementptr i8, ptr %work, i32 -56
  tail call void @_set_bit(i32 noundef 2, ptr noundef %cl_state) #5
  br label %do.body49

if.end26:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nfs_expire_all_delegations(ptr noundef %add.ptr) #5
  br label %if.end48

do.body.i:                                        ; preds = %if.then19
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  %call27 = tail call i32 %16(ptr noundef %add.ptr, ptr noundef nonnull %call20, i32 noundef %renew_flags.1) #5
  %call.i.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %call20) #5
  br i1 %call.i.i, label %if.then.i.i, label %do.body.i.__validate_creds.exit.i_crit_edge, !prof !31

do.body.i.__validate_creds.exit.i_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__validate_creds.exit.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__invalid_creds(ptr noundef nonnull %call20, ptr noundef nonnull @.str.11, i32 noundef 286) #5
  br label %__validate_creds.exit.i

__validate_creds.exit.i:                          ; preds = %if.then.i.i, %do.body.i.__validate_creds.exit.i_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call20, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !32
  tail call void @llvm.prefetch.p0(ptr nonnull %call20, i32 1, i32 3, i32 1) #5
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call20, ptr nonnull %call20, i32 1, ptr nonnull elementtype(i32) %call20) #5, !srcloc !33
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %17, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then1.i, label %__validate_creds.exit.i.put_cred.exit_crit_edge

__validate_creds.exit.i.put_cred.exit_crit_edge:  ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_cred.exit

if.then1.i:                                       ; preds = %__validate_creds.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__put_cred(ptr noundef nonnull %call20) #5
  br label %put_cred.exit

put_cred.exit:                                    ; preds = %if.then1.i, %__validate_creds.exit.i.put_cred.exit_crit_edge
  %18 = and i32 %call27, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %18)
  %switch = icmp eq i32 %18, -12
  br i1 %switch, label %put_cred.exit.if.end48_crit_edge, label %put_cred.exit.out_exp_crit_edge

put_cred.exit.out_exp_crit_edge:                  ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out_exp

put_cred.exit.if.end48_crit_edge:                 ; preds = %put_cred.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

do.body30:                                        ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %19 = load i32, ptr @nfs_debug, align 4
  %and31 = and i32 %19, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %do.body30.if.end48_crit_edge, label %do.end42, !prof !30

do.body30.if.end48_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

do.end42:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1) #8
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %do.body30.if.end48_crit_edge, %put_cred.exit.if.end48_crit_edge, %if.end26
  tail call void @nfs4_schedule_state_renewal(ptr noundef %add.ptr)
  br label %out_exp

out_exp:                                          ; preds = %if.end48, %put_cred.exit.out_exp_crit_edge
  tail call void @nfs_expire_unreferenced_delegations(ptr noundef %add.ptr) #5
  br label %do.body49

do.body49:                                        ; preds = %out_exp, %if.then25, %do.end6.do.body49_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %20 = load i32, ptr @nfs_debug, align 4
  %and50 = and i32 %20, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body49.do.end66_crit_edge, label %do.end61, !prof !30

do.body49.do.end66_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end66

do.end61:                                         ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #7
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1) #8
  br label %do.end66

do.end66:                                         ; preds = %do.end61, %do.body49.do.end66_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfs_delegations_present(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_expire_all_delegations(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_schedule_state_renewal(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_lock = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock) #5
  %cl_lease_time = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 24
  %0 = ptrtoint ptr %cl_lease_time to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cl_lease_time, align 8
  %mul = shl i32 %1, 1
  %div = udiv i32 %mul, 3
  %cl_last_renewal = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 25
  %2 = ptrtoint ptr %cl_last_renewal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cl_last_renewal, align 4
  %add = add i32 %div, %3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  %5 = tail call i32 @llvm.smax.i32(i32 %sub, i32 500)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nfs_debug to i32))
  %6 = load i32, ptr @nfs_debug, align 4
  %and = and i32 %6, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end10_crit_edge, label %do.end, !prof !30

entry.do.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end10

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sub6 = add nuw i32 %5, 99
  %div7 = sdiv i32 %sub6, 100
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, i32 noundef %div7) #8
  br label %do.end10

do.end10:                                         ; preds = %do.end, %entry.do.end10_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %cl_renewd = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 26
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %cl_renewd, i32 noundef %5) #5
  %cl_res_state = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 3
  tail call void @_set_bit(i32 noundef 3, ptr noundef %cl_res_state) #5
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nfs_expire_unreferenced_delegations(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_kill_renewd(ptr noundef %clp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_renewd = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 26
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %cl_renewd) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfs4_set_lease_period(ptr noundef %clp, i32 noundef %lease) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cl_lock = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 23
  tail call void @_raw_spin_lock(ptr noundef %cl_lock) #5
  %cl_lease_time = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 24
  %0 = ptrtoint ptr %cl_lease_time to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %lease, ptr %cl_lease_time, align 8
  tail call void @_raw_spin_unlock(ptr noundef %cl_lock) #5
  %cl_rpcclient = getelementptr inbounds %struct.nfs_client, ptr %clp, i32 0, i32 11
  %1 = ptrtoint ptr %cl_rpcclient to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cl_rpcclient, align 8
  %shr = lshr i32 %lease, 1
  tail call void @rpc_set_connect_timeout(ptr noundef %2, i32 noundef %lease, i32 noundef %shr) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rpc_set_connect_timeout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../fs/nfs/nfs4renewd.c", i32 66, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nfs4_renew_state._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @nfs4_renew_state._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../fs/nfs/nfs4renewd.c", i32 103, i32 3}
!8 = !{ptr @nfs4_renew_state._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfs4_renew_state._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../fs/nfs/nfs4renewd.c", i32 110, i32 2}
!12 = !{ptr @nfs4_renew_state._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @nfs4_renew_state._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../fs/nfs/nfs4renewd.c", i32 123, i32 2}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nfs4_schedule_state_renewal._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @nfs4_schedule_state_renewal._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/cred.h", i32 286, i32 3}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{i64 2148756337}
!33 = !{i64 2148671046, i64 2148671078, i64 2148671107, i64 2148671141, i64 2148671172, i64 2148671195}
!34 = !{i64 2148756566}
