; ModuleID = '/llk/IR_all_yes/net/atm/mpoa_caches.c_pt.bc'
source_filename = "../net/atm/mpoa_caches.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.in_cache_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.eg_cache_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mpoa_client = type { ptr, ptr, i32, ptr, [20 x i8], [20 x i8], %struct.rwlock_t, ptr, ptr, %struct.rwlock_t, ptr, ptr, ptr, i32, %struct.mpc_parameters, ptr, %struct.net_device_ops }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mpc_parameters = type { i16, i16, [8 x i8], i16, i16, i16 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.in_cache_entry = type { ptr, ptr, i64, i64, i64, i32, i16, i32, i32, i32, ptr, [20 x i8], %struct.in_ctrl_info, %struct.refcount_struct }
%struct.in_ctrl_info = type { i8, i8, [20 x i8], i32, i32, i16, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.k_message = type { i16, i32, [20 x i8], %union.anon.147, %struct.atm_qos }
%union.anon.147 = type { %struct.eg_ctrl_info }
%struct.eg_ctrl_info = type { [256 x i8], i8, i32, i32, i32, i32, [20 x i8], i16 }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_mpoa_qos = type { ptr, i32, %struct.atm_qos }
%struct.eg_cache_entry = type { ptr, ptr, i64, [20 x i8], ptr, i32, i16, i32, %struct.eg_ctrl_info, %struct.refcount_struct }

@ingress_ops = internal constant { %struct.in_cache_ops, [52 x i8] } { %struct.in_cache_ops { ptr @in_cache_add_entry, ptr @in_cache_get, ptr @in_cache_get_with_mask, ptr @in_cache_get_by_vcc, ptr @in_cache_put, ptr @in_cache_remove_entry, ptr @cache_hit, ptr @clear_count_and_expired, ptr @check_resolving_entries, ptr @refresh_entries, ptr @in_destroy_cache }, [52 x i8] zeroinitializer }, align 32
@egress_ops = internal constant { %struct.eg_cache_ops, [56 x i8] } { %struct.eg_cache_ops { ptr @eg_cache_add_entry, ptr @eg_cache_get_by_cache_id, ptr @eg_cache_get_by_tag, ptr @eg_cache_get_by_vcc, ptr @eg_cache_get_by_src_ip, ptr @eg_cache_put, ptr @eg_cache_remove_entry, ptr @update_eg_cache_entry, ptr @clear_expired, ptr @eg_destroy_cache }, [56 x i8] zeroinitializer }, align 32
@in_cache_add_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016mpoa: mpoa_caches.c: new_in_cache_entry: out of memory\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"in_cache_add_entry\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/atm/mpoa_caches.c\00", [42 x i8] zeroinitializer }, align 32
@in_cache_add_entry._entry_ptr = internal global ptr @in_cache_add_entry._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@eg_cache_add_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016out of memory\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"eg_cache_add_entry\00", [45 x i8] zeroinitializer }, align 32
@eg_cache_add_entry._entry_ptr = internal global ptr @eg_cache_add_entry._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 1, i64 2, i64 3]
@___asan_gen_.5 = private unnamed_addr constant [12 x i8] c"ingress_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 534, i32 34 }
@___asan_gen_.8 = private unnamed_addr constant [11 x i8] c"egress_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 548, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 103, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private constant [25 x i8] c"../net/atm/mpoa_caches.c\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 462, i32 3 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @eg_cache_add_entry._entry, ptr @eg_cache_add_entry._entry_ptr, ptr @in_cache_add_entry._entry, ptr @in_cache_add_entry._entry_ptr, ptr @ingress_ops, ptr @egress_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ingress_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @egress_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_cache_add_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eg_cache_add_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @atm_mpoa_init_cache(ptr nocapture noundef writeonly %mpc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %in_ops = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 7
  %0 = ptrtoint ptr %in_ops to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @ingress_ops, ptr %in_ops, align 4
  %eg_ops = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 10
  %1 = ptrtoint ptr %eg_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @egress_ops, ptr %eg_ops, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @in_cache_add_entry(i32 noundef %dst_ip, ptr noundef %client) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 120) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

do.end5:                                          ; preds = %entry
  %use = getelementptr inbounds %struct.in_cache_entry, ptr %call7.i.i, i32 0, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  %1 = ptrtoint ptr %use to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %use, align 4
  %ingress_lock = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 6
  tail call void @_raw_write_lock_bh(ptr noundef %ingress_lock) #7
  %in_cache = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 8
  %2 = ptrtoint ptr %in_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %in_cache, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call7.i.i, align 8
  %prev = getelementptr inbounds %struct.in_cache_entry, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %prev, align 4
  %cmp10.not = icmp eq ptr %3, null
  br i1 %cmp10.not, label %do.end5.if.end14_crit_edge, label %if.then11

