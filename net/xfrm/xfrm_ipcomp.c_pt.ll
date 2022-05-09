; ModuleID = '/llk/IR_all_yes/net/xfrm/xfrm_ipcomp.c_pt.bc'
source_filename = "../net/xfrm/xfrm_ipcomp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ipcomp_input\22, \22a\22\09"
module asm "\09.weak\09__crc_ipcomp_input\09\09\09\09"
module asm "\09.long\09__crc_ipcomp_input\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipcomp_input:\09\09\09\09\09"
module asm "\09.asciz \09\22ipcomp_input\22\09\09\09\09\09"
module asm "__kstrtabns_ipcomp_input:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipcomp_output\22, \22a\22\09"
module asm "\09.weak\09__crc_ipcomp_output\09\09\09\09"
module asm "\09.long\09__crc_ipcomp_output\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipcomp_output:\09\09\09\09\09"
module asm "\09.asciz \09\22ipcomp_output\22\09\09\09\09\09"
module asm "__kstrtabns_ipcomp_output:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipcomp_destroy\22, \22a\22\09"
module asm "\09.weak\09__crc_ipcomp_destroy\09\09\09\09"
module asm "\09.long\09__crc_ipcomp_destroy\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipcomp_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22ipcomp_destroy\22\09\09\09\09\09"
module asm "__kstrtabns_ipcomp_destroy:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ipcomp_init_state\22, \22a\22\09"
module asm "\09.weak\09__crc_ipcomp_init_state\09\09\09\09"
module asm "\09.long\09__crc_ipcomp_init_state\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ipcomp_init_state:\09\09\09\09\09"
module asm "\09.asciz \09\22ipcomp_init_state\22\09\09\09\09\09"
module asm "__kstrtabns_ipcomp_init_state:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.sk_buff = type { %union.anon.21, %union.anon.24, %union.anon.25, [48 x i8], %union.anon.26, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.28, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.21 = type { %struct.anon.22 }
%struct.anon.22 = type { ptr, ptr, %union.anon.23 }
%union.anon.23 = type { ptr }
%union.anon.24 = type { ptr }
%union.anon.25 = type { i64 }
%union.anon.26 = type { %struct.anon.27 }
%struct.anon.27 = type { i32, ptr }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.30, i32, i32, i32, i16, i16, %union.anon.32, i32, %union.anon.33, %union.anon.34, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.30 = type { i32 }
%union.anon.32 = type { i32 }
%union.anon.33 = type { i32 }
%union.anon.34 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.xfrm_state = type { %struct.possible_net_t, %union.anon.114, %struct.hlist_node, %struct.hlist_node, %struct.hlist_node, %struct.refcount_struct, %struct.spinlock, %struct.xfrm_id, %struct.xfrm_selector, %struct.xfrm_mark, i32, i32, i32, %struct.xfrm_state_walk, %struct.anon.115, %struct.xfrm_lifetime_cfg, ptr, ptr, ptr, ptr, ptr, i16, i32, i32, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.xfrm_replay_state, ptr, %struct.xfrm_replay_state, ptr, i32, i32, i32, i32, %struct.timer_list, %struct.xfrm_stats, %struct.xfrm_lifetime_cur, %struct.hrtimer, %struct.xfrm_state_offload, i32, i64, %struct.page_frag, ptr, %struct.xfrm_mode, %struct.xfrm_mode, %struct.xfrm_mode, ptr, ptr, ptr }
%struct.possible_net_t = type { ptr }
%union.anon.114 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.xfrm_id = type { %union.xfrm_address_t, i32, i8 }
%union.xfrm_address_t = type { [4 x i32] }
%struct.xfrm_selector = type { %union.xfrm_address_t, %union.xfrm_address_t, i16, i16, i16, i16, i16, i8, i8, i8, i32, i32 }
%struct.xfrm_mark = type { i32, i32 }
%struct.xfrm_state_walk = type { %struct.list_head, i8, i8, i8, i32, ptr }
%struct.anon.115 = type { i32, i8, i8, i8, i8, i8, i8, i16, %union.xfrm_address_t, i32, i32, i32, %struct.xfrm_mark }
%struct.xfrm_lifetime_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xfrm_replay_state = type { i32, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.xfrm_stats = type { i32, i32, i32 }
%struct.xfrm_lifetime_cur = type { i64, i64, i64, i64 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.xfrm_state_offload = type { ptr, ptr, ptr, i32, i32, i8 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.xfrm_mode = type { i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ipcomp_data = type { i16, ptr }
%struct.ip_comp_hdr = type { i8, i8, i16 }
%struct.ipcomp_tfms = type { %struct.list_head, ptr, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.151, ptr, ptr, ptr, ptr, %union.anon.152, [120 x i8] }
%union.anon.151 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.152 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.xfrm_algo_desc = type { ptr, ptr, i8, %union.anon.153, %struct.sadb_alg }
%union.anon.153 = type { %struct.xfrm_algo_aead_info }
%struct.xfrm_algo_aead_info = type { ptr, i16 }
%struct.sadb_alg = type { i8, i8, i16, i16, i16 }

@__kstrtab_ipcomp_input = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipcomp_input = external dso_local constant [0 x i8], align 1
@__ksymtab_ipcomp_input = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipcomp_input to i32), ptr @__kstrtab_ipcomp_input, ptr @__kstrtabns_ipcomp_input }, section "___ksymtab_gpl+ipcomp_input", align 4
@__kstrtab_ipcomp_output = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipcomp_output = external dso_local constant [0 x i8], align 1
@__ksymtab_ipcomp_output = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipcomp_output to i32), ptr @__kstrtab_ipcomp_output, ptr @__kstrtabns_ipcomp_output }, section "___ksymtab_gpl+ipcomp_output", align 4
@ipcomp_resource_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ipcomp_resource_mutex, i64 52), ptr getelementptr (i8, ptr @ipcomp_resource_mutex, i64 52) }, ptr @ipcomp_resource_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_ipcomp_destroy = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipcomp_destroy = external dso_local constant [0 x i8], align 1
@__ksymtab_ipcomp_destroy = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipcomp_destroy to i32), ptr @__kstrtab_ipcomp_destroy, ptr @__kstrtabns_ipcomp_destroy }, section "___ksymtab_gpl+ipcomp_destroy", align 4
@__kstrtab_ipcomp_init_state = external dso_local constant [0 x i8], align 1
@__kstrtabns_ipcomp_init_state = external dso_local constant [0 x i8], align 1
@__ksymtab_ipcomp_init_state = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ipcomp_init_state to i32), ptr @__kstrtab_ipcomp_init_state, ptr @__kstrtabns_ipcomp_init_state }, section "___ksymtab_gpl+ipcomp_init_state", align 4
@__UNIQUE_ID_file512 = internal constant [38 x i8] c"xfrm_ipcomp.file=net/xfrm/xfrm_ipcomp\00", section ".modinfo", align 1
@__UNIQUE_ID_license513 = internal constant [24 x i8] c"xfrm_ipcomp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description514 = internal constant [75 x i8] c"xfrm_ipcomp.description=IP Payload Compression Protocol (IPComp) - RFC3173\00", section ".modinfo", align 1
@__UNIQUE_ID_author515 = internal constant [59 x i8] c"xfrm_ipcomp.author=James Morris <jmorris@intercode.com.au>\00", section ".modinfo", align 1
@ipcomp_scratches = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/xfrm/xfrm_ipcomp.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ipcomp_resource_mutex.wait_lock\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ipcomp_resource_mutex\00", [42 x i8] zeroinitializer }, align 32
@ipcomp_tfms_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @ipcomp_tfms_list, ptr @ipcomp_tfms_list }, [24 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@ipcomp_scratch_users = internal global { i32, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.5 = private unnamed_addr constant [22 x i8] c"ipcomp_resource_mutex\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"ipcomp_scratches\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 34, i32 25 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 68, i32 7 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 33, i32 8 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"ipcomp_tfms_list\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 36, i32 8 }
@___asan_gen_.23 = private unnamed_addr constant [21 x i8] c"ipcomp_scratch_users\00", align 1
@___asan_gen_.24 = private constant [26 x i8] c"../net/xfrm/xfrm_ipcomp.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 35, i32 12 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author515, ptr @__UNIQUE_ID_description514, ptr @__UNIQUE_ID_file512, ptr @__UNIQUE_ID_license513, ptr @__ksymtab_ipcomp_destroy, ptr @__ksymtab_ipcomp_init_state, ptr @__ksymtab_ipcomp_input, ptr @__ksymtab_ipcomp_output, ptr @ipcomp_resource_mutex, ptr @ipcomp_scratches, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @ipcomp_tfms_list, ptr @ipcomp_scratch_users], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipcomp_resource_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipcomp_scratches to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipcomp_tfms_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipcomp_scratch_users to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipcomp_input(ptr nocapture noundef readonly %x, ptr noundef %skb) #0 align 64 {
entry:
  %dlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %entry.cond.true.i_crit_edge

entry.cond.true.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true.i

lor.lhs.false.i:                                  ; preds = %entry
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %2 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.if.end_crit_edge, label %skb_cloned.exit.i

lor.lhs.false.i.if.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

skb_cloned.exit.i:                                ; preds = %lor.lhs.false.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %3 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %4, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #10
  %5 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end_crit_edge, label %skb_cloned.exit.i.cond.true.i_crit_edge

skb_cloned.exit.i.cond.true.i_crit_edge:          ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true.i

skb_cloned.exit.i.if.end_crit_edge:               ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.true.i:                                      ; preds = %skb_cloned.exit.i.cond.true.i_crit_edge, %entry.cond.true.i_crit_edge
  %7 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i, align 8
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %8) #10
  %tobool.not.i6.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i6.i, label %cond.true.i.out_crit_edge, label %cond.true.i.if.end_crit_edge

cond.true.i.if.end_crit_edge:                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.true.i.out_crit_edge:                        ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %cond.true.i.if.end_crit_edge, %skb_cloned.exit.i.if.end_crit_edge, %lor.lhs.false.i.if.end_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %9 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 2
  %network_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header, align 4
  %add = add i16 %15, 4
  %transport_header = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %16 = ptrtoint ptr %transport_header to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %add, ptr %transport_header, align 2
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len1.i, align 4
  %sub.i = add i32 %18, -4
  store i32 %sub.i, ptr %len1.i, align 4
  %19 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %20)
  %cmp.i = icmp ult i32 %sub.i, %20
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !41

