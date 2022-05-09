; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/quantenna/qtnfmac/util.c_pt.bc'
source_filename = "../drivers/net/wireless/quantenna/qtnfmac/util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+qtnf_chipid_to_string\22, \22a\22\09"
module asm "\09.weak\09__crc_qtnf_chipid_to_string\09\09\09\09"
module asm "\09.long\09__crc_qtnf_chipid_to_string\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qtnf_chipid_to_string:\09\09\09\09\09"
module asm "\09.asciz \09\22qtnf_chipid_to_string\22\09\09\09\09\09"
module asm "__kstrtabns_qtnf_chipid_to_string:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.qtnf_sta_list = type { %struct.list_head, %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qtnf_sta_node = type { %struct.list_head, [6 x i8] }
%struct.qtnf_vif = type { %struct.wireless_dev, [6 x i8], [6 x i8], i8, i8, i8, i16, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.sk_buff_head, %struct.qtnf_sta_list, i32, i32 }
%struct.wireless_dev = type { ptr, i32, %struct.list_head, ptr, i32, %struct.list_head, i8, %struct.mutex, i8, i8, i8, i8, [6 x i8], [32 x i8], i8, i8, i8, ptr, ptr, i32, i32, %struct.work_struct, [6 x i8], %struct.list_head, %struct.spinlock, ptr, %struct.cfg80211_chan_def, %struct.cfg80211_chan_def, i8, i8, i8, i32, i32, i32, i32, i8, i8, i32, i32, %struct.anon.151, ptr, %struct.list_head, %struct.spinlock, %struct.work_struct, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cfg80211_chan_def = type { ptr, i32, i32, i32, %struct.ieee80211_edmg, i16 }
%struct.ieee80211_edmg = type { i8, i32 }
%struct.anon.151 = type { %struct.cfg80211_ibss_params, %struct.cfg80211_connect_params, ptr, ptr, i32, [6 x i8], [6 x i8], [32 x i8], i8, i8, i8 }
%struct.cfg80211_ibss_params = type { ptr, ptr, %struct.cfg80211_chan_def, ptr, i8, i8, i16, i32, i8, i8, i8, i8, i8, [6 x i32], %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, ptr, i32 }
%struct.ieee80211_ht_cap = type <{ i16, i8, %struct.ieee80211_mcs_info, i16, i32, i8 }>
%struct.ieee80211_mcs_info = type { [10 x i8], i16, i8, [3 x i8] }
%struct.cfg80211_connect_params = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i8, i32, %struct.cfg80211_crypto_settings, ptr, i8, i8, i32, i32, %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap, %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap, i8, %struct.cfg80211_bss_selection, ptr, ptr, i32, ptr, i32, i16, ptr, i32, i8, %struct.ieee80211_edmg }
%struct.cfg80211_crypto_settings = type { i32, i32, i32, [5 x i32], i32, [2 x i32], i8, i16, i8, i8, i8, ptr, i32, ptr, ptr, i8, i32 }
%struct.ieee80211_vht_cap = type { i32, %struct.ieee80211_vht_mcs_info }
%struct.ieee80211_vht_mcs_info = type { i16, i16, i16, i16 }
%struct.cfg80211_bss_selection = type { i32, %union.anon.152 }
%union.anon.152 = type { %struct.cfg80211_bss_select_adjust }
%struct.cfg80211_bss_select_adjust = type { i32, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Topaz\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Pearl revA\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Pearl revB\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Pearl revC\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@__kstrtab_qtnf_chipid_to_string = external dso_local constant [0 x i8], align 1
@__kstrtabns_qtnf_chipid_to_string = external dso_local constant [0 x i8], align 1
@__ksymtab_qtnf_chipid_to_string = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qtnf_chipid_to_string to i32), ptr @__kstrtab_qtnf_chipid_to_string, ptr @__kstrtabns_qtnf_chipid_to_string }, section "___ksymtab_gpl+qtnf_chipid_to_string", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.qtnf_chipid_to_string = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 112, i32 10 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 114, i32 10 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 116, i32 10 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 118, i32 10 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [49 x i8] c"../drivers/net/wireless/quantenna/qtnfmac/util.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 120, i32 10 }
@___asan_gen_.20 = private unnamed_addr constant [35 x i8] c"switch.table.qtnf_chipid_to_string\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_qtnf_chipid_to_string, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @switch.table.qtnf_chipid_to_string], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.qtnf_chipid_to_string to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_sta_list_init(ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %list, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end, !prof !21

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  %size = getelementptr inbounds %struct.qtnf_sta_list, ptr %list, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %size, i32 noundef 4) #7
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %size, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qtnf_sta_list_lookup(ptr noundef readonly %list, ptr noundef readonly %mac) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mac, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader, !prof !21

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %node.0.in = phi ptr [ %node.0, %for.body.for.cond_crit_edge ], [ %list, %for.cond.preheader ]
  %0 = ptrtoint ptr %node.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.0 = load ptr, ptr %node.0.in, align 4
  %cmp.not = icmp eq ptr %node.0, %list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %mac_addr = getelementptr inbounds %struct.qtnf_sta_node, ptr %node.0, i32 0, i32 1
  %1 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac_addr, align 4
  %3 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac, align 4
  %xor.i = xor i32 %4, %2
  %add.ptr.i = getelementptr %struct.qtnf_sta_node, ptr %node.0, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i, align 2
  %7 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %8, %6
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ], [ %node.0, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qtnf_sta_list_lookup_index(ptr noundef %list, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %size.i = getelementptr inbounds %struct.qtnf_sta_list, ptr %list, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %size.i, i32 noundef 4) #7
  %0 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %index)
  %cmp.not = icmp ugt i32 %1, %index
  br i1 %cmp.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %node.017 = load ptr, ptr %list, align 4
  %cmp3.not18 = icmp eq ptr %node.017, %list
  br i1 %cmp3.not18, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %dec = add i32 %index.addr.019, -1
  %3 = ptrtoint ptr %node.020 to i32
  call void @__asan_load4_noabort(i32 %3)
  %node.0 = load ptr, ptr %node.020, align 4
  %cmp3.not = icmp eq ptr %node.0, %list
  br i1 %cmp3.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %node.020 = phi ptr [ %node.0, %for.cond.for.body_crit_edge ], [ %node.017, %for.cond.preheader.for.body_crit_edge ]
  %index.addr.019 = phi i32 [ %dec, %for.cond.for.body_crit_edge ], [ %index, %for.cond.preheader.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.addr.019)
  %cmp4 = icmp eq i32 %index.addr.019, 0
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ %node.020, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @qtnf_sta_list_add(ptr noundef %vif, ptr noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_list = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 12
  %tobool.not = icmp eq ptr %mac, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader.i, !prof !21

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i:                             ; preds = %entry
  %add.ptr1.i.i = getelementptr i8, ptr %mac, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.preheader.i
  %node.0.in.i = phi ptr [ %node.0.i, %for.body.i.for.cond.i_crit_edge ], [ %sta_list, %for.cond.preheader.i ]
  %0 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.0.i = load ptr, ptr %node.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %node.0.i, %sta_list
  br i1 %cmp.not.i, label %for.cond.i.if.end6_crit_edge, label %for.body.i

for.cond.i.if.end6_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

for.body.i:                                       ; preds = %for.cond.i
  %mac_addr.i = getelementptr inbounds %struct.qtnf_sta_node, ptr %node.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac_addr.i, align 4
  %3 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac, align 4
  %xor.i.i = xor i32 %4, %2
  %add.ptr.i.i = getelementptr %struct.qtnf_sta_node, ptr %node.0.i, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %7 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %8, %6
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %qtnf_sta_list_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

qtnf_sta_list_lookup.exit:                        ; preds = %for.body.i
  %tobool4.not = icmp eq ptr %node.0.i, null
  br i1 %tobool4.not, label %qtnf_sta_list_lookup.exit.if.end6_crit_edge, label %qtnf_sta_list_lookup.exit.cleanup_crit_edge

qtnf_sta_list_lookup.exit.cleanup_crit_edge:      ; preds = %qtnf_sta_list_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

qtnf_sta_list_lookup.exit.if.end6_crit_edge:      ; preds = %qtnf_sta_list_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end6:                                          ; preds = %qtnf_sta_list_lookup.exit.if.end6_crit_edge, %for.cond.i.if.end6_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 16) #10
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end18, !prof !21

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %mac_addr = getelementptr inbounds %struct.qtnf_sta_node, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mac, align 4
  %12 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %mac_addr, align 8
  %13 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr1.i.i, align 2
  %add.ptr1.i = getelementptr %struct.qtnf_sta_node, ptr %call7.i.i, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %add.ptr1.i, align 4
  %prev.i = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 12, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %call.i.i30 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %17, ptr noundef %sta_list) #7
  br i1 %call.i.i30, label %if.end.i.i, label %if.end18.list_add_tail.exit_crit_edge

