; ModuleID = '/llk/IR_all_yes/drivers/net/ppp/pppox.c_pt.bc'
source_filename = "../drivers/net/ppp/pppox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+register_pppox_proto\22, \22a\22\09"
module asm "\09.weak\09__crc_register_pppox_proto\09\09\09\09"
module asm "\09.long\09__crc_register_pppox_proto\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_pppox_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22register_pppox_proto\22\09\09\09\09\09"
module asm "__kstrtabns_register_pppox_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+unregister_pppox_proto\22, \22a\22\09"
module asm "\09.weak\09__crc_unregister_pppox_proto\09\09\09\09"
module asm "\09.long\09__crc_unregister_pppox_proto\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_pppox_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_pppox_proto\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_pppox_proto:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pppox_unbind_sock\22, \22a\22\09"
module asm "\09.weak\09__crc_pppox_unbind_sock\09\09\09\09"
module asm "\09.long\09__crc_pppox_unbind_sock\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pppox_unbind_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22pppox_unbind_sock\22\09\09\09\09\09"
module asm "__kstrtabns_pppox_unbind_sock:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+pppox_ioctl\22, \22a\22\09"
module asm "\09.weak\09__crc_pppox_ioctl\09\09\09\09"
module asm "\09.long\09__crc_pppox_ioctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pppox_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22pppox_ioctl\22\09\09\09\09\09"
module asm "__kstrtabns_pppox_ioctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.net_proto_family = type { i32, ptr, ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.127, [0 x i32], %union.anon.128, i16, i16, %union.anon.129, %struct.refcount_struct, [0 x i32], %union.anon.130 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.127 = type { i32 }
%union.anon.128 = type { %struct.hlist_node }
%union.anon.129 = type { i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.130 = type { i32 }
%struct.pppox_sock = type { %struct.sock, %struct.ppp_channel, ptr, %union.anon.145, i16 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.131, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.132, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.133, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.131 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.132 = type { ptr }
%union.anon.133 = type { ptr }
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.page_frag = type { ptr, i16, i16 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.callback_head = type { ptr, ptr }
%struct.ppp_channel = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%union.anon.145 = type { %struct.pppoe_opt }
%struct.pppoe_opt = type { ptr, i32, %struct.pppoe_addr, %struct.sockaddr_pppox, %struct.work_struct }
%struct.pppoe_addr = type { i16, [6 x i8], [16 x i8] }
%struct.sockaddr_pppox = type <{ i16, i32, %union.anon.146 }>
%union.anon.146 = type { %struct.pptp_addr, [16 x i8] }
%struct.pptp_addr = type { i16, %struct.in_addr }
%struct.in_addr = type { i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.socket = type { i32, i16, i32, ptr, ptr, ptr, [104 x i8], %struct.socket_wq }
%struct.socket_wq = type { %struct.wait_queue_head, ptr, i32, %struct.callback_head, [60 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.pppox_proto = type { ptr, ptr, ptr }

@pppox_protos = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@__kstrtab_register_pppox_proto = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_pppox_proto = external dso_local constant [0 x i8], align 1
@__ksymtab_register_pppox_proto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_pppox_proto to i32), ptr @__kstrtab_register_pppox_proto, ptr @__kstrtabns_register_pppox_proto }, section "___ksymtab+register_pppox_proto", align 4
@__kstrtab_unregister_pppox_proto = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_pppox_proto = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_pppox_proto = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_pppox_proto to i32), ptr @__kstrtab_unregister_pppox_proto, ptr @__kstrtabns_unregister_pppox_proto }, section "___ksymtab+unregister_pppox_proto", align 4
@__kstrtab_pppox_unbind_sock = external dso_local constant [0 x i8], align 1
@__kstrtabns_pppox_unbind_sock = external dso_local constant [0 x i8], align 1
@__ksymtab_pppox_unbind_sock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pppox_unbind_sock to i32), ptr @__kstrtab_pppox_unbind_sock, ptr @__kstrtabns_pppox_unbind_sock }, section "___ksymtab+pppox_unbind_sock", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/net/ppp/pppox.c\00", [40 x i8] zeroinitializer }, align 32
@__kstrtab_pppox_ioctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_pppox_ioctl = external dso_local constant [0 x i8], align 1
@__ksymtab_pppox_ioctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pppox_ioctl to i32), ptr @__kstrtab_pppox_ioctl, ptr @__kstrtabns_pppox_ioctl }, section "___ksymtab+pppox_ioctl", align 4
@__initcall__kmod_pppox__457_152_pppox_init6 = internal global ptr @pppox_init, section ".initcall6.init", align 4
@__exitcall_pppox_exit = internal global ptr @pppox_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author458 = internal constant [55 x i8] c"pppox.author=Michal Ostrowski <mostrows@speakeasy.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description459 = internal constant [66 x i8] c"pppox.description=PPP over Ethernet driver (generic socket layer)\00", section ".modinfo", align 1
@__UNIQUE_ID_file460 = internal constant [33 x i8] c"pppox.file=drivers/net/ppp/pppox\00", section ".modinfo", align 1
@__UNIQUE_ID_license461 = internal constant [18 x i8] c"pppox.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias462 = internal constant [22 x i8] c"pppox.alias=net-pf-24\00", section ".modinfo", align 1
@pppox_proto_family = internal constant { %struct.net_proto_family, [20 x i8] } { %struct.net_proto_family { i32 24, ptr @pppox_create, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net-pf-%d-proto-%d\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [13 x i8] c"pppox_protos\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 35, i32 34 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 84, i32 7 }
@___asan_gen_.8 = private unnamed_addr constant [19 x i8] c"pppox_proto_family\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 136, i32 38 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [27 x i8] c"../drivers/net/ppp/pppox.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 124, i32 3 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_alias462, ptr @__UNIQUE_ID_author458, ptr @__UNIQUE_ID_description459, ptr @__UNIQUE_ID_file460, ptr @__UNIQUE_ID_license461, ptr @__exitcall_pppox_exit, ptr @__initcall__kmod_pppox__457_152_pppox_init6, ptr @__ksymtab_pppox_ioctl, ptr @__ksymtab_pppox_unbind_sock, ptr @__ksymtab_register_pppox_proto, ptr @__ksymtab_unregister_pppox_proto, ptr @pppox_exit, ptr @pppox_protos, ptr @.str, ptr @pppox_proto_family, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppox_protos to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pppox_proto_family to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @register_pppox_proto(i32 noundef %proto_num, ptr noundef %pp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %proto_num)
  %0 = icmp ugt i32 %proto_num, 3
  br i1 %0, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [4 x ptr], ptr @pppox_protos, i32 0, i32 %proto_num
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end3, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pp, ptr %arrayidx, align 4
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %entry.return_crit_edge ], [ -114, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @unregister_pppox_proto(i32 noundef %proto_num) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %proto_num)
  %0 = icmp ult i32 %proto_num, 4
  br i1 %0, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [4 x ptr], ptr @pppox_protos, i32 0, i32 %proto_num
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %arrayidx, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pppox_unbind_sock(ptr noundef %sk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %sk, i32 0, i32 4
  %0 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %skc_state, align 2
  %2 = and i8 %1, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chan = getelementptr inbounds %struct.pppox_sock, ptr %sk, i32 0, i32 1
  tail call void @ppp_unregister_channel(ptr noundef %chan) #6
  %3 = ptrtoint ptr %skc_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store volatile i8 16, ptr %skc_state, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ppp_unregister_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pppox_ioctl(ptr noundef %sock, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sk1 = getelementptr inbounds %struct.socket, ptr %sock, i32 0, i32 4
  %0 = ptrtoint ptr %sk1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sk1, align 16
  tail call void @lock_sock_nested(ptr noundef %1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147191753, i32 %cmd)
  %cond21 = icmp eq i32 %cmd, -2147191753
  br i1 %cond21, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %skc_state = getelementptr inbounds %struct.sock_common, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load volatile i8, ptr %skc_state, align 2
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %chan = getelementptr inbounds %struct.pppox_sock, ptr %1, i32 0, i32 1
  %call2 = tail call i32 @ppp_channel_index(ptr noundef %chan) #6
  %5 = inttoptr i32 %arg to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 84) #6
  %6 = tail call i32 @llvm.read_register.i32(metadata !29) #6
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !39
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %5, i32 %call2, i32 -1226833921) #6, !srcloc !42
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #6, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #6, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %skc_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load volatile i8, ptr %skc_state, align 2
  %12 = or i8 %11, 2
  store volatile i8 %12, ptr %skc_state, align 2
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %sk_protocol = getelementptr inbounds %struct.sock, ptr %1, i32 0, i32 46
  %13 = ptrtoint ptr %sk_protocol to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sk_protocol, align 4
  %idxprom = zext i16 %14 to i32
  %arrayidx = getelementptr [4 x ptr], ptr @pppox_protos, i32 0, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %ioctl = getelementptr inbounds %struct.pppox_proto, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ioctl, align 4
  %tobool12.not = icmp eq ptr %18, null
  br i1 %tobool12.not, label %sw.default.sw.epilog_crit_edge, label %cond.true

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

cond.true:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call i32 %18(ptr noundef %sock, i32 noundef %cmd, i32 noundef %arg) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.true, %sw.default.sw.epilog_crit_edge, %if.end7, %if.end.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %rc.1 = phi i32 [ 0, %if.end7 ], [ -107, %sw.bb.sw.epilog_crit_edge ], [ -22, %if.end.sw.epilog_crit_edge ], [ %call17, %cond.true ], [ -25, %sw.default.sw.epilog_crit_edge ]
  tail call void @release_sock(ptr noundef %1) #6
  ret i32 %rc.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ppp_channel_index(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_sock(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pppox_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @sock_unregister(i32 noundef 24) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_unregister(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pppox_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @sock_register(ptr noundef nonnull @pppox_proto_family) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_sock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sock_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pppox_create(ptr noundef %net, ptr noundef %sock, i32 noundef %protocol, i32 noundef %kern) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %protocol)
  %0 = icmp ugt i32 %protocol, 3
  br i1 %0, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [4 x ptr], ptr @pppox_protos, i32 0, i32 %protocol
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end3, label %if.end.lor.lhs.false6_crit_edge

if.end.lor.lhs.false6_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false6

if.end3:                                          ; preds = %if.end
  %call = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1, i32 noundef 24, i32 noundef %protocol) #6
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %.pr, null
  br i1 %tobool5.not, label %if.end3.out_crit_edge, label %if.end3.lor.lhs.false6_crit_edge

if.end3.lor.lhs.false6_crit_edge:                 ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false6

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

lor.lhs.false6:                                   ; preds = %if.end3.lor.lhs.false6_crit_edge, %if.end.lor.lhs.false6_crit_edge
  %4 = phi ptr [ %.pr, %if.end3.lor.lhs.false6_crit_edge ], [ %2, %if.end.lor.lhs.false6_crit_edge ]
  %owner = getelementptr inbounds %struct.pppox_proto, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %owner, align 4
  %call8 = tail call zeroext i1 @try_module_get(ptr noundef %6) #6
  br i1 %call8, label %if.end10, label %lor.lhs.false6.out_crit_edge

lor.lhs.false6.out_crit_edge:                     ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end10:                                         ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call12 = tail call i32 %10(ptr noundef %net, ptr noundef %sock, i32 noundef %kern) #6
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %owner14 = getelementptr inbounds %struct.pppox_proto, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %owner14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %owner14, align 4
  tail call void @module_put(ptr noundef %14) #6
  br label %out

out:                                              ; preds = %if.end10, %lor.lhs.false6.out_crit_edge, %if.end3.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -91, %entry.out_crit_edge ], [ %call12, %if.end10 ], [ -93, %lor.lhs.false6.out_crit_edge ], [ -93, %if.end3.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__ksymtab_register_pppox_proto, !1, !"__ksymtab_register_pppox_proto", i1 false, i1 false}
!1 = !{!"../drivers/net/ppp/pppox.c", i32 63, i32 1}
!2 = !{ptr @__ksymtab_unregister_pppox_proto, !3, !"__ksymtab_unregister_pppox_proto", i1 false, i1 false}
!3 = !{!"../drivers/net/ppp/pppox.c", i32 64, i32 1}
!4 = !{ptr @__ksymtab_pppox_unbind_sock, !5, !"__ksymtab_pppox_unbind_sock", i1 false, i1 false}
!5 = !{!"../drivers/net/ppp/pppox.c", i32 65, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ppp/pppox.c", i32 84, i32 7}
!8 = !{ptr @__ksymtab_pppox_ioctl, !9, !"__ksymtab_pppox_ioctl", i1 false, i1 false}
!9 = !{!"../drivers/net/ppp/pppox.c", i32 100, i32 1}
!10 = !{ptr @__initcall__kmod_pppox__457_152_pppox_init6, !11, !"__initcall__kmod_pppox__457_152_pppox_init6", i1 false, i1 false}
!11 = !{!"../drivers/net/ppp/pppox.c", i32 152, i32 1}
!12 = !{ptr @__exitcall_pppox_exit, !13, !"__exitcall_pppox_exit", i1 false, i1 false}
!13 = !{!"../drivers/net/ppp/pppox.c", i32 153, i32 1}
!14 = !{ptr @__UNIQUE_ID_author458, !15, !"__UNIQUE_ID_author458", i1 false, i1 false}
!15 = !{!"../drivers/net/ppp/pppox.c", i32 155, i32 1}
!16 = !{ptr @__UNIQUE_ID_description459, !17, !"__UNIQUE_ID_description459", i1 false, i1 false}
!17 = !{!"../drivers/net/ppp/pppox.c", i32 156, i32 1}
!18 = !{ptr @__UNIQUE_ID_file460, !19, !"__UNIQUE_ID_file460", i1 false, i1 false}
!19 = !{!"../drivers/net/ppp/pppox.c", i32 157, i32 1}
!20 = !{ptr @__UNIQUE_ID_license461, !19, !"__UNIQUE_ID_license461", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_alias462, !22, !"__UNIQUE_ID_alias462", i1 false, i1 false}
!22 = !{!"../drivers/net/ppp/pppox.c", i32 158, i32 1}
!23 = !{ptr @pppox_protos, !24, !"pppox_protos", i1 false, i1 false}
!24 = !{!"../drivers/net/ppp/pppox.c", i32 35, i32 34}
!25 = !{ptr @pppox_proto_family, !26, !"pppox_proto_family", i1 false, i1 false}
!26 = !{!"../drivers/net/ppp/pppox.c", i32 136, i32 38}
!27 = !{ptr @.str.1, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/net/ppp/pppox.c", i32 124, i32 3}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 5000391}
!40 = !{i64 5000588}
!41 = !{i64 2152485821}
!42 = !{i64 2156894528, i64 2156894808, i64 2156895142, i64 2156895476}
