; ModuleID = '/llk/IR_all_yes/net/dccp/ccids/lib/packet_history.c_pt.bc'
source_filename = "../net/dccp/ccids/lib/packet_history.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tfrc_tx_hist_entry = type { ptr, i64, i64 }
%struct.tfrc_rx_hist = type { [4 x ptr], i8 }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dccp_hdr = type { i16, i16, i8, i8, i16, i8, i8, i16 }
%struct.tfrc_rx_hist_entry = type { i56, i48, i64 }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tfrc_tx_hist\00", [19 x i8] zeroinitializer }, align 32
@tfrc_tx_hist_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tfrc_rxh_cache\00", [17 x i8] zeroinitializer }, align 32
@tfrc_rx_hist_slab = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tfrc_rx_handle_loss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 323, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\012BUG: invalid loss_count %d at %s:%d/%s()\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tfrc_rx_handle_loss\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/dccp/ccids/lib/packet_history.c\00", [60 x i8] zeroinitializer }, align 32
@tfrc_rx_handle_loss._entry_ptr = internal global ptr @tfrc_rx_handle_loss._entry, section ".printk_index", align 4
@tfrc_rx_hist_sample_rtt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\012BUG: please report to dccp@vger.kernel.org => prev = %u, last = %u at %s:%d/%s()\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tfrc_rx_hist_sample_rtt\00", [40 x i8] zeroinitializer }, align 32
@tfrc_rx_hist_sample_rtt._entry_ptr = internal global ptr @tfrc_rx_hist_sample_rtt._entry, section ".printk_index", align 4
@tfrc_rx_hist_sample_rtt._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.4, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014%s: RTT sample %u too large, using max\0A\00", [54 x i8] zeroinitializer }, align 32
@tfrc_rx_hist_sample_rtt._entry_ptr.9 = internal global ptr @tfrc_rx_hist_sample_rtt._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"net/dccp/ccids/lib/../../dccp.h\00", [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 2, i64 1, i64 2]
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 35, i32 40 }
@___asan_gen_.14 = private unnamed_addr constant [18 x i8] c"tfrc_tx_hist_slab\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 31, i32 27 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 83, i32 40 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"tfrc_rx_hist_slab\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 79, i32 27 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 323, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 414, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.48 = private constant [39 x i8] c"../net/dccp/ccids/lib/packet_history.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 431, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [35 x i8] c"../net/dccp/ccids/lib/../../dccp.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 154, i32 2 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @tfrc_rx_handle_loss._entry, ptr @tfrc_rx_handle_loss._entry_ptr, ptr @tfrc_rx_hist_sample_rtt._entry, ptr @tfrc_rx_hist_sample_rtt._entry.7, ptr @tfrc_rx_hist_sample_rtt._entry_ptr, ptr @tfrc_rx_hist_sample_rtt._entry_ptr.9, ptr @.str, ptr @tfrc_tx_hist_slab, ptr @.str.1, ptr @tfrc_rx_hist_slab, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfrc_tx_hist_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfrc_rx_hist_slab to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfrc_rx_handle_loss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfrc_rx_hist_sample_rtt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tfrc_rx_hist_sample_rtt._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tfrc_tx_packet_history_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 0, i32 noundef 8192, ptr noundef null) #8
  store ptr %call, ptr @tfrc_tx_hist_slab, align 4
  %cmp = icmp eq ptr %call, null
  %cond = select i1 %cmp, i32 -105, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tfrc_tx_packet_history_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tfrc_tx_hist_slab, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kmem_cache_destroy(ptr noundef nonnull %0) #8
  store ptr null, ptr @tfrc_tx_hist_slab, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tfrc_tx_hist_add(ptr nocapture noundef %headp, i64 noundef %seqno) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tfrc_tx_hist_slab, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !25) #8
  %and.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %4, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 3264, i32 2592
  %call2 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef %cond.i) #8
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %seqno3 = getelementptr inbounds %struct.tfrc_tx_hist_entry, ptr %call2, i32 0, i32 1
  %5 = ptrtoint ptr %seqno3 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %seqno, ptr %seqno3, align 8
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  %stamp = getelementptr inbounds %struct.tfrc_tx_hist_entry, ptr %call2, i32 0, i32 2
  %6 = ptrtoint ptr %stamp to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call.i, ptr %stamp, align 8
  %7 = ptrtoint ptr %headp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %headp, align 4
  %9 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %call2, align 8
  store ptr %call2, ptr %headp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -105, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tfrc_tx_hist_purge(ptr nocapture noundef %headp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %headp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %headp, align 4
  %cmp.not5 = icmp eq ptr %1, null
  br i1 %cmp.not5, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %head.06 = phi ptr [ %3, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %2 = ptrtoint ptr %head.06 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.06, align 8
  %4 = load ptr, ptr @tfrc_tx_hist_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %4, ptr noundef nonnull %head.06) #8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %5 = ptrtoint ptr %headp to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %headp, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tfrc_rx_packet_history_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.1, i32 noundef 24, i32 noundef 0, i32 noundef 8192, ptr noundef null) #8
  store ptr %call, ptr @tfrc_rx_hist_slab, align 4
  %cmp = icmp eq ptr %call, null
  %cond = select i1 %cmp, i32 -105, i32 0
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tfrc_rx_packet_history_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tfrc_rx_hist_slab, align 4
  %cmp.not = icmp eq ptr %0, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kmem_cache_destroy(ptr noundef nonnull %0) #8
  store ptr null, ptr @tfrc_rx_hist_slab, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tfrc_rx_hist_add_packet(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %skb, i64 noundef %ndp) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %loss_count.i = getelementptr inbounds %struct.tfrc_rx_hist, ptr %h, i32 0, i32 1
  %0 = ptrtoint ptr %loss_count.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i = load i8, ptr %loss_count.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 6
  %bf.lshr.i.i = lshr i8 %bf.load.i, 4
  %add.i.i = add nuw nsw i8 %bf.lshr.i.i, %bf.lshr.i
  %and.i.i = and i8 %add.i.i, 3
  %idxprom.i = zext i8 %and.i.i to i32
  %arrayidx.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %5 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %6 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %4, i32 %conv.i.i.i
  %dccpd_seq.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %7 = ptrtoint ptr %dccpd_seq.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %dccpd_seq.i, align 8
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %9)
  %bf.load.i2 = load i64, ptr %2, align 8
  %bf.shl.i = shl i64 %8, 16
  %bf.clear.i = and i64 %bf.load.i2, 65535
  %bf.set.i = or i64 %bf.clear.i, %bf.shl.i
  store i64 %bf.set.i, ptr %2, align 8
  %dccph_ccval.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %dccph_ccval.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load2.i = load i8, ptr %dccph_ccval.i, align 1
  %bf.lshr.i3 = lshr i8 %bf.load2.i, 4
  %conv.i = zext i8 %bf.lshr.i3 to i64
  %bf.shl5.i = shl nuw nsw i64 %conv.i, 12
  %bf.clear6.i = and i64 %bf.set.i, -61441
  %bf.set7.i = or i64 %bf.shl5.i, %bf.clear6.i
  store i64 %bf.set7.i, ptr %2, align 8
  %dccph_type.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %dccph_type.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load8.i = load i8, ptr %dccph_type.i, align 2
  %bf.lshr9.i = lshr i8 %bf.load8.i, 1
  %12 = and i8 %bf.lshr9.i, 15
  %bf.value13.i = zext i8 %12 to i64
  %bf.shl14.i = shl nuw nsw i64 %bf.value13.i, 8
  %bf.clear15.i = and i64 %bf.set7.i, -3841
  %bf.set16.i = or i64 %bf.shl14.i, %bf.clear15.i
  store i64 %bf.set16.i, ptr %2, align 8
  %tfrchrx_ndp.i = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %tfrchrx_ndp.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %bf.load17.i = load i64, ptr %tfrchrx_ndp.i, align 8
  %bf.shl19.i = shl i64 %ndp, 16
  %bf.clear20.i = and i64 %bf.load17.i, 65535
  %bf.set21.i = or i64 %bf.clear20.i, %bf.shl19.i
  store i64 %bf.set21.i, ptr %tfrchrx_ndp.i, align 8
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  %tfrchrx_tstamp.i = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %2, i32 0, i32 2
  %14 = ptrtoint ptr %tfrchrx_tstamp.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %call.i.i, ptr %tfrchrx_tstamp.i, align 8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tfrc_rx_hist_entry_from_skb(ptr nocapture noundef %entry1, ptr nocapture noundef readonly %skb, i64 noundef %ndp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %4 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dccpd_seq, align 8
  %6 = ptrtoint ptr %entry1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %bf.load = load i64, ptr %entry1, align 8
  %bf.shl = shl i64 %5, 16
  %bf.clear = and i64 %bf.load, 65535
  %bf.set = or i64 %bf.clear, %bf.shl
  store i64 %bf.set, ptr %entry1, align 8
  %dccph_ccval = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %dccph_ccval to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load2 = load i8, ptr %dccph_ccval, align 1
  %bf.lshr = lshr i8 %bf.load2, 4
  %conv = zext i8 %bf.lshr to i64
  %bf.shl5 = shl nuw nsw i64 %conv, 12
  %bf.clear6 = and i64 %bf.set, -61441
  %bf.set7 = or i64 %bf.shl5, %bf.clear6
  store i64 %bf.set7, ptr %entry1, align 8
  %dccph_type = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %dccph_type to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load8 = load i8, ptr %dccph_type, align 2
  %bf.lshr9 = lshr i8 %bf.load8, 1
  %9 = and i8 %bf.lshr9, 15
  %bf.value13 = zext i8 %9 to i64
  %bf.shl14 = shl nuw nsw i64 %bf.value13, 8
  %bf.clear15 = and i64 %bf.set7, -3841
  %bf.set16 = or i64 %bf.shl14, %bf.clear15
  store i64 %bf.set16, ptr %entry1, align 8
  %tfrchrx_ndp = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %entry1, i32 0, i32 1
  %10 = ptrtoint ptr %tfrchrx_ndp to i32
  call void @__asan_load8_noabort(i32 %10)
  %bf.load17 = load i64, ptr %tfrchrx_ndp, align 8
  %bf.shl19 = shl i64 %ndp, 16
  %bf.clear20 = and i64 %bf.load17, 65535
  %bf.set21 = or i64 %bf.clear20, %bf.shl19
  store i64 %bf.set21, ptr %tfrchrx_ndp, align 8
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  %tfrchrx_tstamp = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %entry1, i32 0, i32 2
  %11 = ptrtoint ptr %tfrchrx_tstamp to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %call.i, ptr %tfrchrx_tstamp, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tfrc_rx_hist_duplicate(ptr nocapture noundef readonly %h, ptr nocapture noundef readonly %skb) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dccpd_seq = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %0 = ptrtoint ptr %dccpd_seq to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %dccpd_seq, align 8
  %loss_start.i = getelementptr inbounds %struct.tfrc_rx_hist, ptr %h, i32 0, i32 1
  %2 = ptrtoint ptr %loss_start.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %loss_start.i, align 4
  %bf.lshr.i = lshr i8 %bf.load.i, 4
  %bf.clear.i = and i8 %bf.lshr.i, 3
  %idxprom.i = zext i8 %bf.clear.i to i32
  %arrayidx.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %5)
  %bf.load = load i64, ptr %4, align 8
  %bf.lshr = lshr i64 %bf.load, 16
  %add.i = sub i64 %1, %bf.lshr
  %and.i = and i64 %add.i, 281474976710655
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355328, i64 %and.i)
  %cmp.i = icmp ult i64 %and.i, 140737488355328
  %masksel.i = select i1 %cmp.i, i64 0, i64 -281474976710656
  %cond.i = or i64 %masksel.i, %and.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %cond.i)
  %cmp = icmp slt i64 %cond.i, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load.i)
  %cmp4.not22 = icmp ult i8 %bf.load.i, 64
  br i1 %cmp4.not22, label %for.cond.preheader.cleanup_crit_edge, label %for.body.preheader

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %bf.lshr3 = lshr i8 %bf.load.i, 6
  %narrow = add nuw nsw i8 %bf.lshr3, 1
  %add.i.i = add nuw nsw i8 %bf.lshr.i, 1
  %and.i.i = and i8 %add.i.i, 3
  %idxprom.i20 = zext i8 %and.i.i to i32
  %arrayidx.i21 = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i20
  %6 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i21, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load8_noabort(i32 %8)
  %bf.load8 = load i64, ptr %7, align 8
  %bf.lshr9 = lshr i64 %bf.load8, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.lshr9, i64 %1)
  %cmp10 = icmp eq i64 %bf.lshr9, %1
  br i1 %cmp10, label %for.body.preheader.cleanup_crit_edge, label %for.cond

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %narrow)
  %exitcond = icmp eq i8 %narrow, 2
  br i1 %exitcond, label %for.cond.cleanup_crit_edge, label %for.body.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.1:                                       ; preds = %for.cond
  %add.i.i.1 = add nuw nsw i8 %bf.lshr.i, 2
  %and.i.i.1 = and i8 %add.i.i.1, 3
  %idxprom.i20.1 = zext i8 %and.i.i.1 to i32
  %arrayidx.i21.1 = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i20.1
  %9 = ptrtoint ptr %arrayidx.i21.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i21.1, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load8_noabort(i32 %11)
  %bf.load8.1 = load i64, ptr %10, align 8
  %bf.lshr9.1 = lshr i64 %bf.load8.1, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.lshr9.1, i64 %1)
  %cmp10.1 = icmp eq i64 %bf.lshr9.1, %1
  br i1 %cmp10.1, label %for.body.1.cleanup_crit_edge, label %for.cond.1