do.end5.if.end14_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %prev13 = getelementptr inbounds %struct.in_cache_entry, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %prev13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %prev13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.end5.if.end14_crit_edge
  %7 = ptrtoint ptr %in_cache to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %in_cache, align 4
  %MPS_ctrl_ATM_addr = getelementptr inbounds %struct.in_cache_entry, ptr %call7.i.i, i32 0, i32 11
  %mps_ctrl_addr = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 4
  %8 = call ptr @memcpy(ptr %MPS_ctrl_ATM_addr, ptr %mps_ctrl_addr, i32 20)
  %in_dst_ip = getelementptr inbounds %struct.in_cache_entry, ptr %call7.i.i, i32 0, i32 12, i32 4
  %9 = ptrtoint ptr %in_dst_ip to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dst_ip, ptr %in_dst_ip, align 8
  %call17 = tail call i64 @ktime_get_seconds() #7
  %time = getelementptr inbounds %struct.in_cache_entry, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call17, ptr %time, align 8
  %mpc_p4 = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 14, i32 3
  %11 = ptrtoint ptr %mpc_p4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mpc_p4, align 4
  %conv = zext i16 %12 to i32
  %retry_time = getelementptr inbounds %struct.in_cache_entry, ptr %call7.i.i, i32 0, i32 7
  %13 = ptrtoint ptr %retry_time to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %retry_time, align 8
  %count = getelementptr inbounds %struct.in_cache_entry, ptr %call7.i.i, i32 0, i32 9
  %14 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %count, align 8
  %entry_state = getelementptr inbounds %struct.in_cache_entry, ptr %call7.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %entry_state to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %entry_state, align 4
  %holding_time = getelementptr inbounds %struct.in_cache_entry, ptr %call7.i.i, i32 0, i32 12, i32 5
  %16 = ptrtoint ptr %holding_time to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1200, ptr %holding_time, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #7
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 1, ptr elementtype(i32) %use) #7, !srcloc !24
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end14.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !25

if.end14.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end14
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !26

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end14.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end14.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use, i32 noundef %.sink.i.i.i) #7
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %ingress_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %refcount_inc.exit, %do.end
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @in_cache_get(i32 noundef %dst_ip, ptr noundef %client) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ingress_lock = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 6
  tail call void @_raw_read_lock_bh(ptr noundef %ingress_lock) #7
  %in_cache = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %entry1.0.in = phi ptr [ %in_cache, %entry ], [ %entry1.0, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, null
  br i1 %cmp.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %in_dst_ip = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.0, i32 0, i32 12, i32 4
  %1 = ptrtoint ptr %in_dst_ip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in_dst_ip, align 4
  %cmp2 = icmp eq i32 %2, %dst_ip
  br i1 %cmp2, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.then:                                          ; preds = %while.body
  %use = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.0, i32 0, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 1, ptr elementtype(i32) %use) #7, !srcloc !24
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !25

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !26

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use, i32 noundef %.sink.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %ingress_lock) #7
  ret ptr %entry1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @in_cache_get_with_mask(i32 noundef %dst_ip, ptr noundef %client, i32 noundef %mask) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ingress_lock = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 6
  tail call void @_raw_read_lock_bh(ptr noundef %ingress_lock) #7
  %in_cache = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %entry1.0.in = phi ptr [ %in_cache, %entry ], [ %entry1.0, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, null
  br i1 %cmp.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %in_dst_ip = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.0, i32 0, i32 12, i32 4
  %1 = ptrtoint ptr %in_dst_ip to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %in_dst_ip, align 4
  %3 = xor i32 %2, %dst_ip
  %4 = and i32 %3, %mask
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.then:                                          ; preds = %while.body
  %use = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.0, i32 0, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #7
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 1, ptr elementtype(i32) %use) #7, !srcloc !24
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !25

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !26

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use, i32 noundef %.sink.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %ingress_lock) #7
  ret ptr %entry1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @in_cache_get_by_vcc(ptr noundef readnone %vcc, ptr noundef %client) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ingress_lock = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 6
  tail call void @_raw_read_lock_bh(ptr noundef %ingress_lock) #7
  %in_cache = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 8
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %entry1.0.in = phi ptr [ %in_cache, %entry ], [ %entry1.0, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, null
  br i1 %cmp.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %shortcut = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.0, i32 0, i32 10
  %1 = ptrtoint ptr %shortcut to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shortcut, align 4
  %cmp2 = icmp eq ptr %2, %vcc
  br i1 %cmp2, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.then:                                          ; preds = %while.body
  %use = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.0, i32 0, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 1, ptr elementtype(i32) %use) #7, !srcloc !24
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !25

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !26

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use, i32 noundef %.sink.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %ingress_lock) #7
  ret ptr %entry1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @in_cache_put(ptr noundef %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %use = getelementptr inbounds %struct.in_cache_entry, ptr %entry1, i32 0, i32 13
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 1, ptr elementtype(i32) %use) #7, !srcloc !28
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !26

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %use, i32 noundef 3) #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @kfree_sensitive(ptr noundef %entry1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @in_cache_remove_entry(ptr noundef %entry1, ptr noundef %client) #1 align 64 {
entry:
  %msg = alloca %struct.k_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 412, ptr nonnull %msg) #7
  %0 = call ptr @memset(ptr %msg, i32 255, i32 412)
  %shortcut = getelementptr inbounds %struct.in_cache_entry, ptr %entry1, i32 0, i32 10
  %1 = ptrtoint ptr %shortcut to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shortcut, align 4
  %prev = getelementptr inbounds %struct.in_cache_entry, ptr %entry1, i32 0, i32 1
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev, align 4
  %cmp.not = icmp eq ptr %4, null
  %5 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry1, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %4, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %in_cache = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 8
  %8 = ptrtoint ptr %in_cache to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %in_cache, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry1, align 8
  %cmp6.not = icmp eq ptr %10, null
  br i1 %cmp6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev, align 4
  %prev10 = getelementptr inbounds %struct.in_cache_entry, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %prev10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %prev10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %in_ops = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 7
  %14 = ptrtoint ptr %in_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %in_ops, align 4
  %put = getelementptr inbounds %struct.in_cache_ops, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %put, align 4
  tail call void %17(ptr noundef %entry1) #7
  %in_cache12 = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 8
  %18 = ptrtoint ptr %in_cache12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %in_cache12, align 4
  %cmp13 = icmp eq ptr %19, null
  br i1 %cmp13, label %land.lhs.true, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end11
  %eg_cache = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 11
  %20 = ptrtoint ptr %eg_cache to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %eg_cache, align 4
  %cmp14 = icmp eq ptr %21, null
  br i1 %cmp14, label %if.then15, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 204, ptr %msg, align 4
  %call = call i32 @msg_to_mpoad(ptr noundef nonnull %msg, ptr noundef %client) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true.if.end16_crit_edge, %if.end11.if.end16_crit_edge
  %cmp17.not = icmp eq ptr %2, null
  br i1 %cmp17.not, label %if.end16.cleanup26_crit_edge, label %if.then18

