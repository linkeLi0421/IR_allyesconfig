; ModuleID = '/llk/IR_all_yes/net/atm/atm_misc.c_pt.bc'
source_filename = "../net/atm/atm_misc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+atm_charge\22, \22a\22\09"
module asm "\09.weak\09__crc_atm_charge\09\09\09\09"
module asm "\09.long\09__crc_atm_charge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atm_charge:\09\09\09\09\09"
module asm "\09.asciz \09\22atm_charge\22\09\09\09\09\09"
module asm "__kstrtabns_atm_charge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+atm_alloc_charge\22, \22a\22\09"
module asm "\09.weak\09__crc_atm_alloc_charge\09\09\09\09"
module asm "\09.long\09__crc_atm_alloc_charge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atm_alloc_charge:\09\09\09\09\09"
module asm "\09.asciz \09\22atm_alloc_charge\22\09\09\09\09\09"
module asm "__kstrtabns_atm_alloc_charge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+atm_pcr_goal\22, \22a\22\09"
module asm "\09.weak\09__crc_atm_pcr_goal\09\09\09\09"
module asm "\09.long\09__crc_atm_pcr_goal\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_atm_pcr_goal:\09\09\09\09\09"
module asm "\09.asciz \09\22atm_pcr_goal\22\09\09\09\09\09"
module asm "__kstrtabns_atm_pcr_goal:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sonet_copy_stats\22, \22a\22\09"
module asm "\09.weak\09__crc_sonet_copy_stats\09\09\09\09"
module asm "\09.long\09__crc_sonet_copy_stats\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sonet_copy_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22sonet_copy_stats\22\09\09\09\09\09"
module asm "__kstrtabns_sonet_copy_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sonet_subtract_stats\22, \22a\22\09"
module asm "\09.weak\09__crc_sonet_subtract_stats\09\09\09\09"
module asm "\09.long\09__crc_sonet_subtract_stats\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sonet_subtract_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22sonet_subtract_stats\22\09\09\09\09\09"
module asm "__kstrtabns_sonet_subtract_stats:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.119, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.120, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.121, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon, %union.anon.0, %union.anon.1, i16, i8, i8, i32, %union.anon.3, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.115, [0 x i32], %union.anon.116, i16, i16, %union.anon.117, %struct.refcount_struct, [0 x i32], %union.anon.118 }
%union.anon = type { i64 }
%union.anon.0 = type { i32 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.42 }
%union.anon.42 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.115 = type { i32 }
%union.anon.116 = type { %struct.hlist_node }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.119 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.120 = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.121 = type { ptr }
%struct.sk_buff_head = type { %union.anon.66, i32, %struct.spinlock }
%union.anon.66 = type { %struct.anon.67 }
%struct.anon.67 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon.7 }
%union.anon.7 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.8 }
%union.anon.8 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.atm_vcc = type { %struct.sock, i32, i16, i32, i32, i32, ptr, %struct.atm_qos, %struct.atm_sap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.sockaddr_atmsvc, %struct.sockaddr_atmsvc, ptr, ptr }
%struct.atm_qos = type <{ %struct.atm_trafprm, %struct.atm_trafprm, i8, [3 x i8] }>
%struct.atm_trafprm = type { i8, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atm_sap = type { %struct.atm_bhli, [3 x %struct.atm_blli] }
%struct.atm_bhli = type { i8, i8, [8 x i8] }
%struct.atm_blli = type { i8, %union.anon.140, i8, %union.anon.142 }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type { i8, i8 }
%union.anon.142 = type { %struct.anon.145 }
%struct.anon.145 = type { i8, [5 x i8] }
%struct.sockaddr_atmsvc = type { i16, %struct.anon.146 }
%struct.anon.146 = type { [20 x i8], [13 x i8], i8, i32 }
%struct.k_atm_aal_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.k_sonet_stats = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.sonet_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__kstrtab_atm_charge = external dso_local constant [0 x i8], align 1
@__kstrtabns_atm_charge = external dso_local constant [0 x i8], align 1
@__ksymtab_atm_charge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atm_charge to i32), ptr @__kstrtab_atm_charge, ptr @__kstrtabns_atm_charge }, section "___ksymtab+atm_charge", align 4
@__kstrtab_atm_alloc_charge = external dso_local constant [0 x i8], align 1
@__kstrtabns_atm_alloc_charge = external dso_local constant [0 x i8], align 1
@__ksymtab_atm_alloc_charge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atm_alloc_charge to i32), ptr @__kstrtab_atm_alloc_charge, ptr @__kstrtabns_atm_alloc_charge }, section "___ksymtab+atm_alloc_charge", align 4
@__kstrtab_atm_pcr_goal = external dso_local constant [0 x i8], align 1
@__kstrtabns_atm_pcr_goal = external dso_local constant [0 x i8], align 1
@__ksymtab_atm_pcr_goal = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @atm_pcr_goal to i32), ptr @__kstrtab_atm_pcr_goal, ptr @__kstrtabns_atm_pcr_goal }, section "___ksymtab+atm_pcr_goal", align 4
@__kstrtab_sonet_copy_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_sonet_copy_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_sonet_copy_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sonet_copy_stats to i32), ptr @__kstrtab_sonet_copy_stats, ptr @__kstrtabns_sonet_copy_stats }, section "___ksymtab+sonet_copy_stats", align 4
@__kstrtab_sonet_subtract_stats = external dso_local constant [0 x i8], align 1
@__kstrtabns_sonet_subtract_stats = external dso_local constant [0 x i8], align 1
@__ksymtab_sonet_subtract_stats = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sonet_subtract_stats to i32), ptr @__kstrtab_sonet_subtract_stats, ptr @__kstrtabns_sonet_subtract_stats }, section "___ksymtab+sonet_subtract_stats", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_atm_alloc_charge, ptr @__ksymtab_atm_charge, ptr @__ksymtab_atm_pcr_goal, ptr @__ksymtab_sonet_copy_stats, ptr @__ksymtab_sonet_subtract_stats], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @atm_charge(ptr noundef %vcc, i32 noundef %truesize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #4
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %truesize, ptr elementtype(i32) %sk_backlog.i) #4, !srcloc !19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #4
  %1 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %sk_backlog.i, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 15
  %3 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sk_rcvbuf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.not = icmp sgt i32 %2, %4
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i.i10 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #4
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %truesize, ptr elementtype(i32) %sk_backlog.i) #4, !srcloc !20
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %6 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stats, align 8
  %rx_drop = getelementptr inbounds %struct.k_atm_aal_stats, ptr %7, i32 0, i32 4
  %call.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %rx_drop, i32 1, i32 3, i32 1) #4
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop, ptr %rx_drop, i32 1, ptr elementtype(i32) %rx_drop) #4, !srcloc !19
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @atm_alloc_charge(ptr noundef %vcc, i32 noundef %pdu_size, i32 noundef %gfp_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add1 = add i32 %pdu_size, 512
  %sk_backlog.i = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #4
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %add1, ptr elementtype(i32) %sk_backlog.i) #4, !srcloc !19
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %sk_backlog.i, i32 noundef 4) #4
  %1 = ptrtoint ptr %sk_backlog.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %sk_backlog.i, align 4
  %sk_rcvbuf = getelementptr inbounds %struct.sock, ptr %vcc, i32 0, i32 15
  %3 = ptrtoint ptr %sk_rcvbuf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sk_rcvbuf, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %4)
  %cmp.not = icmp sgt i32 %2, %4
  br i1 %cmp.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @__alloc_skb(i32 noundef %pdu_size, i32 noundef %gfp_flags, i32 noundef 0, i32 noundef -1) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then.if.end7_crit_edge, label %if.then4

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 20
  %5 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %truesize, align 8
  %sub = sub i32 %6, %add1
  %call.i.i20 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #4
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %sub, ptr elementtype(i32) %sk_backlog.i) #4, !srcloc !19
  br label %cleanup8

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %entry.if.end7_crit_edge
  %call.i.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %sk_backlog.i, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %sk_backlog.i, i32 1, i32 3, i32 1) #4
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %sk_backlog.i, ptr %sk_backlog.i, i32 %add1, ptr elementtype(i32) %sk_backlog.i) #4, !srcloc !20
  %stats = getelementptr inbounds %struct.atm_vcc, ptr %vcc, i32 0, i32 16
  %9 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stats, align 8
  %rx_drop = getelementptr inbounds %struct.k_atm_aal_stats, ptr %10, i32 0, i32 4
  %call.i.i21 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_drop, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %rx_drop, i32 1, i32 3, i32 1) #4
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_drop, ptr %rx_drop, i32 1, ptr elementtype(i32) %rx_drop) #4, !srcloc !19
  br label %cleanup8

