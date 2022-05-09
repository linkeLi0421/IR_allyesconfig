; ModuleID = '/llk/IR_all_yes/net/tls/tls_toe.c_pt.bc'
source_filename = "../net/tls/tls_toe.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tls_toe_register_device\22, \22a\22\09"
module asm "\09.weak\09__crc_tls_toe_register_device\09\09\09\09"
module asm "\09.long\09__crc_tls_toe_register_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tls_toe_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22tls_toe_register_device\22\09\09\09\09\09"
module asm "__kstrtabns_tls_toe_register_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tls_toe_unregister_device\22, \22a\22\09"
module asm "\09.weak\09__crc_tls_toe_unregister_device\09\09\09\09"
module asm "\09.long\09__crc_tls_toe_unregister_device\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tls_toe_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22tls_toe_unregister_device\22\09\09\09\09\09"
module asm "__kstrtabns_tls_toe_unregister_device:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.159, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.160, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.161, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.155, [0 x i32], %union.anon.156, i16, i16, %union.anon.157, %struct.refcount_struct, [0 x i32], %union.anon.158 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.44 }
%union.anon.44 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.155 = type { i32 }
%union.anon.156 = type { %struct.hlist_node }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.anon.159 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.160 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.161 = type { ptr }
%struct.sk_buff_head = type { %union.anon.68, i32, %struct.spinlock }
%union.anon.68 = type { %struct.anon.69 }
%struct.anon.69 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.tls_context = type { %struct.tls_prot_info, i8, ptr, ptr, ptr, ptr, ptr, %struct.cipher_context, %struct.cipher_context, ptr, i16, i8, i8, %struct.mutex, i32, ptr, ptr, ptr, %union.tls_crypto_context, %union.tls_crypto_context, %struct.list_head, %struct.refcount_struct, %struct.callback_head }
%struct.tls_prot_info = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.cipher_context = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.tls_crypto_context = type { %union.anon.179 }
%union.anon.179 = type { %struct.tls12_crypto_info_aes_gcm_256 }
%struct.tls12_crypto_info_aes_gcm_256 = type { %struct.tls_crypto_info, [8 x i8], [32 x i8], [4 x i8], [8 x i8] }
%struct.tls_crypto_info = type { i16, i16 }
%struct.inet_connection_sock = type { %struct.inet_sock, %struct.request_sock_queue, ptr, i32, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.hlist_node, ptr, i8, i8, i8, i8, i8, i8, i16, %struct.anon.193, %struct.anon.194, i32, i32, [13 x i64] }
%struct.inet_sock = type { %struct.sock, ptr, i32, i16, i16, ptr, i16, i16, i8, i8, i8, i8, i16, i8, i8, i32, i32, i32, ptr, %struct.inet_cork_full }
%struct.inet_cork_full = type { %struct.inet_cork, %struct.flowi }
%struct.inet_cork = type { i32, i32, ptr, i32, i32, ptr, i8, i8, i16, i8, i16, i64, i32 }
%struct.flowi = type { %union.anon.39 }
%union.anon.39 = type { %struct.flowi6 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.request_sock_queue = type { %struct.spinlock, i8, i32, %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.fastopen_queue }
%struct.fastopen_queue = type { ptr, ptr, %struct.spinlock, i32, i32, ptr }
%struct.anon.193 = type { i8, i8, i8, i8, i32, i32, i32, i16, i16 }
%struct.anon.194 = type { i32, i32, i32, i32 }
%struct.proto = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i8, ptr, i32, i32, i32, i32, ptr, ptr, ptr, %union.anon.154, ptr, [32 x i8], %struct.list_head, ptr }
%union.anon.154 = type { ptr }
%struct.tls_toe_device = type { [32 x i8], %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref }
%struct.kref = type { %struct.refcount_struct }