for.body.1.cleanup_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.1:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %narrow)
  %exitcond.1 = icmp eq i8 %narrow, 3
  br i1 %exitcond.1, label %for.cond.1.cleanup_crit_edge, label %for.body.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i.2 = add nuw nsw i8 %bf.lshr.i, 3
  %and.i.i.2 = and i8 %add.i.i.2, 3
  %idxprom.i20.2 = zext i8 %and.i.i.2 to i32
  %arrayidx.i21.2 = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i20.2
  %12 = ptrtoint ptr %arrayidx.i21.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i21.2, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load8_noabort(i32 %14)
  %bf.load8.2 = load i64, ptr %13, align 8
  %bf.lshr9.2 = lshr i64 %bf.load8.2, 16
  call void @__sanitizer_cov_trace_cmp8(i64 %bf.lshr9.2, i64 %1)
  %cmp10.2 = icmp eq i64 %bf.lshr9.2, %1
  %spec.select = select i1 %cmp10.2, i32 1, i32 0
  br label %cleanup

cleanup:                                          ; preds = %for.body.2, %for.cond.1.cleanup_crit_edge, %for.body.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 1, %for.body.preheader.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 1, %for.body.1.cleanup_crit_edge ], [ 0, %for.cond.1.cleanup_crit_edge ], [ %spec.select, %for.body.2 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tfrc_rx_handle_loss(ptr noundef %h, ptr noundef %lh, ptr nocapture noundef readonly %skb, i64 noundef %ndp, ptr noundef %calc_first_li, ptr noundef %sk) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %loss_count = getelementptr inbounds %struct.tfrc_rx_hist, ptr %h, i32 0, i32 1
  %0 = ptrtoint ptr %loss_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %loss_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load)
  %cmp = icmp ult i8 %bf.load, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %bf.lshr.i.i = lshr i8 %bf.load, 4
  %idxprom.i.i = zext i8 %bf.lshr.i.i to i32
  %arrayidx.i.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i.i
  %1 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %bf.load.i = load i64, ptr %2, align 8
  %bf.lshr.i = lshr i64 %bf.load.i, 16
  %dccpd_seq.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %4 = ptrtoint ptr %dccpd_seq.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %dccpd_seq.i, align 8
  %add.i.i.i.i = sub i64 %5, %bf.lshr.i
  %and.i.i.i.i = and i64 %add.i.i.i.i, 281474976710655
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355328, i64 %and.i.i.i.i)
  %cmp.i.i.i.i = icmp ult i64 %and.i.i.i.i, 140737488355328
  %masksel.i.i.i.i = select i1 %cmp.i.i.i.i, i64 0, i64 -281474976710656
  %cond.i.i.i.i = or i64 %masksel.i.i.i.i, %and.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i.i.i)
  %cmp.i.i.i = icmp slt i64 %cond.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.dccp_loss_free.exit.i_crit_edge, !prof !35

if.then.dccp_loss_free.exit.i_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %dccp_loss_free.exit.i

do.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 154, i32 noundef 9, ptr noundef null) #8
  br label %dccp_loss_free.exit.i

dccp_loss_free.exit.i:                            ; preds = %do.end.i.i.i, %if.then.dccp_loss_free.exit.i_crit_edge
  %add.neg.i.i.i = xor i64 %ndp, -1
  %sub.i.i.i = add i64 %cond.i.i.i.i, %add.neg.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i.i)
  %cmp.i.i = icmp slt i64 %sub.i.i.i, 1
  br i1 %cmp.i.i, label %dccp_loss_free.exit.i.if.end32_crit_edge, label %if.then.i

dccp_loss_free.exit.i.if.end32_crit_edge:         ; preds = %dccp_loss_free.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