cleanup8:                                         ; preds = %if.end7, %if.then4
  %retval.1 = phi ptr [ null, %if.end7 ], [ %call.i, %if.then4 ]
  ret ptr %retval.1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @atm_pcr_goal(ptr nocapture noundef readonly %tp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pcr = getelementptr inbounds %struct.atm_trafprm, ptr %tp, i32 0, i32 2
  %0 = ptrtoint ptr %pcr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pcr, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %if.then [
    i32 0, label %entry.if.end_crit_edge
    i32 -1, label %entry.if.end_crit_edge24
  ]

entry.if.end_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub i32 0, %1
  br label %return

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge24
  %min_pcr = getelementptr inbounds %struct.atm_trafprm, ptr %tp, i32 0, i32 3
  %3 = ptrtoint ptr %min_pcr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %min_pcr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool3.not = icmp ne i32 %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool6.not = icmp eq i32 %1, 0
  %or.cond = select i1 %tobool3.not, i1 %tobool6.not, i1 false
  br i1 %or.cond, label %if.end.return_crit_edge, label %if.end9

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %max_pcr = getelementptr inbounds %struct.atm_trafprm, ptr %tp, i32 0, i32 1
  %5 = ptrtoint ptr %max_pcr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_pcr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %cmp10.not = icmp eq i32 %6, -1
  %sub13 = sub i32 0, %6
  %spec.select = select i1 %cmp10.not, i32 0, i32 %sub13
  br label %return

return:                                           ; preds = %if.end9, %if.end.return_crit_edge, %if.then
  %retval.0 = phi i32 [ %sub, %if.then ], [ %spec.select, %if.end9 ], [ %4, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sonet_copy_stats(ptr noundef %from, ptr nocapture noundef writeonly %to) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %from, i32 noundef 4) #4
  %0 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %from, align 4
  %2 = ptrtoint ptr %to to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %to, align 1
  %line_bip = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 1
  %call.i.i34 = tail call zeroext i1 @__kasan_check_read(ptr noundef %line_bip, i32 noundef 4) #4
  %3 = ptrtoint ptr %line_bip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %line_bip, align 4
  %line_bip3 = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 1
  %5 = ptrtoint ptr %line_bip3 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 %4, ptr %line_bip3, align 1
  %path_bip = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 2
  %call.i.i35 = tail call zeroext i1 @__kasan_check_read(ptr noundef %path_bip, i32 noundef 4) #4
  %6 = ptrtoint ptr %path_bip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %path_bip, align 4
  %path_bip5 = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 2
  %8 = ptrtoint ptr %path_bip5 to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 %7, ptr %path_bip5, align 1
  %line_febe = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 3
  %call.i.i36 = tail call zeroext i1 @__kasan_check_read(ptr noundef %line_febe, i32 noundef 4) #4
  %9 = ptrtoint ptr %line_febe to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %line_febe, align 4
  %line_febe7 = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 3
  %11 = ptrtoint ptr %line_febe7 to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %10, ptr %line_febe7, align 1
  %path_febe = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 4
  %call.i.i37 = tail call zeroext i1 @__kasan_check_read(ptr noundef %path_febe, i32 noundef 4) #4
  %12 = ptrtoint ptr %path_febe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %path_febe, align 4
  %path_febe9 = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 4
  %14 = ptrtoint ptr %path_febe9 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %path_febe9, align 1
  %corr_hcs = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 5
  %call.i.i38 = tail call zeroext i1 @__kasan_check_read(ptr noundef %corr_hcs, i32 noundef 4) #4
  %15 = ptrtoint ptr %corr_hcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %corr_hcs, align 4
  %corr_hcs11 = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 5
  %17 = ptrtoint ptr %corr_hcs11 to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %corr_hcs11, align 1
  %uncorr_hcs = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 6
  %call.i.i39 = tail call zeroext i1 @__kasan_check_read(ptr noundef %uncorr_hcs, i32 noundef 4) #4
  %18 = ptrtoint ptr %uncorr_hcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %uncorr_hcs, align 4
  %uncorr_hcs13 = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 6
  %20 = ptrtoint ptr %uncorr_hcs13 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %19, ptr %uncorr_hcs13, align 1
  %tx_cells = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 7
  %call.i.i40 = tail call zeroext i1 @__kasan_check_read(ptr noundef %tx_cells, i32 noundef 4) #4
  %21 = ptrtoint ptr %tx_cells to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %tx_cells, align 4
  %tx_cells15 = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 7
  %23 = ptrtoint ptr %tx_cells15 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %22, ptr %tx_cells15, align 1
  %rx_cells = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 8
  %call.i.i41 = tail call zeroext i1 @__kasan_check_read(ptr noundef %rx_cells, i32 noundef 4) #4
  %24 = ptrtoint ptr %rx_cells to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %rx_cells, align 4
  %rx_cells17 = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 8
  %26 = ptrtoint ptr %rx_cells17 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %rx_cells17, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sonet_subtract_stats(ptr noundef %from, ptr nocapture noundef readonly %to) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %to to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %to, align 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %from, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %from, i32 1, i32 3, i32 1) #4
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %from, ptr %from, i32 %1, ptr elementtype(i32) %from) #4, !srcloc !20
  %line_bip = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 1
  %3 = ptrtoint ptr %line_bip to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %line_bip, align 1
  %line_bip2 = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 1
  %call.i.i26 = tail call zeroext i1 @__kasan_check_write(ptr noundef %line_bip2, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %line_bip2, i32 1, i32 3, i32 1) #4
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %line_bip2, ptr %line_bip2, i32 %4, ptr elementtype(i32) %line_bip2) #4, !srcloc !20
  %path_bip = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 2
  %6 = ptrtoint ptr %path_bip to i32
  call void @__asan_loadN_noabort(i32 %6, i32 4)
  %7 = load i32, ptr %path_bip, align 1
  %path_bip3 = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 2
  %call.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %path_bip3, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %path_bip3, i32 1, i32 3, i32 1) #4
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %path_bip3, ptr %path_bip3, i32 %7, ptr elementtype(i32) %path_bip3) #4, !srcloc !20
  %line_febe = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 3
  %9 = ptrtoint ptr %line_febe to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %10 = load i32, ptr %line_febe, align 1
  %line_febe4 = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 3
  %call.i.i28 = tail call zeroext i1 @__kasan_check_write(ptr noundef %line_febe4, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %line_febe4, i32 1, i32 3, i32 1) #4
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %line_febe4, ptr %line_febe4, i32 %10, ptr elementtype(i32) %line_febe4) #4, !srcloc !20
  %path_febe = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 4
  %12 = ptrtoint ptr %path_febe to i32
  call void @__asan_loadN_noabort(i32 %12, i32 4)
  %13 = load i32, ptr %path_febe, align 1
  %path_febe5 = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 4
  %call.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %path_febe5, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %path_febe5, i32 1, i32 3, i32 1) #4
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %path_febe5, ptr %path_febe5, i32 %13, ptr elementtype(i32) %path_febe5) #4, !srcloc !20
  %corr_hcs = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 5
  %15 = ptrtoint ptr %corr_hcs to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %16 = load i32, ptr %corr_hcs, align 1
  %corr_hcs6 = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 5
  %call.i.i30 = tail call zeroext i1 @__kasan_check_write(ptr noundef %corr_hcs6, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %corr_hcs6, i32 1, i32 3, i32 1) #4
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %corr_hcs6, ptr %corr_hcs6, i32 %16, ptr elementtype(i32) %corr_hcs6) #4, !srcloc !20
  %uncorr_hcs = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 6
  %18 = ptrtoint ptr %uncorr_hcs to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %19 = load i32, ptr %uncorr_hcs, align 1
  %uncorr_hcs7 = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 6
  %call.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %uncorr_hcs7, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %uncorr_hcs7, i32 1, i32 3, i32 1) #4
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %uncorr_hcs7, ptr %uncorr_hcs7, i32 %19, ptr elementtype(i32) %uncorr_hcs7) #4, !srcloc !20
  %tx_cells = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 7
  %21 = ptrtoint ptr %tx_cells to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %tx_cells, align 1
  %tx_cells8 = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 7
  %call.i.i32 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tx_cells8, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %tx_cells8, i32 1, i32 3, i32 1) #4
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tx_cells8, ptr %tx_cells8, i32 %22, ptr elementtype(i32) %tx_cells8) #4, !srcloc !20
  %rx_cells = getelementptr inbounds %struct.sonet_stats, ptr %to, i32 0, i32 8
  %24 = ptrtoint ptr %rx_cells to i32
  call void @__asan_loadN_noabort(i32 %24, i32 4)
  %25 = load i32, ptr %rx_cells, align 1
  %rx_cells9 = getelementptr inbounds %struct.k_sonet_stats, ptr %from, i32 0, i32 8
  %call.i.i33 = tail call zeroext i1 @__kasan_check_write(ptr noundef %rx_cells9, i32 noundef 4) #4
  tail call void @llvm.prefetch.p0(ptr %rx_cells9, i32 1, i32 3, i32 1) #4
  %26 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %rx_cells9, ptr %rx_cells9, i32 %25, ptr elementtype(i32) %rx_cells9) #4, !srcloc !20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_atm_charge, !1, !"__ksymtab_atm_charge", i1 false, i1 false}
!1 = !{!"../net/atm/atm_misc.c", i32 24, i32 1}
!2 = !{ptr @__ksymtab_atm_alloc_charge, !3, !"__ksymtab_atm_alloc_charge", i1 false, i1 false}
!3 = !{!"../net/atm/atm_misc.c", i32 46, i32 1}
!4 = !{ptr @__ksymtab_atm_pcr_goal, !5, !"__ksymtab_atm_pcr_goal", i1 false, i1 false}
!5 = !{!"../net/atm/atm_misc.c", i32 86, i32 1}
!6 = !{ptr @__ksymtab_sonet_copy_stats, !7, !"__ksymtab_sonet_copy_stats", i1 false, i1 false}
!7 = !{!"../net/atm/atm_misc.c", i32 94, i32 1}
!8 = !{ptr @__ksymtab_sonet_subtract_stats, !9, !"__ksymtab_sonet_subtract_stats", i1 false, i1 false}
!9 = !{!"../net/atm/atm_misc.c", i32 102, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2148340735, i64 2148340761, i64 2148340790, i64 2148340824, i64 2148340855, i64 2148340878}
!20 = !{i64 2148343200, i64 2148343226, i64 2148343255, i64 2148343289, i64 2148343320, i64 2148343343}