@device_spinlock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.7 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@device_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @device_list, ptr @device_list }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_tls_toe_register_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_tls_toe_register_device = external dso_local constant [0 x i8], align 1
@__ksymtab_tls_toe_register_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tls_toe_register_device to i32), ptr @__kstrtab_tls_toe_register_device, ptr @__kstrtabns_tls_toe_register_device }, section "___ksymtab+tls_toe_register_device", align 4
@__kstrtab_tls_toe_unregister_device = external dso_local constant [0 x i8], align 1
@__kstrtabns_tls_toe_unregister_device = external dso_local constant [0 x i8], align 1
@__ksymtab_tls_toe_unregister_device = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tls_toe_unregister_device to i32), ptr @__kstrtab_tls_toe_unregister_device, ptr @__kstrtabns_tls_toe_unregister_device }, section "___ksymtab+tls_toe_unregister_device", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"device_spinlock\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"device_spinlock\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"device_list\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 41, i32 8 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private constant [21 x i8] c"../net/tls/tls_toe.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 42, i32 8 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_tls_toe_register_device, ptr @__ksymtab_tls_toe_unregister_device, ptr @device_spinlock, ptr @device_list, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_spinlock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_toe_bypass(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @device_spinlock) #3
  %.pn27 = load ptr, ptr @device_list, align 4
  %cmp.not29 = icmp eq ptr %.pn27, @device_list
  br i1 %cmp.not29, label %entry.out_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn30 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn27, %entry.for.body_crit_edge ]
  %feature = getelementptr i8, ptr %.pn30, i32 8
  %0 = ptrtoint ptr %feature to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %feature, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %dev.031 = getelementptr i8, ptr %.pn30, i32 -32
  %call = tail call i32 %1(ptr noundef %dev.031) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true.for.inc_crit_edge, label %if.then

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  %call3 = tail call ptr @tls_ctx_create(ptr noundef %sk) #3
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then.out_crit_edge, label %if.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %sk_destruct = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 82
  %2 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_destruct, align 4
  %sk_destruct6 = getelementptr inbounds %struct.tls_context, ptr %call3, i32 0, i32 17
  %4 = ptrtoint ptr %sk_destruct6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %sk_destruct6, align 4
  store ptr @tls_toe_sk_destruct, ptr %sk_destruct, align 4
  %rx_conf = getelementptr inbounds %struct.tls_context, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %rx_conf to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %rx_conf, align 4
  %bf.clear = and i8 %bf.load, 3
  %bf.set10 = or i8 %bf.clear, 108
  store i8 %bf.set10, ptr %rx_conf, align 4
  tail call void @update_sk_prot(ptr noundef %sk, ptr noundef nonnull %call3) #3
  br label %out

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %.pn30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn30, align 4
  %cmp.not = icmp eq ptr %.pn, @device_list
  br i1 %cmp.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

out:                                              ; preds = %for.inc.out_crit_edge, %if.end, %if.then.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ 1, %if.end ], [ 0, %if.then.out_crit_edge ], [ 0, %entry.out_crit_edge ], [ 0, %for.inc.out_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @device_spinlock) #3
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tls_ctx_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tls_toe_sk_destruct(ptr noundef %sk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %sk_destruct = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %sk_destruct to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_destruct, align 4
  tail call void %3(ptr noundef %sk) #3
  %4 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr null, ptr %icsk_ulp_data.i, align 8
  tail call void @tls_ctx_free(ptr noundef %sk, ptr noundef %1) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @update_sk_prot(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_toe_unhash(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @device_spinlock) #3
  %.pn20 = load ptr, ptr @device_list, align 4
  %cmp.not22 = icmp eq ptr %.pn20, @device_list
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn23 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn20, %entry.for.body_crit_edge ]
  %dev.024 = getelementptr i8, ptr %.pn23, i32 -32
  %unhash = getelementptr i8, ptr %.pn23, i32 16
  %2 = ptrtoint ptr %unhash to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unhash, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then:                                          ; preds = %for.body
  %kref = getelementptr i8, ptr %.pn23, i32 24
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #3
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #3
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #3, !srcloc !18
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !19

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !20

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #3
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @device_spinlock) #3
  %6 = ptrtoint ptr %unhash to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unhash, align 4
  tail call void %7(ptr noundef %dev.024, ptr noundef %sk) #3
  %release = getelementptr i8, ptr %.pn23, i32 20
  %8 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #3
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #3, !srcloc !22
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i19 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i19, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !20

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #3
  br label %kref_put.exit

if.then.i:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void %9(ptr noundef %kref) #3
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @device_spinlock) #3
  br label %for.inc