do.body4.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !42
  unreachable

__skb_pull.exit:                                  ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %11, i32 4
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %add.ptr.i, ptr %data, align 4
  %data.i16 = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %22 = ptrtoint ptr %data.i16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i16, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dlen.i) #10
  %24 = ptrtoint ptr %dlen.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 65400, ptr %dlen.i, align 4
  %25 = load ptr, ptr @ipcomp_scratches, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 @llvm.read_register.i32(metadata !31) #10
  %and.i.i17 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i17 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %32, %26
  %33 = inttoptr i32 %add.i to ptr
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %tfms.i = getelementptr inbounds %struct.ipcomp_data, ptr %23, i32 0, i32 1
  %36 = ptrtoint ptr %tfms.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tfms.i, align 4
  %38 = ptrtoint ptr %37 to i32
  %add13.i = add i32 %32, %38
  %39 = inttoptr i32 %add13.i to ptr
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call14.i = call i32 @crypto_comp_decompress(ptr noundef %41, ptr noundef %add.ptr.i, i32 noundef %sub.i, ptr noundef %35, ptr noundef nonnull %dlen.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %__skb_pull.exit.ipcomp_decompress.exit.thread_crit_edge

__skb_pull.exit.ipcomp_decompress.exit.thread_crit_edge: ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipcomp_decompress.exit.thread

if.end.i:                                         ; preds = %__skb_pull.exit
  %42 = ptrtoint ptr %dlen.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dlen.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %18)
  %cmp.i18 = icmp ult i32 %43, %18
  br i1 %cmp.i18, label %if.end.i.ipcomp_decompress.exit.thread_crit_edge, label %if.end18.i

