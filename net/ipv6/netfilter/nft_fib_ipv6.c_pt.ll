; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/nft_fib_ipv6.c_pt.bc'
source_filename = "../net/ipv6/netfilter/nft_fib_ipv6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nft_fib6_eval_type\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_fib6_eval_type\09\09\09\09"
module asm "\09.long\09__crc_nft_fib6_eval_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_fib6_eval_type:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_fib6_eval_type\22\09\09\09\09\09"
module asm "__kstrtabns_nft_fib6_eval_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nft_fib6_eval\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_fib6_eval\09\09\09\09"
module asm "\09.long\09__crc_nft_fib6_eval\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_fib6_eval:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_fib6_eval\22\09\09\09\09\09"
module asm "__kstrtabns_nft_fib6_eval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%struct.in6_addr = type { %union.anon.141 }
%union.anon.141 = type { [4 x i32] }
%union.flowi_uli = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.sk_buff = type { %union.anon.82, %union.anon.159, %union.anon.160, [48 x i8], %union.anon.161, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.163, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.159 = type { ptr }
%union.anon.160 = type { i64 }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { i32, ptr }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.165, i32, i32, i32, i16, i16, %union.anon.167, i32, %union.anon.168, %union.anon.169, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.165 = type { i32 }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.158, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.possible_net_t = type { ptr }
%union.anon.158 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }

@__kstrtab_nft_fib6_eval_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_fib6_eval_type = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_fib6_eval_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_fib6_eval_type to i32), ptr @__kstrtab_nft_fib6_eval_type, ptr @__kstrtabns_nft_fib6_eval_type }, section "___ksymtab_gpl+nft_fib6_eval_type", align 4
@__kstrtab_nft_fib6_eval = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_fib6_eval = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_fib6_eval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_fib6_eval to i32), ptr @__kstrtab_nft_fib6_eval, ptr @__kstrtabns_nft_fib6_eval }, section "___ksymtab_gpl+nft_fib6_eval", align 4
@nft_fib6_type = internal global %struct.nft_expr_type { ptr @nft_fib6_select_ops, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_fib_policy, i32 3, i8 10, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_fib_ipv6__727_266_nft_fib6_module_init6 = internal global ptr @nft_fib6_module_init, section ".initcall6.init", align 4
@__exitcall_nft_fib6_module_exit = internal global ptr @nft_fib6_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file728 = internal constant [50 x i8] c"nft_fib_ipv6.file=net/ipv6/netfilter/nft_fib_ipv6\00", section ".modinfo", align 1
@__UNIQUE_ID_license729 = internal constant [25 x i8] c"nft_fib_ipv6.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author730 = internal constant [52 x i8] c"nft_fib_ipv6.author=Florian Westphal <fw@strlen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias731 = internal constant [35 x i8] c"nft_fib_ipv6.alias=nft-expr-10-fib\00", section ".modinfo", align 1
@__UNIQUE_ID_description732 = internal constant [66 x i8] c"nft_fib_ipv6.description=nftables fib / ipv6 route lookup support\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fib\00", [28 x i8] zeroinitializer }, align 32
@nft_fib_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@nft_fib6_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_fib6_eval, ptr null, i32 16, ptr @nft_fib_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_fib_dump, ptr @nft_fib_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_fib6_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_fib6_type_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_fib6_eval_type, ptr null, i32 16, ptr @nft_fib_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_fib_dump, ptr @nft_fib_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_fib6_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@switch.table.nft_fib6_select_ops = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @nft_fib6_ops, ptr @nft_fib6_ops, ptr @nft_fib6_type_ops], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967274, i64 4294967283, i64 4294967285]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 5]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 249, i32 11 }
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"nft_fib6_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 216, i32 34 }
@___asan_gen_.8 = private unnamed_addr constant [18 x i8] c"nft_fib6_type_ops\00", align 1
@___asan_gen_.9 = private constant [37 x i8] c"../net/ipv6/netfilter/nft_fib_ipv6.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 207, i32 34 }
@___asan_gen_.11 = private unnamed_addr constant [33 x i8] c"switch.table.nft_fib6_select_ops\00", align 1
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias731, ptr @__UNIQUE_ID_author730, ptr @__UNIQUE_ID_description732, ptr @__UNIQUE_ID_file728, ptr @__UNIQUE_ID_license729, ptr @__exitcall_nft_fib6_module_exit, ptr @__initcall__kmod_nft_fib_ipv6__727_266_nft_fib6_module_init6, ptr @__ksymtab_nft_fib6_eval, ptr @__ksymtab_nft_fib6_eval_type, ptr @nft_fib6_module_exit, ptr @.str, ptr @nft_fib6_ops, ptr @nft_fib6_type_ops, ptr @switch.table.nft_fib6_select_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_fib6_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_fib6_type_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nft_fib6_select_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_fib6_eval_type(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #0 align 64 {
entry:
  %rt.i = alloca ptr, align 4
  %fl6.i = alloca %struct.flowi6, align 8
  %_iph = alloca %struct.ipv6hdr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %data.i14 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %data.i14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i14, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_iph) #5
  %10 = call ptr @memset(ptr %_iph, i32 255, i32 40)
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i, align 8
  %15 = add i32 %sub.ptr.sub.i, %14
  %sub.i1.i = sub i32 %12, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 39
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !34