if.then.i:                                        ; preds = %dccp_loss_free.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %loss_count to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load2.i = load i8, ptr %loss_count, align 4
  %bf.clear.i = and i8 %bf.load2.i, 63
  %bf.set.i = or i8 %bf.clear.i, 64
  store i8 %bf.set.i, ptr %loss_count, align 4
  %bf.lshr.i.i.i = lshr i8 %bf.load2.i, 4
  %add.i.i.i = add nuw nsw i8 %bf.lshr.i.i.i, 1
  %and.i.i.i = and i8 %add.i.i.i, 3
  %idxprom.i8.i = zext i8 %and.i.i.i to i32
  %arrayidx.i9.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i8.i
  %7 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i9.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i.i.i, align 8
  %transport_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %11 = ptrtoint ptr %transport_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %transport_header.i.i.i.i, align 2
  %conv.i.i.i.i = zext i16 %12 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i.i
  %13 = ptrtoint ptr %dccpd_seq.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %dccpd_seq.i, align 8
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load8_noabort(i32 %15)
  %bf.load.i10.i = load i64, ptr %8, align 8
  %bf.shl.i.i = shl i64 %14, 16
  %bf.clear.i11.i = and i64 %bf.load.i10.i, 65535
  %bf.set.i.i = or i64 %bf.clear.i11.i, %bf.shl.i.i
  store i64 %bf.set.i.i, ptr %8, align 8
  %dccph_ccval.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %dccph_ccval.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load2.i.i = load i8, ptr %dccph_ccval.i.i, align 1
  %bf.lshr.i12.i = lshr i8 %bf.load2.i.i, 4
  %conv.i.i = zext i8 %bf.lshr.i12.i to i64
  %bf.shl5.i.i = shl nuw nsw i64 %conv.i.i, 12
  %bf.clear6.i.i = and i64 %bf.set.i.i, -61441
  %bf.set7.i.i = or i64 %bf.shl5.i.i, %bf.clear6.i.i
  store i64 %bf.set7.i.i, ptr %8, align 8
  %dccph_type.i.i = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %dccph_type.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load8.i.i = load i8, ptr %dccph_type.i.i, align 2
  %bf.lshr9.i.i = lshr i8 %bf.load8.i.i, 1
  %18 = and i8 %bf.lshr9.i.i, 15
  %bf.value13.i.i = zext i8 %18 to i64
  %bf.shl14.i.i = shl nuw nsw i64 %bf.value13.i.i, 8
  %bf.clear15.i.i = and i64 %bf.set7.i.i, -3841
  %bf.set16.i.i = or i64 %bf.shl14.i.i, %bf.clear15.i.i
  store i64 %bf.set16.i.i, ptr %8, align 8
  %tfrchrx_ndp.i.i = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %8, i32 0, i32 1
  %19 = ptrtoint ptr %tfrchrx_ndp.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %bf.load17.i.i = load i64, ptr %tfrchrx_ndp.i.i, align 8
  %bf.shl19.i.i = shl i64 %ndp, 16
  %bf.clear20.i.i = and i64 %bf.load17.i.i, 65535
  %bf.set21.i.i = or i64 %bf.clear20.i.i, %bf.shl19.i.i
  store i64 %bf.set21.i.i, ptr %tfrchrx_ndp.i.i, align 8
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  %tfrchrx_tstamp.i.i = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %8, i32 0, i32 2
  %20 = ptrtoint ptr %tfrchrx_tstamp.i.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %call.i.i.i, ptr %tfrchrx_tstamp.i.i, align 8
  br label %if.end32

if.else:                                          ; preds = %entry
  %bf.lshr = lshr i8 %bf.load, 6
  %trunc = trunc i8 %bf.lshr to i2
  %21 = zext i2 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i2 %trunc, label %do.end [
    i2 1, label %if.then8
    i2 -2, label %if.else25
  ]

if.then8:                                         ; preds = %if.else
  %bf.lshr.i.i47 = lshr i8 %bf.load, 4
  %add.i.i.i48 = add nuw nsw i8 %bf.lshr.i.i47, 1
  %and.i.i.i49 = and i8 %add.i.i.i48, 3
  %idxprom.i66.i = zext i8 %and.i.i.i49 to i32
  %arrayidx.i67.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i66.i
  %22 = ptrtoint ptr %arrayidx.i67.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i67.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load8_noabort(i32 %24)
  %bf.load2.i50 = load i64, ptr %23, align 8
  %bf.lshr3.i = lshr i64 %bf.load2.i50, 16
  %dccpd_seq.i51 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %25 = ptrtoint ptr %dccpd_seq.i51 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %dccpd_seq.i51, align 8
  %add.i.i = sub i64 %26, %bf.lshr3.i
  %and.i.i = and i64 %add.i.i, 281474976710655
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355328, i64 %and.i.i)
  %cmp.i.i52 = icmp ult i64 %and.i.i, 140737488355328
  %masksel.i.i = select i1 %cmp.i.i52, i64 0, i64 -281474976710656
  %cond.i.i = or i64 %masksel.i.i, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i)
  %cmp.i = icmp sgt i64 %cond.i.i, 0
  br i1 %cmp.i, label %if.then.i81, label %if.end.i, !prof !36

if.then.i81:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear.i53 = and i8 %bf.load, 63
  %bf.set.i54 = or i8 %bf.clear.i53, -128
  %27 = ptrtoint ptr %loss_count to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.set.i54, ptr %loss_count, align 4
  %add.i.i71.i = add nuw nsw i8 %bf.lshr.i.i47, 2
  %and.i.i72.i = and i8 %add.i.i71.i, 3
  %idxprom.i73.i = zext i8 %and.i.i72.i to i32
  %arrayidx.i74.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i73.i
  %28 = ptrtoint ptr %arrayidx.i74.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i74.i, align 4
  %head.i.i.i.i55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %30 = ptrtoint ptr %head.i.i.i.i55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i.i.i55, align 8
  %transport_header.i.i.i.i56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %32 = ptrtoint ptr %transport_header.i.i.i.i56 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %transport_header.i.i.i.i56, align 2
  %conv.i.i.i.i57 = zext i16 %33 to i32
  %add.ptr.i.i.i.i58 = getelementptr i8, ptr %31, i32 %conv.i.i.i.i57
  %34 = ptrtoint ptr %dccpd_seq.i51 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %dccpd_seq.i51, align 8
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_load8_noabort(i32 %36)
  %bf.load.i75.i = load i64, ptr %29, align 8
  %bf.shl.i.i59 = shl i64 %35, 16
  %bf.clear.i76.i = and i64 %bf.load.i75.i, 65535
  %bf.set.i.i60 = or i64 %bf.clear.i76.i, %bf.shl.i.i59
  store i64 %bf.set.i.i60, ptr %29, align 8
  %dccph_ccval.i.i61 = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i.i.i58, i32 0, i32 3
  %37 = ptrtoint ptr %dccph_ccval.i.i61 to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load2.i.i62 = load i8, ptr %dccph_ccval.i.i61, align 1
  %bf.lshr.i77.i = lshr i8 %bf.load2.i.i62, 4
  %conv.i.i63 = zext i8 %bf.lshr.i77.i to i64
  %bf.shl5.i.i64 = shl nuw nsw i64 %conv.i.i63, 12
  %bf.clear6.i.i65 = and i64 %bf.set.i.i60, -61441
  %bf.set7.i.i66 = or i64 %bf.shl5.i.i64, %bf.clear6.i.i65
  store i64 %bf.set7.i.i66, ptr %29, align 8
  %dccph_type.i.i67 = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i.i.i58, i32 0, i32 5
  %38 = ptrtoint ptr %dccph_type.i.i67 to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load8.i.i68 = load i8, ptr %dccph_type.i.i67, align 2
  %bf.lshr9.i.i69 = lshr i8 %bf.load8.i.i68, 1
  %39 = and i8 %bf.lshr9.i.i69, 15
  %bf.value13.i.i70 = zext i8 %39 to i64
  %bf.shl14.i.i71 = shl nuw nsw i64 %bf.value13.i.i70, 8
  %bf.clear15.i.i72 = and i64 %bf.set7.i.i66, -3841
  %bf.set16.i.i73 = or i64 %bf.shl14.i.i71, %bf.clear15.i.i72
  store i64 %bf.set16.i.i73, ptr %29, align 8
  %tfrchrx_ndp.i.i74 = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %29, i32 0, i32 1
  %40 = ptrtoint ptr %tfrchrx_ndp.i.i74 to i32
  call void @__asan_load8_noabort(i32 %40)
  %bf.load17.i.i75 = load i64, ptr %tfrchrx_ndp.i.i74, align 8
  %conv.i = shl i64 %ndp, 16
  %bf.shl19.i.i76 = and i64 %conv.i, 281474976645120
  %bf.clear20.i.i77 = and i64 %bf.load17.i.i75, 65535
  %bf.set21.i.i78 = or i64 %bf.clear20.i.i77, %bf.shl19.i.i76
  store i64 %bf.set21.i.i78, ptr %tfrchrx_ndp.i.i74, align 8
  %call.i.i.i79 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  %tfrchrx_tstamp.i.i80 = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %29, i32 0, i32 2
  %41 = ptrtoint ptr %tfrchrx_tstamp.i.i80 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %call.i.i.i79, ptr %tfrchrx_tstamp.i.i80, align 8
  br label %if.end32