if.end.i.ipcomp_decompress.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipcomp_decompress.exit.thread

if.end18.i:                                       ; preds = %if.end.i
  %44 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %do.body3.i.i

skb_tailroom.exit.i:                              ; preds = %if.end18.i
  %sub.i19 = sub i32 %43, %sub.i
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %46 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %50 = call i32 @llvm.smin.i32(i32 %sub.i19, i32 %sub.ptr.sub.i.i)
  %add.ptr.i.i = getelementptr i8, ptr %49, i32 %50
  %51 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr.i.i, ptr %tail.i.i, align 8
  %52 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len1.i, align 4
  %add.i.i = add i32 %50, %53
  store i32 %add.i.i, ptr %len1.i, align 4
  %add25.i = add i32 %50, %sub.i
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %56 = call ptr @memcpy(ptr %55, ptr %35, i32 %add25.i)
  %57 = ptrtoint ptr %dlen.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dlen.i, align 4
  %sub26152.i = sub i32 %58, %add25.i
  store i32 %sub26152.i, ptr %dlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub26152.i)
  %cmp27153.i = icmp sgt i32 %sub26152.i, 0
  br i1 %cmp27153.i, label %while.body.lr.ph.i, label %skb_tailroom.exit.i.if.end8_crit_edge

skb_tailroom.exit.i.if.end8_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.body3.i.i:                                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !43
  unreachable

while.body.lr.ph.i:                               ; preds = %skb_tailroom.exit.i
  %add.ptr151.i = getelementptr i8, ptr %35, i32 %add25.i
  %truesize.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 20
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %add.ptr154.i = phi ptr [ %add.ptr151.i, %while.body.lr.ph.i ], [ %add.ptr.i20, %cleanup.i.while.body.i_crit_edge ]
  %59 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %nr_frags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %62)
  %cmp29.i = icmp ugt i8 %62, 16
  br i1 %cmp29.i, label %do.end42.i, label %if.end58.i, !prof !41

do.end42.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 68, i32 noundef 9, ptr noundef null) #10
  br label %ipcomp_decompress.exit.thread

if.end58.i:                                       ; preds = %while.body.i
  %call38.i.i.i.i = call ptr @__alloc_pages(i32 noundef 2592, i32 noundef 0, i32 noundef 0, ptr noundef null) #10
  %tobool65.not.i = icmp eq ptr %call38.i.i.i.i, null
  br i1 %tobool65.not.i, label %if.end58.i.ipcomp_decompress.exit.thread_crit_edge, label %cleanup.i

if.end58.i.ipcomp_decompress.exit.thread_crit_edge: ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipcomp_decompress.exit.thread

cleanup.i:                                        ; preds = %if.end58.i
  %frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %60, i32 0, i32 12
  %conv62.i = zext i8 %62 to i32
  %add.ptr63.i = getelementptr %struct.bio_vec, ptr %frags.i, i32 %conv62.i
  %63 = ptrtoint ptr %add.ptr63.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call38.i.i.i.i, ptr %add.ptr63.i, align 4
  %64 = ptrtoint ptr %dlen.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dlen.i, align 4
  %66 = call i32 @llvm.smin.i32(i32 %65, i32 4096) #10
  %bv_offset.i.i = getelementptr %struct.bio_vec, ptr %frags.i, i32 %conv62.i, i32 2
  %67 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %bv_offset.i.i, align 4
  %bv_len.i.i = getelementptr %struct.bio_vec, ptr %frags.i, i32 %conv62.i, i32 1
  %68 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %66, ptr %bv_len.i.i, align 4
  %call1.i.i = call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i) #10
  %69 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i140.i = getelementptr i8, ptr %call1.i.i, i32 %70
  %71 = call ptr @memcpy(ptr %add.ptr.i140.i, ptr %add.ptr154.i, i32 %66)
  %72 = ptrtoint ptr %truesize.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %truesize.i, align 8
  %add73.i = add i32 %73, %66
  store i32 %add73.i, ptr %truesize.i, align 8
  %74 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %data_len.i.i, align 8
  %add74.i = add i32 %75, %66
  store i32 %add74.i, ptr %data_len.i.i, align 8
  %76 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %len1.i, align 4
  %add76.i = add i32 %77, %66
  store i32 %add76.i, ptr %len1.i, align 4
  %78 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %end.i.i, align 4
  %nr_frags78.i = getelementptr inbounds %struct.skb_shared_info, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %nr_frags78.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %nr_frags78.i, align 2
  %inc.i = add i8 %81, 1
  store i8 %inc.i, ptr %nr_frags78.i, align 2
  %add.ptr.i20 = getelementptr i8, ptr %add.ptr154.i, i32 %66
  %82 = ptrtoint ptr %dlen.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dlen.i, align 4
  %sub26.i = sub i32 %83, %66
  store i32 %sub26.i, ptr %dlen.i, align 4
  %cmp27.i = icmp sgt i32 %sub26.i, 0
  br i1 %cmp27.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.if.end8_crit_edge

cleanup.i.if.end8_crit_edge:                      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

ipcomp_decompress.exit.thread:                    ; preds = %if.end58.i.ipcomp_decompress.exit.thread_crit_edge, %do.end42.i, %if.end.i.ipcomp_decompress.exit.thread_crit_edge, %__skb_pull.exit.ipcomp_decompress.exit.thread_crit_edge
  %retval.2.i.ph = phi i32 [ -90, %do.end42.i ], [ -22, %if.end.i.ipcomp_decompress.exit.thread_crit_edge ], [ %call14.i, %__skb_pull.exit.ipcomp_decompress.exit.thread_crit_edge ], [ -12, %if.end58.i.ipcomp_decompress.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen.i) #10
  br label %out