if.end.i.i:                                       ; preds = %entry
  %tobool2.not.i.i = icmp eq ptr %1, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %_iph, i32 noundef 40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then_crit_edge, label %lor.lhs.false.i.i.if.end_crit_edge

lor.lhs.false.i.i.if.end_crit_edge:               ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.i.i.if.then_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

skb_header_pointer.exit:                          ; preds = %entry
  %add.ptr.i.i16 = getelementptr i8, ptr %7, i32 %sub.ptr.sub.i
  %tobool.not = icmp eq ptr %add.ptr.i.i16, null
  br i1 %tobool.not, label %skb_header_pointer.exit.if.then_crit_edge, label %skb_header_pointer.exit.if.end_crit_edge

skb_header_pointer.exit.if.end_crit_edge:         ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

skb_header_pointer.exit.if.then_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %skb_header_pointer.exit.if.then_crit_edge, %lor.lhs.false.i.i.if.then_crit_edge, %if.end.i.i.if.then_crit_edge
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

if.end:                                           ; preds = %skb_header_pointer.exit.if.end_crit_edge, %lor.lhs.false.i.i.if.end_crit_edge
  %retval.0.i.i27 = phi ptr [ %add.ptr.i.i16, %skb_header_pointer.exit.if.end_crit_edge ], [ %_iph, %lor.lhs.false.i.i.if.end_crit_edge ]
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rt.i) #5
  %17 = ptrtoint ptr %rt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -1 to ptr), ptr %rt.i, align 4, !annotation !35
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6.i) #5
  %18 = call ptr @memset(ptr %fl6.i, i32 0, i32 88)
  %flowic_iif.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 1
  %19 = ptrtoint ptr %flowic_iif.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %flowic_iif.i, align 4
  %flowic_proto.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 5
  %tprot.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %20 = ptrtoint ptr %tprot.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tprot.i, align 1
  %22 = ptrtoint ptr %flowic_proto.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %flowic_proto.i, align 2
  %flags.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %state.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %25 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state.i.i, align 4
  %in.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %26, i32 0, i32 2
  br label %if.end6.sink.split.i

if.else.i:                                        ; preds = %if.end
  %and2.i = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.else.i.if.end6.i_crit_edge, label %if.then4.i

if.else.i.if.end6.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %state.i72.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %27 = ptrtoint ptr %state.i72.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state.i72.i, align 4
  %out.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %28, i32 0, i32 3
  br label %if.end6.sink.split.i

if.end6.sink.split.i:                             ; preds = %if.then4.i, %if.then.i
  %out.i.sink.i = phi ptr [ %out.i.i, %if.then4.i ], [ %in.i.i, %if.then.i ]
  %29 = ptrtoint ptr %out.i.sink.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %out.i.sink.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end6.sink.split.i, %if.else.i.if.end6.i_crit_edge
  %dev.0.i = phi ptr [ null, %if.else.i.if.end6.i_crit_edge ], [ %30, %if.end6.sink.split.i ]
  %and.i.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %daddr3.i.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 1
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i17

if.then.i.i17:                                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %daddr1.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i27, i32 0, i32 6
  %31 = call ptr @memcpy(ptr %daddr3.i.i, ptr %daddr1.i.i, i32 16)
  %saddr.i.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 2
  %saddr2.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i27, i32 0, i32 5
  %32 = call ptr @memcpy(ptr %saddr.i.i, ptr %saddr2.i.i, i32 16)
  br label %if.end.i.i18

if.else.i.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  %saddr4.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i27, i32 0, i32 5
  %33 = call ptr @memcpy(ptr %daddr3.i.i, ptr %saddr4.i.i, i32 16)
  %saddr5.i.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 2
  %daddr6.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i27, i32 0, i32 6
  %34 = call ptr @memcpy(ptr %saddr5.i.i, ptr %daddr6.i.i, i32 16)
  br label %if.end.i.i18

if.end.i.i18:                                     ; preds = %if.else.i.i, %if.then.i.i17
  %call.i.i.i = call i32 @__ipv6_addr_type(ptr noundef %daddr3.i.i) #5
  %and8.i.i = and i32 %call.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end.i.i18.if.end13.i.i_crit_edge, label %if.then10.i.i

if.end.i.i18.if.end13.i.i_crit_edge:              ; preds = %if.end.i.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i18
  %tobool11.not.i.i = icmp eq ptr %dev.0.i, null
  br i1 %tobool11.not.i.i, label %cond.end.i.i, label %if.then10.i.i.cond.true.i.i.i_crit_edge

if.then10.i.i.cond.true.i.i.i_crit_edge:          ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.true.i.i.i

cond.end.i.i:                                     ; preds = %if.then10.i.i
  %35 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pkt, align 4
  %37 = getelementptr inbounds %struct.anon.83, ptr %36, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 8
  %tobool.not.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i, label %cond.end.i.i.get_ifindex.exit.i.i_crit_edge, label %cond.end.i.i.cond.true.i.i.i_crit_edge

cond.end.i.i.cond.true.i.i.i_crit_edge:           ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.true.i.i.i