if.end16.cleanup26_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

if.then18:                                        ; preds = %if.end16
  %eg_ops = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 10
  %23 = ptrtoint ptr %eg_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %eg_ops, align 4
  %get_by_vcc = getelementptr inbounds %struct.eg_cache_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %get_by_vcc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_by_vcc, align 4
  %call19 = call ptr %26(ptr noundef nonnull %2, ptr noundef %client) #7
  %cmp20.not = icmp eq ptr %call19, null
  br i1 %cmp20.not, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %eg_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %eg_ops, align 4
  %put23 = getelementptr inbounds %struct.eg_cache_ops, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %put23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %put23, align 4
  call void %30(ptr noundef nonnull %call19) #7
  br label %cleanup26

if.end24:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  call void @vcc_release_async(ptr noundef nonnull %2, i32 noundef -32) #7
  br label %cleanup26

cleanup26:                                        ; preds = %if.end24, %if.then21, %if.end16.cleanup26_crit_edge
  call void @llvm.lifetime.end.p0(i64 412, ptr nonnull %msg) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cache_hit(ptr nocapture noundef %entry1, ptr noundef %mpc) #1 align 64 {
entry:
  %msg = alloca %struct.k_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 412, ptr nonnull %msg) #7
  %0 = call ptr @memset(ptr %msg, i32 255, i32 412)
  %count = getelementptr inbounds %struct.in_cache_entry, ptr %entry1, i32 0, i32 9
  %1 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %count, align 8
  %inc = add i32 %2, 1
  store i32 %inc, ptr %count, align 8
  %entry_state = getelementptr inbounds %struct.in_cache_entry, ptr %entry1, i32 0, i32 6
  %3 = ptrtoint ptr %entry_state to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %entry_state, align 4
  %5 = zext i16 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i16 %4, label %if.end42 [
    i16 2, label %land.lhs.true
    i16 3, label %if.then9
    i16 1, label %land.lhs.true37
  ]

land.lhs.true:                                    ; preds = %entry
  %shortcut = getelementptr inbounds %struct.in_cache_entry, ptr %entry1, i32 0, i32 10
  %6 = ptrtoint ptr %shortcut to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shortcut, align 4
  %cmp3.not = icmp eq ptr %7, null
  br i1 %cmp3.not, label %land.lhs.true.if.end42.thread_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.end42.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.thread

if.then9:                                         ; preds = %entry
  %parameters = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 14
  %8 = ptrtoint ptr %parameters to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %parameters, align 4
  %conv11 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv11)
  %cmp12 = icmp ugt i32 %inc, %conv11
  br i1 %cmp12, label %if.then14, label %if.then9.if.end26_crit_edge

if.then9.if.end26_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then14:                                        ; preds = %if.then9
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 201, ptr %msg, align 4
  %content = getelementptr inbounds %struct.k_message, ptr %msg, i32 0, i32 3
  %ctrl_info = getelementptr inbounds %struct.in_cache_entry, ptr %entry1, i32 0, i32 12
  %11 = call ptr @memcpy(ptr %content, ptr %ctrl_info, i32 40)
  %MPS_ctrl = getelementptr inbounds %struct.k_message, ptr %msg, i32 0, i32 2
  %mps_ctrl_addr = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 4
  %12 = call ptr @memcpy(ptr %MPS_ctrl, ptr %mps_ctrl_addr, i32 20)
  %in_dst_ip = getelementptr inbounds %struct.in_cache_entry, ptr %entry1, i32 0, i32 12, i32 4
  %13 = ptrtoint ptr %in_dst_ip to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %in_dst_ip, align 4
  %call = tail call ptr @atm_mpoa_search_qos(i32 noundef %14) #7
  %cmp17.not = icmp eq ptr %call, null
  br i1 %cmp17.not, label %if.then14.if.end22_crit_edge, label %if.then19

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %qos20 = getelementptr inbounds %struct.k_message, ptr %msg, i32 0, i32 4
  %qos21 = getelementptr inbounds %struct.atm_mpoa_qos, ptr %call, i32 0, i32 2
  %15 = call ptr @memcpy(ptr %qos20, ptr %qos21, i32 84)
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.then14.if.end22_crit_edge
  %call23 = call i32 @msg_to_mpoad(ptr noundef nonnull %msg, ptr noundef %mpc) #7
  %call24 = call i64 @ktime_get_seconds() #7
  %reply_wait = getelementptr inbounds %struct.in_cache_entry, ptr %entry1, i32 0, i32 3
  %16 = ptrtoint ptr %reply_wait to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call24, ptr %reply_wait, align 8
  %17 = ptrtoint ptr %entry_state to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %entry_state, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.end22, %if.then9.if.end26_crit_edge
  %shortcut27 = getelementptr inbounds %struct.in_cache_entry, ptr %entry1, i32 0, i32 10
  %18 = ptrtoint ptr %shortcut27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shortcut27, align 4
  %cmp28.not = icmp ne ptr %19, null
  %. = zext i1 %cmp28.not to i32
  br label %cleanup

