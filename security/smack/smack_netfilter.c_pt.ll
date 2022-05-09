; ModuleID = '/llk/IR_all_yes/security/smack/smack_netfilter.c_pt.bc'
source_filename = "../security/smack/smack_netfilter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.sk_buff = type { %union.anon.82, %union.anon.154, %union.anon.155, [48 x i8], %union.anon.156, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.158, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.154 = type { ptr }
%union.anon.155 = type { i64 }
%union.anon.156 = type { %struct.anon.157 }
%struct.anon.157 = type { i32, ptr }
%union.anon.158 = type { %struct.anon.159 }
%struct.anon.159 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.160, i32, i32, i32, i16, i16, %union.anon.162, i32, %union.anon.163, %union.anon.164, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.160 = type { i32 }
%union.anon.162 = type { i32 }
%union.anon.163 = type { i32 }
%union.anon.164 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.173, [0 x i32], %union.anon.174, i16, i16, %union.anon.175, %struct.refcount_struct, [0 x i32], %union.anon.176 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.144 }
%union.anon.144 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.173 = type { i32 }
%union.anon.174 = type { %struct.hlist_node }
%union.anon.175 = type { i32 }
%union.anon.176 = type { i32 }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.177, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.178, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.179, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.177 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.178 = type { ptr }
%union.anon.179 = type { ptr }
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
%struct.smack_known = type { %struct.list_head, %struct.hlist_node, ptr, i32, %struct.netlbl_lsm_secattr, %struct.list_head, %struct.mutex }
%struct.netlbl_lsm_secattr = type { i32, i32, ptr, ptr, %struct.anon.192 }
%struct.anon.192 = type { %struct.anon.193, i32 }
%struct.anon.193 = type { ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }

@__initcall__kmod_smack__625_80_smack_nf_ip_init6 = internal global ptr @smack_nf_ip_init, section ".initcall6.init", align 4
@smack_enabled = external dso_local local_unnamed_addr global i32, section ".init.data", align 4
@smack_nf_ip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017Smack: Registering netfilter hooks\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smack_nf_ip_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"security/smack/smack_netfilter.c\00", [63 x i8] zeroinitializer }, align 32
@smack_nf_ip_init._entry_ptr = internal global ptr @smack_nf_ip_init._entry, section ".printk_index", align 4
@smack_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @smack_nf_register, ptr null, ptr @smack_nf_unregister, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@smack_nf_ops = internal constant { [2 x %struct.nf_hook_ops], [48 x i8] } { [2 x %struct.nf_hook_ops] [%struct.nf_hook_ops { ptr @smack_ip_output, ptr null, ptr null, i8 2, i8 0, i32 3, i32 -225 }, %struct.nf_hook_ops { ptr @smack_ip_output, ptr null, ptr null, i8 10, i8 0, i32 3, i32 -225 }], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 76, i32 2 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"smack_net_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 66, i32 33 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"smack_nf_ops\00", align 1
@___asan_gen_.19 = private constant [36 x i8] c"../security/smack/smack_netfilter.c\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 38, i32 33 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__initcall__kmod_smack__625_80_smack_nf_ip_init6, ptr @smack_nf_ip_init._entry, ptr @smack_nf_ip_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @smack_net_ops, ptr @smack_nf_ops], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_nf_ip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smack_nf_ops to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_nf_ip_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smack_enabled to i32))
  %0 = load i32, ptr @smack_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @smack_net_ops) #5
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smack_nf_register(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nf_register_net_hooks(ptr noundef %net, ptr noundef nonnull @smack_nf_ops, i32 noundef 2) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smack_nf_unregister(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nf_unregister_net_hooks(ptr noundef %net, ptr noundef nonnull @smack_nf_ops, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_register_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @smack_ip_output(ptr nocapture noundef readnone %priv, ptr nocapture noundef %skb, ptr nocapture noundef readnone %state) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %tobool.not.i.i = icmp eq ptr %2, null
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %land.lhs.true.i.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.i.i:                                ; preds = %entry
  %skc_state.i.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %skc_state.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load volatile i8, ptr %skc_state.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %4)
  %cmp.i.i = icmp eq i8 %4, 12
  br i1 %cmp.i.i, label %skb_to_full_sk.exit, label %land.lhs.true.i.i.land.lhs.true_crit_edge

land.lhs.true.i.i.land.lhs.true_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

skb_to_full_sk.exit:                              ; preds = %land.lhs.true.i.i
  %5 = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %skb_to_full_sk.exit.if.end_crit_edge, label %skb_to_full_sk.exit.land.lhs.true_crit_edge

skb_to_full_sk.exit.land.lhs.true_crit_edge:      ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

skb_to_full_sk.exit.if.end_crit_edge:             ; preds = %skb_to_full_sk.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %skb_to_full_sk.exit.land.lhs.true_crit_edge, %land.lhs.true.i.i.land.lhs.true_crit_edge
  %sk.addr.0.i.i11 = phi ptr [ %7, %skb_to_full_sk.exit.land.lhs.true_crit_edge ], [ %2, %land.lhs.true.i.i.land.lhs.true_crit_edge ]
  %sk_security = getelementptr inbounds %struct.sock, ptr %sk.addr.0.i.i11, i32 0, i32 73
  %8 = ptrtoint ptr %sk_security to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk_security, align 8
  %tobool1.not = icmp eq ptr %9, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %smk_secid = getelementptr inbounds %struct.smack_known, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %smk_secid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %smk_secid, align 4
  %secmark = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 12
  %14 = ptrtoint ptr %secmark to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %secmark, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %skb_to_full_sk.exit.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_unregister_net_hooks(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__initcall__kmod_smack__625_80_smack_nf_ip_init6, !1, !"__initcall__kmod_smack__625_80_smack_nf_ip_init6", i1 false, i1 false}
!1 = !{!"../security/smack/smack_netfilter.c", i32 80, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../security/smack/smack_netfilter.c", i32 76, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @smack_nf_ip_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @smack_nf_ip_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @smack_net_ops, !9, !"smack_net_ops", i1 false, i1 false}
!9 = !{!"../security/smack/smack_netfilter.c", i32 66, i32 33}
!10 = !{ptr @smack_nf_ops, !11, !"smack_nf_ops", i1 false, i1 false}
!11 = !{!"../security/smack/smack_netfilter.c", i32 38, i32 33}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