cond.end.i.i.get_ifindex.exit.i.i_crit_edge:      ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_ifindex.exit.i.i

cond.true.i.i.i:                                  ; preds = %cond.end.i.i.cond.true.i.i.i_crit_edge, %if.then10.i.i.cond.true.i.i.i_crit_edge
  %cond50.i.i = phi ptr [ %39, %cond.end.i.i.cond.true.i.i.i_crit_edge ], [ %dev.0.i, %if.then10.i.i.cond.true.i.i.i_crit_edge ]
  %ifindex.i.i.i = getelementptr inbounds %struct.net_device, ptr %cond50.i.i, i32 0, i32 17
  %40 = ptrtoint ptr %ifindex.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ifindex.i.i.i, align 4
  br label %get_ifindex.exit.i.i

get_ifindex.exit.i.i:                             ; preds = %cond.true.i.i.i, %cond.end.i.i.get_ifindex.exit.i.i_crit_edge
  %cond.i.i.i = phi i32 [ %41, %cond.true.i.i.i ], [ 0, %cond.end.i.i.get_ifindex.exit.i.i_crit_edge ]
  %42 = ptrtoint ptr %fl6.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond.i.i.i, ptr %fl6.i, align 8
  br label %if.end13.i.i

if.end13.i.i:                                     ; preds = %get_ifindex.exit.i.i, %if.end.i.i18.if.end13.i.i_crit_edge
  %saddr14.i.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 2
  %call.i46.i.i = call i32 @__ipv6_addr_type(ptr noundef %saddr14.i.i) #5
  %43 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i, align 4
  %and22.i.i = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i.i)
  %tobool23.not.i.i = icmp eq i32 %and22.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end13.i.i.nft_fib6_flowi_init.exit.i_crit_edge, label %if.then24.i.i

if.end13.i.i.nft_fib6_flowi_init.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nft_fib6_flowi_init.exit.i

if.then24.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pkt, align 4
  %47 = getelementptr inbounds %struct.sk_buff, ptr %46, i32 0, i32 15, i32 0, i32 13
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %flowic_mark.i.i = getelementptr inbounds %struct.flowi_common, ptr %fl6.i, i32 0, i32 2
  %50 = ptrtoint ptr %flowic_mark.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %flowic_mark.i.i, align 8
  br label %nft_fib6_flowi_init.exit.i

nft_fib6_flowi_init.exit.i:                       ; preds = %if.then24.i.i, %if.end13.i.i.nft_fib6_flowi_init.exit.i_crit_edge
  %51 = ptrtoint ptr %retval.0.i.i27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %retval.0.i.i27, align 4
  %and28.i.i = and i32 %52, 268435455
  %flowlabel.i.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 3
  %53 = ptrtoint ptr %flowlabel.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %and28.i.i, ptr %flowlabel.i.i, align 8
  %tobool8.not.i = icmp eq ptr %dev.0.i, null
  br i1 %tobool8.not.i, label %nft_fib6_flowi_init.exit.i.if.end13.i_crit_edge, label %land.lhs.true.i

nft_fib6_flowi_init.exit.i.if.end13.i_crit_edge:  ; preds = %nft_fib6_flowi_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

land.lhs.true.i:                                  ; preds = %nft_fib6_flowi_init.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %state.i73.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %54 = ptrtoint ptr %state.i73.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %state.i73.i, align 4
  %net.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %55, i32 0, i32 5
  %56 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %net.i.i, align 4
  %call.i.i19 = call i32 @ipv6_chk_addr(ptr noundef %57, ptr noundef %daddr3.i.i, ptr noundef nonnull %dev.0.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %tobool11.not.i = icmp eq i32 %call.i.i19, 0
  %spec.select.i = select i1 %tobool11.not.i, i32 0, i32 2
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true.i, %nft_fib6_flowi_init.exit.i.if.end13.i_crit_edge
  %ret.0.i = phi i32 [ 0, %nft_fib6_flowi_init.exit.i.if.end13.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %state.i74.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %58 = ptrtoint ptr %state.i74.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %state.i74.i, align 4
  %net.i75.i = getelementptr inbounds %struct.nf_hook_state, ptr %59, i32 0, i32 5
  %60 = ptrtoint ptr %net.i75.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %net.i75.i, align 4
  %call.i76.i = call i32 @__nf_ip6_route(ptr noundef %61, ptr noundef nonnull %rt.i, ptr noundef nonnull %fl6.i, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76.i)
  %tobool17.not.i = icmp eq i32 %call.i76.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end13.i.err.i_crit_edge

if.end13.i.err.i_crit_edge:                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %err.i

if.end19.i:                                       ; preds = %if.end13.i
  %62 = ptrtoint ptr %rt.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rt.i, align 4
  %rt6i_flags.i = getelementptr inbounds %struct.rt6_info, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %rt6i_flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rt6i_flags.i, align 4
  %and20.i = and i32 %65, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end24.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #7
  %error.i = getelementptr inbounds %struct.dst_entry, ptr %63, i32 0, i32 15
  %66 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %error.i, align 4
  %conv.i = sext i16 %67 to i32
  call void @dst_release(ptr noundef %63) #5
  br label %err.i

if.end24.i:                                       ; preds = %if.end19.i
  %and.i77.i = and i32 %65, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77.i)
  %tobool.not.i78.i = icmp eq i32 %and.i77.i, 0
  br i1 %tobool.not.i78.i, label %lor.rhs.i.i, label %if.end24.i.if.end36.thread.i_crit_edge

if.end24.i.if.end36.thread.i_crit_edge:           ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread.i

lor.rhs.i.i:                                      ; preds = %if.end24.i
  %plen.i.i = getelementptr inbounds %struct.rt6_info, ptr %63, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %plen.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %plen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %69)
  %cmp.i.i20 = icmp slt i32 %69, 127
  %and2.i.i = and i32 %65, 2097154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i20, i1 %tobool3.not.i.i, i1 false
  br i1 %or.cond.i.i, label %ipv6_anycast_destination.exit.i, label %ipv6_anycast_destination.exit.thread85.i