land.lhs.true37:                                  ; preds = %entry
  %shortcut38 = getelementptr inbounds %struct.in_cache_entry, ptr %entry1, i32 0, i32 10
  %20 = ptrtoint ptr %shortcut38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %shortcut38, align 4
  %cmp39.not = icmp eq ptr %21, null
  br i1 %cmp39.not, label %land.lhs.true37.if.end42.thread_crit_edge, label %land.lhs.true37.cleanup_crit_edge

land.lhs.true37.cleanup_crit_edge:                ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true37.if.end42.thread_crit_edge:        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.thread

if.end42.thread:                                  ; preds = %land.lhs.true37.if.end42.thread_crit_edge, %land.lhs.true.if.end42.thread_crit_edge
  br label %cleanup

if.end42:                                         ; preds = %entry
  %parameters44 = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 14
  %22 = ptrtoint ptr %parameters44 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %parameters44, align 4
  %conv46 = zext i16 %23 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %conv46)
  %cmp47 = icmp ugt i32 %inc, %conv46
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %cmp52 = icmp eq i16 %4, 0
  %or.cond = select i1 %cmp47, i1 %cmp52, i1 false
  br i1 %or.cond, label %do.end, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end42
  %24 = ptrtoint ptr %entry_state to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %entry_state, align 4
  %25 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 201, ptr %msg, align 4
  %MPS_ctrl57 = getelementptr inbounds %struct.k_message, ptr %msg, i32 0, i32 2
  %mps_ctrl_addr59 = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 4
  %26 = call ptr @memcpy(ptr %MPS_ctrl57, ptr %mps_ctrl_addr59, i32 20)
  %content61 = getelementptr inbounds %struct.k_message, ptr %msg, i32 0, i32 3
  %ctrl_info62 = getelementptr inbounds %struct.in_cache_entry, ptr %entry1, i32 0, i32 12
  %27 = call ptr @memcpy(ptr %content61, ptr %ctrl_info62, i32 40)
  %in_dst_ip64 = getelementptr inbounds %struct.in_cache_entry, ptr %entry1, i32 0, i32 12, i32 4
  %28 = ptrtoint ptr %in_dst_ip64 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %in_dst_ip64, align 4
  %call65 = tail call ptr @atm_mpoa_search_qos(i32 noundef %29) #7
  %cmp66.not = icmp eq ptr %call65, null
  br i1 %cmp66.not, label %do.end.if.end71_crit_edge, label %if.then68

do.end.if.end71_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then68:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %qos69 = getelementptr inbounds %struct.k_message, ptr %msg, i32 0, i32 4
  %qos70 = getelementptr inbounds %struct.atm_mpoa_qos, ptr %call65, i32 0, i32 2
  %30 = call ptr @memcpy(ptr %qos69, ptr %qos70, i32 84)
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %do.end.if.end71_crit_edge
  %call72 = call i32 @msg_to_mpoad(ptr noundef nonnull %msg, ptr noundef %mpc) #7
  %call73 = call i64 @ktime_get_seconds() #7
  %reply_wait74 = getelementptr inbounds %struct.in_cache_entry, ptr %entry1, i32 0, i32 3
  %31 = ptrtoint ptr %reply_wait74 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %call73, ptr %reply_wait74, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end42.cleanup_crit_edge, %if.end42.thread, %land.lhs.true37.cleanup_crit_edge, %if.end26, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true.cleanup_crit_edge ], [ %., %if.end26 ], [ 1, %land.lhs.true37.cleanup_crit_edge ], [ 0, %if.end71 ], [ 0, %if.end42.cleanup_crit_edge ], [ 0, %if.end42.thread ]
  call void @llvm.lifetime.end.p0(i64 412, ptr nonnull %msg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clear_count_and_expired(ptr noundef %client) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get_seconds() #7
  %ingress_lock = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 6
  tail call void @_raw_write_lock_bh(ptr noundef %ingress_lock) #7
  %in_cache = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 8
  %0 = ptrtoint ptr %in_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_cache, align 4
  %cmp.not14 = icmp eq ptr %1, null
  br i1 %cmp.not14, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %in_ops = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %entry1.015 = phi ptr [ %1, %while.body.lr.ph ], [ %4, %if.end.while.body_crit_edge ]
  %count = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.015, i32 0, i32 9
  %2 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %count, align 8
  %3 = ptrtoint ptr %entry1.015 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.015, align 8
  %time = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.015, i32 0, i32 2
  %5 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %time, align 8
  %sub = sub i64 %call, %6
  %holding_time = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.015, i32 0, i32 12, i32 5
  %7 = ptrtoint ptr %holding_time to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %holding_time, align 4
  %conv = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp2 = icmp sgt i64 %sub, %conv
  br i1 %cmp2, label %do.end, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %in_ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %in_ops, align 4
  %remove_entry = getelementptr inbounds %struct.in_cache_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %remove_entry to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %remove_entry, align 4
  tail call void %12(ptr noundef nonnull %entry1.015, ptr noundef %client) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %while.body.if.end_crit_edge
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_write_unlock_bh(ptr noundef %ingress_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @check_resolving_entries(ptr noundef %client) #1 align 64 {
entry:
  %msg = alloca %struct.k_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 412, ptr nonnull %msg) #7
  %0 = call ptr @memset(ptr %msg, i32 255, i32 412)
  %call = tail call i64 @ktime_get_seconds() #7
  %ingress_lock = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 6
  tail call void @_raw_read_lock_bh(ptr noundef %ingress_lock) #7
  %in_cache = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 8
  %1 = ptrtoint ptr %in_cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %entry1.070 = load ptr, ptr %in_cache, align 4
  %cmp.not71 = icmp eq ptr %entry1.070, null
  br i1 %cmp.not71, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %mpc_p6 = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 14, i32 5
  %mpc_p5 = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 14, i32 4
  %MPS_ctrl = getelementptr inbounds %struct.k_message, ptr %msg, i32 0, i32 2
  %mps_ctrl_addr = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 4
  %content = getelementptr inbounds %struct.k_message, ptr %msg, i32 0, i32 3
  %qos35 = getelementptr inbounds %struct.k_message, ptr %msg, i32 0, i32 4
  %mpc_p4 = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 14, i32 3
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %entry1.072 = phi ptr [ %entry1.070, %while.body.lr.ph ], [ %entry1.0, %while.cond.backedge.while.body_crit_edge ]
  %entry_state = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.072, i32 0, i32 6
  %2 = ptrtoint ptr %entry_state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %entry_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %3)
  %cmp2 = icmp eq i16 %3, 1
  br i1 %cmp2, label %if.then, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.then:                                          ; preds = %while.body
  %hold_down = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.072, i32 0, i32 4
  %4 = ptrtoint ptr %hold_down to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %hold_down, align 8
  %sub = sub i64 %call, %5
  %6 = ptrtoint ptr %mpc_p6 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mpc_p6, align 4
  %conv4 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv4)
  %cmp5 = icmp slt i64 %sub, %conv4
  br i1 %cmp5, label %if.then.while.cond.backedge_crit_edge, label %if.end