for.inc:                                          ; preds = %kref_put.exit, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn23, align 4
  %cmp.not = icmp eq ptr %.pn, @device_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @device_spinlock) #3
  %sk_proto = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 15
  %12 = ptrtoint ptr %sk_proto to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sk_proto, align 4
  %unhash8 = getelementptr inbounds %struct.proto, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %unhash8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %unhash8, align 4
  tail call void %15(ptr noundef %sk) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tls_toe_hash(ptr noundef %sk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %icsk_ulp_data.i = getelementptr inbounds %struct.inet_connection_sock, ptr %sk, i32 0, i32 13
  %0 = ptrtoint ptr %icsk_ulp_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %icsk_ulp_data.i, align 8
  %sk_proto = getelementptr inbounds %struct.tls_context, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %sk_proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sk_proto, align 4
  %hash = getelementptr inbounds %struct.proto, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hash, align 4
  %call1 = tail call i32 %5(ptr noundef %sk) #3
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @device_spinlock) #3
  %.pn28 = load ptr, ptr @device_list, align 4
  %cmp.not30 = icmp eq ptr %.pn28, @device_list
  br i1 %cmp.not30, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn32 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn28, %entry.for.body_crit_edge ]
  %err.031 = phi i32 [ %err.1, %for.inc.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  %dev.033 = getelementptr i8, ptr %.pn32, i32 -32
  %hash2 = getelementptr i8, ptr %.pn32, i32 12
  %6 = ptrtoint ptr %hash2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hash2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.inc

if.then:                                          ; preds = %for.body
  %kref = getelementptr i8, ptr %.pn32, i32 24
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #3
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #3
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #3, !srcloc !18
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !19

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.kref_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !20

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.kref_get.exit_crit_edge:          ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %kref_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #3
  br label %kref_get.exit

kref_get.exit:                                    ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.kref_get.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @device_spinlock) #3
  %10 = ptrtoint ptr %hash2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hash2, align 4
  %call4 = tail call i32 %11(ptr noundef %dev.033, ptr noundef %sk) #3
  %or = or i32 %call4, %err.031
  %release = getelementptr i8, ptr %.pn32, i32 20
  %12 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %release, align 4
  %call.i.i.i.i.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !21
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #3
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #3, !srcloc !22
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i27 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i27, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !20

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef 3) #3
  br label %kref_put.exit

if.then.i:                                        ; preds = %kref_get.exit
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !23
  tail call void %13(ptr noundef %kref) #3
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @device_spinlock) #3
  br label %for.inc

for.inc:                                          ; preds = %kref_put.exit, %for.body.for.inc_crit_edge
  %err.1 = phi i32 [ %or, %kref_put.exit ], [ %err.031, %for.body.for.inc_crit_edge ]
  %15 = ptrtoint ptr %.pn32 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn32, align 4
  %cmp.not = icmp eq ptr %.pn, @device_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %err.0.lcssa = phi i32 [ %call1, %entry.for.end_crit_edge ], [ %err.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @device_spinlock) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.lcssa)
  %tobool11.not = icmp eq i32 %err.0.lcssa, 0
  br i1 %tobool11.not, label %for.end.if.end13_crit_edge, label %if.then12

for.end.if.end13_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end13

if.then12:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @tls_toe_unhash(ptr noundef %sk)
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %for.end.if.end13_crit_edge
  ret i32 %err.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_toe_register_device(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @device_spinlock) #3
  %dev_list = getelementptr inbounds %struct.tls_toe_device, ptr %device, i32 0, i32 1
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @device_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %dev_list, ptr noundef %0, ptr noundef nonnull @device_list) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  store ptr %dev_list, ptr getelementptr inbounds (%struct.list_head, ptr @device_list, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %dev_list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @device_list, ptr %dev_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.tls_toe_device, ptr %device, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %0, ptr %prev3.i.i, align 4
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %dev_list, ptr %0, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @device_spinlock) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tls_toe_unregister_device(ptr noundef %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @device_spinlock) #3
  %dev_list = getelementptr inbounds %struct.tls_toe_device, ptr %device, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %dev_list) #3
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %prev.i.i = getelementptr inbounds %struct.tls_toe_device, ptr %device, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %dev_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %dev_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %dev_list, align 4
  %prev.i = getelementptr inbounds %struct.tls_toe_device, ptr %device, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @device_spinlock) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tls_ctx_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17}

!0 = !{ptr @__ksymtab_tls_toe_register_device, !1, !"__ksymtab_tls_toe_register_device", i1 false, i1 false}
!1 = !{!"../net/tls/tls_toe.c", i32 131, i32 1}
!2 = !{ptr @__ksymtab_tls_toe_unregister_device, !3, !"__ksymtab_tls_toe_unregister_device", i1 false, i1 false}
!3 = !{!"../net/tls/tls_toe.c", i32 139, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/tls/tls_toe.c", i32 42, i32 8}
!6 = !{ptr @device_spinlock, !5, !"device_spinlock", i1 false, i1 false}
!7 = !{ptr @device_list, !8, !"device_list", i1 false, i1 false}
!8 = !{!"../net/tls/tls_toe.c", i32 41, i32 8}
!9 = !{i32 1, !"wchar_size", i32 2}
!10 = !{i32 1, !"min_enum_size", i32 4}
!11 = !{i32 8, !"branch-target-enforcement", i32 0}
!12 = !{i32 8, !"sign-return-address", i32 0}
!13 = !{i32 8, !"sign-return-address-all", i32 0}
!14 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!18 = !{i64 2148269560, i64 2148269592, i64 2148269621, i64 2148269655, i64 2148269686, i64 2148269709}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148357585}
!22 = !{i64 2148272025, i64 2148272057, i64 2148272086, i64 2148272120, i64 2148272151, i64 2148272174}
!23 = !{i64 2150441923}