ipv6_anycast_destination.exit.thread85.i:         ; preds = %lor.rhs.i.i
  %tobool8.not.not86.i = xor i1 %tobool8.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %tobool33.not.i = icmp sgt i32 %65, -1
  %or.cond.i = select i1 %tobool8.not.not86.i, i1 true, i1 %tobool33.not.i
  br i1 %or.cond.i, label %ipv6_anycast_destination.exit.thread85.i.if.end36.i_crit_edge, label %ipv6_anycast_destination.exit.thread85.i.if.end36.thread.i_crit_edge

ipv6_anycast_destination.exit.thread85.i.if.end36.thread.i_crit_edge: ; preds = %ipv6_anycast_destination.exit.thread85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread.i

ipv6_anycast_destination.exit.thread85.i.if.end36.i_crit_edge: ; preds = %ipv6_anycast_destination.exit.thread85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

ipv6_anycast_destination.exit.i:                  ; preds = %lor.rhs.i.i
  %rt6i_dst.i.i = getelementptr inbounds %struct.rt6_info, ptr %63, i32 0, i32 3
  %70 = ptrtoint ptr %rt6i_dst.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rt6i_dst.i.i, align 4
  %72 = ptrtoint ptr %daddr3.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %daddr3.i.i, align 8
  %xor.i.i.i = xor i32 %73, %71
  %arrayidx4.i.i.i = getelementptr %struct.rt6_info, ptr %63, i32 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %74 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx4.i.i.i, align 4
  %arrayidx6.i.i.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %76 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor7.i.i.i = xor i32 %77, %75
  %or.i.i.i = or i32 %xor7.i.i.i, %xor.i.i.i
  %arrayidx9.i.i.i = getelementptr %struct.rt6_info, ptr %63, i32 0, i32 3, i32 0, i32 0, i32 0, i32 2
  %78 = ptrtoint ptr %arrayidx9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx9.i.i.i, align 4
  %arrayidx11.i.i.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %80 = ptrtoint ptr %arrayidx11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx11.i.i.i, align 8
  %xor12.i.i.i = xor i32 %81, %79
  %or13.i.i.i = or i32 %or.i.i.i, %xor12.i.i.i
  %arrayidx15.i.i.i = getelementptr %struct.rt6_info, ptr %63, i32 0, i32 3, i32 0, i32 0, i32 0, i32 3
  %82 = ptrtoint ptr %arrayidx15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx15.i.i.i, align 4
  %arrayidx17.i.i.i = getelementptr inbounds %struct.flowi6, ptr %fl6.i, i32 0, i32 1, i32 0, i32 0, i32 3
  %84 = ptrtoint ptr %arrayidx17.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx17.i.i.i, align 4
  %xor18.i.i.i = xor i32 %85, %83
  %or19.i.i.i = or i32 %or13.i.i.i, %xor18.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or19.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or19.i.i.i, 0
  br i1 %cmp.i.i.i, label %ipv6_anycast_destination.exit.i.if.end36.thread.i_crit_edge, label %86

ipv6_anycast_destination.exit.i.if.end36.thread.i_crit_edge: ; preds = %ipv6_anycast_destination.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread.i

86:                                               ; preds = %ipv6_anycast_destination.exit.i
  %tobool8.not.not.i = xor i1 %tobool8.not.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %65)
  %tobool33.not.old.i = icmp sgt i32 %65, -1
  %or.cond91.i = select i1 %tobool8.not.not.i, i1 true, i1 %tobool33.not.old.i
  br i1 %or.cond91.i, label %.if.end36.i_crit_edge, label %.if.end36.thread.i_crit_edge

.if.end36.thread.i_crit_edge:                     ; preds = %86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.thread.i

.if.end36.i_crit_edge:                            ; preds = %86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

if.end36.thread.i:                                ; preds = %.if.end36.thread.i_crit_edge, %ipv6_anycast_destination.exit.i.if.end36.thread.i_crit_edge, %ipv6_anycast_destination.exit.thread85.i.if.end36.thread.i_crit_edge, %if.end24.i.if.end36.thread.i_crit_edge
  %ret.1.ph.i = phi i32 [ 4, %ipv6_anycast_destination.exit.i.if.end36.thread.i_crit_edge ], [ 2, %ipv6_anycast_destination.exit.thread85.i.if.end36.thread.i_crit_edge ], [ 2, %.if.end36.thread.i_crit_edge ], [ 4, %if.end24.i.if.end36.thread.i_crit_edge ]
  call void @dst_release(ptr noundef %63) #5
  br label %__nft_fib6_eval_type.exit