if.end.i:                                         ; preds = %if.then8
  %bf.clear.i.i82 = and i8 %bf.lshr.i.i47, 3
  %idxprom.i.i83 = zext i8 %bf.clear.i.i82 to i32
  %arrayidx.i.i84 = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i.i83
  %42 = ptrtoint ptr %arrayidx.i.i84 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.i84, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load8_noabort(i32 %44)
  %bf.load.i85 = load i64, ptr %43, align 8
  %bf.lshr.i86 = lshr i64 %bf.load.i85, 16
  %conv8.i = and i64 %ndp, 4294967295
  %call9.i = tail call fastcc zeroext i1 @dccp_loss_free(i64 noundef %bf.lshr.i86, i64 noundef %26, i64 noundef %conv8.i) #8
  %45 = ptrtoint ptr %loss_count to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i.i79.i = load i8, ptr %loss_count, align 4
  %bf.lshr.i.i80.i = lshr i8 %bf.load.i.i79.i, 4
  br i1 %call9.i, label %if.then10.i, label %if.else27.i

if.then10.i:                                      ; preds = %if.end.i
  %add.i.i81.i = add nuw nsw i8 %bf.lshr.i.i80.i, 1
  %and.i.i82.i = and i8 %add.i.i81.i, 3
  %idxprom.i83.i = zext i8 %and.i.i82.i to i32
  %arrayidx.i84.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i83.i
  %46 = ptrtoint ptr %arrayidx.i84.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i84.i, align 4
  %tfrchrx_ndp.i = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %tfrchrx_ndp.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %bf.load12.i = load i64, ptr %tfrchrx_ndp.i, align 8
  %bf.lshr13.i = lshr i64 %bf.load12.i, 16
  %call14.i = tail call fastcc zeroext i1 @dccp_loss_free(i64 noundef %26, i64 noundef %bf.lshr3.i, i64 noundef %bf.lshr13.i) #8
  %49 = ptrtoint ptr %loss_count to i32
  call void @__asan_load1_noabort(i32 %49)
  %bf.load17.i = load i8, ptr %loss_count, align 4
  br i1 %call14.i, label %if.then15.i, label %if.else.i

if.then15.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = add i8 %bf.load17.i, 16
  %bf.value.i = and i8 %50, 48
  %bf.clear22.i = and i8 %bf.load17.i, 15
  %bf.set23.i = or i8 %bf.value.i, %bf.clear22.i
  %51 = ptrtoint ptr %loss_count to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %bf.set23.i, ptr %loss_count, align 4
  br label %if.end32

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.lshr.i92.i = lshr i8 %bf.load17.i, 4
  %bf.clear.i93.i = and i8 %bf.lshr.i92.i, 3
  %idxprom.i94.i = zext i8 %bf.clear.i93.i to i32
  %arrayidx.i95.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i94.i
  %52 = ptrtoint ptr %arrayidx.i95.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i95.i, align 4
  tail call fastcc void @tfrc_rx_hist_entry_from_skb(ptr noundef %53, ptr noundef %skb, i64 noundef %conv8.i) #8
  br label %if.end32

if.else27.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i99.i = and i8 %bf.lshr.i.i80.i, 3
  %add.i4.i.i = add nuw nsw i8 %bf.lshr.i.i80.i, 3
  %and.i5.i.i = and i8 %add.i4.i.i, 3
  %idxprom.i100.i = zext i8 %and.i.i99.i to i32
  %arrayidx.i101.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i100.i
  %54 = ptrtoint ptr %arrayidx.i101.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.i101.i, align 4
  %idxprom3.i.i = zext i8 %and.i5.i.i to i32
  %arrayidx4.i.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom3.i.i
  %56 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx4.i.i, align 4
  store ptr %57, ptr %arrayidx.i101.i, align 4
  store ptr %55, ptr %arrayidx4.i.i, align 4
  %bf.value31.i = shl nuw nsw i8 %and.i5.i.i, 4
  %bf.clear33.i = and i8 %bf.load.i.i79.i, -49
  %bf.set34.i = or i8 %bf.value31.i, %bf.clear33.i
  %58 = ptrtoint ptr %loss_count to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %bf.set34.i, ptr %loss_count, align 4
  %59 = load ptr, ptr %arrayidx.i101.i, align 4
  tail call fastcc void @tfrc_rx_hist_entry_from_skb(ptr noundef %59, ptr noundef %skb, i64 noundef %conv8.i) #8
  %60 = ptrtoint ptr %loss_count to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load38.i = load i8, ptr %loss_count, align 4
  %bf.clear39.i = and i8 %bf.load38.i, 63
  %bf.set40.i = or i8 %bf.clear39.i, -128
  store i8 %bf.set40.i, ptr %loss_count, align 4
  br label %if.end32

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef 3, ptr noundef nonnull @.str.4, i32 noundef 323, ptr noundef nonnull @.str.3) #11
  tail call void @dump_stack() #11
  br label %if.end32

if.else25:                                        ; preds = %if.else
  %bf.lshr.i.i89 = lshr i8 %bf.load, 4
  %bf.clear.i.i90 = and i8 %bf.lshr.i.i89, 3
  %idxprom.i.i91 = zext i8 %bf.clear.i.i90 to i32
  %arrayidx.i.i92 = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i.i91
  %61 = ptrtoint ptr %arrayidx.i.i92 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i92, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load8_noabort(i32 %63)
  %bf.load.i93 = load i64, ptr %62, align 8
  %bf.lshr.i94 = lshr i64 %bf.load.i93, 16
  %add.i.i.i95 = add nuw nsw i8 %bf.lshr.i.i89, 1
  %and.i.i.i96 = and i8 %add.i.i.i95, 3
  %idxprom.i112.i = zext i8 %and.i.i.i96 to i32
  %arrayidx.i113.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i112.i
  %64 = ptrtoint ptr %arrayidx.i113.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i113.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load8_noabort(i32 %66)
  %bf.load2.i97 = load i64, ptr %65, align 8
  %bf.lshr3.i98 = lshr i64 %bf.load2.i97, 16
  %add.i.i117.i = add nuw nsw i8 %bf.lshr.i.i89, 2
  %and.i.i118.i = and i8 %add.i.i117.i, 3
  %idxprom.i119.i = zext i8 %and.i.i118.i to i32
  %arrayidx.i120.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i119.i
  %67 = ptrtoint ptr %arrayidx.i120.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i120.i, align 4
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load8_noabort(i32 %69)
  %bf.load5.i = load i64, ptr %68, align 8
  %bf.lshr6.i = lshr i64 %bf.load5.i, 16
  %dccpd_seq.i99 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %70 = ptrtoint ptr %dccpd_seq.i99 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %dccpd_seq.i99, align 8
  %add.i.i100 = sub i64 %71, %bf.lshr6.i
  %and.i.i101 = and i64 %add.i.i100, 281474976710655
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355328, i64 %and.i.i101)
  %cmp.i.i102 = icmp ult i64 %and.i.i101, 140737488355328
  %masksel.i.i103 = select i1 %cmp.i.i102, i64 0, i64 -281474976710656
  %cond.i.i104 = or i64 %masksel.i.i103, %and.i.i101
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i104)
  %cmp.i105 = icmp sgt i64 %cond.i.i104, 0
  br i1 %cmp.i105, label %if.then.i134, label %if.end.i135, !prof !36