if.then.while.cond.backedge_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.end:                                           ; preds = %if.then
  %reply_wait = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.072, i32 0, i32 3
  %8 = ptrtoint ptr %reply_wait to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %reply_wait, align 8
  %sub8 = sub i64 %call, %9
  %retry_time = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.072, i32 0, i32 7
  %10 = ptrtoint ptr %retry_time to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %retry_time, align 8
  %conv9 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub8, i64 %conv9)
  %cmp10 = icmp sgt i64 %sub8, %conv9
  br i1 %cmp10, label %if.then12, label %if.end.while.cond.backedge_crit_edge

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.backedge

if.then12:                                        ; preds = %if.end
  %mul = shl i32 %11, 1
  %12 = ptrtoint ptr %retry_time to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %mul, ptr %retry_time, align 8
  %13 = ptrtoint ptr %mpc_p5 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mpc_p5, align 2
  %conv17 = zext i16 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv17)
  %cmp18 = icmp ugt i32 %mul, %conv17
  br i1 %cmp18, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = call i64 @ktime_get_seconds() #7
  %15 = ptrtoint ptr %hold_down to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %call21, ptr %hold_down, align 8
  %16 = ptrtoint ptr %mpc_p4 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %mpc_p4, align 4
  %conv24 = zext i16 %17 to i32
  %18 = ptrtoint ptr %retry_time to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv24, ptr %retry_time, align 8
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end37, %if.then20, %if.end.while.cond.backedge_crit_edge, %if.then.while.cond.backedge_crit_edge, %while.body.while.cond.backedge_crit_edge
  %19 = ptrtoint ptr %entry1.072 to i32
  call void @__asan_load4_noabort(i32 %19)
  %entry1.0 = load ptr, ptr %entry1.072, align 4
  %cmp.not = icmp eq ptr %entry1.0, null
  br i1 %cmp.not, label %while.cond.backedge.while.end_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end27:                                         ; preds = %if.then12
  %20 = ptrtoint ptr %hold_down to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %hold_down, align 8
  %21 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 203, ptr %msg, align 4
  %22 = call ptr @memcpy(ptr %MPS_ctrl, ptr %mps_ctrl_addr, i32 20)
  %ctrl_info = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.072, i32 0, i32 12
  %23 = call ptr @memcpy(ptr %content, ptr %ctrl_info, i32 40)
  %in_dst_ip = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.072, i32 0, i32 12, i32 4
  %24 = ptrtoint ptr %in_dst_ip to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %in_dst_ip, align 4
  %call31 = call ptr @atm_mpoa_search_qos(i32 noundef %25) #7
  %cmp32.not = icmp eq ptr %call31, null
  br i1 %cmp32.not, label %if.end27.if.end37_crit_edge, label %if.then34

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %qos36 = getelementptr inbounds %struct.atm_mpoa_qos, ptr %call31, i32 0, i32 2
  %26 = call ptr @memcpy(ptr %qos35, ptr %qos36, i32 84)
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end27.if.end37_crit_edge
  %call38 = call i32 @msg_to_mpoad(ptr noundef nonnull %msg, ptr noundef %client) #7
  %call39 = call i64 @ktime_get_seconds() #7
  %27 = ptrtoint ptr %reply_wait to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call39, ptr %reply_wait, align 8
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_read_unlock_bh(ptr noundef %ingress_lock) #7
  call void @llvm.lifetime.end.p0(i64 412, ptr nonnull %msg) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @refresh_entries(ptr noundef %client) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %in_cache = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 8
  %0 = ptrtoint ptr %in_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_cache, align 4
  %call = tail call i64 @ktime_get_seconds() #7
  %ingress_lock = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 6
  tail call void @_raw_read_lock_bh(ptr noundef %ingress_lock) #7
  %cmp.not29 = icmp eq ptr %1, null
  br i1 %cmp.not29, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %entry.while.body_crit_edge
  %entry1.030 = phi ptr [ %15, %if.end17.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %entry_state = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.030, i32 0, i32 6
  %2 = ptrtoint ptr %entry_state to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %entry_state, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp2 = icmp eq i16 %3, 2
  br i1 %cmp2, label %if.then, label %while.body.if.end17_crit_edge

while.body.if.end17_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then:                                          ; preds = %while.body
  %refresh_time = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.030, i32 0, i32 8
  %4 = ptrtoint ptr %refresh_time to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refresh_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then4, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %holding_time = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.030, i32 0, i32 12, i32 5
  %6 = ptrtoint ptr %holding_time to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %holding_time, align 4
  %conv5 = zext i16 %7 to i32
  %mul = shl nuw nsw i32 %conv5, 1
  %div = udiv i32 %mul, 3
  %8 = ptrtoint ptr %refresh_time to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div, ptr %refresh_time, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %reply_wait = getelementptr inbounds %struct.in_cache_entry, ptr %entry1.030, i32 0, i32 3
  %9 = ptrtoint ptr %reply_wait to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %reply_wait, align 8
  %sub = sub i64 %call, %10
  %11 = ptrtoint ptr %refresh_time to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %refresh_time, align 4
  %conv8 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv8)
  %cmp9 = icmp sgt i64 %sub, %conv8
  br i1 %cmp9, label %do.end14, label %if.end.if.end17_crit_edge

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %entry_state to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 3, ptr %entry_state, align 4
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.end.if.end17_crit_edge, %while.body.if.end17_crit_edge
  %14 = ptrtoint ptr %entry1.030 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %entry1.030, align 8
  %cmp.not = icmp eq ptr %15, null
  br i1 %cmp.not, label %if.end17.while.end_crit_edge, label %if.end17.while.body_crit_edge

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end17.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_read_unlock_bh(ptr noundef %ingress_lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @in_destroy_cache(ptr noundef %mpc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ingress_lock = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 6
  tail call void @_raw_write_lock_irq(ptr noundef %ingress_lock) #7
  %in_cache = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 8
  %0 = ptrtoint ptr %in_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in_cache, align 4
  %cmp.not8 = icmp eq ptr %1, null
  br i1 %cmp.not8, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %in_ops = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %8, %while.body.while.body_crit_edge ]
  %3 = ptrtoint ptr %in_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %in_ops, align 4
  %remove_entry = getelementptr inbounds %struct.in_cache_ops, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %remove_entry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remove_entry, align 4
  tail call void %6(ptr noundef nonnull %2, ptr noundef %mpc) #7
  %7 = ptrtoint ptr %in_cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %in_cache, align 4
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_write_unlock_irq(ptr noundef %ingress_lock) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_seconds() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_bh(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msg_to_mpoad(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @vcc_release_async(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @atm_mpoa_search_qos(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @eg_cache_add_entry(ptr nocapture noundef readonly %msg, ptr noundef %client) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 360) #10
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #11
  br label %cleanup

do.end5:                                          ; preds = %entry
  %use = getelementptr inbounds %struct.eg_cache_entry, ptr %call7.i.i, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  %1 = ptrtoint ptr %use to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %use, align 8
  %egress_lock = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 9
  tail call void @_raw_write_lock_irq(ptr noundef %egress_lock) #7
  %eg_cache = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 11
  %2 = ptrtoint ptr %eg_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %eg_cache, align 4
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call7.i.i, align 8
  %prev = getelementptr inbounds %struct.eg_cache_entry, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %prev, align 4
  %cmp10.not = icmp eq ptr %3, null
  br i1 %cmp10.not, label %do.end5.if.end14_crit_edge, label %if.then11

do.end5.if.end14_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then11:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  %prev13 = getelementptr inbounds %struct.eg_cache_entry, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %prev13 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7.i.i, ptr %prev13, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %do.end5.if.end14_crit_edge
  %7 = ptrtoint ptr %eg_cache to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %eg_cache, align 4
  %MPS_ctrl_ATM_addr = getelementptr inbounds %struct.eg_cache_entry, ptr %call7.i.i, i32 0, i32 3
  %mps_ctrl_addr = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 4
  %8 = call ptr @memcpy(ptr %MPS_ctrl_ATM_addr, ptr %mps_ctrl_addr, i32 20)
  %ctrl_info = getelementptr inbounds %struct.eg_cache_entry, ptr %call7.i.i, i32 0, i32 8
  %content = getelementptr inbounds %struct.k_message, ptr %msg, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %ctrl_info, ptr %content, i32 300)
  %call17 = tail call i64 @ktime_get_seconds() #7
  %time = getelementptr inbounds %struct.eg_cache_entry, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %call17, ptr %time, align 8
  %entry_state = getelementptr inbounds %struct.eg_cache_entry, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %entry_state to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 2, ptr %entry_state, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #7
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 1, ptr elementtype(i32) %use) #7, !srcloc !24
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.end14.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !25

if.end14.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.end14
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !26

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.end14.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.end14.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use, i32 noundef %.sink.i.i.i) #7
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  tail call void @_raw_write_unlock_irq(ptr noundef %egress_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %refcount_inc.exit, %do.end
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @eg_cache_get_by_cache_id(i32 noundef %cache_id, ptr noundef %mpc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %egress_lock = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 9
  tail call void @_raw_read_lock_irq(ptr noundef %egress_lock) #7
  %eg_cache = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %entry1.0.in = phi ptr [ %eg_cache, %entry ], [ %entry1.0, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, null
  br i1 %cmp.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %cache_id2 = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1.0, i32 0, i32 8, i32 2
  %1 = ptrtoint ptr %cache_id2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cache_id2, align 4
  %cmp3 = icmp eq i32 %2, %cache_id
  br i1 %cmp3, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.then:                                          ; preds = %while.body
  %use = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1.0, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 1, ptr elementtype(i32) %use) #7, !srcloc !24
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !25

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !26

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use, i32 noundef %.sink.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  tail call void @_raw_read_unlock_irq(ptr noundef %egress_lock) #7
  ret ptr %entry1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @eg_cache_get_by_tag(i32 noundef %tag, ptr noundef %mpc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %egress_lock = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 9
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef %egress_lock) #7
  %eg_cache = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %entry1.0.in = phi ptr [ %eg_cache, %entry ], [ %entry1.0, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp2.not = icmp eq ptr %entry1.0, null
  br i1 %cmp2.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %tag4 = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1.0, i32 0, i32 8, i32 3
  %1 = ptrtoint ptr %tag4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %tag4, align 4
  %cmp5 = icmp eq i32 %2, %tag
  br i1 %cmp5, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.then:                                          ; preds = %while.body
  %use = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1.0, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 1, ptr elementtype(i32) %use) #7, !srcloc !24
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !25

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !26

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use, i32 noundef %.sink.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %egress_lock, i32 noundef %call) #7
  ret ptr %entry1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @eg_cache_get_by_vcc(ptr noundef readnone %vcc, ptr noundef %mpc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %egress_lock = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 9
  %call = tail call i32 @_raw_read_lock_irqsave(ptr noundef %egress_lock) #7
  %eg_cache = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %entry1.0.in = phi ptr [ %eg_cache, %entry ], [ %entry1.0, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp2.not = icmp eq ptr %entry1.0, null
  br i1 %cmp2.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %shortcut = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1.0, i32 0, i32 4
  %1 = ptrtoint ptr %shortcut to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shortcut, align 4
  %cmp4 = icmp eq ptr %2, %vcc
  br i1 %cmp4, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.then:                                          ; preds = %while.body
  %use = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1.0, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 1, ptr elementtype(i32) %use) #7, !srcloc !24
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !25

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !26

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use, i32 noundef %.sink.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  tail call void @_raw_read_unlock_irqrestore(ptr noundef %egress_lock, i32 noundef %call) #7
  ret ptr %entry1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @eg_cache_get_by_src_ip(i32 noundef %ipaddr, ptr noundef %mpc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %egress_lock = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 9
  tail call void @_raw_read_lock_irq(ptr noundef %egress_lock) #7
  %eg_cache = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 11
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %entry1.0.in = phi ptr [ %eg_cache, %entry ], [ %entry1.0, %while.body.while.cond_crit_edge ]
  %0 = ptrtoint ptr %entry1.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %entry1.0 = load ptr, ptr %entry1.0.in, align 4
  %cmp.not = icmp eq ptr %entry1.0, null
  br i1 %cmp.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %latest_ip_addr = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1.0, i32 0, i32 7
  %1 = ptrtoint ptr %latest_ip_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %latest_ip_addr, align 8
  %cmp2 = icmp eq i32 %2, %ipaddr
  br i1 %cmp2, label %if.then, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.then:                                          ; preds = %while.body
  %use = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1.0, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #7
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 1, ptr elementtype(i32) %use) #7, !srcloc !24
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !25

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !26

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %use, i32 noundef %.sink.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  tail call void @_raw_read_unlock_irq(ptr noundef %egress_lock) #7
  ret ptr %entry1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eg_cache_put(ptr noundef %entry1) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %use = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1, i32 0, i32 9
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %use, i32 1, i32 3, i32 1) #7
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use, ptr %use, i32 1, ptr elementtype(i32) %use) #7, !srcloc !28
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !26

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @refcount_warn_saturate(ptr noundef %use, i32 noundef 3) #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !29
  tail call void @kfree_sensitive(ptr noundef %entry1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eg_cache_remove_entry(ptr noundef %entry1, ptr noundef %client) #1 align 64 {
entry:
  %msg = alloca %struct.k_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 412, ptr nonnull %msg) #7
  %0 = call ptr @memset(ptr %msg, i32 255, i32 412)
  %shortcut = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1, i32 0, i32 4
  %1 = ptrtoint ptr %shortcut to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shortcut, align 4
  %prev = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1, i32 0, i32 1
  %3 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev, align 4
  %cmp.not = icmp eq ptr %4, null
  %5 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %entry1, align 8
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %4, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %eg_cache = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 11
  %8 = ptrtoint ptr %eg_cache to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %eg_cache, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %entry1, align 8
  %cmp6.not = icmp eq ptr %10, null
  br i1 %cmp6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev, align 4
  %prev10 = getelementptr inbounds %struct.eg_cache_entry, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %prev10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %prev10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %eg_ops = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 10
  %14 = ptrtoint ptr %eg_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %eg_ops, align 4
  %put = getelementptr inbounds %struct.eg_cache_ops, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %put, align 4
  tail call void %17(ptr noundef %entry1) #7
  %in_cache = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 8
  %18 = ptrtoint ptr %in_cache to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %in_cache, align 4
  %cmp12 = icmp eq ptr %19, null
  br i1 %cmp12, label %land.lhs.true, label %if.end11.if.end16_crit_edge

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end11
  %eg_cache13 = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 11
  %20 = ptrtoint ptr %eg_cache13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %eg_cache13, align 4
  %cmp14 = icmp eq ptr %21, null
  br i1 %cmp14, label %if.then15, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 204, ptr %msg, align 4
  %call = call i32 @msg_to_mpoad(ptr noundef nonnull %msg, ptr noundef %client) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %land.lhs.true.if.end16_crit_edge, %if.end11.if.end16_crit_edge
  %cmp17.not = icmp eq ptr %2, null
  br i1 %cmp17.not, label %if.end16.cleanup26_crit_edge, label %if.then18

if.end16.cleanup26_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup26

if.then18:                                        ; preds = %if.end16
  %in_ops = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 7
  %23 = ptrtoint ptr %in_ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %in_ops, align 4
  %get_by_vcc = getelementptr inbounds %struct.in_cache_ops, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %get_by_vcc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_by_vcc, align 4
  %call19 = call ptr %26(ptr noundef nonnull %2, ptr noundef %client) #7
  %cmp20.not = icmp eq ptr %call19, null
  br i1 %cmp20.not, label %if.end24, label %if.then21

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %in_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %in_ops, align 4
  %put23 = getelementptr inbounds %struct.in_cache_ops, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %put23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %put23, align 4
  call void %30(ptr noundef nonnull %call19) #7
  br label %cleanup26

if.end24:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  call void @vcc_release_async(ptr noundef nonnull %2, i32 noundef -32) #7
  br label %cleanup26

cleanup26:                                        ; preds = %if.end24, %if.then21, %if.end16.cleanup26_crit_edge
  call void @llvm.lifetime.end.p0(i64 412, ptr nonnull %msg) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_eg_cache_entry(ptr nocapture noundef writeonly %entry1, i16 noundef zeroext %holding_time) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get_seconds() #7
  %time = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1, i32 0, i32 2
  %0 = ptrtoint ptr %time to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %call, ptr %time, align 8
  %entry_state = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1, i32 0, i32 6
  %1 = ptrtoint ptr %entry_state to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 2, ptr %entry_state, align 4
  %holding_time2 = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %holding_time2 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %holding_time, ptr %holding_time2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clear_expired(ptr noundef %client) #1 align 64 {
entry:
  %msg = alloca %struct.k_message, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 412, ptr nonnull %msg) #7
  %0 = call ptr @memset(ptr %msg, i32 255, i32 412)
  %call = tail call i64 @ktime_get_seconds() #7
  %egress_lock = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 9
  tail call void @_raw_write_lock_irq(ptr noundef %egress_lock) #7
  %eg_cache = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 11
  %1 = ptrtoint ptr %eg_cache to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %eg_cache, align 4
  %cmp.not17 = icmp eq ptr %2, null
  br i1 %cmp.not17, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %content = getelementptr inbounds %struct.k_message, ptr %msg, i32 0, i32 3
  %eg_ops = getelementptr inbounds %struct.mpoa_client, ptr %client, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %entry1.018 = phi ptr [ %2, %while.body.lr.ph ], [ %4, %if.end.while.body_crit_edge ]
  %3 = ptrtoint ptr %entry1.018 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %entry1.018, align 8
  %time = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1.018, i32 0, i32 2
  %5 = ptrtoint ptr %time to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %time, align 8
  %sub = sub i64 %call, %6
  %holding_time = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1.018, i32 0, i32 8, i32 7
  %7 = ptrtoint ptr %holding_time to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %holding_time, align 4
  %conv = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %sub, i64 %conv)
  %cmp2 = icmp sgt i64 %sub, %conv
  br i1 %cmp2, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_info = getelementptr inbounds %struct.eg_cache_entry, ptr %entry1.018, i32 0, i32 8
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 206, ptr %msg, align 4
  %10 = call ptr @memcpy(ptr %content, ptr %ctrl_info, i32 300)
  %call5 = call i32 @msg_to_mpoad(ptr noundef nonnull %msg, ptr noundef %client) #7
  %11 = ptrtoint ptr %eg_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %eg_ops, align 4
  %remove_entry = getelementptr inbounds %struct.eg_cache_ops, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %remove_entry to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remove_entry, align 4
  call void %14(ptr noundef nonnull %entry1.018, ptr noundef %client) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %cmp.not = icmp eq ptr %4, null
  br i1 %cmp.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @_raw_write_unlock_irq(ptr noundef %egress_lock) #7
  call void @llvm.lifetime.end.p0(i64 412, ptr nonnull %msg) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eg_destroy_cache(ptr noundef %mpc) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %egress_lock = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 9
  tail call void @_raw_write_lock_irq(ptr noundef %egress_lock) #7
  %eg_cache = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 11
  %0 = ptrtoint ptr %eg_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %eg_cache, align 4
  %cmp.not8 = icmp eq ptr %1, null
  br i1 %cmp.not8, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %eg_ops = getelementptr inbounds %struct.mpoa_client, ptr %mpc, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %2 = phi ptr [ %1, %while.body.lr.ph ], [ %8, %while.body.while.body_crit_edge ]
  %3 = ptrtoint ptr %eg_ops to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %eg_ops, align 4
  %remove_entry = getelementptr inbounds %struct.eg_cache_ops, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %remove_entry to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %remove_entry, align 4
  tail call void %6(ptr noundef nonnull %2, ptr noundef %mpc) #7
  %7 = ptrtoint ptr %eg_cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %eg_cache, align 4
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_write_unlock_irq(ptr noundef %egress_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irq(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_read_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @ingress_ops, !1, !"ingress_ops", i1 false, i1 false}
!1 = !{!"../net/atm/mpoa_caches.c", i32 534, i32 34}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/atm/mpoa_caches.c", i32 103, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @in_cache_add_entry._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @in_cache_add_entry._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @egress_ops, !9, !"egress_ops", i1 false, i1 false}
!9 = !{!"../net/atm/mpoa_caches.c", i32 548, i32 34}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/atm/mpoa_caches.c", i32 462, i32 3}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @eg_cache_add_entry._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @eg_cache_add_entry._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2148619213, i64 2148619245, i64 2148619274, i64 2148619308, i64 2148619339, i64 2148619362}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2148707238}
!28 = !{i64 2148621678, i64 2148621710, i64 2148621739, i64 2148621773, i64 2148621804, i64 2148621827}
!29 = !{i64 2149905011}