if.end36.i:                                       ; preds = %.if.end36.i_crit_edge, %ipv6_anycast_destination.exit.thread85.i.if.end36.i_crit_edge
  call void @dst_release(ptr noundef %63) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool38.not.i = icmp eq i32 %ret.0.i, 0
  br i1 %tobool38.not.i, label %if.end40.i, label %if.end36.i.__nft_fib6_eval_type.exit_crit_edge

if.end36.i.__nft_fib6_eval_type.exit_crit_edge:   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__nft_fib6_eval_type.exit

if.end40.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i79.i = call i32 @__ipv6_addr_type(ptr noundef %daddr3.i.i) #5
  %and43.i = and i32 %call.i79.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %and47.i = and i32 %call.i79.i, 1
  %spec.select92.i = select i1 %tobool44.not.i, i32 %and47.i, i32 5
  br label %__nft_fib6_eval_type.exit

err.i:                                            ; preds = %if.then22.i, %if.end13.i.err.i_crit_edge
  %route_err.0.i = phi i32 [ %call.i76.i, %if.end13.i.err.i_crit_edge ], [ %conv.i, %if.then22.i ]
  %87 = zext i32 %route_err.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values)
  switch i32 %route_err.0.i, label %sw.epilog.i [
    i32 -22, label %err.i.__nft_fib6_eval_type.exit_crit_edge
    i32 -13, label %sw.bb51.i
    i32 -11, label %sw.bb52.i
  ]

err.i.__nft_fib6_eval_type.exit_crit_edge:        ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__nft_fib6_eval_type.exit

sw.bb51.i:                                        ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__nft_fib6_eval_type.exit

sw.bb52.i:                                        ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__nft_fib6_eval_type.exit

sw.epilog.i:                                      ; preds = %err.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %__nft_fib6_eval_type.exit

__nft_fib6_eval_type.exit:                        ; preds = %sw.epilog.i, %sw.bb52.i, %sw.bb51.i, %err.i.__nft_fib6_eval_type.exit_crit_edge, %if.end40.i, %if.end36.i.__nft_fib6_eval_type.exit_crit_edge, %if.end36.thread.i
  %retval.0.i = phi i32 [ 7, %sw.epilog.i ], [ 9, %sw.bb52.i ], [ 8, %sw.bb51.i ], [ %ret.0.i, %if.end36.i.__nft_fib6_eval_type.exit_crit_edge ], [ 6, %err.i.__nft_fib6_eval_type.exit_crit_edge ], [ %ret.1.ph.i, %if.end36.thread.i ], [ %spec.select92.i, %if.end40.i ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rt.i) #5
  %88 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %__nft_fib6_eval_type.exit, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_iph) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_fib6_eval(ptr noundef %expr, ptr noundef %regs, ptr nocapture noundef readonly %pkt) #0 align 64 {
entry:
  %_iph = alloca %struct.ipv6hdr, align 4
  %fl6 = alloca %struct.flowi6, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %data.i84 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %data.i84 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i84, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data.i, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_iph) #5
  %10 = call ptr @memset(ptr %_iph, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %fl6) #5
  %11 = call ptr @memset(ptr %fl6, i32 0, i32 88)
  %flowic_iif = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 1
  %12 = ptrtoint ptr %flowic_iif to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %flowic_iif, align 4
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 5
  %tprot = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %13 = ptrtoint ptr %tprot to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %tprot, align 1
  %15 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %flowic_proto, align 2
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %and = and i32 %17, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state.i, align 4
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %19, i32 0, i32 2
  br label %if.end8.sink.split

if.else:                                          ; preds = %entry
  %and4 = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end8_crit_edge, label %if.then6

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %state.i85 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %20 = ptrtoint ptr %state.i85 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state.i85, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %21, i32 0, i32 3
  br label %if.end8.sink.split