if.end8:                                          ; preds = %cleanup.i.if.end8_crit_edge, %skb_tailroom.exit.i.if.end8_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen.i) #10
  %conv = zext i8 %13 to i32
  br label %out

out:                                              ; preds = %if.end8, %ipcomp_decompress.exit.thread, %cond.true.i.out_crit_edge
  %err.0 = phi i32 [ %conv, %if.end8 ], [ -12, %cond.true.i.out_crit_edge ], [ %retval.2.i.ph, %ipcomp_decompress.exit.thread ]
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipcomp_output(ptr nocapture noundef readonly %x, ptr noundef %skb) #0 align 64 {
entry:
  %dlen.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 4
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp = icmp ult i32 %3, %conv
  br i1 %cmp, label %entry.out_ok_crit_edge, label %if.end

entry.out_ok_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_ok

if.end:                                           ; preds = %entry
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %if.end.cond.true.i_crit_edge

if.end.cond.true.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true.i

lor.lhs.false.i:                                  ; preds = %if.end
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %8 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.if.end3_crit_edge, label %skb_cloned.exit.i

lor.lhs.false.i.if.end3_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

skb_cloned.exit.i:                                ; preds = %lor.lhs.false.i
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %9 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #10
  %11 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %12, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end3_crit_edge, label %skb_cloned.exit.i.cond.true.i_crit_edge

skb_cloned.exit.i.cond.true.i_crit_edge:          ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.true.i

skb_cloned.exit.i.if.end3_crit_edge:              ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

cond.true.i:                                      ; preds = %skb_cloned.exit.i.cond.true.i_crit_edge, %if.end.cond.true.i_crit_edge
  %13 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_len.i.i, align 8
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %14) #10
  %tobool.not.i6.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i6.i, label %cond.true.i.out_ok_crit_edge, label %cond.true.i.if.end3_crit_edge

cond.true.i.if.end3_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

cond.true.i.out_ok_crit_edge:                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_ok

if.end3:                                          ; preds = %cond.true.i.if.end3_crit_edge, %skb_cloned.exit.i.if.end3_crit_edge, %lor.lhs.false.i.if.end3_crit_edge
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 8
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dlen.i) #10
  %19 = ptrtoint ptr %dlen.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 65400, ptr %dlen.i, align 4
  %data1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %20 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data1.i, align 4
  tail call fastcc void @local_bh_disable() #10
  %22 = load ptr, ptr @ipcomp_scratches, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !31) #10
  %and.i.i25 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i25 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tfms.i = getelementptr inbounds %struct.ipcomp_data, ptr %16, i32 0, i32 1
  %33 = ptrtoint ptr %tfms.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tfms.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %add13.i = add i32 %29, %35
  %36 = inttoptr i32 %add13.i to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %36, align 4
  %call14.i = call i32 @crypto_comp_compress(ptr noundef %38, ptr noundef %21, i32 noundef %18, ptr noundef %32, ptr noundef nonnull %dlen.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end3.ipcomp_compress.exit_crit_edge

if.end3.ipcomp_compress.exit_crit_edge:           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipcomp_compress.exit

if.end.i:                                         ; preds = %if.end3
  %39 = ptrtoint ptr %dlen.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dlen.i, align 4
  %add15.i = add i32 %40, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %18)
  %cmp.not.i = icmp ult i32 %add15.i, %18
  br i1 %cmp.not.i, label %if.end17.i, label %if.end.i.ipcomp_compress.exit_crit_edge

if.end.i.ipcomp_compress.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipcomp_compress.exit

if.end17.i:                                       ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %21, i32 4
  %41 = call ptr @memcpy(ptr %add.ptr.i, ptr %32, i32 %40)
  call fastcc void @local_bh_enable() #10
  %42 = ptrtoint ptr %dlen.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dlen.i, align 4
  %add18.i = add i32 %43, 4
  %44 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %add18.i)
  %cmp.i.i = icmp ugt i32 %45, %add18.i
  br i1 %cmp.i.i, label %cond.true.i.i, label %if.end17.i.if.end7_crit_edge

if.end17.i.if.end7_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

cond.true.i.i:                                    ; preds = %if.end17.i
  %46 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i.i.i, label %__skb_trim.exit.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %add18.i) #10
  br label %if.end7

__skb_trim.exit.i.i.i:                            ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %add18.i, ptr %len, align 4
  %49 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data1.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %50, i32 %add18.i
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %51 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %add.ptr.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  br label %if.end7

ipcomp_compress.exit:                             ; preds = %if.end.i.ipcomp_compress.exit_crit_edge, %if.end3.ipcomp_compress.exit_crit_edge
  call fastcc void @local_bh_enable() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen.i) #10
  br label %out_ok

if.end7:                                          ; preds = %__skb_trim.exit.i.i.i, %if.then.i.i.i, %if.end17.i.if.end7_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dlen.i) #10
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %52 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %54 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %55 to i32
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 %conv.i.i
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %56 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %mac_header.i, align 2
  %conv.i = zext i16 %57 to i32
  %add.ptr.i26 = getelementptr i8, ptr %53, i32 %conv.i
  %58 = ptrtoint ptr %add.ptr.i26 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %add.ptr.i26, align 1
  %60 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %add.ptr.i.i, align 2
  %flags = getelementptr inbounds %struct.ip_comp_hdr, ptr %add.ptr.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %flags, align 1
  %spi = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 7, i32 1
  %62 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %spi, align 4
  %conv10 = trunc i32 %63 to i16
  %cpi = getelementptr inbounds %struct.ip_comp_hdr, ptr %add.ptr.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %cpi to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv10, ptr %cpi, align 2
  %65 = load ptr, ptr %head.i.i, align 8
  %66 = load i16, ptr %mac_header.i, align 2
  %conv.i29 = zext i16 %66 to i32
  %add.ptr.i30 = getelementptr i8, ptr %65, i32 %conv.i29
  %67 = ptrtoint ptr %add.ptr.i30 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 108, ptr %add.ptr.i30, align 1
  br label %out_ok