if.then.i134:                                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set.i106 = or i8 %bf.load, -64
  %72 = ptrtoint ptr %loss_count to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %bf.set.i106, ptr %loss_count, align 4
  %add.i.i124.i = add nuw nsw i8 %bf.lshr.i.i89, 3
  %and.i.i125.i = and i8 %add.i.i124.i, 3
  %idxprom.i126.i = zext i8 %and.i.i125.i to i32
  %arrayidx.i127.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i126.i
  %73 = ptrtoint ptr %arrayidx.i127.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i127.i, align 4
  %head.i.i.i.i108 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %75 = ptrtoint ptr %head.i.i.i.i108 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i.i.i.i108, align 8
  %transport_header.i.i.i.i109 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %77 = ptrtoint ptr %transport_header.i.i.i.i109 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %transport_header.i.i.i.i109, align 2
  %conv.i.i.i.i110 = zext i16 %78 to i32
  %add.ptr.i.i.i.i111 = getelementptr i8, ptr %76, i32 %conv.i.i.i.i110
  %79 = ptrtoint ptr %dccpd_seq.i99 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %dccpd_seq.i99, align 8
  %81 = ptrtoint ptr %74 to i32
  call void @__asan_load8_noabort(i32 %81)
  %bf.load.i128.i = load i64, ptr %74, align 8
  %bf.shl.i.i112 = shl i64 %80, 16
  %bf.clear.i129.i = and i64 %bf.load.i128.i, 65535
  %bf.set.i.i113 = or i64 %bf.clear.i129.i, %bf.shl.i.i112
  store i64 %bf.set.i.i113, ptr %74, align 8
  %dccph_ccval.i.i114 = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i.i.i111, i32 0, i32 3
  %82 = ptrtoint ptr %dccph_ccval.i.i114 to i32
  call void @__asan_load1_noabort(i32 %82)
  %bf.load2.i.i115 = load i8, ptr %dccph_ccval.i.i114, align 1
  %bf.lshr.i130.i = lshr i8 %bf.load2.i.i115, 4
  %conv.i.i116 = zext i8 %bf.lshr.i130.i to i64
  %bf.shl5.i.i117 = shl nuw nsw i64 %conv.i.i116, 12
  %bf.clear6.i.i118 = and i64 %bf.set.i.i113, -61441
  %bf.set7.i.i119 = or i64 %bf.shl5.i.i117, %bf.clear6.i.i118
  store i64 %bf.set7.i.i119, ptr %74, align 8
  %dccph_type.i.i120 = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i.i.i111, i32 0, i32 5
  %83 = ptrtoint ptr %dccph_type.i.i120 to i32
  call void @__asan_load1_noabort(i32 %83)
  %bf.load8.i.i121 = load i8, ptr %dccph_type.i.i120, align 2
  %bf.lshr9.i.i122 = lshr i8 %bf.load8.i.i121, 1
  %84 = and i8 %bf.lshr9.i.i122, 15
  %bf.value13.i.i123 = zext i8 %84 to i64
  %bf.shl14.i.i124 = shl nuw nsw i64 %bf.value13.i.i123, 8
  %bf.clear15.i.i125 = and i64 %bf.set7.i.i119, -3841
  %bf.set16.i.i126 = or i64 %bf.shl14.i.i124, %bf.clear15.i.i125
  store i64 %bf.set16.i.i126, ptr %74, align 8
  %tfrchrx_ndp.i.i127 = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %74, i32 0, i32 1
  %85 = ptrtoint ptr %tfrchrx_ndp.i.i127 to i32
  call void @__asan_load8_noabort(i32 %85)
  %bf.load17.i.i128 = load i64, ptr %tfrchrx_ndp.i.i127, align 8
  %conv.i107 = shl i64 %ndp, 16
  %bf.shl19.i.i129 = and i64 %conv.i107, 281474976645120
  %bf.clear20.i.i130 = and i64 %bf.load17.i.i128, 65535
  %bf.set21.i.i131 = or i64 %bf.clear20.i.i130, %bf.shl19.i.i129
  store i64 %bf.set21.i.i131, ptr %tfrchrx_ndp.i.i127, align 8
  %call.i.i.i132 = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  %tfrchrx_tstamp.i.i133 = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %74, i32 0, i32 2
  %86 = ptrtoint ptr %tfrchrx_tstamp.i.i133 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %call.i.i.i132, ptr %tfrchrx_tstamp.i.i133, align 8
  br label %if.then28

if.end.i135:                                      ; preds = %if.else25
  %add.i131.i = sub i64 %71, %bf.lshr3.i98
  %and.i132.i = and i64 %add.i131.i, 281474976710655
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355328, i64 %and.i132.i)
  %cmp.i133.i = icmp ult i64 %and.i132.i, 140737488355328
  %masksel.i134.i = select i1 %cmp.i133.i, i64 0, i64 -281474976710656
  %cond.i135.i = or i64 %masksel.i134.i, %and.i132.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i135.i)
  %cmp12.i = icmp sgt i64 %cond.i135.i, 0
  br i1 %cmp12.i, label %if.then14.i, label %if.end21.i

if.then14.i:                                      ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #10
  %add.i4.i.i136 = add nuw nsw i8 %bf.lshr.i.i89, 3
  %and.i5.i.i137 = and i8 %add.i4.i.i136, 3
  %idxprom3.i.i138 = zext i8 %and.i5.i.i137 to i32
  %arrayidx4.i.i139 = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom3.i.i138
  %87 = ptrtoint ptr %arrayidx4.i.i139 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx4.i.i139, align 4
  %89 = ptrtoint ptr %arrayidx.i120.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %88, ptr %arrayidx.i120.i, align 4
  store ptr %68, ptr %arrayidx4.i.i139, align 4
  %90 = load ptr, ptr %arrayidx.i120.i, align 4
  %conv16.i = and i64 %ndp, 4294967295
  tail call fastcc void @tfrc_rx_hist_entry_from_skb(ptr noundef %90, ptr noundef %skb, i64 noundef %conv16.i) #8
  %91 = ptrtoint ptr %loss_count to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load18.i = load i8, ptr %loss_count, align 4
  %bf.set20.i = or i8 %bf.load18.i, -64
  store i8 %bf.set20.i, ptr %loss_count, align 4
  br label %if.then28

if.end21.i:                                       ; preds = %if.end.i135
  %conv22.i = and i64 %ndp, 4294967295
  %call23.i = tail call fastcc zeroext i1 @dccp_loss_free(i64 noundef %bf.lshr.i94, i64 noundef %71, i64 noundef %conv22.i) #8
  %92 = ptrtoint ptr %loss_count to i32
  call void @__asan_load1_noabort(i32 %92)
  %bf.load.i.i151.i = load i8, ptr %loss_count, align 4
  %bf.lshr.i.i152.i = lshr i8 %bf.load.i.i151.i, 4
  br i1 %call23.i, label %if.then24.i, label %if.end60.i

if.then24.i:                                      ; preds = %if.end21.i
  %add.i.i153.i = add nuw nsw i8 %bf.lshr.i.i152.i, 1
  %and.i.i154.i = and i8 %add.i.i153.i, 3
  %idxprom.i155.i = zext i8 %and.i.i154.i to i32
  %arrayidx.i156.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i155.i
  %93 = ptrtoint ptr %arrayidx.i156.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i156.i, align 4
  %tfrchrx_ndp.i140 = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %tfrchrx_ndp.i140 to i32
  call void @__asan_load8_noabort(i32 %95)
  %bf.load26.i = load i64, ptr %tfrchrx_ndp.i140, align 8
  %bf.lshr27.i = lshr i64 %bf.load26.i, 16
  %call28.i = tail call fastcc zeroext i1 @dccp_loss_free(i64 noundef %71, i64 noundef %bf.lshr3.i98, i64 noundef %bf.lshr27.i) #8
  %96 = ptrtoint ptr %loss_count to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load.i.i158.i = load i8, ptr %loss_count, align 4
  %bf.lshr.i.i159.i = lshr i8 %bf.load.i.i158.i, 4
  br i1 %call28.i, label %if.then29.i, label %if.else56.i

if.then29.i:                                      ; preds = %if.then24.i
  %add.i.i160.i = add nuw nsw i8 %bf.lshr.i.i159.i, 2
  %and.i.i161.i = and i8 %add.i.i160.i, 3
  %idxprom.i162.i = zext i8 %and.i.i161.i to i32
  %arrayidx.i163.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i162.i
  %97 = ptrtoint ptr %arrayidx.i163.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i163.i, align 4
  %tfrchrx_ndp31.i = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %tfrchrx_ndp31.i to i32
  call void @__asan_load8_noabort(i32 %99)
  %bf.load32.i = load i64, ptr %tfrchrx_ndp31.i, align 8
  %bf.lshr33.i = lshr i64 %bf.load32.i, 16
  %call34.i = tail call fastcc zeroext i1 @dccp_loss_free(i64 noundef %bf.lshr3.i98, i64 noundef %bf.lshr6.i, i64 noundef %bf.lshr33.i) #8
  %100 = ptrtoint ptr %loss_count to i32
  call void @__asan_load1_noabort(i32 %100)
  %bf.load.i165.i = load i8, ptr %loss_count, align 4
  br i1 %call34.i, label %if.then35.i, label %if.else.i142

if.then35.i:                                      ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  %101 = add i8 %bf.load.i165.i, 32
  %bf.value.i141 = and i8 %101, 48
  %bf.clear38.i = and i8 %bf.load.i165.i, 15
  %bf.clear42.i = or i8 %bf.value.i141, %bf.clear38.i
  %102 = ptrtoint ptr %loss_count to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %bf.clear42.i, ptr %loss_count, align 4
  br label %if.end32

if.else.i142:                                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #10
  %103 = add i8 %bf.load.i165.i, 16
  %bf.value47.i = and i8 %103, 48
  %bf.clear49.i = and i8 %bf.load.i165.i, 15
  %bf.clear53.i = or i8 %bf.clear49.i, %bf.value47.i
  %bf.set54.i = or i8 %bf.clear53.i, 64
  %104 = ptrtoint ptr %loss_count to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %bf.set54.i, ptr %loss_count, align 4
  br label %if.end32