if.end8.sink.split:                               ; preds = %if.then6, %if.then
  %out.i.sink = phi ptr [ %out.i, %if.then6 ], [ %in.i, %if.then ]
  %22 = ptrtoint ptr %out.i.sink to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %out.i.sink, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %if.else.if.end8_crit_edge
  %oif.0 = phi ptr [ null, %if.else.if.end8_crit_edge ], [ %23, %if.end8.sink.split ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %data_len.i.i, align 8
  %28 = add i32 %sub.ptr.sub.i, %27
  %sub.i1.i = sub i32 %25, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 39
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !34

if.end.i.i:                                       ; preds = %if.end8
  %tobool2.not.i.i = icmp eq ptr %1, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then12_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then12_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %_iph, i32 noundef 40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then12_crit_edge, label %lor.lhs.false.i.i.if.end13_crit_edge

lor.lhs.false.i.i.if.end13_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

lor.lhs.false.i.i.if.then12_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

skb_header_pointer.exit:                          ; preds = %if.end8
  %add.ptr.i.i87 = getelementptr i8, ptr %7, i32 %sub.ptr.sub.i
  %tobool11.not = icmp eq ptr %add.ptr.i.i87, null
  br i1 %tobool11.not, label %skb_header_pointer.exit.if.then12_crit_edge, label %skb_header_pointer.exit.if.end13_crit_edge

skb_header_pointer.exit.if.end13_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

skb_header_pointer.exit.if.then12_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.then12:                                        ; preds = %skb_header_pointer.exit.if.then12_crit_edge, %lor.lhs.false.i.i.if.then12_crit_edge, %if.end.i.i.if.then12_crit_edge
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

if.end13:                                         ; preds = %skb_header_pointer.exit.if.end13_crit_edge, %lor.lhs.false.i.i.if.end13_crit_edge
  %retval.0.i.i109 = phi ptr [ %add.ptr.i.i87, %skb_header_pointer.exit.if.end13_crit_edge ], [ %_iph, %lor.lhs.false.i.i.if.end13_crit_edge ]
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %and.i = and i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %daddr3.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 1
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %daddr1.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i109, i32 0, i32 6
  %32 = call ptr @memcpy(ptr %daddr3.i, ptr %daddr1.i, i32 16)
  %saddr.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %saddr2.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i109, i32 0, i32 5
  %33 = call ptr @memcpy(ptr %saddr.i, ptr %saddr2.i, i32 16)
  br label %if.end.i

if.else.i:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %saddr4.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i109, i32 0, i32 5
  %34 = call ptr @memcpy(ptr %daddr3.i, ptr %saddr4.i, i32 16)
  %saddr5.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %daddr6.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i109, i32 0, i32 6
  %35 = call ptr @memcpy(ptr %saddr5.i, ptr %daddr6.i, i32 16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %call.i.i88 = call i32 @__ipv6_addr_type(ptr noundef %daddr3.i) #5
  %and8.i = and i32 %call.i.i88, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %if.end.i.if.end13.i_crit_edge, label %if.then10.i

if.end.i.if.end13.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end.i
  %tobool11.not.i = icmp eq ptr %oif.0, null
  br i1 %tobool11.not.i, label %cond.end.i, label %if.then10.i.cond.true.i.i_crit_edge

if.then10.i.cond.true.i.i_crit_edge:              ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.true.i.i

cond.end.i:                                       ; preds = %if.then10.i
  %36 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pkt, align 4
  %38 = getelementptr inbounds %struct.anon.83, ptr %37, i32 0, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %tobool.not.i.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.i, label %cond.end.i.get_ifindex.exit.i_crit_edge, label %cond.end.i.cond.true.i.i_crit_edge

cond.end.i.cond.true.i.i_crit_edge:               ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.true.i.i

cond.end.i.get_ifindex.exit.i_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_ifindex.exit.i

cond.true.i.i:                                    ; preds = %cond.end.i.cond.true.i.i_crit_edge, %if.then10.i.cond.true.i.i_crit_edge
  %cond50.i = phi ptr [ %40, %cond.end.i.cond.true.i.i_crit_edge ], [ %oif.0, %if.then10.i.cond.true.i.i_crit_edge ]
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %cond50.i, i32 0, i32 17
  %41 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ifindex.i.i, align 4
  br label %get_ifindex.exit.i

get_ifindex.exit.i:                               ; preds = %cond.true.i.i, %cond.end.i.get_ifindex.exit.i_crit_edge
  %cond.i.i = phi i32 [ %42, %cond.true.i.i ], [ 0, %cond.end.i.get_ifindex.exit.i_crit_edge ]
  %43 = ptrtoint ptr %fl6 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond.i.i, ptr %fl6, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %get_ifindex.exit.i, %if.end.i.if.end13.i_crit_edge
  %lookup_flags.0.i = phi i32 [ 1, %get_ifindex.exit.i ], [ 0, %if.end.i.if.end13.i_crit_edge ]
  %saddr14.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 2
  %call.i46.i = call i32 @__ipv6_addr_type(ptr noundef %saddr14.i) #5
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %and22.i = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end13.i.nft_fib6_flowi_init.exit_crit_edge, label %if.then24.i

if.end13.i.nft_fib6_flowi_init.exit_crit_edge:    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nft_fib6_flowi_init.exit

if.then24.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pkt, align 4
  %48 = getelementptr inbounds %struct.sk_buff, ptr %47, i32 0, i32 15, i32 0, i32 13
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %flowic_mark.i = getelementptr inbounds %struct.flowi_common, ptr %fl6, i32 0, i32 2
  %51 = ptrtoint ptr %flowic_mark.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %flowic_mark.i, align 8
  br label %nft_fib6_flowi_init.exit

nft_fib6_flowi_init.exit:                         ; preds = %if.then24.i, %if.end13.i.nft_fib6_flowi_init.exit_crit_edge
  %and16.i = shl i32 %call.i46.i, 2
  %52 = and i32 %and16.i, 4
  %53 = or i32 %52, %lookup_flags.0.i
  %54 = ptrtoint ptr %retval.0.i.i109 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %retval.0.i.i109, align 4
  %and28.i = and i32 %55, 268435455
  %flowlabel.i = getelementptr inbounds %struct.flowi6, ptr %fl6, i32 0, i32 3
  %56 = ptrtoint ptr %flowlabel.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %and28.i, ptr %flowlabel.i, align 8
  %state.i89 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %57 = ptrtoint ptr %state.i89 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %state.i89, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %58, align 4
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %60, label %nft_fib6_flowi_init.exit.if.end29_crit_edge [
    i8 0, label %nft_fib6_flowi_init.exit.if.then18_crit_edge
    i8 5, label %nft_fib6_flowi_init.exit.if.then18_crit_edge112
  ]

nft_fib6_flowi_init.exit.if.then18_crit_edge112:  ; preds = %nft_fib6_flowi_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

nft_fib6_flowi_init.exit.if.then18_crit_edge:     ; preds = %nft_fib6_flowi_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then18

nft_fib6_flowi_init.exit.if.end29_crit_edge:      ; preds = %nft_fib6_flowi_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then18:                                        ; preds = %nft_fib6_flowi_init.exit.if.then18_crit_edge, %nft_fib6_flowi_init.exit.if.then18_crit_edge112
  %62 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pkt, align 4
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %63, i32 0, i32 15
  %64 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.lshr.mask.i = and i16 %bf.load.i, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask.i)
  %cmp.i = icmp eq i16 %bf.lshr.mask.i, -24576
  br i1 %cmp.i, label %if.then18.if.then26_crit_edge, label %nft_fib_is_loopback.exit

if.then18.if.then26_crit_edge:                    ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

nft_fib_is_loopback.exit:                         ; preds = %if.then18
  %in.i93 = getelementptr inbounds %struct.nf_hook_state, ptr %58, i32 0, i32 2
  %65 = ptrtoint ptr %in.i93 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %in.i93, align 4
  %flags.i94 = getelementptr inbounds %struct.net_device, ptr %66, i32 0, i32 14
  %67 = ptrtoint ptr %flags.i94 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags.i94, align 8
  %and.i95 = and i32 %68, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i95)
  %tobool.i.not = icmp eq i32 %and.i95, 0
  br i1 %tobool.i.not, label %lor.lhs.false22, label %nft_fib_is_loopback.exit.if.then26_crit_edge