out_ok:                                           ; preds = %if.end7, %ipcomp_compress.exit, %cond.true.i.out_ok_crit_edge, %entry.out_ok_crit_edge
  %head.i.i31 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %68 = ptrtoint ptr %head.i.i31 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %head.i.i31, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %70 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i32 = zext i16 %71 to i32
  %add.ptr.i.i33 = getelementptr i8, ptr %69, i32 %conv.i.i32
  %data.i34 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %72 = ptrtoint ptr %data.i34 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i34, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i33 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %73 to i32
  %sub.ptr.sub.i.neg = sub i32 %sub.ptr.rhs.cast.i, %sub.ptr.lhs.cast.i
  %call13 = call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.neg) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ipcomp_destroy(ptr noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @xfrm_state_delete_tunnel(ptr noundef %x) #10
  tail call void @mutex_lock_nested(ptr noundef nonnull @ipcomp_resource_mutex, i32 noundef 0) #10
  tail call fastcc void @ipcomp_free_data(ptr noundef nonnull %1)
  tail call void @mutex_unlock(ptr noundef nonnull @ipcomp_resource_mutex) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xfrm_state_delete_tunnel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipcomp_free_data(ptr nocapture noundef readonly %ipcd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tfms = getelementptr inbounds %struct.ipcomp_data, ptr %ipcd, i32 0, i32 1
  %0 = ptrtoint ptr %tfms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfms, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @ipcomp_free_tfms(ptr noundef nonnull %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = load i32, ptr @ipcomp_scratch_users, align 4
  %dec.i = add i32 %2, -1
  store i32 %dec.i, ptr @ipcomp_scratch_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.ipcomp_free_scratches.exit_crit_edge

if.end.ipcomp_free_scratches.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipcomp_free_scratches.exit

if.end.i:                                         ; preds = %if.end
  %3 = load ptr, ptr @ipcomp_scratches, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.end.i.ipcomp_free_scratches.exit_crit_edge, label %for.cond.preheader.i

if.end.i.ipcomp_free_scratches.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipcomp_free_scratches.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  %call10.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call10.i, i32 %4)
  %cmp11.i = icmp ult i32 %call10.i, %4
  br i1 %cmp11.i, label %do.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

do.body.lr.ph.i:                                  ; preds = %for.cond.preheader.i
  %5 = ptrtoint ptr %3 to i32
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %call12.i = phi i32 [ %call10.i, %do.body.lr.ph.i ], [ %call.i, %do.body.i.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call12.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %7, %5
  %8 = inttoptr i32 %add.i to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  tail call void @vfree(ptr noundef %10) #10
  %call.i = tail call i32 @cpumask_next(i32 noundef %call12.i, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %11
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.for.end.i_crit_edge

do.body.i.for.end.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

for.end.i:                                        ; preds = %do.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  tail call void @free_percpu(ptr noundef nonnull %3) #10
  br label %ipcomp_free_scratches.exit

ipcomp_free_scratches.exit:                       ; preds = %for.end.i, %if.end.i.ipcomp_free_scratches.exit_crit_edge, %if.end.ipcomp_free_scratches.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ipcomp_init_state(ptr nocapture noundef %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %calg = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 18
  %0 = ptrtoint ptr %calg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %calg, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %encap = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 24
  %2 = ptrtoint ptr %encap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encap, align 8
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end3, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 8) #14
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end3.out_crit_edge, label %if.end6

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end6:                                          ; preds = %if.end3
  tail call void @mutex_lock_nested(ptr noundef nonnull @ipcomp_resource_mutex, i32 noundef 0) #10
  %5 = load i32, ptr @ipcomp_scratch_users, align 4
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr @ipcomp_scratch_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %6 = load ptr, ptr @ipcomp_scratches, align 4
  br label %ipcomp_alloc_scratches.exit

if.end.i:                                         ; preds = %if.end6
  %call.i = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #15
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %if.end.i.error_crit_edge, label %if.end3.i

if.end.i.error_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end3.i:                                        ; preds = %if.end.i
  store ptr %call.i, ptr @ipcomp_scratches, align 4
  %call419.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call419.i, i32 %7)
  %cmp20.i = icmp ult i32 %call419.i, %7
  br i1 %cmp20.i, label %for.body.lr.ph.i, label %if.end3.i.if.end10_crit_edge

if.end3.i.if.end10_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

for.body.lr.ph.i:                                 ; preds = %if.end3.i
  %8 = ptrtoint ptr %call.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call421.i = phi i32 [ %call419.i, %for.body.lr.ph.i ], [ %call4.i, %if.end8.i.for.body.i_crit_edge ]
  %call5.i = tail call noalias ptr @vmalloc_node(i32 noundef 65400, i32 noundef 0) #15
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %for.body.i.error_crit_edge, label %if.end8.i

for.body.i.error_crit_edge:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end8.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call421.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, %8
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i, ptr %11, align 4
  %call4.i = tail call i32 @cpumask_next(i32 noundef %call421.i, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call4.i, %13
  br i1 %cmp.i, label %if.end8.i.for.body.i_crit_edge, label %if.end8.i.ipcomp_alloc_scratches.exit_crit_edge

if.end8.i.ipcomp_alloc_scratches.exit_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipcomp_alloc_scratches.exit

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

ipcomp_alloc_scratches.exit:                      ; preds = %if.end8.i.ipcomp_alloc_scratches.exit_crit_edge, %if.then.i
  %retval.2.i = phi ptr [ %6, %if.then.i ], [ %call.i, %if.end8.i.ipcomp_alloc_scratches.exit_crit_edge ]
  %tobool8.not = icmp eq ptr %retval.2.i, null
  br i1 %tobool8.not, label %ipcomp_alloc_scratches.exit.error_crit_edge, label %ipcomp_alloc_scratches.exit.if.end10_crit_edge

ipcomp_alloc_scratches.exit.if.end10_crit_edge:   ; preds = %ipcomp_alloc_scratches.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

ipcomp_alloc_scratches.exit.error_crit_edge:      ; preds = %ipcomp_alloc_scratches.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end10:                                         ; preds = %ipcomp_alloc_scratches.exit.if.end10_crit_edge, %if.end3.i.if.end10_crit_edge
  %14 = ptrtoint ptr %calg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %calg, align 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i48.for.cond.i_crit_edge, %if.end10
  %pos.0.in.i = phi ptr [ @ipcomp_tfms_list, %if.end10 ], [ %pos.0.i, %for.body.i48.for.cond.i_crit_edge ]
  %16 = ptrtoint ptr %pos.0.in.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %pos.0.i = load ptr, ptr %pos.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %pos.0.i, @ipcomp_tfms_list
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i48

for.body.i48:                                     ; preds = %for.cond.i
  %17 = tail call i32 @llvm.read_register.i32(metadata !31) #10
  %and.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %20, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !44
  %tfms13.i = getelementptr inbounds %struct.ipcomp_tfms, ptr %pos.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %tfms13.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tfms13.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !31) #10
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %cpu15.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu15.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu15.i, align 4
  %arrayidx.i45 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i45, align 4
  %add.i46 = add i32 %29, %23
  %30 = inttoptr i32 %add.i46 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !45
  %33 = tail call i32 @llvm.read_register.i32(metadata !31) #10
  %and.i.i.i83.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i83.i to ptr
  %preempt_count.i.i84.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i84.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i84.i, align 4
  %sub.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i84.i, align 4
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %32, i32 0, i32 3
  %37 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %cra_name.i.i.i = getelementptr inbounds %struct.crypto_alg, ptr %38, i32 0, i32 8
  %call23.i = tail call i32 @strcmp(ptr noundef %cra_name.i.i.i, ptr noundef %15) #16
  %tobool.not.i47 = icmp eq i32 %call23.i, 0
  br i1 %tobool.not.i47, label %cleanup.thread.i, label %for.body.i48.for.cond.i_crit_edge

for.body.i48.for.cond.i_crit_edge:                ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

cleanup.thread.i:                                 ; preds = %for.body.i48
  call void @__sanitizer_cov_trace_pc() #12
  %tfms13.i.le = getelementptr inbounds %struct.ipcomp_tfms, ptr %pos.0.i, i32 0, i32 1
  %users.i = getelementptr inbounds %struct.ipcomp_tfms, ptr %pos.0.i, i32 0, i32 2
  %39 = ptrtoint ptr %users.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %users.i, align 4
  %inc.i49 = add i32 %40, 1
  store i32 %inc.i49, ptr %users.i, align 4
  %41 = ptrtoint ptr %tfms13.i.le to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tfms13.i.le, align 4
  br label %ipcomp_alloc_tfms.exit

for.end.i:                                        ; preds = %for.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %43 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %43, i32 noundef 3264, i32 noundef 16) #14
  %tobool30.not.i = icmp eq ptr %call7.i.i50, null
  br i1 %tobool30.not.i, label %for.end.i.ipcomp_alloc_tfms.exit.thread_crit_edge, label %if.end32.i

for.end.i.ipcomp_alloc_tfms.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipcomp_alloc_tfms.exit.thread

if.end32.i:                                       ; preds = %for.end.i
  %users33.i = getelementptr inbounds %struct.ipcomp_tfms, ptr %call7.i.i50, i32 0, i32 2
  %44 = ptrtoint ptr %users33.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %users33.i, align 4
  %45 = ptrtoint ptr %call7.i.i50 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %call7.i.i50, ptr %call7.i.i50, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i50, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i50, ptr %prev.i.i, align 4
  %47 = load ptr, ptr @ipcomp_tfms_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i50, ptr noundef nonnull @ipcomp_tfms_list, ptr noundef %47) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end32.i.list_add.exit.i_crit_edge

if.end32.i.list_add.exit.i_crit_edge:             ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i50, ptr %prev1.i.i.i, align 4
  %49 = ptrtoint ptr %call7.i.i50 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %47, ptr %call7.i.i50, align 8
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ipcomp_tfms_list, ptr %prev.i.i, align 4
  store volatile ptr %call7.i.i50, ptr @ipcomp_tfms_list, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end32.i.list_add.exit.i_crit_edge
  %call36.i = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #15
  %tfms37.i = getelementptr inbounds %struct.ipcomp_tfms, ptr %call7.i.i50, i32 0, i32 1
  %51 = ptrtoint ptr %tfms37.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call36.i, ptr %tfms37.i, align 8
  %tobool38.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool38.not.i, label %list_add.exit.i.error.i_crit_edge, label %for.cond41.preheader.i

list_add.exit.i.error.i_crit_edge:                ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error.i

for.cond41.preheader.i:                           ; preds = %list_add.exit.i
  %call4288.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %52 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4288.i, i32 %52)
  %cmp4389.i = icmp ult i32 %call4288.i, %52
  br i1 %cmp4389.i, label %for.body44.lr.ph.i, label %ipcomp_alloc_tfms.exit.thread60