if.end18.list_add_tail.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %sta_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call7.i.i, ptr %17, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end18.list_add_tail.exit_crit_edge
  %size = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 12, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %size, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %size, i32 1, i32 3, i32 1) #7
  %22 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %size, ptr %size, i32 1, ptr elementtype(i32) %size) #7, !srcloc !22
  %generation = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 14
  %23 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %generation, align 4
  %inc = add i32 %24, 1
  store i32 %inc, ptr %generation, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end6.cleanup_crit_edge, %qtnf_sta_list_lookup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %node.0.i, %qtnf_sta_list_lookup.exit.cleanup_crit_edge ], [ null, %if.end6.cleanup_crit_edge ], [ %call7.i.i, %list_add_tail.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @qtnf_sta_list_del(ptr noundef %vif, ptr noundef readonly %mac) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %sta_list = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 12
  %tobool.not.i = icmp eq ptr %mac, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %for.cond.preheader.i, !prof !21

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.cond.preheader.i:                             ; preds = %entry
  %add.ptr1.i.i = getelementptr i8, ptr %mac, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.preheader.i
  %node.0.in.i = phi ptr [ %node.0.i, %for.body.i.for.cond.i_crit_edge ], [ %sta_list, %for.cond.preheader.i ]
  %0 = ptrtoint ptr %node.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %node.0.i = load ptr, ptr %node.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %node.0.i, %sta_list
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %mac_addr.i = getelementptr inbounds %struct.qtnf_sta_node, ptr %node.0.i, i32 0, i32 1
  %1 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %mac_addr.i, align 4
  %3 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mac, align 4
  %xor.i.i = xor i32 %4, %2
  %add.ptr.i.i = getelementptr %struct.qtnf_sta_node, ptr %node.0.i, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %add.ptr.i.i, align 2
  %7 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr1.i.i, align 2
  %xor37.i.i = xor i16 %8, %6
  %xor3.i.i = zext i16 %xor37.i.i to i32
  %or.i.i = or i32 %xor.i.i, %xor3.i.i
  %cmp.i.i = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i, label %qtnf_sta_list_lookup.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.i

qtnf_sta_list_lookup.exit:                        ; preds = %for.body.i
  %tobool.not = icmp eq ptr %node.0.i, null
  br i1 %tobool.not, label %qtnf_sta_list_lookup.exit.if.end_crit_edge, label %if.then

qtnf_sta_list_lookup.exit.if.end_crit_edge:       ; preds = %qtnf_sta_list_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %qtnf_sta_list_lookup.exit
  %call.i.i7 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %node.0.i) #7
  br i1 %call.i.i7, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.0.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %node.0.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %node.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %15 = ptrtoint ptr %node.0.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %node.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %node.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %size = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 12, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %size, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %size, i32 1, i32 3, i32 1) #7
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %size, ptr %size, i32 1, ptr elementtype(i32) %size) #7, !srcloc !23
  tail call void @kfree(ptr noundef nonnull %node.0.i) #7
  %generation = getelementptr inbounds %struct.qtnf_vif, ptr %vif, i32 0, i32 14
  %18 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %generation, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %generation, align 4
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %qtnf_sta_list_lookup.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tobool.not10 = phi i1 [ true, %list_del.exit ], [ false, %qtnf_sta_list_lookup.exit.if.end_crit_edge ], [ false, %entry.if.end_crit_edge ], [ false, %for.cond.i.if.end_crit_edge ]
  ret i1 %tobool.not10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qtnf_sta_list_free(ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.qtnf_sta_list, ptr %list, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %size, i32 noundef 4) #7
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %size, align 4
  %1 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %list, align 4
  %cmp.not25 = icmp eq ptr %2, %list
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %node.026 = phi ptr [ %tmp.0, %list_del.exit.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %node.026 to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp.0 = load ptr, ptr %node.026, align 4
  %call.i.i23 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node.026) #7
  br i1 %call.i.i23, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %node.026, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %node.026 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node.026, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %node.026 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %node.026, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %node.026, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %node.026) #7
  %cmp.not = icmp eq ptr %tmp.0, %list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %12 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list, ptr %list, align 4
  %prev.i24 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %prev.i24, align 4
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @qtnf_chipid_to_string(i32 noundef %chip_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %chip_id, -64
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %2 = icmp ult i32 %1, 4
  br i1 %2, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.qtnf_chipid_to_string, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.4, %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/quantenna/qtnfmac/util.c", i32 112, i32 10}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/quantenna/qtnfmac/util.c", i32 114, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/quantenna/qtnfmac/util.c", i32 116, i32 10}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/quantenna/qtnfmac/util.c", i32 118, i32 10}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/quantenna/qtnfmac/util.c", i32 120, i32 10}
!10 = !{ptr @__ksymtab_qtnf_chipid_to_string, !11, !"__ksymtab_qtnf_chipid_to_string", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/quantenna/qtnfmac/util.c", i32 123, i32 1}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{i64 2148211079, i64 2148211105, i64 2148211134, i64 2148211168, i64 2148211199, i64 2148211222}
!23 = !{i64 2148213544, i64 2148213570, i64 2148213599, i64 2148213633, i64 2148213664, i64 2148213687}