nft_fib_is_loopback.exit.if.then26_crit_edge:     ; preds = %nft_fib_is_loopback.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

lor.lhs.false22:                                  ; preds = %nft_fib_is_loopback.exit
  %69 = ptrtoint ptr %tprot to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %tprot, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 58, i8 %70)
  %cmp.not.i = icmp eq i8 %70, 58
  br i1 %cmp.not.i, label %if.end.i98, label %lor.lhs.false22.if.end29_crit_edge, !prof !36

lor.lhs.false22.if.end29_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.end.i98:                                       ; preds = %lor.lhs.false22
  %saddr.i96 = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i109, i32 0, i32 5
  %call.i.i97 = call i32 @__ipv6_addr_type(ptr noundef %saddr.i96) #5
  %and.i.i = and i32 %call.i.i97, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp3.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp3.not.i, label %nft_fib_v6_skip_icmpv6.exit, label %if.end.i98.if.end29_crit_edge

if.end.i98.if.end29_crit_edge:                    ; preds = %if.end.i98
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

nft_fib_v6_skip_icmpv6.exit:                      ; preds = %if.end.i98
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i109, i32 0, i32 6
  %call.i1.i = call i32 @__ipv6_addr_type(ptr noundef %daddr.i) #5
  %and.i99 = and i32 %call.i1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i99)
  %tobool8.i.not = icmp eq i32 %and.i99, 0
  br i1 %tobool8.i.not, label %nft_fib_v6_skip_icmpv6.exit.if.end29_crit_edge, label %nft_fib_v6_skip_icmpv6.exit.if.then26_crit_edge

nft_fib_v6_skip_icmpv6.exit.if.then26_crit_edge:  ; preds = %nft_fib_v6_skip_icmpv6.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

nft_fib_v6_skip_icmpv6.exit.if.end29_crit_edge:   ; preds = %nft_fib_v6_skip_icmpv6.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then26:                                        ; preds = %nft_fib_v6_skip_icmpv6.exit.if.then26_crit_edge, %nft_fib_is_loopback.exit.if.then26_crit_edge, %if.then18.if.then26_crit_edge
  %71 = ptrtoint ptr %state.i89 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %state.i89, align 4
  %in.i101 = getelementptr inbounds %struct.nf_hook_state, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %in.i101 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %in.i101, align 4
  call void @nft_fib_store_result(ptr noundef %arrayidx, ptr noundef %data.i, ptr noundef %74) #5
  br label %cleanup

if.end29:                                         ; preds = %nft_fib_v6_skip_icmpv6.exit.if.end29_crit_edge, %if.end.i98.if.end29_crit_edge, %lor.lhs.false22.if.end29_crit_edge, %nft_fib6_flowi_init.exit.if.end29_crit_edge
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %arrayidx, align 4
  %76 = ptrtoint ptr %state.i89 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %state.i89, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %net.i, align 4
  %80 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %pkt, align 4
  %call32 = call ptr @ip6_route_lookup(ptr noundef %79, ptr noundef nonnull %fl6, ptr noundef %81, i32 noundef %53) #5
  %error = getelementptr inbounds %struct.dst_entry, ptr %call32, i32 0, i32 15
  %82 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool33.not = icmp eq i16 %83, 0
  br i1 %tobool33.not, label %if.end35, label %if.end29.put_rt_err_crit_edge