ipcomp_alloc_tfms.exit.thread60:                  ; preds = %for.cond41.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  %tfms62 = getelementptr inbounds %struct.ipcomp_data, ptr %call7.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %tfms62 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call36.i, ptr %tfms62, align 4
  br label %if.end16

for.body44.lr.ph.i:                               ; preds = %for.cond41.preheader.i
  %54 = ptrtoint ptr %call36.i to i32
  br label %for.body44.i

for.body44.i:                                     ; preds = %cleanup59.i.for.body44.i_crit_edge, %for.body44.lr.ph.i
  %call4290.i = phi i32 [ %call4288.i, %for.body44.lr.ph.i ], [ %call42.i, %cleanup59.i.for.body44.i_crit_edge ]
  %call.i.i = tail call ptr @crypto_alloc_base(ptr noundef %15, i32 noundef 2, i32 noundef 143) #10
  %cmp.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body44.i.error.i_crit_edge, label %cleanup59.i

for.body44.i.error.i_crit_edge:                   ; preds = %for.body44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error.i

cleanup59.i:                                      ; preds = %for.body44.i
  %arrayidx57.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call4290.i
  %55 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx57.i, align 4
  %add58.i = add i32 %56, %54
  %57 = inttoptr i32 %add58.i to ptr
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call.i.i, ptr %57, align 4
  %call42.i = tail call i32 @cpumask_next(i32 noundef %call4290.i, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %59 = load i32, ptr @nr_cpu_ids, align 4
  %cmp43.i = icmp ult i32 %call42.i, %59
  br i1 %cmp43.i, label %cleanup59.i.for.body44.i_crit_edge, label %cleanup59.i.ipcomp_alloc_tfms.exit_crit_edge

cleanup59.i.ipcomp_alloc_tfms.exit_crit_edge:     ; preds = %cleanup59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ipcomp_alloc_tfms.exit

cleanup59.i.for.body44.i_crit_edge:               ; preds = %cleanup59.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body44.i

error.i:                                          ; preds = %for.body44.i.error.i_crit_edge, %list_add.exit.i.error.i_crit_edge
  tail call fastcc void @ipcomp_free_tfms(ptr noundef %call36.i) #10
  br label %ipcomp_alloc_tfms.exit.thread

ipcomp_alloc_tfms.exit.thread:                    ; preds = %error.i, %for.end.i.ipcomp_alloc_tfms.exit.thread_crit_edge
  %tfms58 = getelementptr inbounds %struct.ipcomp_data, ptr %call7.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %tfms58 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %tfms58, align 4
  br label %error

ipcomp_alloc_tfms.exit:                           ; preds = %cleanup59.i.ipcomp_alloc_tfms.exit_crit_edge, %cleanup.thread.i
  %retval.2.i51 = phi ptr [ %42, %cleanup.thread.i ], [ %call36.i, %cleanup59.i.ipcomp_alloc_tfms.exit_crit_edge ]
  %tfms = getelementptr inbounds %struct.ipcomp_data, ptr %call7.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %tfms to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %retval.2.i51, ptr %tfms, align 4
  %tobool14.not = icmp eq ptr %retval.2.i51, null
  br i1 %tobool14.not, label %ipcomp_alloc_tfms.exit.error_crit_edge, label %ipcomp_alloc_tfms.exit.if.end16_crit_edge

ipcomp_alloc_tfms.exit.if.end16_crit_edge:        ; preds = %ipcomp_alloc_tfms.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

ipcomp_alloc_tfms.exit.error_crit_edge:           ; preds = %ipcomp_alloc_tfms.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end16:                                         ; preds = %ipcomp_alloc_tfms.exit.if.end16_crit_edge, %ipcomp_alloc_tfms.exit.thread60
  tail call void @mutex_unlock(ptr noundef nonnull @ipcomp_resource_mutex) #10
  %62 = ptrtoint ptr %calg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %calg, align 8
  %call20 = tail call ptr @xfrm_calg_get_byname(ptr noundef %63, i32 noundef 0) #10
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.body26, label %do.end32, !prof !41

do.body26:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/xfrm/xfrm_ipcomp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 356, 0\0A.popsection", ""() #10, !srcloc !46
  unreachable

do.end32:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %uinfo = getelementptr inbounds %struct.xfrm_algo_desc, ptr %call20, i32 0, i32 3
  %64 = ptrtoint ptr %uinfo to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %uinfo, align 4
  %66 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %65, ptr %call7.i.i, align 8
  %data = getelementptr inbounds %struct.xfrm_state, ptr %x, i32 0, i32 51
  %67 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call7.i.i, ptr %data, align 8
  br label %out

out:                                              ; preds = %error, %do.end32, %if.end3.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -22, %if.end.out_crit_edge ], [ 0, %do.end32 ], [ -12, %error ], [ -12, %if.end3.out_crit_edge ], [ -22, %entry.out_crit_edge ]
  ret i32 %err.0