if.else56.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear.i177.i = and i8 %bf.lshr.i.i159.i, 3
  %idxprom.i178.i = zext i8 %bf.clear.i177.i to i32
  %arrayidx.i179.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i178.i
  %105 = ptrtoint ptr %arrayidx.i179.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.i179.i, align 4
  tail call fastcc void @tfrc_rx_hist_entry_from_skb(ptr noundef %106, ptr noundef %skb, i64 noundef %conv22.i) #8
  br label %if.end32

if.end60.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i183.i = and i8 %bf.lshr.i.i152.i, 3
  %add.i4.i184.i = add nuw nsw i8 %bf.lshr.i.i152.i, 3
  %and.i5.i185.i = and i8 %add.i4.i184.i, 3
  %idxprom.i186.i = zext i8 %and.i.i183.i to i32
  %arrayidx.i187.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i186.i
  %107 = ptrtoint ptr %arrayidx.i187.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx.i187.i, align 4
  %idxprom3.i188.i = zext i8 %and.i5.i185.i to i32
  %arrayidx4.i189.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom3.i188.i
  %109 = ptrtoint ptr %arrayidx4.i189.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx4.i189.i, align 4
  store ptr %110, ptr %arrayidx.i187.i, align 4
  store ptr %108, ptr %arrayidx4.i189.i, align 4
  %bf.value64.i = shl nuw nsw i8 %and.i5.i185.i, 4
  %bf.clear66.i = and i8 %bf.load.i.i151.i, -49
  %bf.set67.i = or i8 %bf.value64.i, %bf.clear66.i
  %111 = ptrtoint ptr %loss_count to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %bf.set67.i, ptr %loss_count, align 4
  %112 = load ptr, ptr %arrayidx.i187.i, align 4
  tail call fastcc void @tfrc_rx_hist_entry_from_skb(ptr noundef %112, ptr noundef %skb, i64 noundef %conv22.i) #8
  %113 = ptrtoint ptr %loss_count to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load71.i = load i8, ptr %loss_count, align 4
  %bf.set73.i = or i8 %bf.load71.i, -64
  store i8 %bf.set73.i, ptr %loss_count, align 4
  br label %if.then28

if.then28:                                        ; preds = %if.end60.i, %if.then14.i, %if.then.i134
  %call29 = tail call i32 @tfrc_lh_interval_add(ptr noundef %lh, ptr noundef %h, ptr noundef %calc_first_li, ptr noundef %sk) #8
  %114 = ptrtoint ptr %loss_count to i32
  call void @__asan_load1_noabort(i32 %114)
  %bf.load.i.i.i = load i8, ptr %loss_count, align 4
  %bf.lshr.i.i.i143 = lshr i8 %bf.load.i.i.i, 4
  %add.i.i.i144 = add nuw nsw i8 %bf.lshr.i.i.i143, 1
  %and.i.i.i145 = and i8 %add.i.i.i144, 3
  %idxprom.i.i146 = zext i8 %and.i.i.i145 to i32
  %arrayidx.i.i147 = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i.i146
  %115 = ptrtoint ptr %arrayidx.i.i147 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx.i.i147, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load8_noabort(i32 %117)
  %bf.load.i148 = load i64, ptr %116, align 8
  %bf.lshr.i149 = lshr i64 %bf.load.i148, 16
  %add.i.i63.i = add nuw nsw i8 %bf.lshr.i.i.i143, 2
  %and.i.i64.i = and i8 %add.i.i63.i, 3
  %idxprom.i65.i = zext i8 %and.i.i64.i to i32
  %arrayidx.i66.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i65.i
  %118 = ptrtoint ptr %arrayidx.i66.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i66.i, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load8_noabort(i32 %120)
  %bf.load2.i150 = load i64, ptr %119, align 8
  %bf.lshr3.i151 = lshr i64 %bf.load2.i150, 16
  %add.i.i70.i = add nuw nsw i8 %bf.lshr.i.i.i143, 3
  %and.i.i71.i = and i8 %add.i.i70.i, 3
  %idxprom.i72.i = zext i8 %and.i.i71.i to i32
  %arrayidx.i73.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i72.i
  %121 = ptrtoint ptr %arrayidx.i73.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i73.i, align 4
  %123 = ptrtoint ptr %122 to i32
  call void @__asan_load8_noabort(i32 %123)
  %bf.load5.i152 = load i64, ptr %122, align 8
  %tfrchrx_ndp.i153 = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %119, i32 0, i32 1
  %124 = ptrtoint ptr %tfrchrx_ndp.i153 to i32
  call void @__asan_load8_noabort(i32 %124)
  %bf.load8.i = load i64, ptr %tfrchrx_ndp.i153, align 8
  %bf.lshr9.i = lshr i64 %bf.load8.i, 16
  %tfrchrx_ndp11.i = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %122, i32 0, i32 1
  %125 = ptrtoint ptr %tfrchrx_ndp11.i to i32
  call void @__asan_load8_noabort(i32 %125)
  %bf.load12.i154 = load i64, ptr %tfrchrx_ndp11.i, align 8
  %add.i.i.i.i155 = sub nsw i64 %bf.lshr3.i151, %bf.lshr.i149
  %and.i.i.i.i156 = and i64 %add.i.i.i.i155, 281474976710655
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355328, i64 %and.i.i.i.i156)
  %cmp.i.i.i.i157 = icmp ult i64 %and.i.i.i.i156, 140737488355328
  %masksel.i.i.i.i158 = select i1 %cmp.i.i.i.i157, i64 0, i64 -281474976710656
  %cond.i.i.i.i159 = or i64 %masksel.i.i.i.i158, %and.i.i.i.i156
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i.i.i159)
  %cmp.i.i.i160 = icmp slt i64 %cond.i.i.i.i159, 0
  br i1 %cmp.i.i.i160, label %do.end.i.i.i161, label %if.then28.dccp_loss_free.exit.i165_crit_edge, !prof !35

if.then28.dccp_loss_free.exit.i165_crit_edge:     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %dccp_loss_free.exit.i165

do.end.i.i.i161:                                  ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 154, i32 noundef 9, ptr noundef null) #8
  br label %dccp_loss_free.exit.i165

dccp_loss_free.exit.i165:                         ; preds = %do.end.i.i.i161, %if.then28.dccp_loss_free.exit.i165_crit_edge
  %add.neg.i.i.i162 = xor i64 %bf.lshr9.i, -1
  %sub.i.i.i163 = add nsw i64 %cond.i.i.i.i159, %add.neg.i.i.i162
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i.i163)
  %cmp.i.i164 = icmp slt i64 %sub.i.i.i163, 1
  br i1 %cmp.i.i164, label %if.then.i168, label %if.else33.i

if.then.i168:                                     ; preds = %dccp_loss_free.exit.i165
  %bf.lshr13.i166 = lshr i64 %bf.load12.i154, 16
  %bf.lshr6.i167 = lshr i64 %bf.load5.i152, 16
  %add.i.i.i88.i = sub nsw i64 %bf.lshr6.i167, %bf.lshr3.i151
  %and.i.i.i89.i = and i64 %add.i.i.i88.i, 281474976710655
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355328, i64 %and.i.i.i89.i)
  %cmp.i.i.i90.i = icmp ult i64 %and.i.i.i89.i, 140737488355328
  %masksel.i.i.i91.i = select i1 %cmp.i.i.i90.i, i64 0, i64 -281474976710656
  %cond.i.i.i92.i = or i64 %masksel.i.i.i91.i, %and.i.i.i89.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i.i92.i)
  %cmp.i.i93.i = icmp slt i64 %cond.i.i.i92.i, 0
  br i1 %cmp.i.i93.i, label %do.end.i.i94.i, label %if.then.i168.dccp_loss_free.exit98.i_crit_edge, !prof !35

if.then.i168.dccp_loss_free.exit98.i_crit_edge:   ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #10
  br label %dccp_loss_free.exit98.i

do.end.i.i94.i:                                   ; preds = %if.then.i168
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 154, i32 noundef 9, ptr noundef null) #8
  br label %dccp_loss_free.exit98.i

dccp_loss_free.exit98.i:                          ; preds = %do.end.i.i94.i, %if.then.i168.dccp_loss_free.exit98.i_crit_edge
  %add.neg.i.i95.i = xor i64 %bf.lshr13.i166, -1
  %sub.i.i96.i = add nsw i64 %cond.i.i.i92.i, %add.neg.i.i95.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i.i96.i)
  %cmp.i97.i = icmp slt i64 %sub.i.i96.i, 1
  %126 = ptrtoint ptr %loss_count to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load.i.i169 = load i8, ptr %loss_count, align 4
  br i1 %cmp.i97.i, label %if.then16.i, label %if.else.i172