if.end29.put_rt_err_crit_edge:                    ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_rt_err

if.end35:                                         ; preds = %if.end29
  %rt6i_flags = getelementptr inbounds %struct.rt6_info, ptr %call32, i32 0, i32 7
  %84 = ptrtoint ptr %rt6i_flags to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %rt6i_flags, align 4
  %and36 = and i32 %85, -2146434560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.put_rt_err_crit_edge

if.end35.put_rt_err_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_rt_err

if.end39:                                         ; preds = %if.end35
  %tobool40.not = icmp eq ptr %oif.0, null
  br i1 %tobool40.not, label %if.end39.if.end43_crit_edge, label %land.lhs.true

if.end39.if.end43_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end39
  %rt6i_idev = getelementptr inbounds %struct.rt6_info, ptr %call32, i32 0, i32 6
  %86 = ptrtoint ptr %rt6i_idev to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %rt6i_idev, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %cmp41.not = icmp eq ptr %oif.0, %89
  br i1 %cmp41.not, label %land.lhs.true.if.end43_crit_edge, label %land.lhs.true.put_rt_err_crit_edge

land.lhs.true.put_rt_err_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %put_rt_err

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true.if.end43_crit_edge, %if.end39.if.end43_crit_edge
  %rt6i_idev44 = getelementptr inbounds %struct.rt6_info, ptr %call32, i32 0, i32 6
  %90 = ptrtoint ptr %rt6i_idev44 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %rt6i_idev44, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  call void @nft_fib_store_result(ptr noundef %arrayidx, ptr noundef %data.i, ptr noundef %93) #5
  br label %put_rt_err

put_rt_err:                                       ; preds = %if.end43, %land.lhs.true.put_rt_err_crit_edge, %if.end35.put_rt_err_crit_edge, %if.end29.put_rt_err_crit_edge
  call void @dst_release(ptr noundef %call32) #5
  br label %cleanup

cleanup:                                          ; preds = %put_rt_err, %if.then26, %if.then12
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %fl6) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_iph) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_fib_store_result(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip6_route_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_fib6_module_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_fib6_type) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_fib6_module_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_fib6_type) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_chk_addr(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nf_ip6_route(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nft_fib6_select_ops(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.nft_fib6_select_ops, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ inttoptr (i32 -95 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_fib_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_fib_dump(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_fib_validate(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__ksymtab_nft_fib6_eval_type, !1, !"__ksymtab_nft_fib6_eval_type", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/nft_fib_ipv6.c", i32 136, i32 1}
!2 = !{ptr @__ksymtab_nft_fib6_eval, !3, !"__ksymtab_nft_fib6_eval", i1 false, i1 false}
!3 = !{!"../net/ipv6/netfilter/nft_fib_ipv6.c", i32 203, i32 1}
!4 = !{ptr @__initcall__kmod_nft_fib_ipv6__727_266_nft_fib6_module_init6, !5, !"__initcall__kmod_nft_fib_ipv6__727_266_nft_fib6_module_init6", i1 false, i1 false}
!5 = !{!"../net/ipv6/netfilter/nft_fib_ipv6.c", i32 266, i32 1}
!6 = !{ptr @__exitcall_nft_fib6_module_exit, !7, !"__exitcall_nft_fib6_module_exit", i1 false, i1 false}
!7 = !{!"../net/ipv6/netfilter/nft_fib_ipv6.c", i32 267, i32 1}
!8 = !{ptr @__UNIQUE_ID_file728, !9, !"__UNIQUE_ID_file728", i1 false, i1 false}
!9 = !{!"../net/ipv6/netfilter/nft_fib_ipv6.c", i32 269, i32 1}
!10 = !{ptr @__UNIQUE_ID_license729, !9, !"__UNIQUE_ID_license729", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author730, !12, !"__UNIQUE_ID_author730", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/nft_fib_ipv6.c", i32 270, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias731, !14, !"__UNIQUE_ID_alias731", i1 false, i1 false}
!14 = !{!"../net/ipv6/netfilter/nft_fib_ipv6.c", i32 271, i32 1}
!15 = !{ptr @__UNIQUE_ID_description732, !16, !"__UNIQUE_ID_description732", i1 false, i1 false}
!16 = !{!"../net/ipv6/netfilter/nft_fib_ipv6.c", i32 272, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/ipv6/netfilter/nft_fib_ipv6.c", i32 249, i32 11}
!19 = !{ptr @nft_fib6_type, !20, !"nft_fib6_type", i1 false, i1 false}
!20 = !{!"../net/ipv6/netfilter/nft_fib_ipv6.c", i32 248, i32 29}
!21 = !{ptr @nft_fib6_ops, !22, !"nft_fib6_ops", i1 false, i1 false}
!22 = !{!"../net/ipv6/netfilter/nft_fib_ipv6.c", i32 216, i32 34}
!23 = !{ptr @nft_fib6_type_ops, !24, !"nft_fib6_type_ops", i1 false, i1 false}
!24 = !{!"../net/ipv6/netfilter/nft_fib_ipv6.c", i32 207, i32 34}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{!"auto-init"}
!36 = !{!"branch_weights", i32 1, i32 2000}