error:                                            ; preds = %ipcomp_alloc_tfms.exit.error_crit_edge, %ipcomp_alloc_tfms.exit.thread, %ipcomp_alloc_scratches.exit.error_crit_edge, %for.body.i.error_crit_edge, %if.end.i.error_crit_edge
  tail call fastcc void @ipcomp_free_data(ptr noundef nonnull %call7.i.i)
  tail call void @mutex_unlock(ptr noundef nonnull @ipcomp_resource_mutex) #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xfrm_calg_get_byname(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_comp_decompress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_comp_compress(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ipcomp_free_tfms(ptr noundef %tfms) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %pos.0.in = phi ptr [ @ipcomp_tfms_list, %entry ], [ %pos.0, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %pos.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %pos.0 = load ptr, ptr %pos.0.in, align 4
  %cmp = icmp eq ptr %pos.0, @ipcomp_tfms_list
  br i1 %cmp, label %do.end.critedge, label %for.body

for.body:                                         ; preds = %for.cond
  %tfms1 = getelementptr inbounds %struct.ipcomp_tfms, ptr %pos.0, i32 0, i32 1
  %1 = ptrtoint ptr %tfms1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tfms1, align 4
  %cmp2 = icmp eq ptr %2, %tfms
  br i1 %cmp2, label %for.body.if.end23_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end.critedge:                                  ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 244, i32 noundef 9, ptr noundef null) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end.critedge, %for.body.if.end23_crit_edge
  %users = getelementptr inbounds %struct.ipcomp_tfms, ptr %pos.0, i32 0, i32 2
  %3 = ptrtoint ptr %users to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %users, align 4
  %dec = add i32 %4, -1
  store i32 %dec, ptr %users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool31.not = icmp eq i32 %dec, 0
  br i1 %tobool31.not, label %if.end33, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.0) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end33.list_del.exit_crit_edge