if.then16.i:                                      ; preds = %dccp_loss_free.exit98.i
  call void @__sanitizer_cov_trace_pc() #10
  %127 = add i8 %bf.load.i.i169, 48
  %bf.value.i170 = and i8 %127, 48
  %bf.clear.i171 = and i8 %bf.load.i.i169, 15
  %bf.clear20.i = or i8 %bf.value.i170, %bf.clear.i171
  br label %__three_after_loss.exit

if.else.i172:                                     ; preds = %dccp_loss_free.exit98.i
  call void @__sanitizer_cov_trace_pc() #10
  %128 = add i8 %bf.load.i.i169, 32
  %bf.value25.i = and i8 %128, 48
  %bf.clear27.i = and i8 %bf.load.i.i169, 15
  %bf.clear31.i = or i8 %bf.clear27.i, %bf.value25.i
  %bf.set32.i = or i8 %bf.clear31.i, 64
  br label %__three_after_loss.exit

if.else33.i:                                      ; preds = %dccp_loss_free.exit.i165
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %loss_count to i32
  call void @__asan_load1_noabort(i32 %129)
  %bf.load.i105.i = load i8, ptr %loss_count, align 4
  %130 = add i8 %bf.load.i105.i, 16
  %bf.value37.i = and i8 %130, 48
  %bf.clear39.i173 = and i8 %bf.load.i105.i, 15
  %bf.clear43.i = or i8 %bf.clear39.i173, %bf.value37.i
  %bf.set44.i = or i8 %bf.clear43.i, -128
  br label %__three_after_loss.exit

__three_after_loss.exit:                          ; preds = %if.else33.i, %if.else.i172, %if.then16.i
  %bf.clear20.sink.i = phi i8 [ %bf.clear20.i, %if.then16.i ], [ %bf.set32.i, %if.else.i172 ], [ %bf.set44.i, %if.else33.i ]
  %131 = ptrtoint ptr %loss_count to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 %bf.clear20.sink.i, ptr %loss_count, align 4
  br label %if.end32

if.end32:                                         ; preds = %__three_after_loss.exit, %if.else56.i, %if.else.i142, %if.then35.i, %do.end, %if.else27.i, %if.else.i, %if.then15.i, %if.then.i81, %if.then.i, %dccp_loss_free.exit.i.if.end32_crit_edge
  %is_new_loss.0 = phi i32 [ 0, %do.end ], [ %call29, %__three_after_loss.exit ], [ 0, %dccp_loss_free.exit.i.if.end32_crit_edge ], [ 0, %if.then.i ], [ 0, %if.then.i81 ], [ 0, %if.then15.i ], [ 0, %if.else.i ], [ 0, %if.else27.i ], [ 0, %if.then35.i ], [ 0, %if.else.i142 ], [ 0, %if.else56.i ]
  ret i32 %is_new_loss.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tfrc_lh_interval_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tfrc_rx_hist_alloc(ptr nocapture noundef %h) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @tfrc_rx_hist_slab, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 2592) #8
  %1 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %h, align 4
  %cmp3 = icmp eq ptr %call, null
  br i1 %cmp3, label %entry.cleanup_crit_edge, label %for.inc

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %entry
  %2 = load ptr, ptr @tfrc_rx_hist_slab, align 4
  %call.1 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %2, i32 noundef 2592) #8
  %arrayidx.1 = getelementptr [4 x ptr], ptr %h, i32 0, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.1, ptr %arrayidx.1, align 4
  %cmp3.1 = icmp eq ptr %call.1, null
  br i1 %cmp3.1, label %for.inc.while.body_crit_edge, label %for.inc.1

for.inc.while.body_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

for.inc.1:                                        ; preds = %for.inc
  %4 = load ptr, ptr @tfrc_rx_hist_slab, align 4
  %call.2 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %4, i32 noundef 2592) #8
  %arrayidx.2 = getelementptr [4 x ptr], ptr %h, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.2, ptr %arrayidx.2, align 4
  %cmp3.2 = icmp eq ptr %call.2, null
  br i1 %cmp3.2, label %for.inc.1.while.body_crit_edge, label %for.inc.2

for.inc.1.while.body_crit_edge:                   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

for.inc.2:                                        ; preds = %for.inc.1
  %6 = load ptr, ptr @tfrc_rx_hist_slab, align 4
  %call.3 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %6, i32 noundef 2592) #8
  %arrayidx.3 = getelementptr [4 x ptr], ptr %h, i32 0, i32 3
  %7 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.3, ptr %arrayidx.3, align 4
  %cmp3.3 = icmp eq ptr %call.3, null
  br i1 %cmp3.3, label %for.inc.2.while.body_crit_edge, label %for.inc.3

for.inc.2.while.body_crit_edge:                   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %loss_start = getelementptr inbounds %struct.tfrc_rx_hist, ptr %h, i32 0, i32 1
  %8 = ptrtoint ptr %loss_start to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %loss_start, align 4
  %bf.clear5 = and i8 %bf.load, 15
  store i8 %bf.clear5, ptr %loss_start, align 4
  br label %cleanup

while.body:                                       ; preds = %for.inc.2.while.body_crit_edge, %for.inc.1.while.body_crit_edge, %for.inc.while.body_crit_edge
  %i.126.ph = phi i32 [ 0, %for.inc.while.body_crit_edge ], [ 1, %for.inc.1.while.body_crit_edge ], [ 2, %for.inc.2.while.body_crit_edge ]
  %9 = load ptr, ptr @tfrc_rx_hist_slab, align 4
  %arrayidx9 = getelementptr [4 x ptr], ptr %h, i32 0, i32 %i.126.ph
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9, align 4
  tail call void @kmem_cache_free(ptr noundef %9, ptr noundef %11) #8
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx9, align 4
  br i1 %cmp3.1, label %while.body.cleanup_crit_edge, label %while.body.1

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.1:                                     ; preds = %while.body
  %dec.1 = add nsw i32 %i.126.ph, -1
  %13 = load ptr, ptr @tfrc_rx_hist_slab, align 4
  %arrayidx9.1 = getelementptr [4 x ptr], ptr %h, i32 0, i32 %dec.1
  %14 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9.1, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef %15) #8
  %16 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx9.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.1)
  %cmp7.not.1 = icmp eq i32 %dec.1, 0
  br i1 %cmp7.not.1, label %while.body.1.cleanup_crit_edge, label %while.body.2

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #10
  %dec.2 = add nsw i32 %i.126.ph, -2
  %17 = load ptr, ptr @tfrc_rx_hist_slab, align 4
  %arrayidx9.2 = getelementptr [4 x ptr], ptr %h, i32 0, i32 %dec.2
  %18 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx9.2, align 4
  tail call void @kmem_cache_free(ptr noundef %17, ptr noundef %19) #8
  %20 = ptrtoint ptr %arrayidx9.2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx9.2, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.body.2, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %for.inc.3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.3 ], [ -105, %entry.cleanup_crit_edge ], [ -105, %while.body.2 ], [ -105, %while.body.1.cleanup_crit_edge ], [ -105, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tfrc_rx_hist_purge(ptr nocapture noundef %h) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %h, align 4
  %cmp1.not = icmp eq ptr %1, null
  br i1 %cmp1.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load ptr, ptr @tfrc_rx_hist_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef nonnull %1) #8
  %3 = ptrtoint ptr %h to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %h, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr [4 x ptr], ptr %h, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %cmp1.not.1 = icmp eq ptr %5, null
  br i1 %cmp1.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load ptr, ptr @tfrc_rx_hist_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef nonnull %5) #8
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr [4 x ptr], ptr %h, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.2, align 4
  %cmp1.not.2 = icmp eq ptr %9, null
  br i1 %cmp1.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %10 = load ptr, ptr @tfrc_rx_hist_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %10, ptr noundef nonnull %9) #8
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr [4 x ptr], ptr %h, i32 0, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.3, align 4
  %cmp1.not.3 = icmp eq ptr %13, null
  br i1 %cmp1.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load ptr, ptr @tfrc_rx_hist_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %14, ptr noundef nonnull %13) #8
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tfrc_rx_hist_sample_rtt(ptr nocapture noundef %h, ptr nocapture noundef readonly %skb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %2 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %transport_header.i.i, align 2
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %dccph_ccval = getelementptr inbounds %struct.dccp_hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %dccph_ccval to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %dccph_ccval, align 1
  %bf.lshr = lshr i8 %bf.load, 4
  %add = zext i8 %bf.lshr to i32
  %5 = ptrtoint ptr %h to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %h, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %7)
  %bf.load2 = load i64, ptr %6, align 8
  %8 = trunc i64 %bf.load2 to i32
  %9 = lshr i32 %8, 12
  %sub = sub nsw i32 %add, %9
  %and = and i32 %sub, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %10 = add nsw i32 %and, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %10)
  %11 = icmp ult i32 %10, -4
  br i1 %11, label %if.then, label %if.else58