if.end33.list_del.exit_crit_edge:                 ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.0, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %pos.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pos.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end33.list_del.exit_crit_edge
  %11 = ptrtoint ptr %pos.0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.0, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %pos.0) #10
  %tobool35.not = icmp eq ptr %tfms, null
  br i1 %tobool35.not, label %list_del.exit.cleanup_crit_edge, label %for.cond38.preheader

list_del.exit.cleanup_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond38.preheader:                             ; preds = %list_del.exit
  %call63 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call63, i32 %13)
  %cmp3964 = icmp ult i32 %call63, %13
  br i1 %cmp3964, label %for.body40.lr.ph, label %for.cond38.preheader.for.end46_crit_edge

for.cond38.preheader.for.end46_crit_edge:         ; preds = %for.cond38.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end46

for.body40.lr.ph:                                 ; preds = %for.cond38.preheader
  %14 = ptrtoint ptr %tfms to i32
  br label %for.body40

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.body40.lr.ph
  %call65 = phi i32 [ %call63, %for.body40.lr.ph ], [ %call, %for.body40.for.body40_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call65
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %14
  %17 = inttoptr i32 %add to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %19, ptr noundef %19) #10
  %call = tail call i32 @cpumask_next(i32 noundef %call65, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp39 = icmp ult i32 %call, %20
  br i1 %cmp39, label %for.body40.for.body40_crit_edge, label %for.body40.for.end46_crit_edge

for.body40.for.end46_crit_edge:                   ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end46

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body40

for.end46:                                        ; preds = %for.body40.for.end46_crit_edge, %for.cond38.preheader.for.end46_crit_edge
  tail call void @free_percpu(ptr noundef nonnull %tfms) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end46, %list_del.exit.cleanup_crit_edge, %if.end23.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc_node(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_base(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind readonly }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !29}
!llvm.named.register.sp = !{!31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__ksymtab_ipcomp_input, !1, !"__ksymtab_ipcomp_input", i1 false, i1 false}
!1 = !{!"../net/xfrm/xfrm_ipcomp.c", i32 123, i32 1}
!2 = !{ptr @__ksymtab_ipcomp_output, !3, !"__ksymtab_ipcomp_output", i1 false, i1 false}
!3 = !{!"../net/xfrm/xfrm_ipcomp.c", i32 188, i32 1}
!4 = !{ptr @__ksymtab_ipcomp_destroy, !5, !"__ksymtab_ipcomp_destroy", i1 false, i1 false}
!5 = !{!"../net/xfrm/xfrm_ipcomp.c", i32 326, i32 1}
!6 = !{ptr @__ksymtab_ipcomp_init_state, !7, !"__ksymtab_ipcomp_init_state", i1 false, i1 false}
!7 = !{!"../net/xfrm/xfrm_ipcomp.c", i32 369, i32 1}
!8 = !{ptr @__UNIQUE_ID_file512, !9, !"__UNIQUE_ID_file512", i1 false, i1 false}
!9 = !{!"../net/xfrm/xfrm_ipcomp.c", i32 371, i32 1}
!10 = !{ptr @__UNIQUE_ID_license513, !9, !"__UNIQUE_ID_license513", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description514, !12, !"__UNIQUE_ID_description514", i1 false, i1 false}
!12 = !{!"../net/xfrm/xfrm_ipcomp.c", i32 372, i32 1}
!13 = !{ptr @__UNIQUE_ID_author515, !14, !"__UNIQUE_ID_author515", i1 false, i1 false}
!14 = !{!"../net/xfrm/xfrm_ipcomp.c", i32 373, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/xfrm/xfrm_ipcomp.c", i32 68, i32 7}
!17 = !{ptr @ipcomp_scratches, !18, !"ipcomp_scratches", i1 false, i1 false}
!18 = !{!"../net/xfrm/xfrm_ipcomp.c", i32 34, i32 25}
!19 = distinct !{null, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!21 = distinct !{null, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/xfrm/xfrm_ipcomp.c", i32 33, i32 8}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ipcomp_resource_mutex, !24, !"ipcomp_resource_mutex", i1 false, i1 false}
!27 = !{ptr @ipcomp_tfms_list, !28, !"ipcomp_tfms_list", i1 false, i1 false}
!28 = !{!"../net/xfrm/xfrm_ipcomp.c", i32 36, i32 8}
!29 = !{ptr @ipcomp_scratch_users, !30, !"ipcomp_scratch_users", i1 false, i1 false}
!30 = !{!"../net/xfrm/xfrm_ipcomp.c", i32 35, i32 12}
!31 = !{!"sp"}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 1, i32 2000}
!42 = !{i64 2154625164, i64 2154625652, i64 2154625201, i64 2154625257, i64 2154625291, i64 2154625315, i64 2154625356, i64 2154625377, i64 2154625405, i64 2154625439}
!43 = !{i64 2154622196, i64 2154622684, i64 2154622233, i64 2154622289, i64 2154622323, i64 2154622347, i64 2154622388, i64 2154622409, i64 2154622437, i64 2154622471}
!44 = !{i64 2157874569}
!45 = !{i64 2157890472}
!46 = !{i64 2157914197, i64 2157914684, i64 2157914234, i64 2157914290, i64 2157914324, i64 2157914348, i64 2157914389, i64 2157914410, i64 2157914438, i64 2157914472}