if.then:                                          ; preds = %entry
  %loss_start = getelementptr inbounds %struct.tfrc_rx_hist, ptr %h, i32 0, i32 1
  %12 = ptrtoint ptr %loss_start to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load8 = load i8, ptr %loss_start, align 4
  %13 = and i8 %bf.load8, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %13)
  %cmp12 = icmp eq i8 %13, 32
  br i1 %cmp12, label %if.then14, label %if.else49

if.then14:                                        ; preds = %if.then
  %bf.lshr.i = lshr i8 %bf.load8, 4
  %bf.clear.i = and i8 %bf.lshr.i, 3
  %idxprom.i = zext i8 %bf.clear.i to i32
  %arrayidx.i = getelementptr [4 x ptr], ptr %h, i32 0, i32 %idxprom.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %16)
  %bf.load16 = load i64, ptr %15, align 8
  %17 = trunc i64 %bf.load16 to i32
  %18 = lshr i32 %17, 12
  %sub26 = sub nsw i32 %18, %9
  %and27 = and i32 %sub26, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool.not = icmp eq i32 %and27, 0
  br i1 %tobool.not, label %do.end, label %if.then28

if.then28:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %div.rhs.trunc = trunc i32 %and27 to i8
  %div129 = udiv i8 4, %div.rhs.trunc
  %div.zext = zext i8 %div129 to i32
  %tfrchrx_tstamp = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %15, i32 0, i32 2
  %19 = ptrtoint ptr %tfrchrx_tstamp to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %tfrchrx_tstamp, align 8
  %tfrchrx_tstamp32 = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %6, i32 0, i32 2
  %21 = ptrtoint ptr %tfrchrx_tstamp32 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %tfrchrx_tstamp32, align 8
  %sub.i = sub i64 %20, %22
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %23 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #8
  %24 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %23, i32 0) #12, !srcloc !37
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %24, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %24, 1
  %25 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %23, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #12, !srcloc !38
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %25, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 9
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  %26 = trunc i64 %cond213.i.i.i to i32
  %conv34 = mul i32 %26, %div.zext
  br label %if.end73

do.end:                                           ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %conv40 = and i32 %18, 15
  %conv45 = and i32 %9, 15
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv40, i32 noundef %conv45, ptr noundef nonnull @.str.4, i32 noundef 417, ptr noundef nonnull @.str.6) #11
  tail call void @dump_stack() #11
  br label %if.end91

if.else49:                                        ; preds = %if.then
  br i1 %cmp, label %if.then52, label %if.else49.if.end91_crit_edge

if.else49.if.end91_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.then52:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear55 = and i8 %bf.load8, -49
  %bf.set = or i8 %bf.clear55, 16
  %27 = ptrtoint ptr %loss_start to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.set, ptr %loss_start, align 4
  br label %keep_ref_for_next_time

if.else58:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and)
  %cmp59 = icmp eq i32 %and, 4
  br i1 %cmp59, label %if.then61, label %if.else67

if.then61:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #10
  %tfrchrx_tstamp63 = getelementptr inbounds %struct.tfrc_rx_hist_entry, ptr %6, i32 0, i32 2
  %28 = ptrtoint ptr %tfrchrx_tstamp63 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %tfrchrx_tstamp63, align 8
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #8
  %sub.i126 = sub i64 %call.i.i, %29
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i126)
  %cmp8.i.i = icmp slt i64 %sub.i126, 0
  %30 = tail call i64 @llvm.abs.i64(i64 %sub.i126, i1 false) #8
  %31 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %30, i32 0) #12, !srcloc !37
  %asmresult.i.i.i = extractvalue { i64, i32 } %31, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %31, 1
  %32 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %30, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #12, !srcloc !38
  %asmresult10.i.i.i = extractvalue { i64, i32 } %32, 0
  %div1811.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %div1811.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %div1811.i.i
  %conv66 = trunc i64 %cond213.i.i to i32
  br label %if.end73

if.else67:                                        ; preds = %if.else58
  call void @__sanitizer_cov_trace_pc() #10
  %loss_start68 = getelementptr inbounds %struct.tfrc_rx_hist, ptr %h, i32 0, i32 1
  %33 = ptrtoint ptr %loss_start68 to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load69 = load i8, ptr %loss_start68, align 4
  %bf.clear70 = and i8 %bf.load69, -49
  %bf.set71 = or i8 %bf.clear70, 32
  store i8 %bf.set71, ptr %loss_start68, align 4
  br label %keep_ref_for_next_time

if.end73:                                         ; preds = %if.then61, %if.then28
  %sample.0 = phi i32 [ %conv34, %if.then28 ], [ %conv66, %if.then61 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %sample.0)
  %cmp74 = icmp ugt i32 %sample.0, 3000000
  br i1 %cmp74, label %do.body79, label %if.end73.if.end91_crit_edge, !prof !35

if.end73.if.end91_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

do.body79:                                        ; preds = %if.end73
  %call80 = tail call i32 @net_ratelimit() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.body79.if.end91_crit_edge, label %do.end85

do.body79.if.end91_crit_edge:                     ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

do.end85:                                         ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #10
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6, i32 noundef %sample.0) #11
  br label %if.end91

if.end91:                                         ; preds = %do.end85, %do.body79.if.end91_crit_edge, %if.end73.if.end91_crit_edge, %if.else49.if.end91_crit_edge, %do.end
  %sample.1 = phi i32 [ %sample.0, %if.end73.if.end91_crit_edge ], [ 3000000, %do.end85 ], [ 3000000, %do.body79.if.end91_crit_edge ], [ 0, %do.end ], [ 0, %if.else49.if.end91_crit_edge ]
  %loss_start92 = getelementptr inbounds %struct.tfrc_rx_hist, ptr %h, i32 0, i32 1
  %34 = ptrtoint ptr %loss_start92 to i32
  call void @__asan_load1_noabort(i32 %34)
  %bf.load93 = load i8, ptr %loss_start92, align 4
  %bf.clear94 = and i8 %bf.load93, -49
  store i8 %bf.clear94, ptr %loss_start92, align 4
  br label %keep_ref_for_next_time

keep_ref_for_next_time:                           ; preds = %if.end91, %if.else67, %if.then52
  %sample.2 = phi i32 [ %sample.1, %if.end91 ], [ 0, %if.then52 ], [ 0, %if.else67 ]
  ret i32 %sample.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @dccp_loss_free(i64 noundef %s1, i64 noundef %s2, i64 noundef %ndp) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = sub i64 %s2, %s1
  %and.i.i = and i64 %add.i.i, 281474976710655
  call void @__sanitizer_cov_trace_const_cmp8(i64 140737488355328, i64 %and.i.i)
  %cmp.i.i = icmp ult i64 %and.i.i, 140737488355328
  %masksel.i.i = select i1 %cmp.i.i, i64 0, i64 -281474976710656
  %cond.i.i = or i64 %masksel.i.i, %and.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond.i.i)
  %cmp.i = icmp slt i64 %cond.i.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.dccp_loss_count.exit_crit_edge, !prof !35

entry.dccp_loss_count.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %dccp_loss_count.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 154, i32 noundef 9, ptr noundef null) #8
  br label %dccp_loss_count.exit

dccp_loss_count.exit:                             ; preds = %do.end.i, %entry.dccp_loss_count.exit_crit_edge
  %add.neg.i = xor i64 %ndp, -1
  %sub.i = add i64 %cond.i.i, %add.neg.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1, i64 %sub.i)
  %cmp = icmp slt i64 %sub.i, 1
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !23}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/dccp/ccids/lib/packet_history.c", i32 35, i32 40}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/dccp/ccids/lib/packet_history.c", i32 83, i32 40}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/dccp/ccids/lib/packet_history.c", i32 323, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tfrc_rx_handle_loss._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @tfrc_rx_handle_loss._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/dccp/ccids/lib/packet_history.c", i32 414, i32 5}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tfrc_rx_hist_sample_rtt._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @tfrc_rx_hist_sample_rtt._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/dccp/ccids/lib/packet_history.c", i32 431, i32 3}
!17 = !{ptr @tfrc_rx_hist_sample_rtt._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @tfrc_rx_hist_sample_rtt._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @tfrc_tx_hist_slab, !20, !"tfrc_tx_hist_slab", i1 false, i1 false}
!20 = !{!"../net/dccp/ccids/lib/packet_history.c", i32 31, i32 27}
!21 = !{ptr @tfrc_rx_hist_slab, !22, !"tfrc_rx_hist_slab", i1 false, i1 false}
!22 = !{!"../net/dccp/ccids/lib/packet_history.c", i32 79, i32 27}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/dccp/ccids/lib/../../dccp.h", i32 154, i32 2}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{!"branch_weights", i32 1, i32 2000}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 971026, i64 971053, i64 971075, i64 971103}
!38 = !{i64 971434, i64 971461, i64 971494, i64 971515, i64 971542, i64 971568}
