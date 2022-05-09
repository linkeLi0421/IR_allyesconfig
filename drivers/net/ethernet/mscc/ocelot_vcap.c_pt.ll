; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mscc/ocelot_vcap.c_pt.bc'
source_filename = "../drivers/net/ethernet/mscc/ocelot_vcap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ocelot_vcap_policer_add\22, \22a\22\09"
module asm "\09.weak\09__crc_ocelot_vcap_policer_add\09\09\09\09"
module asm "\09.long\09__crc_ocelot_vcap_policer_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocelot_vcap_policer_add:\09\09\09\09\09"
module asm "\09.asciz \09\22ocelot_vcap_policer_add\22\09\09\09\09\09"
module asm "__kstrtabns_ocelot_vcap_policer_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ocelot_vcap_policer_del\22, \22a\22\09"
module asm "\09.weak\09__crc_ocelot_vcap_policer_del\09\09\09\09"
module asm "\09.long\09__crc_ocelot_vcap_policer_del\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocelot_vcap_policer_del:\09\09\09\09\09"
module asm "\09.asciz \09\22ocelot_vcap_policer_del\22\09\09\09\09\09"
module asm "__kstrtabns_ocelot_vcap_policer_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ocelot_vcap_block_find_filter_by_id\22, \22a\22\09"
module asm "\09.weak\09__crc_ocelot_vcap_block_find_filter_by_id\09\09\09\09"
module asm "\09.long\09__crc_ocelot_vcap_block_find_filter_by_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocelot_vcap_block_find_filter_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22ocelot_vcap_block_find_filter_by_id\22\09\09\09\09\09"
module asm "__kstrtabns_ocelot_vcap_block_find_filter_by_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ocelot_vcap_filter_add\22, \22a\22\09"
module asm "\09.weak\09__crc_ocelot_vcap_filter_add\09\09\09\09"
module asm "\09.long\09__crc_ocelot_vcap_filter_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocelot_vcap_filter_add:\09\09\09\09\09"
module asm "\09.asciz \09\22ocelot_vcap_filter_add\22\09\09\09\09\09"
module asm "__kstrtabns_ocelot_vcap_filter_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ocelot_vcap_filter_del\22, \22a\22\09"
module asm "\09.weak\09__crc_ocelot_vcap_filter_del\09\09\09\09"
module asm "\09.long\09__crc_ocelot_vcap_filter_del\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocelot_vcap_filter_del:\09\09\09\09\09"
module asm "\09.asciz \09\22ocelot_vcap_filter_del\22\09\09\09\09\09"
module asm "__kstrtabns_ocelot_vcap_filter_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ocelot_vcap_filter_replace\22, \22a\22\09"
module asm "\09.weak\09__crc_ocelot_vcap_filter_replace\09\09\09\09"
module asm "\09.long\09__crc_ocelot_vcap_filter_replace\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocelot_vcap_filter_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22ocelot_vcap_filter_replace\22\09\09\09\09\09"
module asm "__kstrtabns_ocelot_vcap_filter_replace:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.qos_policer_conf = type { i32, i8, i8, i32, i32, i32, i32, i8 }
%struct.ocelot_policer = type { i32, i32 }
%struct.ocelot = type { ptr, ptr, ptr, ptr, [14 x ptr], [60 x ptr], ptr, ptr, i32, [2 x [2 x i32]], i32, i32, i32, ptr, [6 x i8], %struct.list_head, i32, i8, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, [3 x %struct.ocelot_vcap_block], %struct.ocelot_vcap_policer, ptr, %struct.ocelot_psfp_list, %struct.mutex, ptr, %struct.delayed_work, ptr, %struct.mutex, %struct.mutex, ptr, i8, ptr, %struct.ptp_clock_info, %struct.hwtstamp_config, i32, %struct.spinlock, %struct.mutex, %struct.spinlock, [4 x %struct.ptp_pin_desc], ptr }
%struct.list_head = type { ptr, ptr }
%struct.ocelot_vcap_block = type { %struct.list_head, i32 }
%struct.ocelot_vcap_policer = type { %struct.list_head, i16, i16, i16, i16 }
%struct.ocelot_psfp_list = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hwtstamp_config = type { i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.ptp_pin_desc = type { [64 x i8], i32, i32, i32, [5 x i32] }
%struct.vcap_policer_entry = type { %struct.list_head, %struct.refcount_struct, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ocelot_vcap_filter = type { %struct.list_head, i32, i32, i32, i32, i8, i16, %struct.ocelot_vcap_id, %struct.ocelot_vcap_action, %struct.ocelot_vcap_stats, i32, %struct.ocelot_vcap_port, %struct.ocelot_vcap_port, i32, i32, %struct.ocelot_vcap_key_vlan, i32, %union.anon.173 }
%struct.ocelot_vcap_id = type { i32, i8 }
%struct.ocelot_vcap_action = type { %union.anon.169 }
%union.anon.169 = type { %struct.anon.170 }
%struct.anon.170 = type { i32, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i16, i8, i8 }
%struct.ocelot_vcap_stats = type { i64, i64, i64 }
%struct.ocelot_vcap_port = type { i8, i8 }
%struct.ocelot_vcap_key_vlan = type { %struct.ocelot_vcap_vid, %struct.ocelot_vcap_u8, i32, i32 }
%struct.ocelot_vcap_vid = type { i16, i16 }
%struct.ocelot_vcap_u8 = type { [1 x i8], [1 x i8] }
%union.anon.173 = type { %struct.ocelot_vcap_key_ipv6 }
%struct.ocelot_vcap_key_ipv6 = type { %struct.ocelot_vcap_u8, %struct.ocelot_vcap_u128, %struct.ocelot_vcap_u128, i32, %struct.ocelot_vcap_u8, %struct.ocelot_vcap_u48, %struct.ocelot_vcap_udp_tcp, %struct.ocelot_vcap_udp_tcp, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ocelot_vcap_u128 = type { [16 x i8], [16 x i8] }
%struct.ocelot_vcap_u48 = type { [6 x i8], [6 x i8] }
%struct.ocelot_vcap_udp_tcp = type { i16, i16 }
%struct.vcap_data = type { [12 x i32], [12 x i32], [12 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ocelot_vcap_u64 = type { [8 x i8], [8 x i8] }
%struct.ocelot_vcap_ipv4 = type { %struct.ocelot_ipv4, %struct.ocelot_ipv4 }
%struct.ocelot_ipv4 = type { [4 x i8] }
%struct.vcap_props = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, [2 x %struct.anon.161], i16, i16, i32, ptr, ptr }
%struct.anon.161 = type { i16, i16 }
%struct.vcap_field = type { i32, i32 }
%struct.anon.171 = type { i8, i16, i8, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.anon.172 = type { i8, i8, i32, i32, i8, %struct.ocelot_policer, i32 }

@__kstrtab_ocelot_vcap_policer_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocelot_vcap_policer_add = external dso_local constant [0 x i8], align 1
@__ksymtab_ocelot_vcap_policer_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocelot_vcap_policer_add to i32), ptr @__kstrtab_ocelot_vcap_policer_add, ptr @__kstrtabns_ocelot_vcap_policer_add }, section "___ksymtab+ocelot_vcap_policer_add", align 4
@__kstrtab_ocelot_vcap_policer_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocelot_vcap_policer_del = external dso_local constant [0 x i8], align 1
@__ksymtab_ocelot_vcap_policer_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocelot_vcap_policer_del to i32), ptr @__kstrtab_ocelot_vcap_policer_del, ptr @__kstrtabns_ocelot_vcap_policer_del }, section "___ksymtab+ocelot_vcap_policer_del", align 4
@__kstrtab_ocelot_vcap_block_find_filter_by_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocelot_vcap_block_find_filter_by_id = external dso_local constant [0 x i8], align 1
@__ksymtab_ocelot_vcap_block_find_filter_by_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocelot_vcap_block_find_filter_by_id to i32), ptr @__kstrtab_ocelot_vcap_block_find_filter_by_id, ptr @__kstrtabns_ocelot_vcap_block_find_filter_by_id }, section "___ksymtab+ocelot_vcap_block_find_filter_by_id", align 4
@ocelot_vcap_filter_add.__msg = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"mscc_ocelot_switch_lib: Cannot mix MAC_ETYPE with non-MAC_ETYPE rules, use the other IS2 lookup\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_ocelot_vcap_filter_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocelot_vcap_filter_add = external dso_local constant [0 x i8], align 1
@__ksymtab_ocelot_vcap_filter_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocelot_vcap_filter_add to i32), ptr @__kstrtab_ocelot_vcap_filter_add, ptr @__kstrtabns_ocelot_vcap_filter_add }, section "___ksymtab+ocelot_vcap_filter_add", align 4
@__kstrtab_ocelot_vcap_filter_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocelot_vcap_filter_del = external dso_local constant [0 x i8], align 1
@__ksymtab_ocelot_vcap_filter_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocelot_vcap_filter_del to i32), ptr @__kstrtab_ocelot_vcap_filter_del, ptr @__kstrtabns_ocelot_vcap_filter_del }, section "___ksymtab+ocelot_vcap_filter_del", align 4
@__kstrtab_ocelot_vcap_filter_replace = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocelot_vcap_filter_replace = external dso_local constant [0 x i8], align 1
@__ksymtab_ocelot_vcap_filter_replace = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocelot_vcap_filter_replace to i32), ptr @__kstrtab_ocelot_vcap_filter_replace, ptr @__kstrtabns_ocelot_vcap_filter_replace }, section "___ksymtab+ocelot_vcap_filter_replace", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/mscc/ocelot_vcap.c\00", [56 x i8] zeroinitializer }, align 32
@switch.table.ocelot_vcap_filter_stats_update = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 2054, i64 34525]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 16, i64 2048, i64 2054, i64 34525]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.4 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@___asan_gen_.7 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 1165, i32 3 }
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private constant [43 x i8] c"../drivers/net/ethernet/mscc/ocelot_vcap.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 76, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [45 x i8] c"switch.table.ocelot_vcap_filter_stats_update\00", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab_ocelot_vcap_block_find_filter_by_id, ptr @__ksymtab_ocelot_vcap_filter_add, ptr @__ksymtab_ocelot_vcap_filter_del, ptr @__ksymtab_ocelot_vcap_filter_replace, ptr @__ksymtab_ocelot_vcap_policer_add, ptr @__ksymtab_ocelot_vcap_policer_del, ptr @ocelot_vcap_filter_add.__msg, ptr @.str, ptr @switch.table.ocelot_vcap_filter_stats_update], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocelot_vcap_filter_add.__msg to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ocelot_vcap_filter_stats_update to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_vcap_policer_add(ptr noundef %ocelot, i32 noundef %pol_ix, ptr noundef readonly %pol) #0 align 64 {
entry:
  %pp = alloca %struct.qos_policer_conf, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pp) #8
  %0 = getelementptr inbounds i8, ptr %pp, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 24)
  %tobool.not = icmp eq ptr %pol, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %pp, align 4
  %3 = ptrtoint ptr %pol to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pol, align 4
  %pir = getelementptr inbounds %struct.qos_policer_conf, ptr %pp, i32 0, i32 5
  %5 = ptrtoint ptr %pir to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pir, align 4
  %burst = getelementptr inbounds %struct.ocelot_policer, ptr %pol, i32 0, i32 1
  %6 = ptrtoint ptr %burst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %burst, align 4
  %pbs = getelementptr inbounds %struct.qos_policer_conf, ptr %pp, i32 0, i32 6
  %8 = ptrtoint ptr %pbs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pbs, align 4
  %vcap_pol = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 25
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %tmp.0.in = phi ptr [ %vcap_pol, %if.end ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %9 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, %vcap_pol
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %pol_ix4 = getelementptr inbounds %struct.vcap_policer_entry, ptr %tmp.0, i32 0, i32 2
  %10 = ptrtoint ptr %pol_ix4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pol_ix4, align 4
  %cmp5 = icmp eq i32 %11, %pol_ix
  br i1 %cmp5, label %if.then6, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then6:                                         ; preds = %for.body
  %refcount = getelementptr inbounds %struct.vcap_policer_entry, ptr %tmp.0, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !25
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then6.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !26

if.then6.if.end15.sink.split.i.i.i_crit_edge:     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then6
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %13 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %.not.i.i.i = icmp sgt i32 %13, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !27

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then6.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then6.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i) #8
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 16) #11
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %for.end.cleanup_crit_edge, label %if.end15

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %for.end
  %call16 = call i32 @qos_policer_conf_set(ptr noundef %ocelot, i32 noundef 0, i32 noundef %pol_ix, ptr noundef nonnull %pp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %pol_ix20 = getelementptr inbounds %struct.vcap_policer_entry, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %pol_ix20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %pol_ix, ptr %pol_ix20, align 4
  %refcount21 = getelementptr inbounds %struct.vcap_policer_entry, ptr %call7.i.i, i32 0, i32 1
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount21, i32 noundef 4) #8
  %16 = ptrtoint ptr %refcount21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 1, ptr %refcount21, align 8
  %prev.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 25, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %18, ptr noundef %vcap_pol) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %20 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %vcap_pol, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %call7.i.i, ptr %18, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end19.cleanup_crit_edge, %if.then18, %for.end.cleanup_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then18 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ], [ 0, %if.else.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i ], [ 0, %if.end19.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pp) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qos_policer_conf_set(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_vcap_policer_del(ptr noundef %ocelot, i32 noundef %pol_ix) #0 align 64 {
entry:
  %pp = alloca %struct.qos_policer_conf, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %pp) #8
  %0 = call ptr @memset(ptr %pp, i32 0, i32 28)
  %vcap_pol = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 25
  %1 = ptrtoint ptr %vcap_pol to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vcap_pol, align 4
  %cmp.not38 = icmp eq ptr %2, %vcap_pol
  br i1 %cmp.not38, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tmp.040 = phi ptr [ %n.042, %for.inc.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %z.039 = phi i8 [ %z.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %tmp.040 to i32
  call void @__asan_load4_noabort(i32 %3)
  %n.042 = load ptr, ptr %tmp.040, align 4
  %pol_ix9 = getelementptr inbounds %struct.vcap_policer_entry, ptr %tmp.040, i32 0, i32 2
  %4 = ptrtoint ptr %pol_ix9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pol_ix9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pol_ix)
  %cmp10 = icmp eq i32 %5, %pol_ix
  br i1 %cmp10, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %refcount = getelementptr inbounds %struct.vcap_policer_entry, ptr %tmp.040, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !28
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !29
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then11, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i, !prof !27

if.end5.i.i.i.for.inc_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #8
  br label %for.inc

if.then11:                                        ; preds = %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !30
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tmp.040) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then11.list_del.exit_crit_edge

if.then11.list_del.exit_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %tmp.040, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %tmp.040 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tmp.040, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then11.list_del.exit_crit_edge
  %13 = ptrtoint ptr %tmp.040 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %tmp.040, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %tmp.040, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %tmp.040) #8
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit, %if.then10.i.i.i, %if.end5.i.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %z.1 = phi i8 [ 1, %list_del.exit ], [ %z.039, %for.body.for.inc_crit_edge ], [ 0, %if.end5.i.i.i.for.inc_crit_edge ], [ 0, %if.then10.i.i.i ]
  %cmp.not = icmp eq ptr %n.042, %vcap_pol
  br i1 %cmp.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %z.1)
  %tobool19.not = icmp eq i8 %z.1, 0
  br i1 %tobool19.not, label %for.end.cleanup_crit_edge, label %if.then20

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %pp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %pp, align 4
  %call21 = call i32 @qos_policer_conf_set(ptr noundef %ocelot, i32 noundef 0, i32 noundef %pol_ix, ptr noundef nonnull %pp) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.then20 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %pp) #8
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ocelot_vcap_block_find_filter_by_id(ptr noundef readonly %block, i32 noundef %cookie, i1 noundef zeroext %tc_offload) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %0)
  %filter.021 = load ptr, ptr %block, align 4
  %cmp.not22 = icmp eq ptr %filter.021, %block
  br i1 %cmp.not22, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %1 = zext i1 %tc_offload to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %filter.023 = phi ptr [ %filter.021, %for.body.lr.ph ], [ %filter.0, %for.inc.for.body_crit_edge ]
  %tc_offload2 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter.023, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %tc_offload2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %tc_offload2, align 4, !range !31
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %1)
  %cmp5 = icmp eq i8 %3, %1
  br i1 %cmp5, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %id = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter.023, i32 0, i32 7
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cookie)
  %cmp9 = icmp eq i32 %5, %cookie
  br i1 %cmp9, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %filter.023 to i32
  call void @__asan_load4_noabort(i32 %6)
  %filter.0 = load ptr, ptr %filter.023, align 4
  %cmp.not = icmp eq ptr %filter.0, %block
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %filter.023, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_vcap_filter_add(ptr noundef %ocelot, ptr noundef %filter, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %block_id = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 2
  %0 = ptrtoint ptr %block_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_id, align 4
  %arrayidx = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 24, i32 %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 2
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end5.i_crit_edge

entry.if.end5.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.end.i:                                         ; preds = %entry
  %key_type.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 16
  %2 = ptrtoint ptr %key_type.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %key_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not.i.i = icmp eq i32 %3, 1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.else.i

if.end.i.i:                                       ; preds = %if.end.i
  %mask3.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 8
  %4 = ptrtoint ptr %mask3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mask3.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 0
  br i1 %cmp5.i.i, label %if.end.i.i.ocelot_vcap_is_problematic_mac_etype.exit.i_crit_edge, label %if.end8.i.i

if.end.i.i.ocelot_vcap_is_problematic_mac_etype.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_is_problematic_mac_etype.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %etype.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 6
  %6 = ptrtoint ptr %etype.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %etype.i.i, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %if.end8.i.i.if.end3_crit_edge [
    i16 2054, label %if.end8.i.i.ocelot_vcap_is_problematic_mac_etype.exit.i_crit_edge
    i16 2048, label %if.end8.i.i.ocelot_vcap_is_problematic_mac_etype.exit.i_crit_edge79
    i16 -31011, label %if.end8.i.i.ocelot_vcap_is_problematic_mac_etype.exit.i_crit_edge80
  ]

if.end8.i.i.ocelot_vcap_is_problematic_mac_etype.exit.i_crit_edge80: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_is_problematic_mac_etype.exit.i

if.end8.i.i.ocelot_vcap_is_problematic_mac_etype.exit.i_crit_edge79: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_is_problematic_mac_etype.exit.i

if.end8.i.i.ocelot_vcap_is_problematic_mac_etype.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_is_problematic_mac_etype.exit.i

if.end8.i.i.if.end3_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

ocelot_vcap_is_problematic_mac_etype.exit.i:      ; preds = %if.end8.i.i.ocelot_vcap_is_problematic_mac_etype.exit.i_crit_edge, %if.end8.i.i.ocelot_vcap_is_problematic_mac_etype.exit.i_crit_edge79, %if.end8.i.i.ocelot_vcap_is_problematic_mac_etype.exit.i_crit_edge80, %if.end.i.i.ocelot_vcap_is_problematic_mac_etype.exit.i_crit_edge
  %count.i = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 24, i32 2, i32 1
  %9 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp4172.i = icmp sgt i32 %10, 0
  br i1 %cmp4172.i, label %for.body.lr.ph.i, label %ocelot_vcap_is_problematic_mac_etype.exit.i.for.end.i_crit_edge

ocelot_vcap_is_problematic_mac_etype.exit.i.for.end.i_crit_edge: ; preds = %ocelot_vcap_is_problematic_mac_etype.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %ocelot_vcap_is_problematic_mac_etype.exit.i
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %tmp.014.i.i = load ptr, ptr %arrayidx, align 4
  %cmp.not15.i.i = icmp eq ptr %tmp.014.i.i, %arrayidx
  %ingress_port_mask6.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 10
  %12 = ptrtoint ptr %ingress_port_mask6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ingress_port_mask6.i, align 8
  %lookup7.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0173.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  br i1 %cmp.not15.i.i, label %for.body.i.ocelot_vcap_block_find_filter_by_index.exit.i_crit_edge, label %for.body.i.for.body.i.i_crit_edge

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.ocelot_vcap_block_find_filter_by_index.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_block_find_filter_by_index.exit.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.016.i.i, 1
  %14 = ptrtoint ptr %tmp.017.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %tmp.0.i.i = load ptr, ptr %tmp.017.i.i, align 4
  %cmp.not.i115.i = icmp eq ptr %tmp.0.i.i, %arrayidx
  br i1 %cmp.not.i115.i, label %for.cond.i.i.ocelot_vcap_block_find_filter_by_index.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.cond.i.i.ocelot_vcap_block_find_filter_by_index.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_block_find_filter_by_index.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %tmp.017.i.i = phi ptr [ %tmp.0.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ %tmp.014.i.i, %for.body.i.for.body.i.i_crit_edge ]
  %i.016.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.016.i.i, i32 %i.0173.i)
  %cmp3.i.i = icmp eq i32 %i.016.i.i, %i.0173.i
  br i1 %cmp3.i.i, label %for.body.i.i.ocelot_vcap_block_find_filter_by_index.exit.i_crit_edge, label %for.cond.i.i

for.body.i.i.ocelot_vcap_block_find_filter_by_index.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_block_find_filter_by_index.exit.i

ocelot_vcap_block_find_filter_by_index.exit.i:    ; preds = %for.body.i.i.ocelot_vcap_block_find_filter_by_index.exit.i_crit_edge, %for.cond.i.i.ocelot_vcap_block_find_filter_by_index.exit.i_crit_edge, %for.body.i.ocelot_vcap_block_find_filter_by_index.exit.i_crit_edge
  %retval.0.i116.i = phi ptr [ null, %for.body.i.ocelot_vcap_block_find_filter_by_index.exit.i_crit_edge ], [ null, %for.cond.i.i.ocelot_vcap_block_find_filter_by_index.exit.i_crit_edge ], [ %tmp.017.i.i, %for.body.i.i.ocelot_vcap_block_find_filter_by_index.exit.i_crit_edge ]
  %ingress_port_mask.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %retval.0.i116.i, i32 0, i32 10
  %15 = ptrtoint ptr %ingress_port_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ingress_port_mask.i, align 8
  %and.i = and i32 %16, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %ocelot_vcap_block_find_filter_by_index.exit.i.for.inc.i_crit_edge, label %land.lhs.true.i

ocelot_vcap_block_find_filter_by_index.exit.i.for.inc.i_crit_edge: ; preds = %ocelot_vcap_block_find_filter_by_index.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %ocelot_vcap_block_find_filter_by_index.exit.i
  %lookup.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %retval.0.i116.i, i32 0, i32 4
  %17 = ptrtoint ptr %lookup.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lookup.i, align 4
  %19 = ptrtoint ptr %lookup7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lookup7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp8.i = icmp eq i32 %18, %20
  br i1 %cmp8.i, label %land.lhs.true9.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true9.i:                                 ; preds = %land.lhs.true.i
  %key_type.i117.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %retval.0.i116.i, i32 0, i32 16
  %21 = ptrtoint ptr %key_type.i117.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key_type.i117.i, align 8
  %.off.i.i = add i32 %22, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 4
  br i1 %switch.i.i, label %land.lhs.true9.i.do.body_crit_edge, label %land.lhs.true9.i.for.inc.i_crit_edge

land.lhs.true9.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true9.i.do.body_crit_edge:               ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.inc.i:                                        ; preds = %land.lhs.true9.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %ocelot_vcap_block_find_filter_by_index.exit.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0173.i, 1
  %exitcond182.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond182.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %ocelot_vcap_is_problematic_mac_etype.exit.i.for.end.i_crit_edge
  %ingress_port_mask13.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 10
  %num_phys_ports.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 17
  %23 = ptrtoint ptr %num_phys_ports.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_phys_ports.i, align 4
  %conv.i = zext i8 %24 to i32
  %call14.i = tail call i32 @_find_next_bit_be(ptr noundef %ingress_port_mask13.i, i32 noundef %conv.i, i32 noundef 0) #8
  %25 = ptrtoint ptr %num_phys_ports.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num_phys_ports.i, align 4
  %conv17176.i = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call14.i, i32 %conv17176.i)
  %cmp18177.i = icmp ult i32 %call14.i, %conv17176.i
  br i1 %cmp18177.i, label %for.body20.lr.ph.i, label %for.end.i.if.end3_crit_edge

for.end.i.if.end3_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

for.body20.lr.ph.i:                               ; preds = %for.end.i
  %lookup21.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 4
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.body20.i.for.body20.i_crit_edge, %for.body20.lr.ph.i
  %port.0178.i = phi i32 [ %call14.i, %for.body20.lr.ph.i ], [ %call26.i, %for.body20.i.for.body20.i_crit_edge ]
  %27 = ptrtoint ptr %lookup21.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lookup21.i, align 4
  %shl.i.i = shl nuw i32 1, %28
  %shl1.i.i = shl i32 %shl.i.i, 12
  %and.i.i = and i32 %shl1.i.i, 12288
  %shl3.i.i = shl i32 %shl.i.i, 10
  %and4.i.i = and i32 %shl3.i.i, 3072
  %shl6.i.i = shl i32 %shl.i.i, 8
  %and7.i.i = and i32 %shl6.i.i, 768
  %shl10.i.i = shl i32 %shl.i.i, 6
  %and11.i.i = and i32 %shl10.i.i, 192
  %and14.i.i = and i32 %shl.i.i, 3
  %or.i.i = or i32 %and4.i.i, %and14.i.i
  %or8.i.i = or i32 %or.i.i, %and.i.i
  %or12.i.i = or i32 %or8.i.i, %and7.i.i
  %or15.i.i = or i32 %or12.i.i, %and11.i.i
  %mul.i.i = shl i32 %port.0178.i, 8
  tail call void @__ocelot_rmw_ix(ptr noundef %ocelot, i32 noundef %or15.i.i, i32 noundef %or15.i.i, i32 noundef 16777275, i32 noundef %mul.i.i) #8
  %29 = ptrtoint ptr %num_phys_ports.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %num_phys_ports.i, align 4
  %conv25.i = zext i8 %30 to i32
  %add.i = add nuw i32 %port.0178.i, 1
  %call26.i = tail call i32 @_find_next_bit_be(ptr noundef %ingress_port_mask13.i, i32 noundef %conv25.i, i32 noundef %add.i) #8
  %31 = ptrtoint ptr %num_phys_ports.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_phys_ports.i, align 4
  %conv17.i = zext i8 %32 to i32
  %cmp18.i = icmp ult i32 %call26.i, %conv17.i
  br i1 %cmp18.i, label %for.body20.i.for.body20.i_crit_edge, label %for.body20.i.if.end3_crit_edge

for.body20.i.if.end3_crit_edge:                   ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

for.body20.i.for.body20.i_crit_edge:              ; preds = %for.body20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body20.i

if.else.i:                                        ; preds = %if.end.i
  %.off.i119.i = add i32 %3, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off.i119.i)
  %switch.i120.i = icmp ult i32 %.off.i119.i, 4
  br i1 %switch.i120.i, label %for.cond30.preheader.i, label %if.else.i.if.end3_crit_edge

if.else.i.if.end3_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

for.cond30.preheader.i:                           ; preds = %if.else.i
  %count31.i = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 24, i32 2, i32 1
  %33 = ptrtoint ptr %count31.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %count31.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp32165.i = icmp sgt i32 %34, 0
  br i1 %cmp32165.i, label %for.body34.lr.ph.i, label %for.cond30.preheader.i.for.end52.i_crit_edge

for.cond30.preheader.i.for.end52.i_crit_edge:     ; preds = %for.cond30.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end52.i

for.body34.lr.ph.i:                               ; preds = %for.cond30.preheader.i
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %35)
  %tmp.014.i121.i = load ptr, ptr %arrayidx, align 4
  %cmp.not15.i122.i = icmp eq ptr %tmp.014.i121.i, %arrayidx
  %ingress_port_mask37.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 10
  %36 = ptrtoint ptr %ingress_port_mask37.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ingress_port_mask37.i, align 8
  %lookup42.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 4
  br label %for.body34.i

for.body34.i:                                     ; preds = %for.inc50.i.for.body34.i_crit_edge, %for.body34.lr.ph.i
  %i.1166.i = phi i32 [ 0, %for.body34.lr.ph.i ], [ %inc51.i, %for.inc50.i.for.body34.i_crit_edge ]
  br i1 %cmp.not15.i122.i, label %for.body34.i.ocelot_vcap_block_find_filter_by_index.exit132.i_crit_edge, label %for.body34.i.for.body.i130.i_crit_edge

for.body34.i.for.body.i130.i_crit_edge:           ; preds = %for.body34.i
  br label %for.body.i130.i

for.body34.i.ocelot_vcap_block_find_filter_by_index.exit132.i_crit_edge: ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_block_find_filter_by_index.exit132.i

for.cond.i126.i:                                  ; preds = %for.body.i130.i
  %inc.i123.i = add nuw nsw i32 %i.016.i128.i, 1
  %38 = ptrtoint ptr %tmp.017.i127.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %tmp.0.i124.i = load ptr, ptr %tmp.017.i127.i, align 4
  %cmp.not.i125.i = icmp eq ptr %tmp.0.i124.i, %arrayidx
  br i1 %cmp.not.i125.i, label %for.cond.i126.i.ocelot_vcap_block_find_filter_by_index.exit132.i_crit_edge, label %for.cond.i126.i.for.body.i130.i_crit_edge

for.cond.i126.i.for.body.i130.i_crit_edge:        ; preds = %for.cond.i126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i130.i

for.cond.i126.i.ocelot_vcap_block_find_filter_by_index.exit132.i_crit_edge: ; preds = %for.cond.i126.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_block_find_filter_by_index.exit132.i

for.body.i130.i:                                  ; preds = %for.cond.i126.i.for.body.i130.i_crit_edge, %for.body34.i.for.body.i130.i_crit_edge
  %tmp.017.i127.i = phi ptr [ %tmp.0.i124.i, %for.cond.i126.i.for.body.i130.i_crit_edge ], [ %tmp.014.i121.i, %for.body34.i.for.body.i130.i_crit_edge ]
  %i.016.i128.i = phi i32 [ %inc.i123.i, %for.cond.i126.i.for.body.i130.i_crit_edge ], [ 0, %for.body34.i.for.body.i130.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.016.i128.i, i32 %i.1166.i)
  %cmp3.i129.i = icmp eq i32 %i.016.i128.i, %i.1166.i
  br i1 %cmp3.i129.i, label %for.body.i130.i.ocelot_vcap_block_find_filter_by_index.exit132.i_crit_edge, label %for.cond.i126.i

for.body.i130.i.ocelot_vcap_block_find_filter_by_index.exit132.i_crit_edge: ; preds = %for.body.i130.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_block_find_filter_by_index.exit132.i

ocelot_vcap_block_find_filter_by_index.exit132.i: ; preds = %for.body.i130.i.ocelot_vcap_block_find_filter_by_index.exit132.i_crit_edge, %for.cond.i126.i.ocelot_vcap_block_find_filter_by_index.exit132.i_crit_edge, %for.body34.i.ocelot_vcap_block_find_filter_by_index.exit132.i_crit_edge
  %retval.0.i131.i = phi ptr [ null, %for.body34.i.ocelot_vcap_block_find_filter_by_index.exit132.i_crit_edge ], [ null, %for.cond.i126.i.ocelot_vcap_block_find_filter_by_index.exit132.i_crit_edge ], [ %tmp.017.i127.i, %for.body.i130.i.ocelot_vcap_block_find_filter_by_index.exit132.i_crit_edge ]
  %ingress_port_mask36.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %retval.0.i131.i, i32 0, i32 10
  %39 = ptrtoint ptr %ingress_port_mask36.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ingress_port_mask36.i, align 8
  %and38.i = and i32 %40, %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %ocelot_vcap_block_find_filter_by_index.exit132.i.for.inc50.i_crit_edge, label %land.lhs.true40.i

ocelot_vcap_block_find_filter_by_index.exit132.i.for.inc50.i_crit_edge: ; preds = %ocelot_vcap_block_find_filter_by_index.exit132.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc50.i

land.lhs.true40.i:                                ; preds = %ocelot_vcap_block_find_filter_by_index.exit132.i
  %lookup41.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %retval.0.i131.i, i32 0, i32 4
  %41 = ptrtoint ptr %lookup41.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %lookup41.i, align 4
  %43 = ptrtoint ptr %lookup42.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %lookup42.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp43.i = icmp eq i32 %42, %44
  br i1 %cmp43.i, label %land.lhs.true45.i, label %land.lhs.true40.i.for.inc50.i_crit_edge

land.lhs.true40.i.for.inc50.i_crit_edge:          ; preds = %land.lhs.true40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc50.i

land.lhs.true45.i:                                ; preds = %land.lhs.true40.i
  %key_type.i133.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %retval.0.i131.i, i32 0, i32 16
  %45 = ptrtoint ptr %key_type.i133.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %key_type.i133.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %46)
  %cmp.not.i134.i = icmp eq i32 %46, 1
  br i1 %cmp.not.i134.i, label %if.end.i137.i, label %land.lhs.true45.i.for.inc50.i_crit_edge

land.lhs.true45.i.for.inc50.i_crit_edge:          ; preds = %land.lhs.true45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc50.i

if.end.i137.i:                                    ; preds = %land.lhs.true45.i
  %mask3.i135.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %retval.0.i131.i, i32 0, i32 17, i32 0, i32 1, i32 1, i32 8
  %47 = ptrtoint ptr %mask3.i135.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %mask3.i135.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %cmp5.i136.i = icmp eq i16 %48, 0
  br i1 %cmp5.i136.i, label %if.end.i137.i.do.body_crit_edge, label %if.end8.i139.i

if.end.i137.i.do.body_crit_edge:                  ; preds = %if.end.i137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end8.i139.i:                                   ; preds = %if.end.i137.i
  %etype.i138.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %retval.0.i131.i, i32 0, i32 17, i32 0, i32 1, i32 1, i32 6
  %49 = ptrtoint ptr %etype.i138.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %etype.i138.i, align 4
  %51 = zext i16 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %50, label %if.end8.i139.i.for.inc50.i_crit_edge [
    i16 2054, label %if.end8.i139.i.do.body_crit_edge
    i16 2048, label %if.end8.i139.i.do.body_crit_edge81
    i16 -31011, label %if.end8.i139.i.do.body_crit_edge82
  ]

if.end8.i139.i.do.body_crit_edge82:               ; preds = %if.end8.i139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end8.i139.i.do.body_crit_edge81:               ; preds = %if.end8.i139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end8.i139.i.do.body_crit_edge:                 ; preds = %if.end8.i139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end8.i139.i.for.inc50.i_crit_edge:             ; preds = %if.end8.i139.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc50.i

for.inc50.i:                                      ; preds = %if.end8.i139.i.for.inc50.i_crit_edge, %land.lhs.true45.i.for.inc50.i_crit_edge, %land.lhs.true40.i.for.inc50.i_crit_edge, %ocelot_vcap_block_find_filter_by_index.exit132.i.for.inc50.i_crit_edge
  %inc51.i = add nuw nsw i32 %i.1166.i, 1
  %exitcond.not.i = icmp eq i32 %inc51.i, %34
  br i1 %exitcond.not.i, label %for.inc50.i.for.end52.i_crit_edge, label %for.inc50.i.for.body34.i_crit_edge

for.inc50.i.for.body34.i_crit_edge:               ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body34.i

for.inc50.i.for.end52.i_crit_edge:                ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end52.i

for.end52.i:                                      ; preds = %for.inc50.i.for.end52.i_crit_edge, %for.cond30.preheader.i.for.end52.i_crit_edge
  %ingress_port_mask53.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 10
  %num_phys_ports54.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 17
  %52 = ptrtoint ptr %num_phys_ports54.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %num_phys_ports54.i, align 4
  %conv55.i = zext i8 %53 to i32
  %call56.i = tail call i32 @_find_next_bit_be(ptr noundef %ingress_port_mask53.i, i32 noundef %conv55.i, i32 noundef 0) #8
  %54 = ptrtoint ptr %num_phys_ports54.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_phys_ports54.i, align 4
  %conv59169.i = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call56.i, i32 %conv59169.i)
  %cmp60170.i = icmp ult i32 %call56.i, %conv59169.i
  br i1 %cmp60170.i, label %for.body62.lr.ph.i, label %for.end52.i.if.end3_crit_edge

for.end52.i.if.end3_crit_edge:                    ; preds = %for.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

for.body62.lr.ph.i:                               ; preds = %for.end52.i
  %lookup63.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 4
  br label %for.body62.i

for.body62.i:                                     ; preds = %for.body62.i.for.body62.i_crit_edge, %for.body62.lr.ph.i
  %port.1171.i = phi i32 [ %call56.i, %for.body62.lr.ph.i ], [ %call69.i, %for.body62.i.for.body62.i_crit_edge ]
  %56 = ptrtoint ptr %lookup63.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %lookup63.i, align 4
  %shl.i143.i = shl nuw i32 1, %57
  %shl1.i144.i = shl i32 %shl.i143.i, 12
  %and.i145.i = and i32 %shl1.i144.i, 12288
  %shl3.i146.i = shl i32 %shl.i143.i, 10
  %and4.i147.i = and i32 %shl3.i146.i, 3072
  %shl6.i148.i = shl i32 %shl.i143.i, 8
  %and7.i149.i = and i32 %shl6.i148.i, 768
  %shl10.i150.i = shl i32 %shl.i143.i, 6
  %and11.i151.i = and i32 %shl10.i150.i, 192
  %and14.i152.i = and i32 %shl.i143.i, 3
  %or.i153.i = or i32 %and4.i147.i, %and14.i152.i
  %or8.i154.i = or i32 %or.i153.i, %and.i145.i
  %or12.i155.i = or i32 %or8.i154.i, %and7.i149.i
  %or15.i156.i = or i32 %or12.i155.i, %and11.i151.i
  %mul.i157.i = shl i32 %port.1171.i, 8
  tail call void @__ocelot_rmw_ix(ptr noundef %ocelot, i32 noundef 0, i32 noundef %or15.i156.i, i32 noundef 16777275, i32 noundef %mul.i157.i) #8
  %58 = ptrtoint ptr %num_phys_ports54.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %num_phys_ports54.i, align 4
  %conv67.i = zext i8 %59 to i32
  %add68.i = add nuw i32 %port.1171.i, 1
  %call69.i = tail call i32 @_find_next_bit_be(ptr noundef %ingress_port_mask53.i, i32 noundef %conv67.i, i32 noundef %add68.i) #8
  %60 = ptrtoint ptr %num_phys_ports54.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %num_phys_ports54.i, align 4
  %conv59.i = zext i8 %61 to i32
  %cmp60.i = icmp ult i32 %call69.i, %conv59.i
  br i1 %cmp60.i, label %for.body62.i.for.body62.i_crit_edge, label %for.body62.i.if.end3_crit_edge

for.body62.i.if.end3_crit_edge:                   ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

for.body62.i.for.body62.i_crit_edge:              ; preds = %for.body62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body62.i

do.body:                                          ; preds = %if.end8.i139.i.do.body_crit_edge, %if.end8.i139.i.do.body_crit_edge81, %if.end8.i139.i.do.body_crit_edge82, %if.end.i137.i.do.body_crit_edge, %land.lhs.true9.i.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @ocelot_vcap_filter_add.__msg) #8
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @ocelot_vcap_filter_add.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %for.body62.i.if.end3_crit_edge, %for.end52.i.if.end3_crit_edge, %if.else.i.if.end3_crit_edge, %for.body20.i.if.end3_crit_edge, %for.end.i.if.end3_crit_edge, %if.end8.i.i.if.end3_crit_edge
  %63 = ptrtoint ptr %block_id to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pr = load i32, ptr %block_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp.i = icmp eq i32 %.pr, 2
  br i1 %cmp.i, label %land.lhs.true.i37, label %if.end3.if.end5.i_crit_edge

if.end3.if.end5.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

land.lhs.true.i37:                                ; preds = %if.end3
  %police_ena.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 3
  %64 = ptrtoint ptr %police_ena.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %police_ena.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i36 = icmp eq i8 %65, 0
  br i1 %tobool.not.i36, label %land.lhs.true.i37.if.end5.i_crit_edge, label %if.then.i

land.lhs.true.i37.if.end5.i_crit_edge:            ; preds = %land.lhs.true.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then.i:                                        ; preds = %land.lhs.true.i37
  %pol_ix.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 8
  %66 = ptrtoint ptr %pol_ix.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pol_ix.i, align 4
  %pol.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 4
  %call.i = tail call i32 @ocelot_vcap_policer_add(ptr noundef %ocelot, i32 noundef %67, ptr noundef %pol.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end5.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i.if.end5.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i.if.end5.i_crit_edge, %land.lhs.true.i37.if.end5.i_crit_edge, %if.end3.if.end5.i_crit_edge, %entry.if.end5.i_crit_edge
  %count.i38 = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 24, i32 %1, i32 1
  %68 = ptrtoint ptr %count.i38 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %count.i38, align 4
  %inc.i39 = add i32 %69, 1
  store i32 %inc.i39, ptr %count.i38, align 4
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.i.not.i = icmp eq ptr %71, %arrayidx
  br i1 %cmp.i.not.i, label %if.then8.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end5.i
  %prio.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 6
  br label %for.cond.i

if.then8.i:                                       ; preds = %if.end5.i
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %filter, ptr noundef %arrayidx, ptr noundef %arrayidx) #8
  br i1 %call.i.i.i, label %if.then8.i.cleanup.sink.split.i_crit_edge, label %if.then8.i.if.end7_crit_edge

if.then8.i.if.end7_crit_edge:                     ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then8.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

for.cond.i:                                       ; preds = %for.body.i40.for.cond.i_crit_edge, %for.cond.preheader.i
  %pos.0.i = phi ptr [ %n.0.i, %for.body.i40.for.cond.i_crit_edge ], [ %71, %for.cond.preheader.i ]
  %cmp.i43.not.i = icmp eq ptr %pos.0.i, %arrayidx
  br i1 %cmp.i43.not.i, label %for.cond.i.for.end.i41_crit_edge, label %for.body.i40

for.cond.i.for.end.i41_crit_edge:                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i41

for.body.i40:                                     ; preds = %for.cond.i
  %72 = ptrtoint ptr %pos.0.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %n.0.i = load ptr, ptr %pos.0.i, align 4
  %73 = ptrtoint ptr %prio.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %prio.i, align 2
  %prio17.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %pos.0.i, i32 0, i32 6
  %75 = ptrtoint ptr %prio17.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %prio17.i, align 2
  %cmp19.i = icmp ult i16 %74, %76
  br i1 %cmp19.i, label %for.body.i40.for.end.i41_crit_edge, label %for.body.i40.for.cond.i_crit_edge

for.body.i40.for.cond.i_crit_edge:                ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.body.i40.for.end.i41_crit_edge:               ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i41

for.end.i41:                                      ; preds = %for.body.i40.for.end.i41_crit_edge, %for.cond.i.for.end.i41_crit_edge
  %pos.0.lcssa.i = phi ptr [ %pos.0.i, %for.body.i40.for.end.i41_crit_edge ], [ %arrayidx, %for.cond.i.for.end.i41_crit_edge ]
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pos.0.lcssa.i, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %78, align 4
  %call.i.i45.i = tail call zeroext i1 @__list_add_valid(ptr noundef %filter, ptr noundef %78, ptr noundef %80) #8
  br i1 %call.i.i45.i, label %for.end.i41.cleanup.sink.split.i_crit_edge, label %for.end.i41.if.end7_crit_edge

for.end.i41.if.end7_crit_edge:                    ; preds = %for.end.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

for.end.i41.cleanup.sink.split.i_crit_edge:       ; preds = %for.end.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.end.i41.cleanup.sink.split.i_crit_edge, %if.then8.i.cleanup.sink.split.i_crit_edge
  %.sink52.i = phi ptr [ %arrayidx, %if.then8.i.cleanup.sink.split.i_crit_edge ], [ %80, %for.end.i41.cleanup.sink.split.i_crit_edge ]
  %.sink50.i = phi ptr [ %arrayidx, %if.then8.i.cleanup.sink.split.i_crit_edge ], [ %78, %for.end.i41.cleanup.sink.split.i_crit_edge ]
  %prev1.i.i46.i = getelementptr inbounds %struct.list_head, ptr %.sink52.i, i32 0, i32 1
  %81 = ptrtoint ptr %prev1.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %filter, ptr %prev1.i.i46.i, align 4
  %82 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %.sink52.i, ptr %filter, align 4
  %prev3.i.i47.i = getelementptr inbounds %struct.list_head, ptr %filter, i32 0, i32 1
  %83 = ptrtoint ptr %prev3.i.i47.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %.sink50.i, ptr %prev3.i.i47.i, align 4
  %84 = ptrtoint ptr %.sink50.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %filter, ptr %.sink50.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %cleanup.sink.split.i, %for.end.i41.if.end7_crit_edge, %if.then8.i.if.end7_crit_edge
  %id.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 7
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %85)
  %tmp.013.i = load ptr, ptr %arrayidx, align 4
  %cmp.not14.i = icmp eq ptr %tmp.013.i, %arrayidx
  br i1 %cmp.not14.i, label %if.end7.cleanup_crit_edge, label %if.end7.for.body.i43_crit_edge

if.end7.for.body.i43_crit_edge:                   ; preds = %if.end7
  br label %for.body.i43

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i43:                                     ; preds = %if.end.i46.for.body.i43_crit_edge, %if.end7.for.body.i43_crit_edge
  %tmp.016.i = phi ptr [ %tmp.0.i, %if.end.i46.for.body.i43_crit_edge ], [ %tmp.013.i, %if.end7.for.body.i43_crit_edge ]
  %index.015.i = phi i32 [ %inc.i44, %if.end.i46.for.body.i43_crit_edge ], [ 0, %if.end7.for.body.i43_crit_edge ]
  %id1.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %tmp.016.i, i32 0, i32 7
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %id.i.i, ptr noundef dereferenceable(8) %id1.i.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %ocelot_vcap_block_get_filter_index.exit, label %if.end.i46

if.end.i46:                                       ; preds = %for.body.i43
  %inc.i44 = add i32 %index.015.i, 1
  %86 = ptrtoint ptr %tmp.016.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %tmp.0.i = load ptr, ptr %tmp.016.i, align 4
  %cmp.not.i45 = icmp eq ptr %tmp.0.i, %arrayidx
  br i1 %cmp.not.i45, label %if.end.i46.cleanup_crit_edge, label %if.end.i46.for.body.i43_crit_edge

if.end.i46.for.body.i43_crit_edge:                ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i43

if.end.i46.cleanup_crit_edge:                     ; preds = %if.end.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ocelot_vcap_block_get_filter_index.exit:          ; preds = %for.body.i43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.015.i)
  %cmp = icmp slt i32 %index.015.i, 0
  br i1 %cmp, label %ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge, label %if.end10

ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge: ; preds = %ocelot_vcap_block_get_filter_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %ocelot_vcap_block_get_filter_index.exit
  %87 = ptrtoint ptr %count.i38 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %count.i38, align 4
  %i.063 = add i32 %88, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.063, i32 %index.015.i)
  %cmp1164 = icmp sgt i32 %i.063, %index.015.i
  br i1 %cmp1164, label %if.end10.for.body_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

for.body:                                         ; preds = %ocelot_vcap_block_find_filter_by_index.exit.for.body_crit_edge, %if.end10.for.body_crit_edge
  %i.065 = phi i32 [ %i.0, %ocelot_vcap_block_find_filter_by_index.exit.for.body_crit_edge ], [ %i.063, %if.end10.for.body_crit_edge ]
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %89)
  %tmp.014.i = load ptr, ptr %arrayidx, align 4
  %cmp.not15.i = icmp eq ptr %tmp.014.i, %arrayidx
  br i1 %cmp.not15.i, label %for.body.ocelot_vcap_block_find_filter_by_index.exit_crit_edge, label %for.body.for.body.i52_crit_edge

for.body.for.body.i52_crit_edge:                  ; preds = %for.body
  br label %for.body.i52

for.body.ocelot_vcap_block_find_filter_by_index.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_block_find_filter_by_index.exit

for.cond.i51:                                     ; preds = %for.body.i52
  %inc.i48 = add i32 %i.016.i, 1
  %90 = ptrtoint ptr %tmp.017.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %tmp.0.i49 = load ptr, ptr %tmp.017.i, align 4
  %cmp.not.i50 = icmp eq ptr %tmp.0.i49, %arrayidx
  br i1 %cmp.not.i50, label %for.cond.i51.ocelot_vcap_block_find_filter_by_index.exit_crit_edge, label %for.cond.i51.for.body.i52_crit_edge

for.cond.i51.for.body.i52_crit_edge:              ; preds = %for.cond.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i52

for.cond.i51.ocelot_vcap_block_find_filter_by_index.exit_crit_edge: ; preds = %for.cond.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_block_find_filter_by_index.exit

for.body.i52:                                     ; preds = %for.cond.i51.for.body.i52_crit_edge, %for.body.for.body.i52_crit_edge
  %tmp.017.i = phi ptr [ %tmp.0.i49, %for.cond.i51.for.body.i52_crit_edge ], [ %tmp.014.i, %for.body.for.body.i52_crit_edge ]
  %i.016.i = phi i32 [ %inc.i48, %for.cond.i51.for.body.i52_crit_edge ], [ 0, %for.body.for.body.i52_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.016.i, i32 %i.065)
  %cmp3.i = icmp eq i32 %i.016.i, %i.065
  br i1 %cmp3.i, label %for.body.i52.ocelot_vcap_block_find_filter_by_index.exit_crit_edge, label %for.cond.i51

for.body.i52.ocelot_vcap_block_find_filter_by_index.exit_crit_edge: ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_block_find_filter_by_index.exit

ocelot_vcap_block_find_filter_by_index.exit:      ; preds = %for.body.i52.ocelot_vcap_block_find_filter_by_index.exit_crit_edge, %for.cond.i51.ocelot_vcap_block_find_filter_by_index.exit_crit_edge, %for.body.ocelot_vcap_block_find_filter_by_index.exit_crit_edge
  %retval.0.i53 = phi ptr [ null, %for.body.ocelot_vcap_block_find_filter_by_index.exit_crit_edge ], [ %tmp.017.i, %for.body.i52.ocelot_vcap_block_find_filter_by_index.exit_crit_edge ], [ null, %for.cond.i51.ocelot_vcap_block_find_filter_by_index.exit_crit_edge ]
  tail call fastcc void @vcap_entry_set(ptr noundef %ocelot, i32 noundef %i.065, ptr noundef %retval.0.i53)
  %i.0 = add i32 %i.065, -1
  %cmp11 = icmp sgt i32 %i.0, %index.015.i
  br i1 %cmp11, label %ocelot_vcap_block_find_filter_by_index.exit.for.body_crit_edge, label %ocelot_vcap_block_find_filter_by_index.exit.for.end_crit_edge

ocelot_vcap_block_find_filter_by_index.exit.for.end_crit_edge: ; preds = %ocelot_vcap_block_find_filter_by_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

ocelot_vcap_block_find_filter_by_index.exit.for.body_crit_edge: ; preds = %ocelot_vcap_block_find_filter_by_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %ocelot_vcap_block_find_filter_by_index.exit.for.end_crit_edge, %if.end10.for.end_crit_edge
  tail call fastcc void @vcap_entry_set(ptr noundef %ocelot, i32 noundef %index.015.i, ptr noundef %filter)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge, %if.end.i46.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -16, %if.then2 ], [ -16, %do.body.cleanup_crit_edge ], [ %index.015.i, %ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ -2, %if.end7.cleanup_crit_edge ], [ -2, %if.end.i46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vcap_entry_set(ptr noundef %ocelot, i32 noundef %ix, ptr noundef readonly %filter) unnamed_addr #0 align 64 {
entry:
  %data.i188 = alloca %struct.vcap_data, align 4
  %payload.i = alloca %struct.ocelot_vcap_u64, align 4
  %data.i18 = alloca %struct.vcap_data, align 4
  %sip132.i = alloca %struct.ocelot_vcap_ipv4, align 8
  %dip133.i = alloca %struct.ocelot_vcap_ipv4, align 8
  %proto.i = alloca %struct.ocelot_vcap_u8, align 2
  %ds.i = alloca %struct.ocelot_vcap_u8, align 2
  %data.i = alloca %struct.vcap_data, align 4
  %sip.i = alloca %struct.ocelot_vcap_ipv4, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %block_id = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 2
  %0 = ptrtoint ptr %block_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_id, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %1, label %entry.if.end8_crit_edge [
    i32 1, label %if.then
    i32 2, label %if.then3
    i32 0, label %if.then7
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then:                                          ; preds = %entry
  %vcap1.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 26
  %3 = ptrtoint ptr %vcap1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vcap1.i, align 4
  %arrayidx.i = getelementptr %struct.vcap_props, ptr %4, i32 1
  %vlan.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 196, ptr nonnull %data.i) #8
  %div.i = sdiv i32 %ix, 2
  %5 = call ptr @memset(ptr %data.i, i32 0, i32 196)
  %entry_count.i.i = getelementptr %struct.vcap_props, ptr %4, i32 1, i32 2
  %6 = ptrtoint ptr %entry_count.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %entry_count.i.i, align 4
  %8 = trunc i32 %div.i to i16
  %9 = xor i16 %8, -1
  %conv2.i.i = add i16 %7, %9
  tail call fastcc void @vcap_cmd(ptr noundef %ocelot, ptr noundef %arrayidx.i, i16 noundef zeroext %conv2.i.i, i32 noundef 1, i32 noundef 7) #8
  %entry_width.i.i = getelementptr %struct.vcap_props, ptr %4, i32 1, i32 4
  %10 = ptrtoint ptr %entry_width.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %entry_width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp22.not.i.i = icmp eq i16 %11, 0
  br i1 %cmp22.not.i.i, label %if.then.vcap_cache2entry.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.vcap_cache2entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_cache2entry.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then
  %conv.i.i = zext i16 %11 to i32
  %sub.i.i = add nuw nsw i32 %conv.i.i, 31
  %div21.i.i = lshr i32 %sub.i.i, 5
  %target.i.i = getelementptr %struct.vcap_props, ptr %4, i32 1, i32 12
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.023.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %12 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %target.i.i, align 4
  %mul.i.i = shl i32 %i.023.i.i, 2
  %call.i.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %13, i32 noundef 2, i32 noundef %mul.i.i) #8
  %arrayidx.i.i = getelementptr [12 x i32], ptr %data.i, i32 0, i32 %i.023.i.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call.i.i, ptr %arrayidx.i.i, align 4
  %15 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %target.i.i, align 4
  %call5.i.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %16, i32 noundef 3, i32 noundef %mul.i.i) #8
  %neg.i.i = xor i32 %call5.i.i, -1
  %arrayidx6.i.i = getelementptr %struct.vcap_data, ptr %data.i, i32 0, i32 1, i32 %i.023.i.i
  %17 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %neg.i.i, ptr %arrayidx6.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.023.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div21.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.vcap_cache2entry.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.vcap_cache2entry.exit.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_cache2entry.exit.i

vcap_cache2entry.exit.i:                          ; preds = %for.body.i.i.vcap_cache2entry.exit.i_crit_edge, %if.then.vcap_cache2entry.exit.i_crit_edge
  %target7.i.i = getelementptr %struct.vcap_props, ptr %4, i32 1, i32 12
  %18 = ptrtoint ptr %target7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %target7.i.i, align 4
  %call8.i.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %19, i32 noundef 6, i32 noundef 0) #8
  %tg.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 4
  %20 = ptrtoint ptr %tg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call8.i.i, ptr %tg.i.i, align 4
  %action_width.i.i = getelementptr %struct.vcap_props, ptr %4, i32 1, i32 7
  %21 = ptrtoint ptr %action_width.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %action_width.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp37.not.i.i = icmp eq i16 %22, 0
  br i1 %cmp37.not.i.i, label %vcap_cache2entry.exit.i.for.cond2.preheader.i.i_crit_edge, label %for.body.lr.ph.i139.i

vcap_cache2entry.exit.i.for.cond2.preheader.i.i_crit_edge: ; preds = %vcap_cache2entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.i.i

for.body.lr.ph.i139.i:                            ; preds = %vcap_cache2entry.exit.i
  %conv.i136.i = zext i16 %22 to i32
  %sub.i137.i = add nuw nsw i32 %conv.i136.i, 31
  %div36.i.i = lshr i32 %sub.i137.i, 5
  br label %for.body.i146.i

for.cond2.preheader.i.i:                          ; preds = %for.body.i146.i.for.cond2.preheader.i.i_crit_edge, %vcap_cache2entry.exit.i.for.cond2.preheader.i.i_crit_edge
  %counter_words.i.i = getelementptr %struct.vcap_props, ptr %4, i32 1, i32 10
  %23 = ptrtoint ptr %counter_words.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %counter_words.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %cmp440.not.i.i = icmp eq i16 %24, 0
  br i1 %cmp440.not.i.i, label %for.cond2.preheader.i.i.for.end13.i.i_crit_edge, label %for.cond2.preheader.i.i.for.body6.i.i_crit_edge

for.cond2.preheader.i.i.for.body6.i.i_crit_edge:  ; preds = %for.cond2.preheader.i.i
  br label %for.body6.i.i

for.cond2.preheader.i.i.for.end13.i.i_crit_edge:  ; preds = %for.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end13.i.i

for.body.i146.i:                                  ; preds = %for.body.i146.i.for.body.i146.i_crit_edge, %for.body.lr.ph.i139.i
  %i.038.i.i = phi i32 [ 0, %for.body.lr.ph.i139.i ], [ %inc.i144.i, %for.body.i146.i.for.body.i146.i_crit_edge ]
  %25 = ptrtoint ptr %target7.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %target7.i.i, align 4
  %mul.i141.i = shl i32 %i.038.i.i, 2
  %call.i142.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %26, i32 noundef 4, i32 noundef %mul.i141.i) #8
  %arrayidx.i143.i = getelementptr %struct.vcap_data, ptr %data.i, i32 0, i32 2, i32 %i.038.i.i
  %27 = ptrtoint ptr %arrayidx.i143.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call.i142.i, ptr %arrayidx.i143.i, align 4
  %inc.i144.i = add nuw nsw i32 %i.038.i.i, 1
  %exitcond.not.i145.i = icmp eq i32 %inc.i144.i, %div36.i.i
  br i1 %exitcond.not.i145.i, label %for.body.i146.i.for.cond2.preheader.i.i_crit_edge, label %for.body.i146.i.for.body.i146.i_crit_edge

for.body.i146.i.for.body.i146.i_crit_edge:        ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i146.i

for.body.i146.i.for.cond2.preheader.i.i_crit_edge: ; preds = %for.body.i146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.i.i

for.body6.i.i:                                    ; preds = %for.body6.i.i.for.body6.i.i_crit_edge, %for.cond2.preheader.i.i.for.body6.i.i_crit_edge
  %i.141.i.i = phi i32 [ %inc12.i.i, %for.body6.i.i.for.body6.i.i_crit_edge ], [ 0, %for.cond2.preheader.i.i.for.body6.i.i_crit_edge ]
  %28 = ptrtoint ptr %target7.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %target7.i.i, align 4
  %mul8.i.i = shl i32 %i.141.i.i, 2
  %call9.i.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %29, i32 noundef 5, i32 noundef %mul8.i.i) #8
  %arrayidx10.i.i = getelementptr %struct.vcap_data, ptr %data.i, i32 0, i32 3, i32 %i.141.i.i
  %30 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call9.i.i, ptr %arrayidx10.i.i, align 4
  %inc12.i.i = add nuw nsw i32 %i.141.i.i, 1
  %31 = ptrtoint ptr %counter_words.i.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %counter_words.i.i, align 2
  %conv3.i.i = zext i16 %32 to i32
  %cmp4.i.i = icmp ult i32 %inc12.i.i, %conv3.i.i
  br i1 %cmp4.i.i, label %for.body6.i.i.for.body6.i.i_crit_edge, label %for.body6.i.i.for.end13.i.i_crit_edge

for.body6.i.i.for.end13.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end13.i.i

for.body6.i.i.for.body6.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.i.i

for.end13.i.i:                                    ; preds = %for.body6.i.i.for.end13.i.i_crit_edge, %for.cond2.preheader.i.i.for.end13.i.i_crit_edge
  %action_type_width.i.i = getelementptr %struct.vcap_props, ptr %4, i32 1, i32 8
  %type.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 5
  %tg_sw.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 6
  %33 = ptrtoint ptr %tg_sw.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %tg_sw.i, align 4
  %34 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %type.i.i, align 4
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i, align 4
  %conv.i147.i = zext i16 %36 to i32
  %rem.i.i = srem i32 %ix, 2
  %sw_count.i.i = getelementptr %struct.vcap_props, ptr %4, i32 1, i32 1
  %37 = ptrtoint ptr %sw_count.i.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sw_count.i.i, align 2
  %conv3.i148.i = zext i16 %38 to i32
  %div84.i519.i = lshr i16 %38, 1
  %div.zext.i.i = zext i16 %div84.i519.i to i32
  %mul.i149.i = mul nsw i32 %rem.i.i, %div.zext.i.i
  %39 = add nsw i32 %mul.i149.i, %div.zext.i.i
  %sub6.i.i = sub nsw i32 %conv3.i148.i, %39
  %tg_value.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 11
  %40 = ptrtoint ptr %tg_value.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %tg_value.i.i, align 4
  %tg_mask.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 12
  %41 = ptrtoint ptr %tg_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %tg_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %38)
  %cmp85.not.i.i = icmp ult i16 %38, 2
  br i1 %cmp85.not.i.i, label %for.end13.i.i.vcap_data_offset_get.exit.i_crit_edge, label %for.body.lr.ph.i150.i

for.end13.i.i.vcap_data_offset_get.exit.i_crit_edge: ; preds = %for.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_data_offset_get.exit.i

for.body.lr.ph.i150.i:                            ; preds = %for.end13.i.i
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div.zext.i.i, i32 1) #8
  br label %for.body.i155.i

for.body.i155.i:                                  ; preds = %for.body.i155.i.for.body.i155.i_crit_edge, %for.body.lr.ph.i150.i
  %42 = phi i32 [ 0, %for.body.lr.ph.i150.i ], [ %or19.i.i, %for.body.i155.i.for.body.i155.i_crit_edge ]
  %43 = phi i32 [ 0, %for.body.lr.ph.i150.i ], [ %or.i.i, %for.body.i155.i.for.body.i155.i_crit_edge ]
  %i.086.i.i = phi i32 [ 0, %for.body.lr.ph.i150.i ], [ %inc.i153.i, %for.body.i155.i.for.body.i155.i_crit_edge ]
  %add.i.i = add nsw i32 %i.086.i.i, %sub6.i.i
  %mul8.i151.i = mul i32 %add.i.i, %conv.i147.i
  %shl.i.i = shl i32 2, %mul8.i151.i
  %or.i.i = or i32 %shl.i.i, %43
  %shl11.neg.i.i = shl nsw i32 -1, %mul8.i151.i
  %44 = add i32 %mul8.i151.i, %conv.i147.i
  %sub16.i.i = sub i32 32, %44
  %shr.i152.i = lshr i32 -1, %sub16.i.i
  %and.i.i = and i32 %shr.i152.i, %shl11.neg.i.i
  %or19.i.i = or i32 %and.i.i, %42
  %inc.i153.i = add nuw nsw i32 %i.086.i.i, 1
  %exitcond.not.i154.i = icmp eq i32 %inc.i153.i, %umax.i.i
  br i1 %exitcond.not.i154.i, label %for.cond.for.end_crit_edge.i.i, label %for.body.i155.i.for.body.i155.i_crit_edge

for.body.i155.i.for.body.i155.i_crit_edge:        ; preds = %for.body.i155.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i155.i

for.cond.for.end_crit_edge.i.i:                   ; preds = %for.body.i155.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %tg_value.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i.i, ptr %tg_value.i.i, align 4
  %46 = ptrtoint ptr %tg_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or19.i.i, ptr %tg_mask.i.i, align 4
  br label %vcap_data_offset_get.exit.i

vcap_data_offset_get.exit.i:                      ; preds = %for.cond.for.end_crit_edge.i.i, %for.end13.i.i.vcap_data_offset_get.exit.i_crit_edge
  %sub21.i.i = sub nsw i32 1, %rem.i.i
  %47 = ptrtoint ptr %entry_width.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %entry_width.i.i, align 4
  %conv22.i.i = zext i16 %48 to i32
  %mul23.i.i = mul i32 %sub6.i.i, %conv22.i.i
  %49 = ptrtoint ptr %sw_count.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %sw_count.i.i, align 2
  %conv25.i.i = zext i16 %50 to i32
  %div26.i.i = sdiv i32 %mul23.i.i, %conv25.i.i
  %key_offset.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 8
  %51 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %div26.i.i, ptr %key_offset.i.i, align 4
  %mul27.i.i = mul nsw i32 %sub21.i.i, %div.zext.i.i
  %counter_width.i.i = getelementptr %struct.vcap_props, ptr %4, i32 1, i32 11
  %52 = ptrtoint ptr %counter_width.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %counter_width.i.i, align 4
  %conv28.i.i = zext i16 %53 to i32
  %mul29.i.i = mul i32 %mul27.i.i, %conv28.i.i
  %counter_offset.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 10
  %54 = ptrtoint ptr %counter_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %mul29.i.i, ptr %counter_offset.i.i, align 4
  %arrayidx.i158.i = getelementptr %struct.vcap_props, ptr %4, i32 1, i32 9
  %55 = ptrtoint ptr %arrayidx.i158.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx.i158.i, align 2
  %conv31.i.i = zext i16 %56 to i32
  %count.i.i = getelementptr %struct.vcap_props, ptr %4, i32 1, i32 9, i32 0, i32 1
  %57 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %count.i.i, align 2
  %conv34.i.i = zext i16 %58 to i32
  %mul35.i.i = mul nsw i32 %sub21.i.i, %conv31.i.i
  %mul36.i.i = mul i32 %mul35.i.i, %conv34.i.i
  %div37.i520.i = lshr i32 %mul36.i.i, 1
  %action_offset.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 9
  %59 = ptrtoint ptr %action_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div37.i520.i, ptr %action_offset.i.i, align 4
  %60 = ptrtoint ptr %action_type_width.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %action_type_width.i.i, align 4
  %conv38.i.i = zext i16 %61 to i32
  %add40.i.i = add nuw i32 %div37.i520.i, %conv38.i.i
  store i32 %add40.i.i, ptr %action_offset.i.i, align 4
  %62 = ptrtoint ptr %tg.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tg.i.i, align 4
  %64 = ptrtoint ptr %tg_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tg_mask.i.i, align 4
  %neg.i = xor i32 %65, -1
  %and.i = and i32 %63, %neg.i
  store i32 %and.i, ptr %tg.i.i, align 4
  %prio.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 6
  %66 = ptrtoint ptr %prio.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %prio.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %cmp.not.i = icmp eq i16 %67, 0
  br i1 %cmp.not.i, label %vcap_data_offset_get.exit.i.if.end.i_crit_edge, label %if.then.i

vcap_data_offset_get.exit.i.if.end.i_crit_edge:   ; preds = %vcap_data_offset_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %vcap_data_offset_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %tg_value.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tg_value.i.i, align 4
  %or.i = or i32 %69, %and.i
  %70 = ptrtoint ptr %tg.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or.i, ptr %tg.i.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %vcap_data_offset_get.exit.i.if.end.i_crit_edge
  %lookup.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 4
  %71 = ptrtoint ptr %lookup.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %lookup.i, align 4
  %keys.i.i = getelementptr %struct.vcap_props, ptr %4, i32 1, i32 13
  %73 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %keys.i.i, align 4
  %arrayidx.i160.i = getelementptr %struct.vcap_field, ptr %74, i32 1
  %75 = ptrtoint ptr %arrayidx.i160.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i160.i, align 4
  %length4.i.i = getelementptr %struct.vcap_field, ptr %74, i32 1, i32 1
  %77 = ptrtoint ptr %length4.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %length4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp16.not.i.i.i.i = icmp eq i32 %78, 0
  br i1 %cmp16.not.i.i.i.i, label %if.end.i.vcap_key_set.exit.i_crit_edge, label %for.body.i.preheader.i.i.i

if.end.i.vcap_key_set.exit.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit.i

for.body.i.preheader.i.i.i:                       ; preds = %if.end.i
  %add.i.i.i = add i32 %76, %div26.i.i
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.i.preheader.i.i.i
  %i.018.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.i.i ]
  %offset.addr.017.i.i.i.i = phi i32 [ %inc5.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %add.i.i.i, %for.body.i.preheader.i.i.i ]
  %div15.i.i.i.i = lshr i32 %offset.addr.017.i.i.i.i, 5
  %arrayidx.i.i.i.i = getelementptr i32, ptr %data.i, i32 %div15.i.i.i.i
  %79 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %rem.i.i.i.i = and i32 %offset.addr.017.i.i.i.i, 31
  %shl.i.i.i.i = shl nuw i32 1, %rem.i.i.i.i
  %shl1.i.i.i.i = shl nuw i32 1, %i.018.i.i.i.i
  %and.i.i.i.i = and i32 %shl1.i.i.i.i, %72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  %or.i.i.i.i = or i32 %shl.i.i.i.i, %80
  %neg.i.i.i.i = xor i32 %shl.i.i.i.i, -1
  %and2.i.i.i.i = and i32 %80, %neg.i.i.i.i
  %v.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %and2.i.i.i.i, i32 %or.i.i.i.i
  %81 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %v.0.i.i.i.i, ptr %arrayidx.i.i.i.i, align 4
  %inc.i.i.i.i = add nuw i32 %i.018.i.i.i.i, 1
  %inc5.i.i.i.i = add i32 %offset.addr.017.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, %78
  br i1 %exitcond.not.i.i.i.i, label %for.body.i28.preheader.i.i.i, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

for.body.i28.preheader.i.i.i:                     ; preds = %for.body.i.i.i.i
  %mask2.i.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 1
  %82 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %key_offset.i.i, align 4
  %add5.i.i.i = add i32 %83, %76
  br label %for.body.i28.i.i.i

for.body.i28.i.i.i:                               ; preds = %for.body.i28.i.i.i.for.body.i28.i.i.i_crit_edge, %for.body.i28.preheader.i.i.i
  %i.018.i12.i.i.i = phi i32 [ %inc.i25.i.i.i, %for.body.i28.i.i.i.for.body.i28.i.i.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i.i ]
  %offset.addr.017.i13.i.i.i = phi i32 [ %inc5.i26.i.i.i, %for.body.i28.i.i.i.for.body.i28.i.i.i_crit_edge ], [ %add5.i.i.i, %for.body.i28.preheader.i.i.i ]
  %div15.i14.i.i.i = lshr i32 %offset.addr.017.i13.i.i.i, 5
  %arrayidx.i15.i.i.i = getelementptr i32, ptr %mask2.i.i.i, i32 %div15.i14.i.i.i
  %84 = ptrtoint ptr %arrayidx.i15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i15.i.i.i, align 4
  %rem.i16.i.i.i = and i32 %offset.addr.017.i13.i.i.i, 31
  %shl.i17.i.i.i = shl nuw i32 1, %rem.i16.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.018.i12.i.i.i)
  %tobool.not.i20.i.i.i = icmp ugt i32 %i.018.i12.i.i.i, 1
  %or.i21.i.i.i = or i32 %shl.i17.i.i.i, %85
  %neg.i22.i.i.i = xor i32 %shl.i17.i.i.i, -1
  %and2.i23.i.i.i = and i32 %85, %neg.i22.i.i.i
  %v.0.i24.i.i.i = select i1 %tobool.not.i20.i.i.i, i32 %and2.i23.i.i.i, i32 %or.i21.i.i.i
  %86 = ptrtoint ptr %arrayidx.i15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %v.0.i24.i.i.i, ptr %arrayidx.i15.i.i.i, align 4
  %inc.i25.i.i.i = add nuw i32 %i.018.i12.i.i.i, 1
  %inc5.i26.i.i.i = add i32 %offset.addr.017.i13.i.i.i, 1
  %exitcond.not.i27.i.i.i = icmp eq i32 %inc.i25.i.i.i, %78
  br i1 %exitcond.not.i27.i.i.i, label %for.body.i28.i.i.i.vcap_key_set.exit.i_crit_edge, label %for.body.i28.i.i.i.for.body.i28.i.i.i_crit_edge

for.body.i28.i.i.i.for.body.i28.i.i.i_crit_edge:  ; preds = %for.body.i28.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i.i

for.body.i28.i.i.i.vcap_key_set.exit.i_crit_edge: ; preds = %for.body.i28.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit.i

vcap_key_set.exit.i:                              ; preds = %for.body.i28.i.i.i.vcap_key_set.exit.i_crit_edge, %if.end.i.vcap_key_set.exit.i_crit_edge
  %ingress_port_mask.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 10
  %87 = ptrtoint ptr %ingress_port_mask.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %ingress_port_mask.i, align 8
  %89 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %keys.i.i, align 4
  %arrayidx.i162.i = getelementptr %struct.vcap_field, ptr %90, i32 2
  %91 = ptrtoint ptr %arrayidx.i162.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i162.i, align 4
  %length4.i163.i = getelementptr %struct.vcap_field, ptr %90, i32 2, i32 1
  %93 = ptrtoint ptr %length4.i163.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %length4.i163.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp16.not.i.i.i165.i = icmp eq i32 %94, 0
  br i1 %cmp16.not.i.i.i165.i, label %vcap_key_set.exit.i.vcap_key_set.exit202.i_crit_edge, label %for.body.i.preheader.i.i167.i

vcap_key_set.exit.i.vcap_key_set.exit202.i_crit_edge: ; preds = %vcap_key_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit202.i

for.body.i.preheader.i.i167.i:                    ; preds = %vcap_key_set.exit.i
  %95 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %key_offset.i.i, align 4
  %add.i.i166.i = add i32 %96, %92
  br label %for.body.i.i.i181.i

for.body.i.i.i181.i:                              ; preds = %for.body.i.i.i181.i.for.body.i.i.i181.i_crit_edge, %for.body.i.preheader.i.i167.i
  %i.018.i.i.i168.i = phi i32 [ %inc.i.i.i178.i, %for.body.i.i.i181.i.for.body.i.i.i181.i_crit_edge ], [ 0, %for.body.i.preheader.i.i167.i ]
  %offset.addr.017.i.i.i169.i = phi i32 [ %inc5.i.i.i179.i, %for.body.i.i.i181.i.for.body.i.i.i181.i_crit_edge ], [ %add.i.i166.i, %for.body.i.preheader.i.i167.i ]
  %div15.i.i.i170.i = lshr i32 %offset.addr.017.i.i.i169.i, 5
  %arrayidx.i.i.i171.i = getelementptr i32, ptr %data.i, i32 %div15.i.i.i170.i
  %97 = ptrtoint ptr %arrayidx.i.i.i171.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i.i.i171.i, align 4
  %rem.i.i.i172.i = and i32 %offset.addr.017.i.i.i169.i, 31
  %shl.i.i.i173.i = shl nuw i32 1, %rem.i.i.i172.i
  %neg.i.i.i176.i = xor i32 %shl.i.i.i173.i, -1
  %and2.i.i.i177.i = and i32 %98, %neg.i.i.i176.i
  store i32 %and2.i.i.i177.i, ptr %arrayidx.i.i.i171.i, align 4
  %inc.i.i.i178.i = add nuw i32 %i.018.i.i.i168.i, 1
  %inc5.i.i.i179.i = add i32 %offset.addr.017.i.i.i169.i, 1
  %exitcond.not.i.i.i180.i = icmp eq i32 %inc.i.i.i178.i, %94
  br i1 %exitcond.not.i.i.i180.i, label %for.body.i28.preheader.i.i184.i, label %for.body.i.i.i181.i.for.body.i.i.i181.i_crit_edge

for.body.i.i.i181.i.for.body.i.i.i181.i_crit_edge: ; preds = %for.body.i.i.i181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i181.i

for.body.i28.preheader.i.i184.i:                  ; preds = %for.body.i.i.i181.i
  %mask2.i.i182.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 1
  %99 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %key_offset.i.i, align 4
  %add5.i.i183.i = add i32 %100, %92
  br label %for.body.i28.i.i201.i

for.body.i28.i.i201.i:                            ; preds = %for.body.i28.i.i201.i.for.body.i28.i.i201.i_crit_edge, %for.body.i28.preheader.i.i184.i
  %i.018.i12.i.i185.i = phi i32 [ %inc.i25.i.i198.i, %for.body.i28.i.i201.i.for.body.i28.i.i201.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i184.i ]
  %offset.addr.017.i13.i.i186.i = phi i32 [ %inc5.i26.i.i199.i, %for.body.i28.i.i201.i.for.body.i28.i.i201.i_crit_edge ], [ %add5.i.i183.i, %for.body.i28.preheader.i.i184.i ]
  %div15.i14.i.i187.i = lshr i32 %offset.addr.017.i13.i.i186.i, 5
  %arrayidx.i15.i.i188.i = getelementptr i32, ptr %mask2.i.i182.i, i32 %div15.i14.i.i187.i
  %101 = ptrtoint ptr %arrayidx.i15.i.i188.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i15.i.i188.i, align 4
  %rem.i16.i.i189.i = and i32 %offset.addr.017.i13.i.i186.i, 31
  %shl.i17.i.i190.i = shl nuw i32 1, %rem.i16.i.i189.i
  %shl1.i18.i.i191.i = shl nuw i32 1, %i.018.i12.i.i185.i
  %103 = and i32 %shl1.i18.i.i191.i, %88
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i20.i.i193.not.i = icmp eq i32 %103, 0
  %or.i21.i.i194.i = or i32 %shl.i17.i.i190.i, %102
  %neg.i22.i.i195.i = xor i32 %shl.i17.i.i190.i, -1
  %and2.i23.i.i196.i = and i32 %102, %neg.i22.i.i195.i
  %v.0.i24.i.i197.i = select i1 %tobool.not.i20.i.i193.not.i, i32 %or.i21.i.i194.i, i32 %and2.i23.i.i196.i
  %104 = ptrtoint ptr %arrayidx.i15.i.i188.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %v.0.i24.i.i197.i, ptr %arrayidx.i15.i.i188.i, align 4
  %inc.i25.i.i198.i = add nuw i32 %i.018.i12.i.i185.i, 1
  %inc5.i26.i.i199.i = add i32 %offset.addr.017.i13.i.i186.i, 1
  %exitcond.not.i27.i.i200.i = icmp eq i32 %inc.i25.i.i198.i, %94
  br i1 %exitcond.not.i27.i.i200.i, label %for.body.i28.i.i201.i.vcap_key_set.exit202.i_crit_edge, label %for.body.i28.i.i201.i.for.body.i28.i.i201.i_crit_edge

for.body.i28.i.i201.i.for.body.i28.i.i201.i_crit_edge: ; preds = %for.body.i28.i.i201.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i201.i

for.body.i28.i.i201.i.vcap_key_set.exit202.i_crit_edge: ; preds = %for.body.i28.i.i201.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit202.i

vcap_key_set.exit202.i:                           ; preds = %for.body.i28.i.i201.i.vcap_key_set.exit202.i_crit_edge, %vcap_key_set.exit.i.vcap_key_set.exit202.i_crit_edge
  %dmac_mc.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 13
  %105 = ptrtoint ptr %dmac_mc.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dmac_mc.i, align 8
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i, ptr noundef nonnull %data.i, i32 noundef 5, i32 noundef %106) #8
  %dmac_bc.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 14
  %107 = ptrtoint ptr %dmac_bc.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dmac_bc.i, align 4
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i, ptr noundef nonnull %data.i, i32 noundef 6, i32 noundef %108) #8
  %tagged.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 15, i32 3
  %109 = ptrtoint ptr %tagged.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tagged.i, align 4
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i, ptr noundef nonnull %data.i, i32 noundef 8, i32 noundef %110) #8
  %111 = ptrtoint ptr %vlan.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %vlan.i, align 4
  %conv7.i = zext i16 %112 to i32
  %mask.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 15, i32 0, i32 1
  %113 = ptrtoint ptr %mask.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %mask.i, align 2
  %conv9.i = zext i16 %114 to i32
  %115 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %keys.i.i, align 4
  %arrayidx.i204.i = getelementptr %struct.vcap_field, ptr %116, i32 11
  %117 = ptrtoint ptr %arrayidx.i204.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.i204.i, align 4
  %length4.i205.i = getelementptr %struct.vcap_field, ptr %116, i32 11, i32 1
  %119 = ptrtoint ptr %length4.i205.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %length4.i205.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp16.not.i.i.i207.i = icmp eq i32 %120, 0
  br i1 %cmp16.not.i.i.i207.i, label %vcap_key_set.exit202.i.vcap_key_set.exit247.i_crit_edge, label %for.body.i.preheader.i.i209.i

vcap_key_set.exit202.i.vcap_key_set.exit247.i_crit_edge: ; preds = %vcap_key_set.exit202.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit247.i

for.body.i.preheader.i.i209.i:                    ; preds = %vcap_key_set.exit202.i
  %121 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %key_offset.i.i, align 4
  %add.i.i208.i = add i32 %122, %118
  br label %for.body.i.i.i226.i

for.body.i.i.i226.i:                              ; preds = %for.body.i.i.i226.i.for.body.i.i.i226.i_crit_edge, %for.body.i.preheader.i.i209.i
  %i.018.i.i.i210.i = phi i32 [ %inc.i.i.i223.i, %for.body.i.i.i226.i.for.body.i.i.i226.i_crit_edge ], [ 0, %for.body.i.preheader.i.i209.i ]
  %offset.addr.017.i.i.i211.i = phi i32 [ %inc5.i.i.i224.i, %for.body.i.i.i226.i.for.body.i.i.i226.i_crit_edge ], [ %add.i.i208.i, %for.body.i.preheader.i.i209.i ]
  %div15.i.i.i212.i = lshr i32 %offset.addr.017.i.i.i211.i, 5
  %arrayidx.i.i.i213.i = getelementptr i32, ptr %data.i, i32 %div15.i.i.i212.i
  %123 = ptrtoint ptr %arrayidx.i.i.i213.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx.i.i.i213.i, align 4
  %rem.i.i.i214.i = and i32 %offset.addr.017.i.i.i211.i, 31
  %shl.i.i.i215.i = shl nuw i32 1, %rem.i.i.i214.i
  %shl1.i.i.i216.i = shl nuw i32 1, %i.018.i.i.i210.i
  %and.i.i.i217.i = and i32 %shl1.i.i.i216.i, %conv7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i217.i)
  %tobool.not.i.i.i218.i = icmp eq i32 %and.i.i.i217.i, 0
  %or.i.i.i219.i = or i32 %shl.i.i.i215.i, %124
  %neg.i.i.i220.i = xor i32 %shl.i.i.i215.i, -1
  %and2.i.i.i221.i = and i32 %124, %neg.i.i.i220.i
  %v.0.i.i.i222.i = select i1 %tobool.not.i.i.i218.i, i32 %and2.i.i.i221.i, i32 %or.i.i.i219.i
  %125 = ptrtoint ptr %arrayidx.i.i.i213.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %v.0.i.i.i222.i, ptr %arrayidx.i.i.i213.i, align 4
  %inc.i.i.i223.i = add nuw i32 %i.018.i.i.i210.i, 1
  %inc5.i.i.i224.i = add i32 %offset.addr.017.i.i.i211.i, 1
  %exitcond.not.i.i.i225.i = icmp eq i32 %inc.i.i.i223.i, %120
  br i1 %exitcond.not.i.i.i225.i, label %for.body.i28.preheader.i.i229.i, label %for.body.i.i.i226.i.for.body.i.i.i226.i_crit_edge

for.body.i.i.i226.i.for.body.i.i.i226.i_crit_edge: ; preds = %for.body.i.i.i226.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i226.i

for.body.i28.preheader.i.i229.i:                  ; preds = %for.body.i.i.i226.i
  %mask2.i.i227.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 1
  %126 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %key_offset.i.i, align 4
  %add5.i.i228.i = add i32 %127, %118
  br label %for.body.i28.i.i246.i

for.body.i28.i.i246.i:                            ; preds = %for.body.i28.i.i246.i.for.body.i28.i.i246.i_crit_edge, %for.body.i28.preheader.i.i229.i
  %i.018.i12.i.i230.i = phi i32 [ %inc.i25.i.i243.i, %for.body.i28.i.i246.i.for.body.i28.i.i246.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i229.i ]
  %offset.addr.017.i13.i.i231.i = phi i32 [ %inc5.i26.i.i244.i, %for.body.i28.i.i246.i.for.body.i28.i.i246.i_crit_edge ], [ %add5.i.i228.i, %for.body.i28.preheader.i.i229.i ]
  %div15.i14.i.i232.i = lshr i32 %offset.addr.017.i13.i.i231.i, 5
  %arrayidx.i15.i.i233.i = getelementptr i32, ptr %mask2.i.i227.i, i32 %div15.i14.i.i232.i
  %128 = ptrtoint ptr %arrayidx.i15.i.i233.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i15.i.i233.i, align 4
  %rem.i16.i.i234.i = and i32 %offset.addr.017.i13.i.i231.i, 31
  %shl.i17.i.i235.i = shl nuw i32 1, %rem.i16.i.i234.i
  %shl1.i18.i.i236.i = shl nuw i32 1, %i.018.i12.i.i230.i
  %and.i19.i.i237.i = and i32 %shl1.i18.i.i236.i, %conv9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i.i237.i)
  %tobool.not.i20.i.i238.i = icmp eq i32 %and.i19.i.i237.i, 0
  %or.i21.i.i239.i = or i32 %shl.i17.i.i235.i, %129
  %neg.i22.i.i240.i = xor i32 %shl.i17.i.i235.i, -1
  %and2.i23.i.i241.i = and i32 %129, %neg.i22.i.i240.i
  %v.0.i24.i.i242.i = select i1 %tobool.not.i20.i.i238.i, i32 %and2.i23.i.i241.i, i32 %or.i21.i.i239.i
  %130 = ptrtoint ptr %arrayidx.i15.i.i233.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %v.0.i24.i.i242.i, ptr %arrayidx.i15.i.i233.i, align 4
  %inc.i25.i.i243.i = add nuw i32 %i.018.i12.i.i230.i, 1
  %inc5.i26.i.i244.i = add i32 %offset.addr.017.i13.i.i231.i, 1
  %exitcond.not.i27.i.i245.i = icmp eq i32 %inc.i25.i.i243.i, %120
  br i1 %exitcond.not.i27.i.i245.i, label %for.body.i28.i.i246.i.vcap_key_set.exit247.i_crit_edge, label %for.body.i28.i.i246.i.for.body.i28.i.i246.i_crit_edge

for.body.i28.i.i246.i.for.body.i28.i.i246.i_crit_edge: ; preds = %for.body.i28.i.i246.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i246.i

for.body.i28.i.i246.i.vcap_key_set.exit247.i_crit_edge: ; preds = %for.body.i28.i.i246.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit247.i

vcap_key_set.exit247.i:                           ; preds = %for.body.i28.i.i246.i.vcap_key_set.exit247.i_crit_edge, %vcap_key_set.exit202.i.vcap_key_set.exit247.i_crit_edge
  %pcp.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 15, i32 1
  %131 = ptrtoint ptr %pcp.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %pcp.i, align 4
  %conv12.i = zext i8 %132 to i32
  %mask14.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 15, i32 1, i32 1
  %133 = ptrtoint ptr %mask14.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %mask14.i, align 1
  %conv16.i = zext i8 %134 to i32
  %135 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %keys.i.i, align 4
  %arrayidx.i249.i = getelementptr %struct.vcap_field, ptr %136, i32 13
  %137 = ptrtoint ptr %arrayidx.i249.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.i249.i, align 4
  %length4.i250.i = getelementptr %struct.vcap_field, ptr %136, i32 13, i32 1
  %139 = ptrtoint ptr %length4.i250.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %length4.i250.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %cmp16.not.i.i.i252.i = icmp eq i32 %140, 0
  br i1 %cmp16.not.i.i.i252.i, label %vcap_key_set.exit247.i.vcap_key_set.exit292.i_crit_edge, label %for.body.i.preheader.i.i254.i

vcap_key_set.exit247.i.vcap_key_set.exit292.i_crit_edge: ; preds = %vcap_key_set.exit247.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit292.i

for.body.i.preheader.i.i254.i:                    ; preds = %vcap_key_set.exit247.i
  %141 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %key_offset.i.i, align 4
  %add.i.i253.i = add i32 %142, %138
  br label %for.body.i.i.i271.i

for.body.i.i.i271.i:                              ; preds = %for.body.i.i.i271.i.for.body.i.i.i271.i_crit_edge, %for.body.i.preheader.i.i254.i
  %i.018.i.i.i255.i = phi i32 [ %inc.i.i.i268.i, %for.body.i.i.i271.i.for.body.i.i.i271.i_crit_edge ], [ 0, %for.body.i.preheader.i.i254.i ]
  %offset.addr.017.i.i.i256.i = phi i32 [ %inc5.i.i.i269.i, %for.body.i.i.i271.i.for.body.i.i.i271.i_crit_edge ], [ %add.i.i253.i, %for.body.i.preheader.i.i254.i ]
  %div15.i.i.i257.i = lshr i32 %offset.addr.017.i.i.i256.i, 5
  %arrayidx.i.i.i258.i = getelementptr i32, ptr %data.i, i32 %div15.i.i.i257.i
  %143 = ptrtoint ptr %arrayidx.i.i.i258.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i.i.i258.i, align 4
  %rem.i.i.i259.i = and i32 %offset.addr.017.i.i.i256.i, 31
  %shl.i.i.i260.i = shl nuw i32 1, %rem.i.i.i259.i
  %shl1.i.i.i261.i = shl nuw i32 1, %i.018.i.i.i255.i
  %and.i.i.i262.i = and i32 %shl1.i.i.i261.i, %conv12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i262.i)
  %tobool.not.i.i.i263.i = icmp eq i32 %and.i.i.i262.i, 0
  %or.i.i.i264.i = or i32 %shl.i.i.i260.i, %144
  %neg.i.i.i265.i = xor i32 %shl.i.i.i260.i, -1
  %and2.i.i.i266.i = and i32 %144, %neg.i.i.i265.i
  %v.0.i.i.i267.i = select i1 %tobool.not.i.i.i263.i, i32 %and2.i.i.i266.i, i32 %or.i.i.i264.i
  %145 = ptrtoint ptr %arrayidx.i.i.i258.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %v.0.i.i.i267.i, ptr %arrayidx.i.i.i258.i, align 4
  %inc.i.i.i268.i = add nuw i32 %i.018.i.i.i255.i, 1
  %inc5.i.i.i269.i = add i32 %offset.addr.017.i.i.i256.i, 1
  %exitcond.not.i.i.i270.i = icmp eq i32 %inc.i.i.i268.i, %140
  br i1 %exitcond.not.i.i.i270.i, label %for.body.i28.preheader.i.i274.i, label %for.body.i.i.i271.i.for.body.i.i.i271.i_crit_edge

for.body.i.i.i271.i.for.body.i.i.i271.i_crit_edge: ; preds = %for.body.i.i.i271.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i271.i

for.body.i28.preheader.i.i274.i:                  ; preds = %for.body.i.i.i271.i
  %mask2.i.i272.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 1
  %146 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %key_offset.i.i, align 4
  %add5.i.i273.i = add i32 %147, %138
  br label %for.body.i28.i.i291.i

for.body.i28.i.i291.i:                            ; preds = %for.body.i28.i.i291.i.for.body.i28.i.i291.i_crit_edge, %for.body.i28.preheader.i.i274.i
  %i.018.i12.i.i275.i = phi i32 [ %inc.i25.i.i288.i, %for.body.i28.i.i291.i.for.body.i28.i.i291.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i274.i ]
  %offset.addr.017.i13.i.i276.i = phi i32 [ %inc5.i26.i.i289.i, %for.body.i28.i.i291.i.for.body.i28.i.i291.i_crit_edge ], [ %add5.i.i273.i, %for.body.i28.preheader.i.i274.i ]
  %div15.i14.i.i277.i = lshr i32 %offset.addr.017.i13.i.i276.i, 5
  %arrayidx.i15.i.i278.i = getelementptr i32, ptr %mask2.i.i272.i, i32 %div15.i14.i.i277.i
  %148 = ptrtoint ptr %arrayidx.i15.i.i278.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx.i15.i.i278.i, align 4
  %rem.i16.i.i279.i = and i32 %offset.addr.017.i13.i.i276.i, 31
  %shl.i17.i.i280.i = shl nuw i32 1, %rem.i16.i.i279.i
  %shl1.i18.i.i281.i = shl nuw i32 1, %i.018.i12.i.i275.i
  %and.i19.i.i282.i = and i32 %shl1.i18.i.i281.i, %conv16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i.i282.i)
  %tobool.not.i20.i.i283.i = icmp eq i32 %and.i19.i.i282.i, 0
  %or.i21.i.i284.i = or i32 %shl.i17.i.i280.i, %149
  %neg.i22.i.i285.i = xor i32 %shl.i17.i.i280.i, -1
  %and2.i23.i.i286.i = and i32 %149, %neg.i22.i.i285.i
  %v.0.i24.i.i287.i = select i1 %tobool.not.i20.i.i283.i, i32 %and2.i23.i.i286.i, i32 %or.i21.i.i284.i
  %150 = ptrtoint ptr %arrayidx.i15.i.i278.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %v.0.i24.i.i287.i, ptr %arrayidx.i15.i.i278.i, align 4
  %inc.i25.i.i288.i = add nuw i32 %i.018.i12.i.i275.i, 1
  %inc5.i26.i.i289.i = add i32 %offset.addr.017.i13.i.i276.i, 1
  %exitcond.not.i27.i.i290.i = icmp eq i32 %inc.i25.i.i288.i, %140
  br i1 %exitcond.not.i27.i.i290.i, label %for.body.i28.i.i291.i.vcap_key_set.exit292.i_crit_edge, label %for.body.i28.i.i291.i.for.body.i28.i.i291.i_crit_edge

for.body.i28.i.i291.i.for.body.i28.i.i291.i_crit_edge: ; preds = %for.body.i28.i.i291.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i291.i

for.body.i28.i.i291.i.vcap_key_set.exit292.i_crit_edge: ; preds = %for.body.i28.i.i291.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit292.i

vcap_key_set.exit292.i:                           ; preds = %for.body.i28.i.i291.i.vcap_key_set.exit292.i_crit_edge, %vcap_key_set.exit247.i.vcap_key_set.exit292.i_crit_edge
  %key_type.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 16
  %151 = ptrtoint ptr %key_type.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %key_type.i, align 8
  %153 = zext i32 %152 to i64
  call void @__sanitizer_cov_trace_switch(i64 %153, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %152, label %vcap_key_set.exit292.i.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 5, label %sw.bb27.i
  ]

vcap_key_set.exit292.i.sw.epilog.i_crit_edge:     ; preds = %vcap_key_set.exit292.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %vcap_key_set.exit292.i
  call void @__sanitizer_cov_trace_pc() #10
  %smac.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 10
  %mask19.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i, ptr noundef nonnull %data.i, i32 noundef 14, ptr noundef %smac.i, ptr noundef %mask19.i) #8
  %etype21.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 6
  %mask25.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 8
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i, ptr noundef nonnull %data.i, i32 noundef 16, ptr noundef %etype21.i, ptr noundef %mask25.i) #8
  br label %sw.epilog.i

sw.bb27.i:                                        ; preds = %vcap_key_set.exit292.i
  %sport29.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 2, i32 0, i32 10
  %dport30.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 2, i32 0, i32 14
  %proto31.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 12
  %154 = ptrtoint ptr %proto31.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %proto.sroa.0.0.copyload.i = load i8, ptr %proto31.i, align 2
  %proto.sroa.6.0.proto31.sroa_idx.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 13
  %155 = ptrtoint ptr %proto.sroa.6.0.proto31.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %proto.sroa.6.0.copyload.i = load i8, ptr %proto.sroa.6.0.proto31.sroa_idx.i, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sip.i) #8
  %156 = getelementptr inbounds %struct.ocelot_vcap_ipv4, ptr %sip.i, i32 0, i32 1
  %sip32.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 14
  %157 = ptrtoint ptr %sip32.i to i32
  call void @__asan_loadN_noabort(i32 %157, i32 8)
  %158 = load i64, ptr %sip32.i, align 4
  %159 = ptrtoint ptr %sip.i to i32
  call void @__asan_store8_noabort(i32 %159)
  store i64 %158, ptr %sip.i, align 8
  %160 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %keys.i.i, align 4
  %arrayidx.i294.i = getelementptr %struct.vcap_field, ptr %161, i32 17
  %162 = ptrtoint ptr %arrayidx.i294.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.i294.i, align 4
  %length6.i.i = getelementptr %struct.vcap_field, ptr %161, i32 17, i32 1
  %164 = ptrtoint ptr %length6.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %length6.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %165)
  %cmp7.not.i.i = icmp eq i32 %165, 1
  br i1 %cmp7.not.i.i, label %sw.bb27.i.for.body.i.preheader.i.i297.i_crit_edge, label %if.end.i.i, !prof !27

sw.bb27.i.for.body.i.preheader.i.i297.i_crit_edge: ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i.i297.i

if.end.i.i:                                       ; preds = %sw.bb27.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 315, i32 noundef 9, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %cmp16.not.i.i.i295.i = icmp eq i32 %165, 0
  br i1 %cmp16.not.i.i.i295.i, label %if.end.i.i.vcap_key_bit_set.exit.i_crit_edge, label %if.end.i.i.for.body.i.preheader.i.i297.i_crit_edge

if.end.i.i.for.body.i.preheader.i.i297.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i.i297.i

if.end.i.i.vcap_key_bit_set.exit.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_bit_set.exit.i

for.body.i.preheader.i.i297.i:                    ; preds = %if.end.i.i.for.body.i.preheader.i.i297.i_crit_edge, %sw.bb27.i.for.body.i.preheader.i.i297.i_crit_edge
  %166 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %key_offset.i.i, align 4
  %add.i.i296.i = add i32 %167, %163
  br label %for.body.i.i.i314.i

for.body.i.i.i314.i:                              ; preds = %for.body.i.i.i314.i.for.body.i.i.i314.i_crit_edge, %for.body.i.preheader.i.i297.i
  %i.018.i.i.i298.i = phi i32 [ %inc.i.i.i311.i, %for.body.i.i.i314.i.for.body.i.i.i314.i_crit_edge ], [ 0, %for.body.i.preheader.i.i297.i ]
  %offset.addr.017.i.i.i299.i = phi i32 [ %inc5.i.i.i312.i, %for.body.i.i.i314.i.for.body.i.i.i314.i_crit_edge ], [ %add.i.i296.i, %for.body.i.preheader.i.i297.i ]
  %div15.i.i.i300.i = lshr i32 %offset.addr.017.i.i.i299.i, 5
  %arrayidx.i.i.i301.i = getelementptr i32, ptr %data.i, i32 %div15.i.i.i300.i
  %168 = ptrtoint ptr %arrayidx.i.i.i301.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.i.i.i301.i, align 4
  %rem.i.i.i302.i = and i32 %offset.addr.017.i.i.i299.i, 31
  %shl.i.i.i303.i = shl nuw i32 1, %rem.i.i.i302.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.018.i.i.i298.i)
  %.not.i = icmp eq i32 %i.018.i.i.i298.i, 0
  %or.i.i.i307.i = or i32 %shl.i.i.i303.i, %169
  %neg.i.i.i308.i = xor i32 %shl.i.i.i303.i, -1
  %and2.i.i.i309.i = and i32 %169, %neg.i.i.i308.i
  %v.0.i.i.i310.i = select i1 %.not.i, i32 %or.i.i.i307.i, i32 %and2.i.i.i309.i
  %170 = ptrtoint ptr %arrayidx.i.i.i301.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %v.0.i.i.i310.i, ptr %arrayidx.i.i.i301.i, align 4
  %inc.i.i.i311.i = add nuw i32 %i.018.i.i.i298.i, 1
  %inc5.i.i.i312.i = add i32 %offset.addr.017.i.i.i299.i, 1
  %exitcond.not.i.i.i313.i = icmp eq i32 %inc.i.i.i311.i, %165
  br i1 %exitcond.not.i.i.i313.i, label %for.body.i28.preheader.i.i317.i, label %for.body.i.i.i314.i.for.body.i.i.i314.i_crit_edge

for.body.i.i.i314.i.for.body.i.i.i314.i_crit_edge: ; preds = %for.body.i.i.i314.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i314.i

for.body.i28.preheader.i.i317.i:                  ; preds = %for.body.i.i.i314.i
  %mask2.i.i315.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 1
  %171 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %key_offset.i.i, align 4
  %add5.i.i316.i = add i32 %172, %163
  br label %for.body.i28.i.i334.i

for.body.i28.i.i334.i:                            ; preds = %for.body.i28.i.i334.i.for.body.i28.i.i334.i_crit_edge, %for.body.i28.preheader.i.i317.i
  %i.018.i12.i.i318.i = phi i32 [ %inc.i25.i.i331.i, %for.body.i28.i.i334.i.for.body.i28.i.i334.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i317.i ]
  %offset.addr.017.i13.i.i319.i = phi i32 [ %inc5.i26.i.i332.i, %for.body.i28.i.i334.i.for.body.i28.i.i334.i_crit_edge ], [ %add5.i.i316.i, %for.body.i28.preheader.i.i317.i ]
  %div15.i14.i.i320.i = lshr i32 %offset.addr.017.i13.i.i319.i, 5
  %arrayidx.i15.i.i321.i = getelementptr i32, ptr %mask2.i.i315.i, i32 %div15.i14.i.i320.i
  %173 = ptrtoint ptr %arrayidx.i15.i.i321.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx.i15.i.i321.i, align 4
  %rem.i16.i.i322.i = and i32 %offset.addr.017.i13.i.i319.i, 31
  %shl.i17.i.i323.i = shl nuw i32 1, %rem.i16.i.i322.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.018.i12.i.i318.i)
  %.not521.i = icmp eq i32 %i.018.i12.i.i318.i, 0
  %or.i21.i.i327.i = or i32 %shl.i17.i.i323.i, %174
  %neg.i22.i.i328.i = xor i32 %shl.i17.i.i323.i, -1
  %and2.i23.i.i329.i = and i32 %174, %neg.i22.i.i328.i
  %v.0.i24.i.i330.i = select i1 %.not521.i, i32 %or.i21.i.i327.i, i32 %and2.i23.i.i329.i
  %175 = ptrtoint ptr %arrayidx.i15.i.i321.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %v.0.i24.i.i330.i, ptr %arrayidx.i15.i.i321.i, align 4
  %inc.i25.i.i331.i = add nuw i32 %i.018.i12.i.i318.i, 1
  %inc5.i26.i.i332.i = add i32 %offset.addr.017.i13.i.i319.i, 1
  %exitcond.not.i27.i.i333.i = icmp eq i32 %inc.i25.i.i331.i, %165
  br i1 %exitcond.not.i27.i.i333.i, label %for.body.i28.i.i334.i.vcap_key_bit_set.exit.i_crit_edge, label %for.body.i28.i.i334.i.for.body.i28.i.i334.i_crit_edge

for.body.i28.i.i334.i.for.body.i28.i.i334.i_crit_edge: ; preds = %for.body.i28.i.i334.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i334.i

for.body.i28.i.i334.i.vcap_key_bit_set.exit.i_crit_edge: ; preds = %for.body.i28.i.i334.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_bit_set.exit.i

vcap_key_bit_set.exit.i:                          ; preds = %for.body.i28.i.i334.i.vcap_key_bit_set.exit.i_crit_edge, %if.end.i.i.vcap_key_bit_set.exit.i_crit_edge
  %176 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %keys.i.i, align 4
  %arrayidx.i336.i = getelementptr %struct.vcap_field, ptr %177, i32 18
  %178 = ptrtoint ptr %arrayidx.i336.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx.i336.i, align 4
  %length6.i337.i = getelementptr %struct.vcap_field, ptr %177, i32 18, i32 1
  %180 = ptrtoint ptr %length6.i337.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %length6.i337.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %181)
  %cmp7.not.i338.i = icmp eq i32 %181, 1
  br i1 %cmp7.not.i338.i, label %vcap_key_bit_set.exit.i.for.body.i.preheader.i.i343.i_crit_edge, label %if.end.i340.i, !prof !27

vcap_key_bit_set.exit.i.for.body.i.preheader.i.i343.i_crit_edge: ; preds = %vcap_key_bit_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i.i343.i

if.end.i340.i:                                    ; preds = %vcap_key_bit_set.exit.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 315, i32 noundef 9, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %cmp16.not.i.i.i339.i = icmp eq i32 %181, 0
  br i1 %cmp16.not.i.i.i339.i, label %if.end.i340.i.vcap_key_bit_set.exit381.i_crit_edge, label %if.end.i340.i.for.body.i.preheader.i.i343.i_crit_edge

if.end.i340.i.for.body.i.preheader.i.i343.i_crit_edge: ; preds = %if.end.i340.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i.i343.i

if.end.i340.i.vcap_key_bit_set.exit381.i_crit_edge: ; preds = %if.end.i340.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_bit_set.exit381.i

for.body.i.preheader.i.i343.i:                    ; preds = %if.end.i340.i.for.body.i.preheader.i.i343.i_crit_edge, %vcap_key_bit_set.exit.i.for.body.i.preheader.i.i343.i_crit_edge
  %182 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %key_offset.i.i, align 4
  %add.i.i342.i = add i32 %183, %179
  br label %for.body.i.i.i360.i

for.body.i.i.i360.i:                              ; preds = %for.body.i.i.i360.i.for.body.i.i.i360.i_crit_edge, %for.body.i.preheader.i.i343.i
  %i.018.i.i.i344.i = phi i32 [ %inc.i.i.i357.i, %for.body.i.i.i360.i.for.body.i.i.i360.i_crit_edge ], [ 0, %for.body.i.preheader.i.i343.i ]
  %offset.addr.017.i.i.i345.i = phi i32 [ %inc5.i.i.i358.i, %for.body.i.i.i360.i.for.body.i.i.i360.i_crit_edge ], [ %add.i.i342.i, %for.body.i.preheader.i.i343.i ]
  %div15.i.i.i346.i = lshr i32 %offset.addr.017.i.i.i345.i, 5
  %arrayidx.i.i.i347.i = getelementptr i32, ptr %data.i, i32 %div15.i.i.i346.i
  %184 = ptrtoint ptr %arrayidx.i.i.i347.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx.i.i.i347.i, align 4
  %rem.i.i.i348.i = and i32 %offset.addr.017.i.i.i345.i, 31
  %shl.i.i.i349.i = shl nuw i32 1, %rem.i.i.i348.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.018.i.i.i344.i)
  %.not522.i = icmp eq i32 %i.018.i.i.i344.i, 0
  %or.i.i.i353.i = or i32 %shl.i.i.i349.i, %185
  %neg.i.i.i354.i = xor i32 %shl.i.i.i349.i, -1
  %and2.i.i.i355.i = and i32 %185, %neg.i.i.i354.i
  %v.0.i.i.i356.i = select i1 %.not522.i, i32 %or.i.i.i353.i, i32 %and2.i.i.i355.i
  %186 = ptrtoint ptr %arrayidx.i.i.i347.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %v.0.i.i.i356.i, ptr %arrayidx.i.i.i347.i, align 4
  %inc.i.i.i357.i = add nuw i32 %i.018.i.i.i344.i, 1
  %inc5.i.i.i358.i = add i32 %offset.addr.017.i.i.i345.i, 1
  %exitcond.not.i.i.i359.i = icmp eq i32 %inc.i.i.i357.i, %181
  br i1 %exitcond.not.i.i.i359.i, label %for.body.i28.preheader.i.i363.i, label %for.body.i.i.i360.i.for.body.i.i.i360.i_crit_edge

for.body.i.i.i360.i.for.body.i.i.i360.i_crit_edge: ; preds = %for.body.i.i.i360.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i360.i

for.body.i28.preheader.i.i363.i:                  ; preds = %for.body.i.i.i360.i
  %mask2.i.i361.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 1
  %187 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %key_offset.i.i, align 4
  %add5.i.i362.i = add i32 %188, %179
  br label %for.body.i28.i.i380.i

for.body.i28.i.i380.i:                            ; preds = %for.body.i28.i.i380.i.for.body.i28.i.i380.i_crit_edge, %for.body.i28.preheader.i.i363.i
  %i.018.i12.i.i364.i = phi i32 [ %inc.i25.i.i377.i, %for.body.i28.i.i380.i.for.body.i28.i.i380.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i363.i ]
  %offset.addr.017.i13.i.i365.i = phi i32 [ %inc5.i26.i.i378.i, %for.body.i28.i.i380.i.for.body.i28.i.i380.i_crit_edge ], [ %add5.i.i362.i, %for.body.i28.preheader.i.i363.i ]
  %div15.i14.i.i366.i = lshr i32 %offset.addr.017.i13.i.i365.i, 5
  %arrayidx.i15.i.i367.i = getelementptr i32, ptr %mask2.i.i361.i, i32 %div15.i14.i.i366.i
  %189 = ptrtoint ptr %arrayidx.i15.i.i367.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx.i15.i.i367.i, align 4
  %rem.i16.i.i368.i = and i32 %offset.addr.017.i13.i.i365.i, 31
  %shl.i17.i.i369.i = shl nuw i32 1, %rem.i16.i.i368.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.018.i12.i.i364.i)
  %.not523.i = icmp eq i32 %i.018.i12.i.i364.i, 0
  %or.i21.i.i373.i = or i32 %shl.i17.i.i369.i, %190
  %neg.i22.i.i374.i = xor i32 %shl.i17.i.i369.i, -1
  %and2.i23.i.i375.i = and i32 %190, %neg.i22.i.i374.i
  %v.0.i24.i.i376.i = select i1 %.not523.i, i32 %or.i21.i.i373.i, i32 %and2.i23.i.i375.i
  %191 = ptrtoint ptr %arrayidx.i15.i.i367.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %v.0.i24.i.i376.i, ptr %arrayidx.i15.i.i367.i, align 4
  %inc.i25.i.i377.i = add nuw i32 %i.018.i12.i.i364.i, 1
  %inc5.i26.i.i378.i = add i32 %offset.addr.017.i13.i.i365.i, 1
  %exitcond.not.i27.i.i379.i = icmp eq i32 %inc.i25.i.i377.i, %181
  br i1 %exitcond.not.i27.i.i379.i, label %for.body.i28.i.i380.i.vcap_key_bit_set.exit381.i_crit_edge, label %for.body.i28.i.i380.i.for.body.i28.i.i380.i_crit_edge

for.body.i28.i.i380.i.for.body.i28.i.i380.i_crit_edge: ; preds = %for.body.i28.i.i380.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i380.i

for.body.i28.i.i380.i.vcap_key_bit_set.exit381.i_crit_edge: ; preds = %for.body.i28.i.i380.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_bit_set.exit381.i

vcap_key_bit_set.exit381.i:                       ; preds = %for.body.i28.i.i380.i.vcap_key_bit_set.exit381.i_crit_edge, %if.end.i340.i.vcap_key_bit_set.exit381.i_crit_edge
  %192 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %keys.i.i, align 4
  %arrayidx.i383.i = getelementptr %struct.vcap_field, ptr %193, i32 15
  %194 = ptrtoint ptr %arrayidx.i383.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx.i383.i, align 4
  %length6.i384.i = getelementptr %struct.vcap_field, ptr %193, i32 15, i32 1
  %196 = ptrtoint ptr %length6.i384.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %length6.i384.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %197)
  %cmp7.not.i385.i = icmp eq i32 %197, 1
  br i1 %cmp7.not.i385.i, label %vcap_key_bit_set.exit381.i.for.body.i.preheader.i.i390.i_crit_edge, label %if.end.i387.i, !prof !27

vcap_key_bit_set.exit381.i.for.body.i.preheader.i.i390.i_crit_edge: ; preds = %vcap_key_bit_set.exit381.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i.i390.i

if.end.i387.i:                                    ; preds = %vcap_key_bit_set.exit381.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 315, i32 noundef 9, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %197)
  %cmp16.not.i.i.i386.i = icmp eq i32 %197, 0
  br i1 %cmp16.not.i.i.i386.i, label %if.end.i387.i.vcap_key_bit_set.exit428.i_crit_edge, label %if.end.i387.i.for.body.i.preheader.i.i390.i_crit_edge

if.end.i387.i.for.body.i.preheader.i.i390.i_crit_edge: ; preds = %if.end.i387.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i.i390.i

if.end.i387.i.vcap_key_bit_set.exit428.i_crit_edge: ; preds = %if.end.i387.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_bit_set.exit428.i

for.body.i.preheader.i.i390.i:                    ; preds = %if.end.i387.i.for.body.i.preheader.i.i390.i_crit_edge, %vcap_key_bit_set.exit381.i.for.body.i.preheader.i.i390.i_crit_edge
  %198 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %key_offset.i.i, align 4
  %add.i.i389.i = add i32 %199, %195
  br label %for.body.i.i.i407.i

for.body.i.i.i407.i:                              ; preds = %for.body.i.i.i407.i.for.body.i.i.i407.i_crit_edge, %for.body.i.preheader.i.i390.i
  %i.018.i.i.i391.i = phi i32 [ %inc.i.i.i404.i, %for.body.i.i.i407.i.for.body.i.i.i407.i_crit_edge ], [ 0, %for.body.i.preheader.i.i390.i ]
  %offset.addr.017.i.i.i392.i = phi i32 [ %inc5.i.i.i405.i, %for.body.i.i.i407.i.for.body.i.i.i407.i_crit_edge ], [ %add.i.i389.i, %for.body.i.preheader.i.i390.i ]
  %div15.i.i.i393.i = lshr i32 %offset.addr.017.i.i.i392.i, 5
  %arrayidx.i.i.i394.i = getelementptr i32, ptr %data.i, i32 %div15.i.i.i393.i
  %200 = ptrtoint ptr %arrayidx.i.i.i394.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx.i.i.i394.i, align 4
  %rem.i.i.i395.i = and i32 %offset.addr.017.i.i.i392.i, 31
  %shl.i.i.i396.i = shl nuw i32 1, %rem.i.i.i395.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.018.i.i.i391.i)
  %.not524.i = icmp eq i32 %i.018.i.i.i391.i, 0
  %or.i.i.i400.i = or i32 %shl.i.i.i396.i, %201
  %neg.i.i.i401.i = xor i32 %shl.i.i.i396.i, -1
  %and2.i.i.i402.i = and i32 %201, %neg.i.i.i401.i
  %v.0.i.i.i403.i = select i1 %.not524.i, i32 %or.i.i.i400.i, i32 %and2.i.i.i402.i
  %202 = ptrtoint ptr %arrayidx.i.i.i394.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %v.0.i.i.i403.i, ptr %arrayidx.i.i.i394.i, align 4
  %inc.i.i.i404.i = add nuw i32 %i.018.i.i.i391.i, 1
  %inc5.i.i.i405.i = add i32 %offset.addr.017.i.i.i392.i, 1
  %exitcond.not.i.i.i406.i = icmp eq i32 %inc.i.i.i404.i, %197
  br i1 %exitcond.not.i.i.i406.i, label %for.body.i28.preheader.i.i410.i, label %for.body.i.i.i407.i.for.body.i.i.i407.i_crit_edge

for.body.i.i.i407.i.for.body.i.i.i407.i_crit_edge: ; preds = %for.body.i.i.i407.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i407.i

for.body.i28.preheader.i.i410.i:                  ; preds = %for.body.i.i.i407.i
  %mask2.i.i408.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 1
  %203 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %key_offset.i.i, align 4
  %add5.i.i409.i = add i32 %204, %195
  br label %for.body.i28.i.i427.i

for.body.i28.i.i427.i:                            ; preds = %for.body.i28.i.i427.i.for.body.i28.i.i427.i_crit_edge, %for.body.i28.preheader.i.i410.i
  %i.018.i12.i.i411.i = phi i32 [ %inc.i25.i.i424.i, %for.body.i28.i.i427.i.for.body.i28.i.i427.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i410.i ]
  %offset.addr.017.i13.i.i412.i = phi i32 [ %inc5.i26.i.i425.i, %for.body.i28.i.i427.i.for.body.i28.i.i427.i_crit_edge ], [ %add5.i.i409.i, %for.body.i28.preheader.i.i410.i ]
  %div15.i14.i.i413.i = lshr i32 %offset.addr.017.i13.i.i412.i, 5
  %arrayidx.i15.i.i414.i = getelementptr i32, ptr %mask2.i.i408.i, i32 %div15.i14.i.i413.i
  %205 = ptrtoint ptr %arrayidx.i15.i.i414.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %arrayidx.i15.i.i414.i, align 4
  %rem.i16.i.i415.i = and i32 %offset.addr.017.i13.i.i412.i, 31
  %shl.i17.i.i416.i = shl nuw i32 1, %rem.i16.i.i415.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.018.i12.i.i411.i)
  %.not525.i = icmp eq i32 %i.018.i12.i.i411.i, 0
  %or.i21.i.i420.i = or i32 %shl.i17.i.i416.i, %206
  %neg.i22.i.i421.i = xor i32 %shl.i17.i.i416.i, -1
  %and2.i23.i.i422.i = and i32 %206, %neg.i22.i.i421.i
  %v.0.i24.i.i423.i = select i1 %.not525.i, i32 %or.i21.i.i420.i, i32 %and2.i23.i.i422.i
  %207 = ptrtoint ptr %arrayidx.i15.i.i414.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %v.0.i24.i.i423.i, ptr %arrayidx.i15.i.i414.i, align 4
  %inc.i25.i.i424.i = add nuw i32 %i.018.i12.i.i411.i, 1
  %inc5.i26.i.i425.i = add i32 %offset.addr.017.i13.i.i412.i, 1
  %exitcond.not.i27.i.i426.i = icmp eq i32 %inc.i25.i.i424.i, %197
  br i1 %exitcond.not.i27.i.i426.i, label %for.body.i28.i.i427.i.vcap_key_bit_set.exit428.i_crit_edge, label %for.body.i28.i.i427.i.for.body.i28.i.i427.i_crit_edge

for.body.i28.i.i427.i.for.body.i28.i.i427.i_crit_edge: ; preds = %for.body.i28.i.i427.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i427.i

for.body.i28.i.i427.i.vcap_key_bit_set.exit428.i_crit_edge: ; preds = %for.body.i28.i.i427.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_bit_set.exit428.i

vcap_key_bit_set.exit428.i:                       ; preds = %for.body.i28.i.i427.i.vcap_key_bit_set.exit428.i_crit_edge, %if.end.i387.i.vcap_key_bit_set.exit428.i_crit_edge
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i, ptr noundef nonnull %data.i, i32 noundef 23, ptr noundef nonnull %sip.i, ptr noundef %156) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %proto.sroa.0.0.copyload.i)
  %cmp44.i = icmp eq i8 %proto.sroa.0.0.copyload.i, 6
  call void @__sanitizer_cov_trace_const_cmp1(i8 17, i8 %proto.sroa.0.0.copyload.i)
  %cmp46.i = icmp eq i8 %proto.sroa.0.0.copyload.i, 17
  %or.cond.i = or i1 %cmp44.i, %cmp46.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %proto.sroa.6.0.copyload.i)
  %cmp48.i = icmp eq i8 %proto.sroa.6.0.copyload.i, -1
  %or.cond135.i = select i1 %or.cond.i, i1 %cmp48.i, i1 false
  %tcp_udp.0.i = select i1 %or.cond135.i, i32 2, i32 1
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i, ptr noundef nonnull %data.i, i32 noundef 24, i32 noundef %tcp_udp.0.i) #8
  %spec.store.select.i = select i1 %cmp44.i, i32 2, i32 1
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i, ptr noundef nonnull %data.i, i32 noundef 25, i32 noundef %spec.store.select.i) #8
  call fastcc void @vcap_key_l4_port_set(ptr noundef %arrayidx.i, ptr noundef nonnull %data.i, i32 noundef 26, ptr noundef %sport29.i) #8
  call fastcc void @vcap_key_l4_port_set(ptr noundef %arrayidx.i, ptr noundef nonnull %data.i, i32 noundef 16, ptr noundef %dport30.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sip.i) #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %vcap_key_bit_set.exit428.i, %sw.bb.i, %vcap_key_set.exit292.i.sw.epilog.i_crit_edge
  %208 = ptrtoint ptr %keys.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %keys.i.i, align 4
  %210 = ptrtoint ptr %209 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %209, align 4
  %length6.i430.i = getelementptr %struct.vcap_field, ptr %209, i32 0, i32 1
  %212 = ptrtoint ptr %length6.i430.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %length6.i430.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %213)
  %cmp7.not.i431.i = icmp eq i32 %213, 1
  br i1 %cmp7.not.i431.i, label %sw.epilog.i.for.body.i.preheader.i.i436.i_crit_edge, label %if.end.i433.i, !prof !27

sw.epilog.i.for.body.i.preheader.i.i436.i_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i.i436.i

if.end.i433.i:                                    ; preds = %sw.epilog.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 315, i32 noundef 9, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %213)
  %cmp16.not.i.i.i432.i = icmp eq i32 %213, 0
  br i1 %cmp16.not.i.i.i432.i, label %if.end.i433.i.vcap_key_bit_set.exit471.i_crit_edge, label %if.end.i433.i.for.body.i.preheader.i.i436.i_crit_edge

if.end.i433.i.for.body.i.preheader.i.i436.i_crit_edge: ; preds = %if.end.i433.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i.i436.i

if.end.i433.i.vcap_key_bit_set.exit471.i_crit_edge: ; preds = %if.end.i433.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_bit_set.exit471.i

for.body.i.preheader.i.i436.i:                    ; preds = %if.end.i433.i.for.body.i.preheader.i.i436.i_crit_edge, %sw.epilog.i.for.body.i.preheader.i.i436.i_crit_edge
  %214 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %key_offset.i.i, align 4
  %add.i.i435.i = add i32 %215, %211
  br label %for.body.i.i.i450.i

for.body.i.i.i450.i:                              ; preds = %for.body.i.i.i450.i.for.body.i.i.i450.i_crit_edge, %for.body.i.preheader.i.i436.i
  %i.018.i.i.i437.i = phi i32 [ %inc.i.i.i447.i, %for.body.i.i.i450.i.for.body.i.i.i450.i_crit_edge ], [ 0, %for.body.i.preheader.i.i436.i ]
  %offset.addr.017.i.i.i438.i = phi i32 [ %inc5.i.i.i448.i, %for.body.i.i.i450.i.for.body.i.i.i450.i_crit_edge ], [ %add.i.i435.i, %for.body.i.preheader.i.i436.i ]
  %div15.i.i.i439.i = lshr i32 %offset.addr.017.i.i.i438.i, 5
  %arrayidx.i.i.i440.i = getelementptr i32, ptr %data.i, i32 %div15.i.i.i439.i
  %216 = ptrtoint ptr %arrayidx.i.i.i440.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx.i.i.i440.i, align 4
  %rem.i.i.i441.i = and i32 %offset.addr.017.i.i.i438.i, 31
  %shl.i.i.i442.i = shl nuw i32 1, %rem.i.i.i441.i
  %neg.i.i.i445.i = xor i32 %shl.i.i.i442.i, -1
  %and2.i.i.i446.i = and i32 %217, %neg.i.i.i445.i
  store i32 %and2.i.i.i446.i, ptr %arrayidx.i.i.i440.i, align 4
  %inc.i.i.i447.i = add nuw i32 %i.018.i.i.i437.i, 1
  %inc5.i.i.i448.i = add i32 %offset.addr.017.i.i.i438.i, 1
  %exitcond.not.i.i.i449.i = icmp eq i32 %inc.i.i.i447.i, %213
  br i1 %exitcond.not.i.i.i449.i, label %for.body.i28.preheader.i.i453.i, label %for.body.i.i.i450.i.for.body.i.i.i450.i_crit_edge

for.body.i.i.i450.i.for.body.i.i.i450.i_crit_edge: ; preds = %for.body.i.i.i450.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i450.i

for.body.i28.preheader.i.i453.i:                  ; preds = %for.body.i.i.i450.i
  %mask2.i.i451.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 1
  %218 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %key_offset.i.i, align 4
  %add5.i.i452.i = add i32 %219, %211
  br label %for.body.i28.i.i470.i

for.body.i28.i.i470.i:                            ; preds = %for.body.i28.i.i470.i.for.body.i28.i.i470.i_crit_edge, %for.body.i28.preheader.i.i453.i
  %i.018.i12.i.i454.i = phi i32 [ %inc.i25.i.i467.i, %for.body.i28.i.i470.i.for.body.i28.i.i470.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i453.i ]
  %offset.addr.017.i13.i.i455.i = phi i32 [ %inc5.i26.i.i468.i, %for.body.i28.i.i470.i.for.body.i28.i.i470.i_crit_edge ], [ %add5.i.i452.i, %for.body.i28.preheader.i.i453.i ]
  %div15.i14.i.i456.i = lshr i32 %offset.addr.017.i13.i.i455.i, 5
  %arrayidx.i15.i.i457.i = getelementptr i32, ptr %mask2.i.i451.i, i32 %div15.i14.i.i456.i
  %220 = ptrtoint ptr %arrayidx.i15.i.i457.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx.i15.i.i457.i, align 4
  %rem.i16.i.i458.i = and i32 %offset.addr.017.i13.i.i455.i, 31
  %shl.i17.i.i459.i = shl nuw i32 1, %rem.i16.i.i458.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.018.i12.i.i454.i)
  %.not526.i = icmp eq i32 %i.018.i12.i.i454.i, 0
  %or.i21.i.i463.i = or i32 %shl.i17.i.i459.i, %221
  %neg.i22.i.i464.i = xor i32 %shl.i17.i.i459.i, -1
  %and2.i23.i.i465.i = and i32 %221, %neg.i22.i.i464.i
  %v.0.i24.i.i466.i = select i1 %.not526.i, i32 %or.i21.i.i463.i, i32 %and2.i23.i.i465.i
  %222 = ptrtoint ptr %arrayidx.i15.i.i457.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %v.0.i24.i.i466.i, ptr %arrayidx.i15.i.i457.i, align 4
  %inc.i25.i.i467.i = add nuw i32 %i.018.i12.i.i454.i, 1
  %inc5.i26.i.i468.i = add i32 %offset.addr.017.i13.i.i455.i, 1
  %exitcond.not.i27.i.i469.i = icmp eq i32 %inc.i25.i.i467.i, %213
  br i1 %exitcond.not.i27.i.i469.i, label %for.body.i28.i.i470.i.vcap_key_bit_set.exit471.i_crit_edge, label %for.body.i28.i.i470.i.for.body.i28.i.i470.i_crit_edge

for.body.i28.i.i470.i.for.body.i28.i.i470.i_crit_edge: ; preds = %for.body.i28.i.i470.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i470.i

for.body.i28.i.i470.i.vcap_key_bit_set.exit471.i_crit_edge: ; preds = %for.body.i28.i.i470.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_bit_set.exit471.i

vcap_key_bit_set.exit471.i:                       ; preds = %for.body.i28.i.i470.i.vcap_key_bit_set.exit471.i_crit_edge, %if.end.i433.i.vcap_key_bit_set.exit471.i_crit_edge
  %223 = ptrtoint ptr %vcap1.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %vcap1.i, align 4
  %action.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8
  %225 = ptrtoint ptr %action.i.i to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %action.i.i, align 4, !range !31
  %227 = zext i8 %226 to i32
  %actions.i.i.i = getelementptr %struct.vcap_props, ptr %224, i32 1, i32 14
  %228 = ptrtoint ptr %actions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %actions.i.i.i, align 4
  %length4.i.i.i = getelementptr %struct.vcap_field, ptr %229, i32 9, i32 1
  %230 = ptrtoint ptr %length4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %length4.i.i.i, align 4
  %action.i.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %231)
  %cmp16.not.i.i.i472.i = icmp eq i32 %231, 0
  br i1 %cmp16.not.i.i.i472.i, label %vcap_key_bit_set.exit471.i.vcap_action_set.exit.i.i_crit_edge, label %for.body.i.preheader.i.i474.i

vcap_key_bit_set.exit471.i.vcap_action_set.exit.i.i_crit_edge: ; preds = %vcap_key_bit_set.exit471.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit.i.i

for.body.i.preheader.i.i474.i:                    ; preds = %vcap_key_bit_set.exit471.i
  %232 = ptrtoint ptr %action_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %action_offset.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.vcap_field, ptr %229, i32 9
  %234 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i473.i = add i32 %235, %233
  br label %for.body.i.i.i491.i

for.body.i.i.i491.i:                              ; preds = %for.body.i.i.i491.i.for.body.i.i.i491.i_crit_edge, %for.body.i.preheader.i.i474.i
  %i.018.i.i.i475.i = phi i32 [ %inc.i.i.i488.i, %for.body.i.i.i491.i.for.body.i.i.i491.i_crit_edge ], [ 0, %for.body.i.preheader.i.i474.i ]
  %offset.addr.017.i.i.i476.i = phi i32 [ %inc5.i.i.i489.i, %for.body.i.i.i491.i.for.body.i.i.i491.i_crit_edge ], [ %add.i.i473.i, %for.body.i.preheader.i.i474.i ]
  %div15.i.i.i477.i = lshr i32 %offset.addr.017.i.i.i476.i, 5
  %arrayidx.i.i.i478.i = getelementptr i32, ptr %action.i.i.i, i32 %div15.i.i.i477.i
  %236 = ptrtoint ptr %arrayidx.i.i.i478.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %arrayidx.i.i.i478.i, align 4
  %rem.i.i.i479.i = and i32 %offset.addr.017.i.i.i476.i, 31
  %shl.i.i.i480.i = shl nuw i32 1, %rem.i.i.i479.i
  %shl1.i.i.i481.i = shl nuw i32 1, %i.018.i.i.i475.i
  %and.i.i.i482.i = and i32 %shl1.i.i.i481.i, %227
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i482.i)
  %tobool.not.i.i.i483.i = icmp eq i32 %and.i.i.i482.i, 0
  %or.i.i.i484.i = or i32 %shl.i.i.i480.i, %237
  %neg.i.i.i485.i = xor i32 %shl.i.i.i480.i, -1
  %and2.i.i.i486.i = and i32 %237, %neg.i.i.i485.i
  %v.0.i.i.i487.i = select i1 %tobool.not.i.i.i483.i, i32 %and2.i.i.i486.i, i32 %or.i.i.i484.i
  %238 = ptrtoint ptr %arrayidx.i.i.i478.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %v.0.i.i.i487.i, ptr %arrayidx.i.i.i478.i, align 4
  %inc.i.i.i488.i = add nuw i32 %i.018.i.i.i475.i, 1
  %inc5.i.i.i489.i = add i32 %offset.addr.017.i.i.i476.i, 1
  %exitcond.not.i.i.i490.i = icmp eq i32 %inc.i.i.i488.i, %231
  br i1 %exitcond.not.i.i.i490.i, label %for.body.i.i.i491.i.vcap_action_set.exit.i.i_crit_edge, label %for.body.i.i.i491.i.for.body.i.i.i491.i_crit_edge

for.body.i.i.i491.i.for.body.i.i.i491.i_crit_edge: ; preds = %for.body.i.i.i491.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i491.i

for.body.i.i.i491.i.vcap_action_set.exit.i.i_crit_edge: ; preds = %for.body.i.i.i491.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit.i.i

vcap_action_set.exit.i.i:                         ; preds = %for.body.i.i.i491.i.vcap_action_set.exit.i.i_crit_edge, %vcap_key_bit_set.exit471.i.vcap_action_set.exit.i.i_crit_edge
  %vid.i.i = getelementptr inbounds %struct.anon.171, ptr %action.i.i, i32 0, i32 1
  %239 = ptrtoint ptr %vid.i.i to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %vid.i.i, align 2
  %conv2.i492.i = zext i16 %240 to i32
  %241 = ptrtoint ptr %actions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %actions.i.i.i, align 4
  %length4.i45.i.i = getelementptr %struct.vcap_field, ptr %242, i32 10, i32 1
  %243 = ptrtoint ptr %length4.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %length4.i45.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %244)
  %cmp16.not.i.i47.i.i = icmp eq i32 %244, 0
  br i1 %cmp16.not.i.i47.i.i, label %vcap_action_set.exit.i.i.vcap_action_set.exit69.i.i_crit_edge, label %for.body.i.preheader.i51.i.i

vcap_action_set.exit.i.i.vcap_action_set.exit69.i.i_crit_edge: ; preds = %vcap_action_set.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit69.i.i

for.body.i.preheader.i51.i.i:                     ; preds = %vcap_action_set.exit.i.i
  %245 = ptrtoint ptr %action_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %action_offset.i.i, align 4
  %arrayidx.i49.i.i = getelementptr %struct.vcap_field, ptr %242, i32 10
  %247 = ptrtoint ptr %arrayidx.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx.i49.i.i, align 4
  %add.i50.i.i = add i32 %248, %246
  br label %for.body.i.i68.i.i

for.body.i.i68.i.i:                               ; preds = %for.body.i.i68.i.i.for.body.i.i68.i.i_crit_edge, %for.body.i.preheader.i51.i.i
  %i.018.i.i52.i.i = phi i32 [ %inc.i.i65.i.i, %for.body.i.i68.i.i.for.body.i.i68.i.i_crit_edge ], [ 0, %for.body.i.preheader.i51.i.i ]
  %offset.addr.017.i.i53.i.i = phi i32 [ %inc5.i.i66.i.i, %for.body.i.i68.i.i.for.body.i.i68.i.i_crit_edge ], [ %add.i50.i.i, %for.body.i.preheader.i51.i.i ]
  %div15.i.i54.i.i = lshr i32 %offset.addr.017.i.i53.i.i, 5
  %arrayidx.i.i55.i.i = getelementptr i32, ptr %action.i.i.i, i32 %div15.i.i54.i.i
  %249 = ptrtoint ptr %arrayidx.i.i55.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx.i.i55.i.i, align 4
  %rem.i.i56.i.i = and i32 %offset.addr.017.i.i53.i.i, 31
  %shl.i.i57.i.i = shl nuw i32 1, %rem.i.i56.i.i
  %shl1.i.i58.i.i = shl nuw i32 1, %i.018.i.i52.i.i
  %and.i.i59.i.i = and i32 %shl1.i.i58.i.i, %conv2.i492.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i59.i.i)
  %tobool.not.i.i60.i.i = icmp eq i32 %and.i.i59.i.i, 0
  %or.i.i61.i.i = or i32 %shl.i.i57.i.i, %250
  %neg.i.i62.i.i = xor i32 %shl.i.i57.i.i, -1
  %and2.i.i63.i.i = and i32 %250, %neg.i.i62.i.i
  %v.0.i.i64.i.i = select i1 %tobool.not.i.i60.i.i, i32 %and2.i.i63.i.i, i32 %or.i.i61.i.i
  %251 = ptrtoint ptr %arrayidx.i.i55.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %v.0.i.i64.i.i, ptr %arrayidx.i.i55.i.i, align 4
  %inc.i.i65.i.i = add nuw i32 %i.018.i.i52.i.i, 1
  %inc5.i.i66.i.i = add i32 %offset.addr.017.i.i53.i.i, 1
  %exitcond.not.i.i67.i.i = icmp eq i32 %inc.i.i65.i.i, %244
  br i1 %exitcond.not.i.i67.i.i, label %for.body.i.i68.i.i.vcap_action_set.exit69.i.i_crit_edge, label %for.body.i.i68.i.i.for.body.i.i68.i.i_crit_edge

for.body.i.i68.i.i.for.body.i.i68.i.i_crit_edge:  ; preds = %for.body.i.i68.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i68.i.i

for.body.i.i68.i.i.vcap_action_set.exit69.i.i_crit_edge: ; preds = %for.body.i.i68.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit69.i.i

vcap_action_set.exit69.i.i:                       ; preds = %for.body.i.i68.i.i.vcap_action_set.exit69.i.i_crit_edge, %vcap_action_set.exit.i.i.vcap_action_set.exit69.i.i_crit_edge
  %vlan_pop_cnt_ena.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 1
  %252 = ptrtoint ptr %vlan_pop_cnt_ena.i.i to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %vlan_pop_cnt_ena.i.i, align 4, !range !31
  %254 = zext i8 %253 to i32
  %255 = ptrtoint ptr %actions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %actions.i.i.i, align 4
  %length4.i71.i.i = getelementptr %struct.vcap_field, ptr %256, i32 16, i32 1
  %257 = ptrtoint ptr %length4.i71.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %length4.i71.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %cmp16.not.i.i73.i.i = icmp eq i32 %258, 0
  br i1 %cmp16.not.i.i73.i.i, label %vcap_action_set.exit69.i.i.vcap_action_set.exit95.i.i_crit_edge, label %for.body.i.preheader.i77.i.i

vcap_action_set.exit69.i.i.vcap_action_set.exit95.i.i_crit_edge: ; preds = %vcap_action_set.exit69.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit95.i.i

for.body.i.preheader.i77.i.i:                     ; preds = %vcap_action_set.exit69.i.i
  %259 = ptrtoint ptr %action_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %action_offset.i.i, align 4
  %arrayidx.i75.i.i = getelementptr %struct.vcap_field, ptr %256, i32 16
  %261 = ptrtoint ptr %arrayidx.i75.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %arrayidx.i75.i.i, align 4
  %add.i76.i.i = add i32 %262, %260
  br label %for.body.i.i94.i.i

for.body.i.i94.i.i:                               ; preds = %for.body.i.i94.i.i.for.body.i.i94.i.i_crit_edge, %for.body.i.preheader.i77.i.i
  %i.018.i.i78.i.i = phi i32 [ %inc.i.i91.i.i, %for.body.i.i94.i.i.for.body.i.i94.i.i_crit_edge ], [ 0, %for.body.i.preheader.i77.i.i ]
  %offset.addr.017.i.i79.i.i = phi i32 [ %inc5.i.i92.i.i, %for.body.i.i94.i.i.for.body.i.i94.i.i_crit_edge ], [ %add.i76.i.i, %for.body.i.preheader.i77.i.i ]
  %div15.i.i80.i.i = lshr i32 %offset.addr.017.i.i79.i.i, 5
  %arrayidx.i.i81.i.i = getelementptr i32, ptr %action.i.i.i, i32 %div15.i.i80.i.i
  %263 = ptrtoint ptr %arrayidx.i.i81.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %arrayidx.i.i81.i.i, align 4
  %rem.i.i82.i.i = and i32 %offset.addr.017.i.i79.i.i, 31
  %shl.i.i83.i.i = shl nuw i32 1, %rem.i.i82.i.i
  %shl1.i.i84.i.i = shl nuw i32 1, %i.018.i.i78.i.i
  %and.i.i85.i.i = and i32 %shl1.i.i84.i.i, %254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i85.i.i)
  %tobool.not.i.i86.i.i = icmp eq i32 %and.i.i85.i.i, 0
  %or.i.i87.i.i = or i32 %shl.i.i83.i.i, %264
  %neg.i.i88.i.i = xor i32 %shl.i.i83.i.i, -1
  %and2.i.i89.i.i = and i32 %264, %neg.i.i88.i.i
  %v.0.i.i90.i.i = select i1 %tobool.not.i.i86.i.i, i32 %and2.i.i89.i.i, i32 %or.i.i87.i.i
  %265 = ptrtoint ptr %arrayidx.i.i81.i.i to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %v.0.i.i90.i.i, ptr %arrayidx.i.i81.i.i, align 4
  %inc.i.i91.i.i = add nuw i32 %i.018.i.i78.i.i, 1
  %inc5.i.i92.i.i = add i32 %offset.addr.017.i.i79.i.i, 1
  %exitcond.not.i.i93.i.i = icmp eq i32 %inc.i.i91.i.i, %258
  br i1 %exitcond.not.i.i93.i.i, label %for.body.i.i94.i.i.vcap_action_set.exit95.i.i_crit_edge, label %for.body.i.i94.i.i.for.body.i.i94.i.i_crit_edge

for.body.i.i94.i.i.for.body.i.i94.i.i_crit_edge:  ; preds = %for.body.i.i94.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i94.i.i

for.body.i.i94.i.i.vcap_action_set.exit95.i.i_crit_edge: ; preds = %for.body.i.i94.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit95.i.i

vcap_action_set.exit95.i.i:                       ; preds = %for.body.i.i94.i.i.vcap_action_set.exit95.i.i_crit_edge, %vcap_action_set.exit69.i.i.vcap_action_set.exit95.i.i_crit_edge
  %vlan_pop_cnt.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 2
  %266 = ptrtoint ptr %vlan_pop_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %vlan_pop_cnt.i.i, align 4
  %268 = ptrtoint ptr %actions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %actions.i.i.i, align 4
  %length4.i97.i.i = getelementptr %struct.vcap_field, ptr %269, i32 17, i32 1
  %270 = ptrtoint ptr %length4.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %length4.i97.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %cmp16.not.i.i99.i.i = icmp eq i32 %271, 0
  br i1 %cmp16.not.i.i99.i.i, label %vcap_action_set.exit95.i.i.vcap_action_set.exit121.i.i_crit_edge, label %for.body.i.preheader.i103.i.i

vcap_action_set.exit95.i.i.vcap_action_set.exit121.i.i_crit_edge: ; preds = %vcap_action_set.exit95.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit121.i.i

for.body.i.preheader.i103.i.i:                    ; preds = %vcap_action_set.exit95.i.i
  %272 = ptrtoint ptr %action_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %action_offset.i.i, align 4
  %arrayidx.i101.i.i = getelementptr %struct.vcap_field, ptr %269, i32 17
  %274 = ptrtoint ptr %arrayidx.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %arrayidx.i101.i.i, align 4
  %add.i102.i.i = add i32 %275, %273
  br label %for.body.i.i120.i.i

for.body.i.i120.i.i:                              ; preds = %for.body.i.i120.i.i.for.body.i.i120.i.i_crit_edge, %for.body.i.preheader.i103.i.i
  %i.018.i.i104.i.i = phi i32 [ %inc.i.i117.i.i, %for.body.i.i120.i.i.for.body.i.i120.i.i_crit_edge ], [ 0, %for.body.i.preheader.i103.i.i ]
  %offset.addr.017.i.i105.i.i = phi i32 [ %inc5.i.i118.i.i, %for.body.i.i120.i.i.for.body.i.i120.i.i_crit_edge ], [ %add.i102.i.i, %for.body.i.preheader.i103.i.i ]
  %div15.i.i106.i.i = lshr i32 %offset.addr.017.i.i105.i.i, 5
  %arrayidx.i.i107.i.i = getelementptr i32, ptr %action.i.i.i, i32 %div15.i.i106.i.i
  %276 = ptrtoint ptr %arrayidx.i.i107.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %arrayidx.i.i107.i.i, align 4
  %rem.i.i108.i.i = and i32 %offset.addr.017.i.i105.i.i, 31
  %shl.i.i109.i.i = shl nuw i32 1, %rem.i.i108.i.i
  %shl1.i.i110.i.i = shl nuw i32 1, %i.018.i.i104.i.i
  %and.i.i111.i.i = and i32 %shl1.i.i110.i.i, %267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i111.i.i)
  %tobool.not.i.i112.i.i = icmp eq i32 %and.i.i111.i.i, 0
  %or.i.i113.i.i = or i32 %shl.i.i109.i.i, %277
  %neg.i.i114.i.i = xor i32 %shl.i.i109.i.i, -1
  %and2.i.i115.i.i = and i32 %277, %neg.i.i114.i.i
  %v.0.i.i116.i.i = select i1 %tobool.not.i.i112.i.i, i32 %and2.i.i115.i.i, i32 %or.i.i113.i.i
  %278 = ptrtoint ptr %arrayidx.i.i107.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %v.0.i.i116.i.i, ptr %arrayidx.i.i107.i.i, align 4
  %inc.i.i117.i.i = add nuw i32 %i.018.i.i104.i.i, 1
  %inc5.i.i118.i.i = add i32 %offset.addr.017.i.i105.i.i, 1
  %exitcond.not.i.i119.i.i = icmp eq i32 %inc.i.i117.i.i, %271
  br i1 %exitcond.not.i.i119.i.i, label %for.body.i.i120.i.i.vcap_action_set.exit121.i.i_crit_edge, label %for.body.i.i120.i.i.for.body.i.i120.i.i_crit_edge

for.body.i.i120.i.i.for.body.i.i120.i.i_crit_edge: ; preds = %for.body.i.i120.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i120.i.i

for.body.i.i120.i.i.vcap_action_set.exit121.i.i_crit_edge: ; preds = %for.body.i.i120.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit121.i.i

vcap_action_set.exit121.i.i:                      ; preds = %for.body.i.i120.i.i.vcap_action_set.exit121.i.i_crit_edge, %vcap_action_set.exit95.i.i.vcap_action_set.exit121.i.i_crit_edge
  %pcp_dei_ena.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 3
  %279 = ptrtoint ptr %pcp_dei_ena.i.i to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %pcp_dei_ena.i.i, align 4, !range !31
  %281 = zext i8 %280 to i32
  %282 = ptrtoint ptr %actions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %actions.i.i.i, align 4
  %length4.i123.i.i = getelementptr %struct.vcap_field, ptr %283, i32 13, i32 1
  %284 = ptrtoint ptr %length4.i123.i.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %length4.i123.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %cmp16.not.i.i125.i.i = icmp eq i32 %285, 0
  br i1 %cmp16.not.i.i125.i.i, label %vcap_action_set.exit121.i.i.vcap_action_set.exit147.i.i_crit_edge, label %for.body.i.preheader.i129.i.i

vcap_action_set.exit121.i.i.vcap_action_set.exit147.i.i_crit_edge: ; preds = %vcap_action_set.exit121.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit147.i.i

for.body.i.preheader.i129.i.i:                    ; preds = %vcap_action_set.exit121.i.i
  %286 = ptrtoint ptr %action_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %action_offset.i.i, align 4
  %arrayidx.i127.i.i = getelementptr %struct.vcap_field, ptr %283, i32 13
  %288 = ptrtoint ptr %arrayidx.i127.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx.i127.i.i, align 4
  %add.i128.i.i = add i32 %289, %287
  br label %for.body.i.i146.i.i

for.body.i.i146.i.i:                              ; preds = %for.body.i.i146.i.i.for.body.i.i146.i.i_crit_edge, %for.body.i.preheader.i129.i.i
  %i.018.i.i130.i.i = phi i32 [ %inc.i.i143.i.i, %for.body.i.i146.i.i.for.body.i.i146.i.i_crit_edge ], [ 0, %for.body.i.preheader.i129.i.i ]
  %offset.addr.017.i.i131.i.i = phi i32 [ %inc5.i.i144.i.i, %for.body.i.i146.i.i.for.body.i.i146.i.i_crit_edge ], [ %add.i128.i.i, %for.body.i.preheader.i129.i.i ]
  %div15.i.i132.i.i = lshr i32 %offset.addr.017.i.i131.i.i, 5
  %arrayidx.i.i133.i.i = getelementptr i32, ptr %action.i.i.i, i32 %div15.i.i132.i.i
  %290 = ptrtoint ptr %arrayidx.i.i133.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx.i.i133.i.i, align 4
  %rem.i.i134.i.i = and i32 %offset.addr.017.i.i131.i.i, 31
  %shl.i.i135.i.i = shl nuw i32 1, %rem.i.i134.i.i
  %shl1.i.i136.i.i = shl nuw i32 1, %i.018.i.i130.i.i
  %and.i.i137.i.i = and i32 %shl1.i.i136.i.i, %281
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i137.i.i)
  %tobool.not.i.i138.i.i = icmp eq i32 %and.i.i137.i.i, 0
  %or.i.i139.i.i = or i32 %shl.i.i135.i.i, %291
  %neg.i.i140.i.i = xor i32 %shl.i.i135.i.i, -1
  %and2.i.i141.i.i = and i32 %291, %neg.i.i140.i.i
  %v.0.i.i142.i.i = select i1 %tobool.not.i.i138.i.i, i32 %and2.i.i141.i.i, i32 %or.i.i139.i.i
  %292 = ptrtoint ptr %arrayidx.i.i133.i.i to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %v.0.i.i142.i.i, ptr %arrayidx.i.i133.i.i, align 4
  %inc.i.i143.i.i = add nuw i32 %i.018.i.i130.i.i, 1
  %inc5.i.i144.i.i = add i32 %offset.addr.017.i.i131.i.i, 1
  %exitcond.not.i.i145.i.i = icmp eq i32 %inc.i.i143.i.i, %285
  br i1 %exitcond.not.i.i145.i.i, label %for.body.i.i146.i.i.vcap_action_set.exit147.i.i_crit_edge, label %for.body.i.i146.i.i.for.body.i.i146.i.i_crit_edge

for.body.i.i146.i.i.for.body.i.i146.i.i_crit_edge: ; preds = %for.body.i.i146.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i146.i.i

for.body.i.i146.i.i.vcap_action_set.exit147.i.i_crit_edge: ; preds = %for.body.i.i146.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit147.i.i

vcap_action_set.exit147.i.i:                      ; preds = %for.body.i.i146.i.i.vcap_action_set.exit147.i.i_crit_edge, %vcap_action_set.exit121.i.i.vcap_action_set.exit147.i.i_crit_edge
  %pcp.i.i = getelementptr inbounds %struct.anon.171, ptr %action.i.i, i32 0, i32 5
  %293 = ptrtoint ptr %pcp.i.i to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %pcp.i.i, align 1
  %conv7.i.i = zext i8 %294 to i32
  %295 = ptrtoint ptr %actions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %actions.i.i.i, align 4
  %length4.i149.i.i = getelementptr %struct.vcap_field, ptr %296, i32 14, i32 1
  %297 = ptrtoint ptr %length4.i149.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %length4.i149.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %cmp16.not.i.i151.i.i = icmp eq i32 %298, 0
  br i1 %cmp16.not.i.i151.i.i, label %vcap_action_set.exit147.i.i.vcap_action_set.exit173.i.i_crit_edge, label %for.body.i.preheader.i155.i.i

vcap_action_set.exit147.i.i.vcap_action_set.exit173.i.i_crit_edge: ; preds = %vcap_action_set.exit147.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit173.i.i

for.body.i.preheader.i155.i.i:                    ; preds = %vcap_action_set.exit147.i.i
  %299 = ptrtoint ptr %action_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load i32, ptr %action_offset.i.i, align 4
  %arrayidx.i153.i.i = getelementptr %struct.vcap_field, ptr %296, i32 14
  %301 = ptrtoint ptr %arrayidx.i153.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx.i153.i.i, align 4
  %add.i154.i.i = add i32 %302, %300
  br label %for.body.i.i172.i.i

for.body.i.i172.i.i:                              ; preds = %for.body.i.i172.i.i.for.body.i.i172.i.i_crit_edge, %for.body.i.preheader.i155.i.i
  %i.018.i.i156.i.i = phi i32 [ %inc.i.i169.i.i, %for.body.i.i172.i.i.for.body.i.i172.i.i_crit_edge ], [ 0, %for.body.i.preheader.i155.i.i ]
  %offset.addr.017.i.i157.i.i = phi i32 [ %inc5.i.i170.i.i, %for.body.i.i172.i.i.for.body.i.i172.i.i_crit_edge ], [ %add.i154.i.i, %for.body.i.preheader.i155.i.i ]
  %div15.i.i158.i.i = lshr i32 %offset.addr.017.i.i157.i.i, 5
  %arrayidx.i.i159.i.i = getelementptr i32, ptr %action.i.i.i, i32 %div15.i.i158.i.i
  %303 = ptrtoint ptr %arrayidx.i.i159.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %arrayidx.i.i159.i.i, align 4
  %rem.i.i160.i.i = and i32 %offset.addr.017.i.i157.i.i, 31
  %shl.i.i161.i.i = shl nuw i32 1, %rem.i.i160.i.i
  %shl1.i.i162.i.i = shl nuw i32 1, %i.018.i.i156.i.i
  %and.i.i163.i.i = and i32 %shl1.i.i162.i.i, %conv7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i163.i.i)
  %tobool.not.i.i164.i.i = icmp eq i32 %and.i.i163.i.i, 0
  %or.i.i165.i.i = or i32 %shl.i.i161.i.i, %304
  %neg.i.i166.i.i = xor i32 %shl.i.i161.i.i, -1
  %and2.i.i167.i.i = and i32 %304, %neg.i.i166.i.i
  %v.0.i.i168.i.i = select i1 %tobool.not.i.i164.i.i, i32 %and2.i.i167.i.i, i32 %or.i.i165.i.i
  %305 = ptrtoint ptr %arrayidx.i.i159.i.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 %v.0.i.i168.i.i, ptr %arrayidx.i.i159.i.i, align 4
  %inc.i.i169.i.i = add nuw i32 %i.018.i.i156.i.i, 1
  %inc5.i.i170.i.i = add i32 %offset.addr.017.i.i157.i.i, 1
  %exitcond.not.i.i171.i.i = icmp eq i32 %inc.i.i169.i.i, %298
  br i1 %exitcond.not.i.i171.i.i, label %for.body.i.i172.i.i.vcap_action_set.exit173.i.i_crit_edge, label %for.body.i.i172.i.i.for.body.i.i172.i.i_crit_edge

for.body.i.i172.i.i.for.body.i.i172.i.i_crit_edge: ; preds = %for.body.i.i172.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i172.i.i

for.body.i.i172.i.i.vcap_action_set.exit173.i.i_crit_edge: ; preds = %for.body.i.i172.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit173.i.i

vcap_action_set.exit173.i.i:                      ; preds = %for.body.i.i172.i.i.vcap_action_set.exit173.i.i_crit_edge, %vcap_action_set.exit147.i.i.vcap_action_set.exit173.i.i_crit_edge
  %dei.i.i = getelementptr inbounds %struct.anon.171, ptr %action.i.i, i32 0, i32 6
  %306 = ptrtoint ptr %dei.i.i to i32
  call void @__asan_load1_noabort(i32 %306)
  %307 = load i8, ptr %dei.i.i, align 2
  %conv8.i.i = zext i8 %307 to i32
  %308 = ptrtoint ptr %actions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %actions.i.i.i, align 4
  %length4.i175.i.i = getelementptr %struct.vcap_field, ptr %309, i32 15, i32 1
  %310 = ptrtoint ptr %length4.i175.i.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %length4.i175.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %311)
  %cmp16.not.i.i177.i.i = icmp eq i32 %311, 0
  br i1 %cmp16.not.i.i177.i.i, label %vcap_action_set.exit173.i.i.vcap_action_set.exit199.i.i_crit_edge, label %for.body.i.preheader.i181.i.i

vcap_action_set.exit173.i.i.vcap_action_set.exit199.i.i_crit_edge: ; preds = %vcap_action_set.exit173.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit199.i.i

for.body.i.preheader.i181.i.i:                    ; preds = %vcap_action_set.exit173.i.i
  %312 = ptrtoint ptr %action_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %action_offset.i.i, align 4
  %arrayidx.i179.i.i = getelementptr %struct.vcap_field, ptr %309, i32 15
  %314 = ptrtoint ptr %arrayidx.i179.i.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %arrayidx.i179.i.i, align 4
  %add.i180.i.i = add i32 %315, %313
  br label %for.body.i.i198.i.i

for.body.i.i198.i.i:                              ; preds = %for.body.i.i198.i.i.for.body.i.i198.i.i_crit_edge, %for.body.i.preheader.i181.i.i
  %i.018.i.i182.i.i = phi i32 [ %inc.i.i195.i.i, %for.body.i.i198.i.i.for.body.i.i198.i.i_crit_edge ], [ 0, %for.body.i.preheader.i181.i.i ]
  %offset.addr.017.i.i183.i.i = phi i32 [ %inc5.i.i196.i.i, %for.body.i.i198.i.i.for.body.i.i198.i.i_crit_edge ], [ %add.i180.i.i, %for.body.i.preheader.i181.i.i ]
  %div15.i.i184.i.i = lshr i32 %offset.addr.017.i.i183.i.i, 5
  %arrayidx.i.i185.i.i = getelementptr i32, ptr %action.i.i.i, i32 %div15.i.i184.i.i
  %316 = ptrtoint ptr %arrayidx.i.i185.i.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx.i.i185.i.i, align 4
  %rem.i.i186.i.i = and i32 %offset.addr.017.i.i183.i.i, 31
  %shl.i.i187.i.i = shl nuw i32 1, %rem.i.i186.i.i
  %shl1.i.i188.i.i = shl nuw i32 1, %i.018.i.i182.i.i
  %and.i.i189.i.i = and i32 %shl1.i.i188.i.i, %conv8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i189.i.i)
  %tobool.not.i.i190.i.i = icmp eq i32 %and.i.i189.i.i, 0
  %or.i.i191.i.i = or i32 %shl.i.i187.i.i, %317
  %neg.i.i192.i.i = xor i32 %shl.i.i187.i.i, -1
  %and2.i.i193.i.i = and i32 %317, %neg.i.i192.i.i
  %v.0.i.i194.i.i = select i1 %tobool.not.i.i190.i.i, i32 %and2.i.i193.i.i, i32 %or.i.i191.i.i
  %318 = ptrtoint ptr %arrayidx.i.i185.i.i to i32
  call void @__asan_store4_noabort(i32 %318)
  store i32 %v.0.i.i194.i.i, ptr %arrayidx.i.i185.i.i, align 4
  %inc.i.i195.i.i = add nuw i32 %i.018.i.i182.i.i, 1
  %inc5.i.i196.i.i = add i32 %offset.addr.017.i.i183.i.i, 1
  %exitcond.not.i.i197.i.i = icmp eq i32 %inc.i.i195.i.i, %311
  br i1 %exitcond.not.i.i197.i.i, label %for.body.i.i198.i.i.vcap_action_set.exit199.i.i_crit_edge, label %for.body.i.i198.i.i.for.body.i.i198.i.i_crit_edge

for.body.i.i198.i.i.for.body.i.i198.i.i_crit_edge: ; preds = %for.body.i.i198.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i198.i.i

for.body.i.i198.i.i.vcap_action_set.exit199.i.i_crit_edge: ; preds = %for.body.i.i198.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit199.i.i

vcap_action_set.exit199.i.i:                      ; preds = %for.body.i.i198.i.i.vcap_action_set.exit199.i.i_crit_edge, %vcap_action_set.exit173.i.i.vcap_action_set.exit199.i.i_crit_edge
  %qos_ena.i.i = getelementptr inbounds %struct.anon.171, ptr %action.i.i, i32 0, i32 7
  %319 = ptrtoint ptr %qos_ena.i.i to i32
  call void @__asan_load1_noabort(i32 %319)
  %320 = load i8, ptr %qos_ena.i.i, align 1, !range !31
  %321 = zext i8 %320 to i32
  %322 = ptrtoint ptr %actions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %actions.i.i.i, align 4
  %length4.i201.i.i = getelementptr %struct.vcap_field, ptr %323, i32 2, i32 1
  %324 = ptrtoint ptr %length4.i201.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load i32, ptr %length4.i201.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %325)
  %cmp16.not.i.i203.i.i = icmp eq i32 %325, 0
  br i1 %cmp16.not.i.i203.i.i, label %vcap_action_set.exit199.i.i.vcap_action_set.exit225.i.i_crit_edge, label %for.body.i.preheader.i207.i.i

vcap_action_set.exit199.i.i.vcap_action_set.exit225.i.i_crit_edge: ; preds = %vcap_action_set.exit199.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit225.i.i

for.body.i.preheader.i207.i.i:                    ; preds = %vcap_action_set.exit199.i.i
  %326 = ptrtoint ptr %action_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %action_offset.i.i, align 4
  %arrayidx.i205.i.i = getelementptr %struct.vcap_field, ptr %323, i32 2
  %328 = ptrtoint ptr %arrayidx.i205.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load i32, ptr %arrayidx.i205.i.i, align 4
  %add.i206.i.i = add i32 %329, %327
  br label %for.body.i.i224.i.i

for.body.i.i224.i.i:                              ; preds = %for.body.i.i224.i.i.for.body.i.i224.i.i_crit_edge, %for.body.i.preheader.i207.i.i
  %i.018.i.i208.i.i = phi i32 [ %inc.i.i221.i.i, %for.body.i.i224.i.i.for.body.i.i224.i.i_crit_edge ], [ 0, %for.body.i.preheader.i207.i.i ]
  %offset.addr.017.i.i209.i.i = phi i32 [ %inc5.i.i222.i.i, %for.body.i.i224.i.i.for.body.i.i224.i.i_crit_edge ], [ %add.i206.i.i, %for.body.i.preheader.i207.i.i ]
  %div15.i.i210.i.i = lshr i32 %offset.addr.017.i.i209.i.i, 5
  %arrayidx.i.i211.i.i = getelementptr i32, ptr %action.i.i.i, i32 %div15.i.i210.i.i
  %330 = ptrtoint ptr %arrayidx.i.i211.i.i to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load i32, ptr %arrayidx.i.i211.i.i, align 4
  %rem.i.i212.i.i = and i32 %offset.addr.017.i.i209.i.i, 31
  %shl.i.i213.i.i = shl nuw i32 1, %rem.i.i212.i.i
  %shl1.i.i214.i.i = shl nuw i32 1, %i.018.i.i208.i.i
  %and.i.i215.i.i = and i32 %shl1.i.i214.i.i, %321
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i215.i.i)
  %tobool.not.i.i216.i.i = icmp eq i32 %and.i.i215.i.i, 0
  %or.i.i217.i.i = or i32 %shl.i.i213.i.i, %331
  %neg.i.i218.i.i = xor i32 %shl.i.i213.i.i, -1
  %and2.i.i219.i.i = and i32 %331, %neg.i.i218.i.i
  %v.0.i.i220.i.i = select i1 %tobool.not.i.i216.i.i, i32 %and2.i.i219.i.i, i32 %or.i.i217.i.i
  %332 = ptrtoint ptr %arrayidx.i.i211.i.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 %v.0.i.i220.i.i, ptr %arrayidx.i.i211.i.i, align 4
  %inc.i.i221.i.i = add nuw i32 %i.018.i.i208.i.i, 1
  %inc5.i.i222.i.i = add i32 %offset.addr.017.i.i209.i.i, 1
  %exitcond.not.i.i223.i.i = icmp eq i32 %inc.i.i221.i.i, %325
  br i1 %exitcond.not.i.i223.i.i, label %for.body.i.i224.i.i.vcap_action_set.exit225.i.i_crit_edge, label %for.body.i.i224.i.i.for.body.i.i224.i.i_crit_edge

for.body.i.i224.i.i.for.body.i.i224.i.i_crit_edge: ; preds = %for.body.i.i224.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i224.i.i

for.body.i.i224.i.i.vcap_action_set.exit225.i.i_crit_edge: ; preds = %for.body.i.i224.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit225.i.i

vcap_action_set.exit225.i.i:                      ; preds = %for.body.i.i224.i.i.vcap_action_set.exit225.i.i_crit_edge, %vcap_action_set.exit199.i.i.vcap_action_set.exit225.i.i_crit_edge
  %qos_val.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 4
  %333 = ptrtoint ptr %qos_val.i.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %qos_val.i.i, align 4
  %conv11.i.i = zext i8 %334 to i32
  %335 = ptrtoint ptr %actions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %actions.i.i.i, align 4
  %length4.i227.i.i = getelementptr %struct.vcap_field, ptr %336, i32 3, i32 1
  %337 = ptrtoint ptr %length4.i227.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load i32, ptr %length4.i227.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %338)
  %cmp16.not.i.i229.i.i = icmp eq i32 %338, 0
  br i1 %cmp16.not.i.i229.i.i, label %vcap_action_set.exit225.i.i.vcap_action_set.exit251.i.i_crit_edge, label %for.body.i.preheader.i233.i.i

vcap_action_set.exit225.i.i.vcap_action_set.exit251.i.i_crit_edge: ; preds = %vcap_action_set.exit225.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit251.i.i

for.body.i.preheader.i233.i.i:                    ; preds = %vcap_action_set.exit225.i.i
  %339 = ptrtoint ptr %action_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %action_offset.i.i, align 4
  %arrayidx.i231.i.i = getelementptr %struct.vcap_field, ptr %336, i32 3
  %341 = ptrtoint ptr %arrayidx.i231.i.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %arrayidx.i231.i.i, align 4
  %add.i232.i.i = add i32 %342, %340
  br label %for.body.i.i250.i.i

for.body.i.i250.i.i:                              ; preds = %for.body.i.i250.i.i.for.body.i.i250.i.i_crit_edge, %for.body.i.preheader.i233.i.i
  %i.018.i.i234.i.i = phi i32 [ %inc.i.i247.i.i, %for.body.i.i250.i.i.for.body.i.i250.i.i_crit_edge ], [ 0, %for.body.i.preheader.i233.i.i ]
  %offset.addr.017.i.i235.i.i = phi i32 [ %inc5.i.i248.i.i, %for.body.i.i250.i.i.for.body.i.i250.i.i_crit_edge ], [ %add.i232.i.i, %for.body.i.preheader.i233.i.i ]
  %div15.i.i236.i.i = lshr i32 %offset.addr.017.i.i235.i.i, 5
  %arrayidx.i.i237.i.i = getelementptr i32, ptr %action.i.i.i, i32 %div15.i.i236.i.i
  %343 = ptrtoint ptr %arrayidx.i.i237.i.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %arrayidx.i.i237.i.i, align 4
  %rem.i.i238.i.i = and i32 %offset.addr.017.i.i235.i.i, 31
  %shl.i.i239.i.i = shl nuw i32 1, %rem.i.i238.i.i
  %shl1.i.i240.i.i = shl nuw i32 1, %i.018.i.i234.i.i
  %and.i.i241.i.i = and i32 %shl1.i.i240.i.i, %conv11.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i241.i.i)
  %tobool.not.i.i242.i.i = icmp eq i32 %and.i.i241.i.i, 0
  %or.i.i243.i.i = or i32 %shl.i.i239.i.i, %344
  %neg.i.i244.i.i = xor i32 %shl.i.i239.i.i, -1
  %and2.i.i245.i.i = and i32 %344, %neg.i.i244.i.i
  %v.0.i.i246.i.i = select i1 %tobool.not.i.i242.i.i, i32 %and2.i.i245.i.i, i32 %or.i.i243.i.i
  %345 = ptrtoint ptr %arrayidx.i.i237.i.i to i32
  call void @__asan_store4_noabort(i32 %345)
  store i32 %v.0.i.i246.i.i, ptr %arrayidx.i.i237.i.i, align 4
  %inc.i.i247.i.i = add nuw i32 %i.018.i.i234.i.i, 1
  %inc5.i.i248.i.i = add i32 %offset.addr.017.i.i235.i.i, 1
  %exitcond.not.i.i249.i.i = icmp eq i32 %inc.i.i247.i.i, %338
  br i1 %exitcond.not.i.i249.i.i, label %for.body.i.i250.i.i.vcap_action_set.exit251.i.i_crit_edge, label %for.body.i.i250.i.i.for.body.i.i250.i.i_crit_edge

for.body.i.i250.i.i.for.body.i.i250.i.i_crit_edge: ; preds = %for.body.i.i250.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i250.i.i

for.body.i.i250.i.i.vcap_action_set.exit251.i.i_crit_edge: ; preds = %for.body.i.i250.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit251.i.i

vcap_action_set.exit251.i.i:                      ; preds = %for.body.i.i250.i.i.vcap_action_set.exit251.i.i_crit_edge, %vcap_action_set.exit225.i.i.vcap_action_set.exit251.i.i_crit_edge
  %pag_override_mask.i.i = getelementptr inbounds %struct.anon.171, ptr %action.i.i, i32 0, i32 9
  %346 = ptrtoint ptr %pag_override_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %pag_override_mask.i.i, align 1
  %conv12.i.i = zext i8 %347 to i32
  %348 = ptrtoint ptr %actions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %actions.i.i.i, align 4
  %length4.i253.i.i = getelementptr %struct.vcap_field, ptr %349, i32 6, i32 1
  %350 = ptrtoint ptr %length4.i253.i.i to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load i32, ptr %length4.i253.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %cmp16.not.i.i255.i.i = icmp eq i32 %351, 0
  br i1 %cmp16.not.i.i255.i.i, label %vcap_action_set.exit251.i.i.vcap_action_set.exit277.i.i_crit_edge, label %for.body.i.preheader.i259.i.i

vcap_action_set.exit251.i.i.vcap_action_set.exit277.i.i_crit_edge: ; preds = %vcap_action_set.exit251.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit277.i.i

for.body.i.preheader.i259.i.i:                    ; preds = %vcap_action_set.exit251.i.i
  %352 = ptrtoint ptr %action_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %action_offset.i.i, align 4
  %arrayidx.i257.i.i = getelementptr %struct.vcap_field, ptr %349, i32 6
  %354 = ptrtoint ptr %arrayidx.i257.i.i to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %arrayidx.i257.i.i, align 4
  %add.i258.i.i = add i32 %355, %353
  br label %for.body.i.i276.i.i

for.body.i.i276.i.i:                              ; preds = %for.body.i.i276.i.i.for.body.i.i276.i.i_crit_edge, %for.body.i.preheader.i259.i.i
  %i.018.i.i260.i.i = phi i32 [ %inc.i.i273.i.i, %for.body.i.i276.i.i.for.body.i.i276.i.i_crit_edge ], [ 0, %for.body.i.preheader.i259.i.i ]
  %offset.addr.017.i.i261.i.i = phi i32 [ %inc5.i.i274.i.i, %for.body.i.i276.i.i.for.body.i.i276.i.i_crit_edge ], [ %add.i258.i.i, %for.body.i.preheader.i259.i.i ]
  %div15.i.i262.i.i = lshr i32 %offset.addr.017.i.i261.i.i, 5
  %arrayidx.i.i263.i.i = getelementptr i32, ptr %action.i.i.i, i32 %div15.i.i262.i.i
  %356 = ptrtoint ptr %arrayidx.i.i263.i.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %arrayidx.i.i263.i.i, align 4
  %rem.i.i264.i.i = and i32 %offset.addr.017.i.i261.i.i, 31
  %shl.i.i265.i.i = shl nuw i32 1, %rem.i.i264.i.i
  %shl1.i.i266.i.i = shl nuw i32 1, %i.018.i.i260.i.i
  %and.i.i267.i.i = and i32 %shl1.i.i266.i.i, %conv12.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i267.i.i)
  %tobool.not.i.i268.i.i = icmp eq i32 %and.i.i267.i.i, 0
  %or.i.i269.i.i = or i32 %shl.i.i265.i.i, %357
  %neg.i.i270.i.i = xor i32 %shl.i.i265.i.i, -1
  %and2.i.i271.i.i = and i32 %357, %neg.i.i270.i.i
  %v.0.i.i272.i.i = select i1 %tobool.not.i.i268.i.i, i32 %and2.i.i271.i.i, i32 %or.i.i269.i.i
  %358 = ptrtoint ptr %arrayidx.i.i263.i.i to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %v.0.i.i272.i.i, ptr %arrayidx.i.i263.i.i, align 4
  %inc.i.i273.i.i = add nuw i32 %i.018.i.i260.i.i, 1
  %inc5.i.i274.i.i = add i32 %offset.addr.017.i.i261.i.i, 1
  %exitcond.not.i.i275.i.i = icmp eq i32 %inc.i.i273.i.i, %351
  br i1 %exitcond.not.i.i275.i.i, label %for.body.i.i276.i.i.vcap_action_set.exit277.i.i_crit_edge, label %for.body.i.i276.i.i.for.body.i.i276.i.i_crit_edge

for.body.i.i276.i.i.for.body.i.i276.i.i_crit_edge: ; preds = %for.body.i.i276.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i276.i.i

for.body.i.i276.i.i.vcap_action_set.exit277.i.i_crit_edge: ; preds = %for.body.i.i276.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit277.i.i

vcap_action_set.exit277.i.i:                      ; preds = %for.body.i.i276.i.i.vcap_action_set.exit277.i.i_crit_edge, %vcap_action_set.exit251.i.i.vcap_action_set.exit277.i.i_crit_edge
  %pag_val.i.i = getelementptr inbounds %struct.anon.171, ptr %action.i.i, i32 0, i32 10
  %359 = ptrtoint ptr %pag_val.i.i to i32
  call void @__asan_load1_noabort(i32 %359)
  %360 = load i8, ptr %pag_val.i.i, align 2
  %conv13.i.i = zext i8 %360 to i32
  %361 = ptrtoint ptr %actions.i.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %actions.i.i.i, align 4
  %length4.i279.i.i = getelementptr %struct.vcap_field, ptr %362, i32 7, i32 1
  %363 = ptrtoint ptr %length4.i279.i.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %length4.i279.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %364)
  %cmp16.not.i.i281.i.i = icmp eq i32 %364, 0
  br i1 %cmp16.not.i.i281.i.i, label %vcap_action_set.exit277.i.i.is1_action_set.exit.i_crit_edge, label %for.body.i.preheader.i285.i.i

vcap_action_set.exit277.i.i.is1_action_set.exit.i_crit_edge: ; preds = %vcap_action_set.exit277.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is1_action_set.exit.i

for.body.i.preheader.i285.i.i:                    ; preds = %vcap_action_set.exit277.i.i
  %365 = ptrtoint ptr %action_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load i32, ptr %action_offset.i.i, align 4
  %arrayidx.i283.i.i = getelementptr %struct.vcap_field, ptr %362, i32 7
  %367 = ptrtoint ptr %arrayidx.i283.i.i to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %arrayidx.i283.i.i, align 4
  %add.i284.i.i = add i32 %368, %366
  br label %for.body.i.i302.i.i

for.body.i.i302.i.i:                              ; preds = %for.body.i.i302.i.i.for.body.i.i302.i.i_crit_edge, %for.body.i.preheader.i285.i.i
  %i.018.i.i286.i.i = phi i32 [ %inc.i.i299.i.i, %for.body.i.i302.i.i.for.body.i.i302.i.i_crit_edge ], [ 0, %for.body.i.preheader.i285.i.i ]
  %offset.addr.017.i.i287.i.i = phi i32 [ %inc5.i.i300.i.i, %for.body.i.i302.i.i.for.body.i.i302.i.i_crit_edge ], [ %add.i284.i.i, %for.body.i.preheader.i285.i.i ]
  %div15.i.i288.i.i = lshr i32 %offset.addr.017.i.i287.i.i, 5
  %arrayidx.i.i289.i.i = getelementptr i32, ptr %action.i.i.i, i32 %div15.i.i288.i.i
  %369 = ptrtoint ptr %arrayidx.i.i289.i.i to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %arrayidx.i.i289.i.i, align 4
  %rem.i.i290.i.i = and i32 %offset.addr.017.i.i287.i.i, 31
  %shl.i.i291.i.i = shl nuw i32 1, %rem.i.i290.i.i
  %shl1.i.i292.i.i = shl nuw i32 1, %i.018.i.i286.i.i
  %and.i.i293.i.i = and i32 %shl1.i.i292.i.i, %conv13.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i293.i.i)
  %tobool.not.i.i294.i.i = icmp eq i32 %and.i.i293.i.i, 0
  %or.i.i295.i.i = or i32 %shl.i.i291.i.i, %370
  %neg.i.i296.i.i = xor i32 %shl.i.i291.i.i, -1
  %and2.i.i297.i.i = and i32 %370, %neg.i.i296.i.i
  %v.0.i.i298.i.i = select i1 %tobool.not.i.i294.i.i, i32 %and2.i.i297.i.i, i32 %or.i.i295.i.i
  %371 = ptrtoint ptr %arrayidx.i.i289.i.i to i32
  call void @__asan_store4_noabort(i32 %371)
  store i32 %v.0.i.i298.i.i, ptr %arrayidx.i.i289.i.i, align 4
  %inc.i.i299.i.i = add nuw i32 %i.018.i.i286.i.i, 1
  %inc5.i.i300.i.i = add i32 %offset.addr.017.i.i287.i.i, 1
  %exitcond.not.i.i301.i.i = icmp eq i32 %inc.i.i299.i.i, %364
  br i1 %exitcond.not.i.i301.i.i, label %for.body.i.i302.i.i.is1_action_set.exit.i_crit_edge, label %for.body.i.i302.i.i.for.body.i.i302.i.i_crit_edge

for.body.i.i302.i.i.for.body.i.i302.i.i_crit_edge: ; preds = %for.body.i.i302.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i302.i.i

for.body.i.i302.i.i.is1_action_set.exit.i_crit_edge: ; preds = %for.body.i.i302.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is1_action_set.exit.i

is1_action_set.exit.i:                            ; preds = %for.body.i.i302.i.i.is1_action_set.exit.i_crit_edge, %vcap_action_set.exit277.i.i.is1_action_set.exit.i_crit_edge
  %counter.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 3
  %372 = ptrtoint ptr %counter_width.i.i to i32
  call void @__asan_load2_noabort(i32 %372)
  %373 = load i16, ptr %counter_width.i.i, align 4
  %conv73.i = zext i16 %373 to i32
  %pkts.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 9, i32 1
  %374 = ptrtoint ptr %pkts.i to i32
  call void @__asan_load8_noabort(i32 %374)
  %375 = load i64, ptr %pkts.i, align 8
  %conv74.i = trunc i64 %375 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %373)
  %cmp16.not.i.i = icmp eq i16 %373, 0
  br i1 %cmp16.not.i.i, label %is1_action_set.exit.i.vcap_data_set.exit.i_crit_edge, label %for.body.i502.preheader.i

is1_action_set.exit.i.vcap_data_set.exit.i_crit_edge: ; preds = %is1_action_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_data_set.exit.i

for.body.i502.preheader.i:                        ; preds = %is1_action_set.exit.i
  %376 = ptrtoint ptr %counter_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %counter_offset.i.i, align 4
  br label %for.body.i502.i

for.body.i502.i:                                  ; preds = %for.body.i502.i.for.body.i502.i_crit_edge, %for.body.i502.preheader.i
  %i.018.i.i = phi i32 [ %inc.i500.i, %for.body.i502.i.for.body.i502.i_crit_edge ], [ 0, %for.body.i502.preheader.i ]
  %offset.addr.017.i.i = phi i32 [ %inc5.i.i, %for.body.i502.i.for.body.i502.i_crit_edge ], [ %377, %for.body.i502.preheader.i ]
  %div15.i.i = lshr i32 %offset.addr.017.i.i, 5
  %arrayidx.i493.i = getelementptr i32, ptr %counter.i, i32 %div15.i.i
  %378 = ptrtoint ptr %arrayidx.i493.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %arrayidx.i493.i, align 4
  %rem.i494.i = and i32 %offset.addr.017.i.i, 31
  %shl.i495.i = shl nuw i32 1, %rem.i494.i
  %shl1.i.i = shl nuw i32 1, %i.018.i.i
  %and.i496.i = and i32 %shl1.i.i, %conv74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i496.i)
  %tobool.not.i497.i = icmp eq i32 %and.i496.i, 0
  %or.i498.i = or i32 %shl.i495.i, %379
  %neg.i499.i = xor i32 %shl.i495.i, -1
  %and2.i.i = and i32 %379, %neg.i499.i
  %v.0.i.i = select i1 %tobool.not.i497.i, i32 %and2.i.i, i32 %or.i498.i
  %380 = ptrtoint ptr %arrayidx.i493.i to i32
  call void @__asan_store4_noabort(i32 %380)
  store i32 %v.0.i.i, ptr %arrayidx.i493.i, align 4
  %inc.i500.i = add nuw nsw i32 %i.018.i.i, 1
  %inc5.i.i = add i32 %offset.addr.017.i.i, 1
  %exitcond.not.i501.i = icmp eq i32 %inc.i500.i, %conv73.i
  br i1 %exitcond.not.i501.i, label %for.body.i502.i.vcap_data_set.exit.i_crit_edge, label %for.body.i502.i.for.body.i502.i_crit_edge

for.body.i502.i.for.body.i502.i_crit_edge:        ; preds = %for.body.i502.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i502.i

for.body.i502.i.vcap_data_set.exit.i_crit_edge:   ; preds = %for.body.i502.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_data_set.exit.i

vcap_data_set.exit.i:                             ; preds = %for.body.i502.i.vcap_data_set.exit.i_crit_edge, %is1_action_set.exit.i.vcap_data_set.exit.i_crit_edge
  %381 = ptrtoint ptr %entry_width.i.i to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %entry_width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %382)
  %cmp20.not.i.i = icmp eq i16 %382, 0
  br i1 %cmp20.not.i.i, label %vcap_data_set.exit.i.is1_entry_set.exit_crit_edge, label %for.body.lr.ph.i508.i

vcap_data_set.exit.i.is1_entry_set.exit_crit_edge: ; preds = %vcap_data_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is1_entry_set.exit

for.body.lr.ph.i508.i:                            ; preds = %vcap_data_set.exit.i
  %conv.i505.i = zext i16 %382 to i32
  %sub.i506.i = add nuw nsw i32 %conv.i505.i, 31
  %div19.i.i = lshr i32 %sub.i506.i, 5
  br label %for.body.i514.i

for.body.i514.i:                                  ; preds = %for.body.i514.i.for.body.i514.i_crit_edge, %for.body.lr.ph.i508.i
  %i.021.i.i = phi i32 [ 0, %for.body.lr.ph.i508.i ], [ %inc.i512.i, %for.body.i514.i.for.body.i514.i_crit_edge ]
  %383 = ptrtoint ptr %target7.i.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %target7.i.i, align 4
  %arrayidx.i509.i = getelementptr [12 x i32], ptr %data.i, i32 0, i32 %i.021.i.i
  %385 = ptrtoint ptr %arrayidx.i509.i to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %arrayidx.i509.i, align 4
  %mul.i510.i = shl i32 %i.021.i.i, 2
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %384, i32 noundef %386, i32 noundef 2, i32 noundef %mul.i510.i) #8
  %387 = ptrtoint ptr %target7.i.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %target7.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.vcap_data, ptr %data.i, i32 0, i32 1, i32 %i.021.i.i
  %389 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %arrayidx4.i.i, align 4
  %neg.i511.i = xor i32 %390, -1
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %388, i32 noundef %neg.i511.i, i32 noundef 3, i32 noundef %mul.i510.i) #8
  %inc.i512.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i513.i = icmp eq i32 %inc.i512.i, %div19.i.i
  br i1 %exitcond.not.i513.i, label %for.body.i514.i.is1_entry_set.exit_crit_edge, label %for.body.i514.i.for.body.i514.i_crit_edge

for.body.i514.i.for.body.i514.i_crit_edge:        ; preds = %for.body.i514.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i514.i

for.body.i514.i.is1_entry_set.exit_crit_edge:     ; preds = %for.body.i514.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is1_entry_set.exit

is1_entry_set.exit:                               ; preds = %for.body.i514.i.is1_entry_set.exit_crit_edge, %vcap_data_set.exit.i.is1_entry_set.exit_crit_edge
  %391 = ptrtoint ptr %target7.i.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %target7.i.i, align 4
  %393 = ptrtoint ptr %tg.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %tg.i.i, align 4
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %392, i32 noundef %394, i32 noundef 6, i32 noundef 0) #8
  call fastcc void @vcap_action2cache(ptr noundef %ocelot, ptr noundef %arrayidx.i, ptr noundef nonnull %data.i) #8
  %395 = ptrtoint ptr %entry_count.i.i to i32
  call void @__asan_load2_noabort(i32 %395)
  %396 = load i16, ptr %entry_count.i.i, align 4
  %conv2.i518.i = add i16 %396, %9
  tail call fastcc void @vcap_cmd(ptr noundef %ocelot, ptr noundef %arrayidx.i, i16 noundef zeroext %conv2.i518.i, i32 noundef 0, i32 noundef 7) #8
  call void @llvm.lifetime.end.p0(i64 196, ptr nonnull %data.i) #8
  br label %if.end8

if.then3:                                         ; preds = %entry
  %vcap1.i19 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 26
  %397 = ptrtoint ptr %vcap1.i19 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %vcap1.i19, align 4
  %arrayidx.i20 = getelementptr %struct.vcap_props, ptr %398, i32 2
  %vlan.i21 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %payload.i) #8
  %399 = getelementptr inbounds %struct.ocelot_vcap_u64, ptr %payload.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 196, ptr nonnull %data.i18) #8
  %div.i22 = sdiv i32 %ix, 2
  %400 = call ptr @memset(ptr %payload.i, i32 0, i32 16)
  %401 = call ptr @memset(ptr %data.i18, i32 0, i32 196)
  %entry_count.i.i23 = getelementptr %struct.vcap_props, ptr %398, i32 2, i32 2
  %402 = ptrtoint ptr %entry_count.i.i23 to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %entry_count.i.i23, align 4
  %404 = trunc i32 %div.i22 to i16
  %405 = xor i16 %404, -1
  %conv2.i.i24 = add i16 %403, %405
  tail call fastcc void @vcap_cmd(ptr noundef %ocelot, ptr noundef %arrayidx.i20, i16 noundef zeroext %conv2.i.i24, i32 noundef 1, i32 noundef 7) #8
  %entry_width.i.i25 = getelementptr %struct.vcap_props, ptr %398, i32 2, i32 4
  %406 = ptrtoint ptr %entry_width.i.i25 to i32
  call void @__asan_load2_noabort(i32 %406)
  %407 = load i16, ptr %entry_width.i.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %407)
  %cmp22.not.i.i26 = icmp eq i16 %407, 0
  br i1 %cmp22.not.i.i26, label %if.then3.vcap_cache2entry.exit.i47_crit_edge, label %for.body.lr.ph.i.i31

if.then3.vcap_cache2entry.exit.i47_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_cache2entry.exit.i47

for.body.lr.ph.i.i31:                             ; preds = %if.then3
  %conv.i.i27 = zext i16 %407 to i32
  %sub.i.i28 = add nuw nsw i32 %conv.i.i27, 31
  %div21.i.i29 = lshr i32 %sub.i.i28, 5
  %target.i.i30 = getelementptr %struct.vcap_props, ptr %398, i32 2, i32 12
  br label %for.body.i.i41

for.body.i.i41:                                   ; preds = %for.body.i.i41.for.body.i.i41_crit_edge, %for.body.lr.ph.i.i31
  %i.023.i.i32 = phi i32 [ 0, %for.body.lr.ph.i.i31 ], [ %inc.i.i39, %for.body.i.i41.for.body.i.i41_crit_edge ]
  %408 = ptrtoint ptr %target.i.i30 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %target.i.i30, align 4
  %mul.i.i33 = shl i32 %i.023.i.i32, 2
  %call.i.i34 = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %409, i32 noundef 2, i32 noundef %mul.i.i33) #8
  %arrayidx.i.i35 = getelementptr [12 x i32], ptr %data.i18, i32 0, i32 %i.023.i.i32
  %410 = ptrtoint ptr %arrayidx.i.i35 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 %call.i.i34, ptr %arrayidx.i.i35, align 4
  %411 = ptrtoint ptr %target.i.i30 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %target.i.i30, align 4
  %call5.i.i36 = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %412, i32 noundef 3, i32 noundef %mul.i.i33) #8
  %neg.i.i37 = xor i32 %call5.i.i36, -1
  %arrayidx6.i.i38 = getelementptr %struct.vcap_data, ptr %data.i18, i32 0, i32 1, i32 %i.023.i.i32
  %413 = ptrtoint ptr %arrayidx6.i.i38 to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %neg.i.i37, ptr %arrayidx6.i.i38, align 4
  %inc.i.i39 = add nuw nsw i32 %i.023.i.i32, 1
  %exitcond.not.i.i40 = icmp eq i32 %inc.i.i39, %div21.i.i29
  br i1 %exitcond.not.i.i40, label %for.body.i.i41.vcap_cache2entry.exit.i47_crit_edge, label %for.body.i.i41.for.body.i.i41_crit_edge

for.body.i.i41.for.body.i.i41_crit_edge:          ; preds = %for.body.i.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i41

for.body.i.i41.vcap_cache2entry.exit.i47_crit_edge: ; preds = %for.body.i.i41
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_cache2entry.exit.i47

vcap_cache2entry.exit.i47:                        ; preds = %for.body.i.i41.vcap_cache2entry.exit.i47_crit_edge, %if.then3.vcap_cache2entry.exit.i47_crit_edge
  %target7.i.i42 = getelementptr %struct.vcap_props, ptr %398, i32 2, i32 12
  %414 = ptrtoint ptr %target7.i.i42 to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %target7.i.i42, align 4
  %call8.i.i43 = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %415, i32 noundef 6, i32 noundef 0) #8
  %tg.i.i44 = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 4
  %416 = ptrtoint ptr %tg.i.i44 to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %call8.i.i43, ptr %tg.i.i44, align 4
  %action_width.i.i45 = getelementptr %struct.vcap_props, ptr %398, i32 2, i32 7
  %417 = ptrtoint ptr %action_width.i.i45 to i32
  call void @__asan_load2_noabort(i32 %417)
  %418 = load i16, ptr %action_width.i.i45, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %418)
  %cmp37.not.i.i46 = icmp eq i16 %418, 0
  br i1 %cmp37.not.i.i46, label %vcap_cache2entry.exit.i47.for.cond2.preheader.i.i51_crit_edge, label %for.body.lr.ph.i501.i

vcap_cache2entry.exit.i47.for.cond2.preheader.i.i51_crit_edge: ; preds = %vcap_cache2entry.exit.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.i.i51

for.body.lr.ph.i501.i:                            ; preds = %vcap_cache2entry.exit.i47
  %conv.i498.i = zext i16 %418 to i32
  %sub.i499.i = add nuw nsw i32 %conv.i498.i, 31
  %div36.i.i48 = lshr i32 %sub.i499.i, 5
  br label %for.body.i508.i

for.cond2.preheader.i.i51:                        ; preds = %for.body.i508.i.for.cond2.preheader.i.i51_crit_edge, %vcap_cache2entry.exit.i47.for.cond2.preheader.i.i51_crit_edge
  %counter_words.i.i49 = getelementptr %struct.vcap_props, ptr %398, i32 2, i32 10
  %419 = ptrtoint ptr %counter_words.i.i49 to i32
  call void @__asan_load2_noabort(i32 %419)
  %420 = load i16, ptr %counter_words.i.i49, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %420)
  %cmp440.not.i.i50 = icmp eq i16 %420, 0
  br i1 %cmp440.not.i.i50, label %for.cond2.preheader.i.i51.for.end13.i.i62_crit_edge, label %for.cond2.preheader.i.i51.for.body6.i.i60_crit_edge

for.cond2.preheader.i.i51.for.body6.i.i60_crit_edge: ; preds = %for.cond2.preheader.i.i51
  br label %for.body6.i.i60

for.cond2.preheader.i.i51.for.end13.i.i62_crit_edge: ; preds = %for.cond2.preheader.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end13.i.i62

for.body.i508.i:                                  ; preds = %for.body.i508.i.for.body.i508.i_crit_edge, %for.body.lr.ph.i501.i
  %i.038.i.i52 = phi i32 [ 0, %for.body.lr.ph.i501.i ], [ %inc.i506.i, %for.body.i508.i.for.body.i508.i_crit_edge ]
  %421 = ptrtoint ptr %target7.i.i42 to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %target7.i.i42, align 4
  %mul.i503.i = shl i32 %i.038.i.i52, 2
  %call.i504.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %422, i32 noundef 4, i32 noundef %mul.i503.i) #8
  %arrayidx.i505.i = getelementptr %struct.vcap_data, ptr %data.i18, i32 0, i32 2, i32 %i.038.i.i52
  %423 = ptrtoint ptr %arrayidx.i505.i to i32
  call void @__asan_store4_noabort(i32 %423)
  store i32 %call.i504.i, ptr %arrayidx.i505.i, align 4
  %inc.i506.i = add nuw nsw i32 %i.038.i.i52, 1
  %exitcond.not.i507.i = icmp eq i32 %inc.i506.i, %div36.i.i48
  br i1 %exitcond.not.i507.i, label %for.body.i508.i.for.cond2.preheader.i.i51_crit_edge, label %for.body.i508.i.for.body.i508.i_crit_edge

for.body.i508.i.for.body.i508.i_crit_edge:        ; preds = %for.body.i508.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i508.i

for.body.i508.i.for.cond2.preheader.i.i51_crit_edge: ; preds = %for.body.i508.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.i.i51

for.body6.i.i60:                                  ; preds = %for.body6.i.i60.for.body6.i.i60_crit_edge, %for.cond2.preheader.i.i51.for.body6.i.i60_crit_edge
  %i.141.i.i53 = phi i32 [ %inc12.i.i57, %for.body6.i.i60.for.body6.i.i60_crit_edge ], [ 0, %for.cond2.preheader.i.i51.for.body6.i.i60_crit_edge ]
  %424 = ptrtoint ptr %target7.i.i42 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load i32, ptr %target7.i.i42, align 4
  %mul8.i.i54 = shl i32 %i.141.i.i53, 2
  %call9.i.i55 = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %425, i32 noundef 5, i32 noundef %mul8.i.i54) #8
  %arrayidx10.i.i56 = getelementptr %struct.vcap_data, ptr %data.i18, i32 0, i32 3, i32 %i.141.i.i53
  %426 = ptrtoint ptr %arrayidx10.i.i56 to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 %call9.i.i55, ptr %arrayidx10.i.i56, align 4
  %inc12.i.i57 = add nuw nsw i32 %i.141.i.i53, 1
  %427 = ptrtoint ptr %counter_words.i.i49 to i32
  call void @__asan_load2_noabort(i32 %427)
  %428 = load i16, ptr %counter_words.i.i49, align 2
  %conv3.i.i58 = zext i16 %428 to i32
  %cmp4.i.i59 = icmp ult i32 %inc12.i.i57, %conv3.i.i58
  br i1 %cmp4.i.i59, label %for.body6.i.i60.for.body6.i.i60_crit_edge, label %for.body6.i.i60.for.end13.i.i62_crit_edge

for.body6.i.i60.for.end13.i.i62_crit_edge:        ; preds = %for.body6.i.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end13.i.i62

for.body6.i.i60.for.body6.i.i60_crit_edge:        ; preds = %for.body6.i.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.i.i60

for.end13.i.i62:                                  ; preds = %for.body6.i.i60.for.end13.i.i62_crit_edge, %for.cond2.preheader.i.i51.for.end13.i.i62_crit_edge
  %action_type_width.i.i61 = getelementptr %struct.vcap_props, ptr %398, i32 2, i32 8
  %429 = ptrtoint ptr %action_type_width.i.i61 to i32
  call void @__asan_load2_noabort(i32 %429)
  %430 = load i16, ptr %action_type_width.i.i61, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %430)
  %tobool.not.i.i = icmp eq i16 %430, 0
  br i1 %tobool.not.i.i, label %for.end13.i.i62.sw.epilog.i.i_crit_edge, label %cond.true.i.i

for.end13.i.i62.sw.epilog.i.i_crit_edge:          ; preds = %for.end13.i.i62
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

cond.true.i.i:                                    ; preds = %for.end13.i.i62
  call void @__sanitizer_cov_trace_pc() #10
  %conv14.i.i = zext i16 %430 to i32
  %action15.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 2
  %431 = ptrtoint ptr %action15.i.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %action15.i.i, align 4
  %sub17.i.i = sub nsw i32 31, %conv14.i.i
  %shr.i.i = lshr i32 -1, %sub17.i.i
  %and19.i.i = and i32 %432, %shr.i.i
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %cond.true.i.i, %for.end13.i.i62.sw.epilog.i.i_crit_edge
  %cond.i.i = phi i32 [ %and19.i.i, %cond.true.i.i ], [ 0, %for.end13.i.i62.sw.epilog.i.i_crit_edge ]
  %type.i.i63 = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 5
  %433 = ptrtoint ptr %type.i.i63 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 %cond.i.i, ptr %type.i.i63, align 4
  %tg_sw.i64 = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 6
  %434 = ptrtoint ptr %tg_sw.i64 to i32
  call void @__asan_store4_noabort(i32 %434)
  store i32 2, ptr %tg_sw.i64, align 4
  %435 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load2_noabort(i32 %435)
  %436 = load i16, ptr %arrayidx.i20, align 4
  %conv.i509.i = zext i16 %436 to i32
  %437 = mul i32 %div.i22, 2
  %rem.i.i65.decomposed = sub i32 %ix, %437
  %sw_count.i.i66 = getelementptr %struct.vcap_props, ptr %398, i32 2, i32 1
  %438 = ptrtoint ptr %sw_count.i.i66 to i32
  call void @__asan_load2_noabort(i32 %438)
  %439 = load i16, ptr %sw_count.i.i66, align 2
  %conv3.i510.i = zext i16 %439 to i32
  %div84.i1183.i = lshr i16 %439, 1
  %div.zext.i.i67 = zext i16 %div84.i1183.i to i32
  %mul.i511.i = mul nsw i32 %rem.i.i65.decomposed, %div.zext.i.i67
  %440 = add nsw i32 %mul.i511.i, %div.zext.i.i67
  %sub6.i.i68 = sub nsw i32 %conv3.i510.i, %440
  %tg_value.i.i69 = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 11
  %441 = ptrtoint ptr %tg_value.i.i69 to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 0, ptr %tg_value.i.i69, align 4
  %tg_mask.i.i70 = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 12
  %442 = ptrtoint ptr %tg_mask.i.i70 to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 0, ptr %tg_mask.i.i70, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %439)
  %cmp85.not.i.i71 = icmp ult i16 %439, 2
  br i1 %cmp85.not.i.i71, label %sw.epilog.i.i.vcap_data_offset_get.exit.i105_crit_edge, label %for.body.lr.ph.i512.i

sw.epilog.i.i.vcap_data_offset_get.exit.i105_crit_edge: ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_data_offset_get.exit.i105

for.body.lr.ph.i512.i:                            ; preds = %sw.epilog.i.i
  %umax.i.i72 = tail call i32 @llvm.umax.i32(i32 %div.zext.i.i67, i32 1) #8
  br label %for.body.i517.i

for.body.i517.i:                                  ; preds = %for.body.i517.i.for.body.i517.i_crit_edge, %for.body.lr.ph.i512.i
  %443 = phi i32 [ 0, %for.body.lr.ph.i512.i ], [ %or19.i.i80, %for.body.i517.i.for.body.i517.i_crit_edge ]
  %444 = phi i32 [ 0, %for.body.lr.ph.i512.i ], [ %or.i.i76, %for.body.i517.i.for.body.i517.i_crit_edge ]
  %i.086.i.i73 = phi i32 [ 0, %for.body.lr.ph.i512.i ], [ %inc.i515.i, %for.body.i517.i.for.body.i517.i_crit_edge ]
  %add.i.i74 = add nsw i32 %i.086.i.i73, %sub6.i.i68
  %mul8.i513.i = mul i32 %add.i.i74, %conv.i509.i
  %shl.i.i75 = shl i32 2, %mul8.i513.i
  %or.i.i76 = or i32 %shl.i.i75, %444
  %shl11.neg.i.i77 = shl nsw i32 -1, %mul8.i513.i
  %445 = add i32 %mul8.i513.i, %conv.i509.i
  %sub16.i.i78 = sub i32 32, %445
  %shr.i514.i = lshr i32 -1, %sub16.i.i78
  %and.i.i79 = and i32 %shr.i514.i, %shl11.neg.i.i77
  %or19.i.i80 = or i32 %and.i.i79, %443
  %inc.i515.i = add nuw nsw i32 %i.086.i.i73, 1
  %exitcond.not.i516.i = icmp eq i32 %inc.i515.i, %umax.i.i72
  br i1 %exitcond.not.i516.i, label %for.cond.for.end_crit_edge.i.i81, label %for.body.i517.i.for.body.i517.i_crit_edge

for.body.i517.i.for.body.i517.i_crit_edge:        ; preds = %for.body.i517.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i517.i

for.cond.for.end_crit_edge.i.i81:                 ; preds = %for.body.i517.i
  call void @__sanitizer_cov_trace_pc() #10
  %446 = ptrtoint ptr %tg_value.i.i69 to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 %or.i.i76, ptr %tg_value.i.i69, align 4
  %447 = ptrtoint ptr %tg_mask.i.i70 to i32
  call void @__asan_store4_noabort(i32 %447)
  store i32 %or19.i.i80, ptr %tg_mask.i.i70, align 4
  br label %vcap_data_offset_get.exit.i105

vcap_data_offset_get.exit.i105:                   ; preds = %for.cond.for.end_crit_edge.i.i81, %sw.epilog.i.i.vcap_data_offset_get.exit.i105_crit_edge
  %sub21.i.i82 = sub nsw i32 1, %rem.i.i65.decomposed
  %448 = ptrtoint ptr %entry_width.i.i25 to i32
  call void @__asan_load2_noabort(i32 %448)
  %449 = load i16, ptr %entry_width.i.i25, align 4
  %conv22.i.i83 = zext i16 %449 to i32
  %mul23.i.i84 = mul i32 %sub6.i.i68, %conv22.i.i83
  %450 = ptrtoint ptr %sw_count.i.i66 to i32
  call void @__asan_load2_noabort(i32 %450)
  %451 = load i16, ptr %sw_count.i.i66, align 2
  %conv25.i.i85 = zext i16 %451 to i32
  %div26.i.i86 = sdiv i32 %mul23.i.i84, %conv25.i.i85
  %key_offset.i.i87 = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 8
  %452 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_store4_noabort(i32 %452)
  store i32 %div26.i.i86, ptr %key_offset.i.i87, align 4
  %mul27.i.i88 = mul nsw i32 %sub21.i.i82, %div.zext.i.i67
  %counter_width.i.i89 = getelementptr %struct.vcap_props, ptr %398, i32 2, i32 11
  %453 = ptrtoint ptr %counter_width.i.i89 to i32
  call void @__asan_load2_noabort(i32 %453)
  %454 = load i16, ptr %counter_width.i.i89, align 4
  %conv28.i.i90 = zext i16 %454 to i32
  %mul29.i.i91 = mul i32 %mul27.i.i88, %conv28.i.i90
  %counter_offset.i.i92 = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 10
  %455 = ptrtoint ptr %counter_offset.i.i92 to i32
  call void @__asan_store4_noabort(i32 %455)
  store i32 %mul29.i.i91, ptr %counter_offset.i.i92, align 4
  %arrayidx.i520.i = getelementptr %struct.vcap_props, ptr %398, i32 2, i32 9, i32 %cond.i.i
  %456 = ptrtoint ptr %arrayidx.i520.i to i32
  call void @__asan_load2_noabort(i32 %456)
  %457 = load i16, ptr %arrayidx.i520.i, align 2
  %conv31.i.i93 = zext i16 %457 to i32
  %count.i.i94 = getelementptr %struct.vcap_props, ptr %398, i32 2, i32 9, i32 %cond.i.i, i32 1
  %458 = ptrtoint ptr %count.i.i94 to i32
  call void @__asan_load2_noabort(i32 %458)
  %459 = load i16, ptr %count.i.i94, align 2
  %conv34.i.i95 = zext i16 %459 to i32
  %mul35.i.i96 = mul nsw i32 %sub21.i.i82, %conv31.i.i93
  %mul36.i.i97 = mul i32 %mul35.i.i96, %conv34.i.i95
  %div37.i1184.i = lshr i32 %mul36.i.i97, 1
  %action_offset.i.i98 = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 9
  %460 = ptrtoint ptr %action_offset.i.i98 to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 %div37.i1184.i, ptr %action_offset.i.i98, align 4
  %461 = ptrtoint ptr %action_type_width.i.i61 to i32
  call void @__asan_load2_noabort(i32 %461)
  %462 = load i16, ptr %action_type_width.i.i61, align 4
  %conv38.i.i99 = zext i16 %462 to i32
  %add40.i.i100 = add nuw i32 %div37.i1184.i, %conv38.i.i99
  store i32 %add40.i.i100, ptr %action_offset.i.i98, align 4
  %463 = ptrtoint ptr %tg.i.i44 to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load i32, ptr %tg.i.i44, align 4
  %465 = ptrtoint ptr %tg_mask.i.i70 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %tg_mask.i.i70, align 4
  %neg.i101 = xor i32 %466, -1
  %and.i102 = and i32 %464, %neg.i101
  store i32 %and.i102, ptr %tg.i.i44, align 4
  %prio.i103 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 6
  %467 = ptrtoint ptr %prio.i103 to i32
  call void @__asan_load2_noabort(i32 %467)
  %468 = load i16, ptr %prio.i103, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %468)
  %cmp.not.i104 = icmp eq i16 %468, 0
  br i1 %cmp.not.i104, label %vcap_data_offset_get.exit.i105.if.end.i111_crit_edge, label %if.then.i107

vcap_data_offset_get.exit.i105.if.end.i111_crit_edge: ; preds = %vcap_data_offset_get.exit.i105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i111

if.then.i107:                                     ; preds = %vcap_data_offset_get.exit.i105
  call void @__sanitizer_cov_trace_pc() #10
  %469 = ptrtoint ptr %tg_value.i.i69 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %tg_value.i.i69, align 4
  %or.i106 = or i32 %470, %and.i102
  %471 = ptrtoint ptr %tg.i.i44 to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 %or.i106, ptr %tg.i.i44, align 4
  br label %if.end.i111

if.end.i111:                                      ; preds = %if.then.i107, %vcap_data_offset_get.exit.i105.if.end.i111_crit_edge
  %472 = ptrtoint ptr %type.i.i63 to i32
  call void @__asan_store4_noabort(i32 %472)
  store i32 0, ptr %type.i.i63, align 4
  %pag.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 5
  %473 = ptrtoint ptr %pag.i to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %pag.i, align 8
  %conv6.i = zext i8 %474 to i32
  %keys.i.i108 = getelementptr %struct.vcap_props, ptr %398, i32 2, i32 13
  %475 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx.i522.i = getelementptr %struct.vcap_field, ptr %476, i32 2
  %477 = ptrtoint ptr %arrayidx.i522.i to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %arrayidx.i522.i, align 4
  %length4.i.i109 = getelementptr %struct.vcap_field, ptr %476, i32 2, i32 1
  %479 = ptrtoint ptr %length4.i.i109 to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load i32, ptr %length4.i.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %480)
  %cmp16.not.i.i.i.i110 = icmp eq i32 %480, 0
  br i1 %cmp16.not.i.i.i.i110, label %if.end.i111.vcap_key_set.exit.i151_crit_edge, label %for.body.i.preheader.i.i.i113

if.end.i111.vcap_key_set.exit.i151_crit_edge:     ; preds = %if.end.i111
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit.i151

for.body.i.preheader.i.i.i113:                    ; preds = %if.end.i111
  %add.i.i.i112 = add i32 %478, %div26.i.i86
  br label %for.body.i.i.i.i130

for.body.i.i.i.i130:                              ; preds = %for.body.i.i.i.i130.for.body.i.i.i.i130_crit_edge, %for.body.i.preheader.i.i.i113
  %i.018.i.i.i.i114 = phi i32 [ %inc.i.i.i.i127, %for.body.i.i.i.i130.for.body.i.i.i.i130_crit_edge ], [ 0, %for.body.i.preheader.i.i.i113 ]
  %offset.addr.017.i.i.i.i115 = phi i32 [ %inc5.i.i.i.i128, %for.body.i.i.i.i130.for.body.i.i.i.i130_crit_edge ], [ %add.i.i.i112, %for.body.i.preheader.i.i.i113 ]
  %div15.i.i.i.i116 = lshr i32 %offset.addr.017.i.i.i.i115, 5
  %arrayidx.i.i.i.i117 = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i.i116
  %481 = ptrtoint ptr %arrayidx.i.i.i.i117 to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %arrayidx.i.i.i.i117, align 4
  %rem.i.i.i.i118 = and i32 %offset.addr.017.i.i.i.i115, 31
  %shl.i.i.i.i119 = shl nuw i32 1, %rem.i.i.i.i118
  %shl1.i.i.i.i120 = shl nuw i32 1, %i.018.i.i.i.i114
  %and.i.i.i.i121 = and i32 %shl1.i.i.i.i120, %conv6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i121)
  %tobool.not.i.i.i.i122 = icmp eq i32 %and.i.i.i.i121, 0
  %or.i.i.i.i123 = or i32 %shl.i.i.i.i119, %482
  %neg.i.i.i.i124 = xor i32 %shl.i.i.i.i119, -1
  %and2.i.i.i.i125 = and i32 %482, %neg.i.i.i.i124
  %v.0.i.i.i.i126 = select i1 %tobool.not.i.i.i.i122, i32 %and2.i.i.i.i125, i32 %or.i.i.i.i123
  %483 = ptrtoint ptr %arrayidx.i.i.i.i117 to i32
  call void @__asan_store4_noabort(i32 %483)
  store i32 %v.0.i.i.i.i126, ptr %arrayidx.i.i.i.i117, align 4
  %inc.i.i.i.i127 = add nuw i32 %i.018.i.i.i.i114, 1
  %inc5.i.i.i.i128 = add i32 %offset.addr.017.i.i.i.i115, 1
  %exitcond.not.i.i.i.i129 = icmp eq i32 %inc.i.i.i.i127, %480
  br i1 %exitcond.not.i.i.i.i129, label %for.body.i28.preheader.i.i.i133, label %for.body.i.i.i.i130.for.body.i.i.i.i130_crit_edge

for.body.i.i.i.i130.for.body.i.i.i.i130_crit_edge: ; preds = %for.body.i.i.i.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i130

for.body.i28.preheader.i.i.i133:                  ; preds = %for.body.i.i.i.i130
  %mask2.i.i.i131 = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %484 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i.i132 = add i32 %485, %478
  br label %for.body.i28.i.i.i148

for.body.i28.i.i.i148:                            ; preds = %for.body.i28.i.i.i148.for.body.i28.i.i.i148_crit_edge, %for.body.i28.preheader.i.i.i133
  %i.018.i12.i.i.i134 = phi i32 [ %inc.i25.i.i.i145, %for.body.i28.i.i.i148.for.body.i28.i.i.i148_crit_edge ], [ 0, %for.body.i28.preheader.i.i.i133 ]
  %offset.addr.017.i13.i.i.i135 = phi i32 [ %inc5.i26.i.i.i146, %for.body.i28.i.i.i148.for.body.i28.i.i.i148_crit_edge ], [ %add5.i.i.i132, %for.body.i28.preheader.i.i.i133 ]
  %div15.i14.i.i.i136 = lshr i32 %offset.addr.017.i13.i.i.i135, 5
  %arrayidx.i15.i.i.i137 = getelementptr i32, ptr %mask2.i.i.i131, i32 %div15.i14.i.i.i136
  %486 = ptrtoint ptr %arrayidx.i15.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %arrayidx.i15.i.i.i137, align 4
  %rem.i16.i.i.i138 = and i32 %offset.addr.017.i13.i.i.i135, 31
  %shl.i17.i.i.i139 = shl nuw i32 1, %rem.i16.i.i.i138
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.018.i12.i.i.i134)
  %tobool.not.i20.i.i.i140 = icmp ugt i32 %i.018.i12.i.i.i134, 7
  %or.i21.i.i.i141 = or i32 %shl.i17.i.i.i139, %487
  %neg.i22.i.i.i142 = xor i32 %shl.i17.i.i.i139, -1
  %and2.i23.i.i.i143 = and i32 %487, %neg.i22.i.i.i142
  %v.0.i24.i.i.i144 = select i1 %tobool.not.i20.i.i.i140, i32 %and2.i23.i.i.i143, i32 %or.i21.i.i.i141
  %488 = ptrtoint ptr %arrayidx.i15.i.i.i137 to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 %v.0.i24.i.i.i144, ptr %arrayidx.i15.i.i.i137, align 4
  %inc.i25.i.i.i145 = add nuw i32 %i.018.i12.i.i.i134, 1
  %inc5.i26.i.i.i146 = add i32 %offset.addr.017.i13.i.i.i135, 1
  %exitcond.not.i27.i.i.i147 = icmp eq i32 %inc.i25.i.i.i145, %480
  br i1 %exitcond.not.i27.i.i.i147, label %for.body.i28.i.i.i148.vcap_key_set.exit.i151_crit_edge, label %for.body.i28.i.i.i148.for.body.i28.i.i.i148_crit_edge

for.body.i28.i.i.i148.for.body.i28.i.i.i148_crit_edge: ; preds = %for.body.i28.i.i.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i.i148

for.body.i28.i.i.i148.vcap_key_set.exit.i151_crit_edge: ; preds = %for.body.i28.i.i.i148
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit.i151

vcap_key_set.exit.i151:                           ; preds = %for.body.i28.i.i.i148.vcap_key_set.exit.i151_crit_edge, %if.end.i111.vcap_key_set.exit.i151_crit_edge
  %lookup.i149 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 4
  %489 = ptrtoint ptr %lookup.i149 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %lookup.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %490)
  %cmp7.i = icmp eq i32 %490, 0
  %cond.i = select i1 %cmp7.i, i32 2, i32 1
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 1, i32 noundef %cond.i) #8
  %ingress_port_mask.i150 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 10
  %491 = ptrtoint ptr %ingress_port_mask.i150 to i32
  call void @__asan_load4_noabort(i32 %491)
  %492 = load i32, ptr %ingress_port_mask.i150, align 8
  %493 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %493)
  %494 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx.i524.i = getelementptr %struct.vcap_field, ptr %494, i32 4
  %495 = ptrtoint ptr %arrayidx.i524.i to i32
  call void @__asan_load4_noabort(i32 %495)
  %496 = load i32, ptr %arrayidx.i524.i, align 4
  %length4.i525.i = getelementptr %struct.vcap_field, ptr %494, i32 4, i32 1
  %497 = ptrtoint ptr %length4.i525.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %length4.i525.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %498)
  %cmp16.not.i.i.i527.i = icmp eq i32 %498, 0
  br i1 %cmp16.not.i.i.i527.i, label %vcap_key_set.exit.i151.vcap_key_set.exit564.i_crit_edge, label %for.body.i.preheader.i.i529.i

vcap_key_set.exit.i151.vcap_key_set.exit564.i_crit_edge: ; preds = %vcap_key_set.exit.i151
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit564.i

for.body.i.preheader.i.i529.i:                    ; preds = %vcap_key_set.exit.i151
  %499 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %499)
  %500 = load i32, ptr %key_offset.i.i87, align 4
  %add.i.i528.i = add i32 %500, %496
  br label %for.body.i.i.i543.i

for.body.i.i.i543.i:                              ; preds = %for.body.i.i.i543.i.for.body.i.i.i543.i_crit_edge, %for.body.i.preheader.i.i529.i
  %i.018.i.i.i530.i = phi i32 [ %inc.i.i.i540.i, %for.body.i.i.i543.i.for.body.i.i.i543.i_crit_edge ], [ 0, %for.body.i.preheader.i.i529.i ]
  %offset.addr.017.i.i.i531.i = phi i32 [ %inc5.i.i.i541.i, %for.body.i.i.i543.i.for.body.i.i.i543.i_crit_edge ], [ %add.i.i528.i, %for.body.i.preheader.i.i529.i ]
  %div15.i.i.i532.i = lshr i32 %offset.addr.017.i.i.i531.i, 5
  %arrayidx.i.i.i533.i = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i532.i
  %501 = ptrtoint ptr %arrayidx.i.i.i533.i to i32
  call void @__asan_load4_noabort(i32 %501)
  %502 = load i32, ptr %arrayidx.i.i.i533.i, align 4
  %rem.i.i.i534.i = and i32 %offset.addr.017.i.i.i531.i, 31
  %shl.i.i.i535.i = shl nuw i32 1, %rem.i.i.i534.i
  %neg.i.i.i538.i = xor i32 %shl.i.i.i535.i, -1
  %and2.i.i.i539.i = and i32 %502, %neg.i.i.i538.i
  store i32 %and2.i.i.i539.i, ptr %arrayidx.i.i.i533.i, align 4
  %inc.i.i.i540.i = add nuw i32 %i.018.i.i.i530.i, 1
  %inc5.i.i.i541.i = add i32 %offset.addr.017.i.i.i531.i, 1
  %exitcond.not.i.i.i542.i = icmp eq i32 %inc.i.i.i540.i, %498
  br i1 %exitcond.not.i.i.i542.i, label %for.body.i28.preheader.i.i546.i, label %for.body.i.i.i543.i.for.body.i.i.i543.i_crit_edge

for.body.i.i.i543.i.for.body.i.i.i543.i_crit_edge: ; preds = %for.body.i.i.i543.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i543.i

for.body.i28.preheader.i.i546.i:                  ; preds = %for.body.i.i.i543.i
  %mask2.i.i544.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %503 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %503)
  %504 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i545.i = add i32 %504, %496
  br label %for.body.i28.i.i563.i

for.body.i28.i.i563.i:                            ; preds = %for.body.i28.i.i563.i.for.body.i28.i.i563.i_crit_edge, %for.body.i28.preheader.i.i546.i
  %i.018.i12.i.i547.i = phi i32 [ %inc.i25.i.i560.i, %for.body.i28.i.i563.i.for.body.i28.i.i563.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i546.i ]
  %offset.addr.017.i13.i.i548.i = phi i32 [ %inc5.i26.i.i561.i, %for.body.i28.i.i563.i.for.body.i28.i.i563.i_crit_edge ], [ %add5.i.i545.i, %for.body.i28.preheader.i.i546.i ]
  %div15.i14.i.i549.i = lshr i32 %offset.addr.017.i13.i.i548.i, 5
  %arrayidx.i15.i.i550.i = getelementptr i32, ptr %mask2.i.i544.i, i32 %div15.i14.i.i549.i
  %505 = ptrtoint ptr %arrayidx.i15.i.i550.i to i32
  call void @__asan_load4_noabort(i32 %505)
  %506 = load i32, ptr %arrayidx.i15.i.i550.i, align 4
  %rem.i16.i.i551.i = and i32 %offset.addr.017.i13.i.i548.i, 31
  %shl.i17.i.i552.i = shl nuw i32 1, %rem.i16.i.i551.i
  %shl1.i18.i.i553.i = shl nuw i32 1, %i.018.i12.i.i547.i
  %507 = and i32 %shl1.i18.i.i553.i, %492
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %507)
  %tobool.not.i20.i.i555.not.i = icmp eq i32 %507, 0
  %or.i21.i.i556.i = or i32 %shl.i17.i.i552.i, %506
  %neg.i22.i.i557.i = xor i32 %shl.i17.i.i552.i, -1
  %and2.i23.i.i558.i = and i32 %506, %neg.i22.i.i557.i
  %v.0.i24.i.i559.i = select i1 %tobool.not.i20.i.i555.not.i, i32 %or.i21.i.i556.i, i32 %and2.i23.i.i558.i
  %508 = ptrtoint ptr %arrayidx.i15.i.i550.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 %v.0.i24.i.i559.i, ptr %arrayidx.i15.i.i550.i, align 4
  %inc.i25.i.i560.i = add nuw i32 %i.018.i12.i.i547.i, 1
  %inc5.i26.i.i561.i = add i32 %offset.addr.017.i13.i.i548.i, 1
  %exitcond.not.i27.i.i562.i = icmp eq i32 %inc.i25.i.i560.i, %498
  br i1 %exitcond.not.i27.i.i562.i, label %for.body.i28.i.i563.i.vcap_key_set.exit564.i_crit_edge, label %for.body.i28.i.i563.i.for.body.i28.i.i563.i_crit_edge

for.body.i28.i.i563.i.for.body.i28.i.i563.i_crit_edge: ; preds = %for.body.i28.i.i563.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i563.i

for.body.i28.i.i563.i.vcap_key_set.exit564.i_crit_edge: ; preds = %for.body.i28.i.i563.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit564.i

vcap_key_set.exit564.i:                           ; preds = %for.body.i28.i.i563.i.vcap_key_set.exit564.i_crit_edge, %vcap_key_set.exit.i151.vcap_key_set.exit564.i_crit_edge
  %509 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %509)
  %510 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx.i566.i = getelementptr %struct.vcap_field, ptr %510, i32 1
  %511 = ptrtoint ptr %arrayidx.i566.i to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load i32, ptr %arrayidx.i566.i, align 4
  %length6.i.i152 = getelementptr %struct.vcap_field, ptr %510, i32 1, i32 1
  %513 = ptrtoint ptr %length6.i.i152 to i32
  call void @__asan_load4_noabort(i32 %513)
  %514 = load i32, ptr %length6.i.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %514)
  %cmp7.not.i.i153 = icmp eq i32 %514, 1
  br i1 %cmp7.not.i.i153, label %vcap_key_set.exit564.i.for.body.i.preheader.i.i569.i_crit_edge, label %if.end.i.i154, !prof !27

vcap_key_set.exit564.i.for.body.i.preheader.i.i569.i_crit_edge: ; preds = %vcap_key_set.exit564.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i.i569.i

if.end.i.i154:                                    ; preds = %vcap_key_set.exit564.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 315, i32 noundef 9, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %514)
  %cmp16.not.i.i.i567.i = icmp eq i32 %514, 0
  br i1 %cmp16.not.i.i.i567.i, label %if.end.i.i154.vcap_key_bit_set.exit.i155_crit_edge, label %if.end.i.i154.for.body.i.preheader.i.i569.i_crit_edge

if.end.i.i154.for.body.i.preheader.i.i569.i_crit_edge: ; preds = %if.end.i.i154
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i.i569.i

if.end.i.i154.vcap_key_bit_set.exit.i155_crit_edge: ; preds = %if.end.i.i154
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_bit_set.exit.i155

for.body.i.preheader.i.i569.i:                    ; preds = %if.end.i.i154.for.body.i.preheader.i.i569.i_crit_edge, %vcap_key_set.exit564.i.for.body.i.preheader.i.i569.i_crit_edge
  %515 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %515)
  %516 = load i32, ptr %key_offset.i.i87, align 4
  %add.i.i568.i = add i32 %516, %512
  br label %for.body.i.i.i583.i

for.body.i.i.i583.i:                              ; preds = %for.body.i.i.i583.i.for.body.i.i.i583.i_crit_edge, %for.body.i.preheader.i.i569.i
  %i.018.i.i.i570.i = phi i32 [ %inc.i.i.i580.i, %for.body.i.i.i583.i.for.body.i.i.i583.i_crit_edge ], [ 0, %for.body.i.preheader.i.i569.i ]
  %offset.addr.017.i.i.i571.i = phi i32 [ %inc5.i.i.i581.i, %for.body.i.i.i583.i.for.body.i.i.i583.i_crit_edge ], [ %add.i.i568.i, %for.body.i.preheader.i.i569.i ]
  %div15.i.i.i572.i = lshr i32 %offset.addr.017.i.i.i571.i, 5
  %arrayidx.i.i.i573.i = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i572.i
  %517 = ptrtoint ptr %arrayidx.i.i.i573.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load i32, ptr %arrayidx.i.i.i573.i, align 4
  %rem.i.i.i574.i = and i32 %offset.addr.017.i.i.i571.i, 31
  %shl.i.i.i575.i = shl nuw i32 1, %rem.i.i.i574.i
  %neg.i.i.i578.i = xor i32 %shl.i.i.i575.i, -1
  %and2.i.i.i579.i = and i32 %518, %neg.i.i.i578.i
  store i32 %and2.i.i.i579.i, ptr %arrayidx.i.i.i573.i, align 4
  %inc.i.i.i580.i = add nuw i32 %i.018.i.i.i570.i, 1
  %inc5.i.i.i581.i = add i32 %offset.addr.017.i.i.i571.i, 1
  %exitcond.not.i.i.i582.i = icmp eq i32 %inc.i.i.i580.i, %514
  br i1 %exitcond.not.i.i.i582.i, label %for.body.i28.preheader.i.i586.i, label %for.body.i.i.i583.i.for.body.i.i.i583.i_crit_edge

for.body.i.i.i583.i.for.body.i.i.i583.i_crit_edge: ; preds = %for.body.i.i.i583.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i583.i

for.body.i28.preheader.i.i586.i:                  ; preds = %for.body.i.i.i583.i
  %mask2.i.i584.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %519 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %519)
  %520 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i585.i = add i32 %520, %512
  br label %for.body.i28.i.i600.i

for.body.i28.i.i600.i:                            ; preds = %for.body.i28.i.i600.i.for.body.i28.i.i600.i_crit_edge, %for.body.i28.preheader.i.i586.i
  %i.018.i12.i.i587.i = phi i32 [ %inc.i25.i.i597.i, %for.body.i28.i.i600.i.for.body.i28.i.i600.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i586.i ]
  %offset.addr.017.i13.i.i588.i = phi i32 [ %inc5.i26.i.i598.i, %for.body.i28.i.i600.i.for.body.i28.i.i600.i_crit_edge ], [ %add5.i.i585.i, %for.body.i28.preheader.i.i586.i ]
  %div15.i14.i.i589.i = lshr i32 %offset.addr.017.i13.i.i588.i, 5
  %arrayidx.i15.i.i590.i = getelementptr i32, ptr %mask2.i.i584.i, i32 %div15.i14.i.i589.i
  %521 = ptrtoint ptr %arrayidx.i15.i.i590.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load i32, ptr %arrayidx.i15.i.i590.i, align 4
  %rem.i16.i.i591.i = and i32 %offset.addr.017.i13.i.i588.i, 31
  %shl.i17.i.i592.i = shl nuw i32 1, %rem.i16.i.i591.i
  %neg.i22.i.i595.i = xor i32 %shl.i17.i.i592.i, -1
  %and2.i23.i.i596.i = and i32 %522, %neg.i22.i.i595.i
  store i32 %and2.i23.i.i596.i, ptr %arrayidx.i15.i.i590.i, align 4
  %inc.i25.i.i597.i = add nuw i32 %i.018.i12.i.i587.i, 1
  %inc5.i26.i.i598.i = add i32 %offset.addr.017.i13.i.i588.i, 1
  %exitcond.not.i27.i.i599.i = icmp eq i32 %inc.i25.i.i597.i, %514
  br i1 %exitcond.not.i27.i.i599.i, label %for.body.i28.i.i600.i.vcap_key_bit_set.exit.i155_crit_edge, label %for.body.i28.i.i600.i.for.body.i28.i.i600.i_crit_edge

for.body.i28.i.i600.i.for.body.i28.i.i600.i_crit_edge: ; preds = %for.body.i28.i.i600.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i600.i

for.body.i28.i.i600.i.vcap_key_bit_set.exit.i155_crit_edge: ; preds = %for.body.i28.i.i600.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_bit_set.exit.i155

vcap_key_bit_set.exit.i155:                       ; preds = %for.body.i28.i.i600.i.vcap_key_bit_set.exit.i155_crit_edge, %if.end.i.i154.vcap_key_bit_set.exit.i155_crit_edge
  %523 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %523)
  %524 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx.i602.i = getelementptr %struct.vcap_field, ptr %524, i32 6
  %525 = ptrtoint ptr %arrayidx.i602.i to i32
  call void @__asan_load4_noabort(i32 %525)
  %526 = load i32, ptr %arrayidx.i602.i, align 4
  %length6.i603.i = getelementptr %struct.vcap_field, ptr %524, i32 6, i32 1
  %527 = ptrtoint ptr %length6.i603.i to i32
  call void @__asan_load4_noabort(i32 %527)
  %528 = load i32, ptr %length6.i603.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %528)
  %cmp7.not.i604.i = icmp eq i32 %528, 1
  br i1 %cmp7.not.i604.i, label %vcap_key_bit_set.exit.i155.for.body.i.preheader.i.i609.i_crit_edge, label %if.end.i606.i, !prof !27

vcap_key_bit_set.exit.i155.for.body.i.preheader.i.i609.i_crit_edge: ; preds = %vcap_key_bit_set.exit.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i.i609.i

if.end.i606.i:                                    ; preds = %vcap_key_bit_set.exit.i155
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 315, i32 noundef 9, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %528)
  %cmp16.not.i.i.i605.i = icmp eq i32 %528, 0
  br i1 %cmp16.not.i.i.i605.i, label %if.end.i606.i.vcap_key_bit_set.exit641.i_crit_edge, label %if.end.i606.i.for.body.i.preheader.i.i609.i_crit_edge

if.end.i606.i.for.body.i.preheader.i.i609.i_crit_edge: ; preds = %if.end.i606.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i.i609.i

if.end.i606.i.vcap_key_bit_set.exit641.i_crit_edge: ; preds = %if.end.i606.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_bit_set.exit641.i

for.body.i.preheader.i.i609.i:                    ; preds = %if.end.i606.i.for.body.i.preheader.i.i609.i_crit_edge, %vcap_key_bit_set.exit.i155.for.body.i.preheader.i.i609.i_crit_edge
  %529 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %529)
  %530 = load i32, ptr %key_offset.i.i87, align 4
  %add.i.i608.i = add i32 %530, %526
  br label %for.body.i.i.i623.i

for.body.i.i.i623.i:                              ; preds = %for.body.i.i.i623.i.for.body.i.i.i623.i_crit_edge, %for.body.i.preheader.i.i609.i
  %i.018.i.i.i610.i = phi i32 [ %inc.i.i.i620.i, %for.body.i.i.i623.i.for.body.i.i.i623.i_crit_edge ], [ 0, %for.body.i.preheader.i.i609.i ]
  %offset.addr.017.i.i.i611.i = phi i32 [ %inc5.i.i.i621.i, %for.body.i.i.i623.i.for.body.i.i.i623.i_crit_edge ], [ %add.i.i608.i, %for.body.i.preheader.i.i609.i ]
  %div15.i.i.i612.i = lshr i32 %offset.addr.017.i.i.i611.i, 5
  %arrayidx.i.i.i613.i = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i612.i
  %531 = ptrtoint ptr %arrayidx.i.i.i613.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %arrayidx.i.i.i613.i, align 4
  %rem.i.i.i614.i = and i32 %offset.addr.017.i.i.i611.i, 31
  %shl.i.i.i615.i = shl nuw i32 1, %rem.i.i.i614.i
  %neg.i.i.i618.i = xor i32 %shl.i.i.i615.i, -1
  %and2.i.i.i619.i = and i32 %532, %neg.i.i.i618.i
  store i32 %and2.i.i.i619.i, ptr %arrayidx.i.i.i613.i, align 4
  %inc.i.i.i620.i = add nuw i32 %i.018.i.i.i610.i, 1
  %inc5.i.i.i621.i = add i32 %offset.addr.017.i.i.i611.i, 1
  %exitcond.not.i.i.i622.i = icmp eq i32 %inc.i.i.i620.i, %528
  br i1 %exitcond.not.i.i.i622.i, label %for.body.i28.preheader.i.i626.i, label %for.body.i.i.i623.i.for.body.i.i.i623.i_crit_edge

for.body.i.i.i623.i.for.body.i.i.i623.i_crit_edge: ; preds = %for.body.i.i.i623.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i623.i

for.body.i28.preheader.i.i626.i:                  ; preds = %for.body.i.i.i623.i
  %mask2.i.i624.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %533 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %533)
  %534 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i625.i = add i32 %534, %526
  br label %for.body.i28.i.i640.i

for.body.i28.i.i640.i:                            ; preds = %for.body.i28.i.i640.i.for.body.i28.i.i640.i_crit_edge, %for.body.i28.preheader.i.i626.i
  %i.018.i12.i.i627.i = phi i32 [ %inc.i25.i.i637.i, %for.body.i28.i.i640.i.for.body.i28.i.i640.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i626.i ]
  %offset.addr.017.i13.i.i628.i = phi i32 [ %inc5.i26.i.i638.i, %for.body.i28.i.i640.i.for.body.i28.i.i640.i_crit_edge ], [ %add5.i.i625.i, %for.body.i28.preheader.i.i626.i ]
  %div15.i14.i.i629.i = lshr i32 %offset.addr.017.i13.i.i628.i, 5
  %arrayidx.i15.i.i630.i = getelementptr i32, ptr %mask2.i.i624.i, i32 %div15.i14.i.i629.i
  %535 = ptrtoint ptr %arrayidx.i15.i.i630.i to i32
  call void @__asan_load4_noabort(i32 %535)
  %536 = load i32, ptr %arrayidx.i15.i.i630.i, align 4
  %rem.i16.i.i631.i = and i32 %offset.addr.017.i13.i.i628.i, 31
  %shl.i17.i.i632.i = shl nuw i32 1, %rem.i16.i.i631.i
  %neg.i22.i.i635.i = xor i32 %shl.i17.i.i632.i, -1
  %and2.i23.i.i636.i = and i32 %536, %neg.i22.i.i635.i
  store i32 %and2.i23.i.i636.i, ptr %arrayidx.i15.i.i630.i, align 4
  %inc.i25.i.i637.i = add nuw i32 %i.018.i12.i.i627.i, 1
  %inc5.i26.i.i638.i = add i32 %offset.addr.017.i13.i.i628.i, 1
  %exitcond.not.i27.i.i639.i = icmp eq i32 %inc.i25.i.i637.i, %528
  br i1 %exitcond.not.i27.i.i639.i, label %for.body.i28.i.i640.i.vcap_key_bit_set.exit641.i_crit_edge, label %for.body.i28.i.i640.i.for.body.i28.i.i640.i_crit_edge

for.body.i28.i.i640.i.for.body.i28.i.i640.i_crit_edge: ; preds = %for.body.i28.i.i640.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i640.i

for.body.i28.i.i640.i.vcap_key_bit_set.exit641.i_crit_edge: ; preds = %for.body.i28.i.i640.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_bit_set.exit641.i

vcap_key_bit_set.exit641.i:                       ; preds = %for.body.i28.i.i640.i.vcap_key_bit_set.exit641.i_crit_edge, %if.end.i606.i.vcap_key_bit_set.exit641.i_crit_edge
  %dmac_mc.i156 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 13
  %537 = ptrtoint ptr %dmac_mc.i156 to i32
  call void @__asan_load4_noabort(i32 %537)
  %538 = load i32, ptr %dmac_mc.i156, align 8
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 7, i32 noundef %538) #8
  %dmac_bc.i157 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 14
  %539 = ptrtoint ptr %dmac_bc.i157 to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load i32, ptr %dmac_bc.i157, align 4
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 8, i32 noundef %540) #8
  %tagged.i158 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 15, i32 3
  %541 = ptrtoint ptr %tagged.i158 to i32
  call void @__asan_load4_noabort(i32 %541)
  %542 = load i32, ptr %tagged.i158, align 4
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 9, i32 noundef %542) #8
  %543 = ptrtoint ptr %vlan.i21 to i32
  call void @__asan_load2_noabort(i32 %543)
  %544 = load i16, ptr %vlan.i21, align 4
  %conv10.i = zext i16 %544 to i32
  %mask.i159 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 15, i32 0, i32 1
  %545 = ptrtoint ptr %mask.i159 to i32
  call void @__asan_load2_noabort(i32 %545)
  %546 = load i16, ptr %mask.i159, align 2
  %conv12.i160 = zext i16 %546 to i32
  %547 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %547)
  %548 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx.i643.i = getelementptr %struct.vcap_field, ptr %548, i32 10
  %549 = ptrtoint ptr %arrayidx.i643.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %arrayidx.i643.i, align 4
  %length4.i644.i = getelementptr %struct.vcap_field, ptr %548, i32 10, i32 1
  %551 = ptrtoint ptr %length4.i644.i to i32
  call void @__asan_load4_noabort(i32 %551)
  %552 = load i32, ptr %length4.i644.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %552)
  %cmp16.not.i.i.i646.i = icmp eq i32 %552, 0
  br i1 %cmp16.not.i.i.i646.i, label %vcap_key_bit_set.exit641.i.vcap_key_set.exit686.i_crit_edge, label %for.body.i.preheader.i.i648.i

vcap_key_bit_set.exit641.i.vcap_key_set.exit686.i_crit_edge: ; preds = %vcap_key_bit_set.exit641.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit686.i

for.body.i.preheader.i.i648.i:                    ; preds = %vcap_key_bit_set.exit641.i
  %553 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load i32, ptr %key_offset.i.i87, align 4
  %add.i.i647.i = add i32 %554, %550
  br label %for.body.i.i.i665.i

for.body.i.i.i665.i:                              ; preds = %for.body.i.i.i665.i.for.body.i.i.i665.i_crit_edge, %for.body.i.preheader.i.i648.i
  %i.018.i.i.i649.i = phi i32 [ %inc.i.i.i662.i, %for.body.i.i.i665.i.for.body.i.i.i665.i_crit_edge ], [ 0, %for.body.i.preheader.i.i648.i ]
  %offset.addr.017.i.i.i650.i = phi i32 [ %inc5.i.i.i663.i, %for.body.i.i.i665.i.for.body.i.i.i665.i_crit_edge ], [ %add.i.i647.i, %for.body.i.preheader.i.i648.i ]
  %div15.i.i.i651.i = lshr i32 %offset.addr.017.i.i.i650.i, 5
  %arrayidx.i.i.i652.i = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i651.i
  %555 = ptrtoint ptr %arrayidx.i.i.i652.i to i32
  call void @__asan_load4_noabort(i32 %555)
  %556 = load i32, ptr %arrayidx.i.i.i652.i, align 4
  %rem.i.i.i653.i = and i32 %offset.addr.017.i.i.i650.i, 31
  %shl.i.i.i654.i = shl nuw i32 1, %rem.i.i.i653.i
  %shl1.i.i.i655.i = shl nuw i32 1, %i.018.i.i.i649.i
  %and.i.i.i656.i = and i32 %shl1.i.i.i655.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i656.i)
  %tobool.not.i.i.i657.i = icmp eq i32 %and.i.i.i656.i, 0
  %or.i.i.i658.i = or i32 %shl.i.i.i654.i, %556
  %neg.i.i.i659.i = xor i32 %shl.i.i.i654.i, -1
  %and2.i.i.i660.i = and i32 %556, %neg.i.i.i659.i
  %v.0.i.i.i661.i = select i1 %tobool.not.i.i.i657.i, i32 %and2.i.i.i660.i, i32 %or.i.i.i658.i
  %557 = ptrtoint ptr %arrayidx.i.i.i652.i to i32
  call void @__asan_store4_noabort(i32 %557)
  store i32 %v.0.i.i.i661.i, ptr %arrayidx.i.i.i652.i, align 4
  %inc.i.i.i662.i = add nuw i32 %i.018.i.i.i649.i, 1
  %inc5.i.i.i663.i = add i32 %offset.addr.017.i.i.i650.i, 1
  %exitcond.not.i.i.i664.i = icmp eq i32 %inc.i.i.i662.i, %552
  br i1 %exitcond.not.i.i.i664.i, label %for.body.i28.preheader.i.i668.i, label %for.body.i.i.i665.i.for.body.i.i.i665.i_crit_edge

for.body.i.i.i665.i.for.body.i.i.i665.i_crit_edge: ; preds = %for.body.i.i.i665.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i665.i

for.body.i28.preheader.i.i668.i:                  ; preds = %for.body.i.i.i665.i
  %mask2.i.i666.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %558 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i667.i = add i32 %559, %550
  br label %for.body.i28.i.i685.i

for.body.i28.i.i685.i:                            ; preds = %for.body.i28.i.i685.i.for.body.i28.i.i685.i_crit_edge, %for.body.i28.preheader.i.i668.i
  %i.018.i12.i.i669.i = phi i32 [ %inc.i25.i.i682.i, %for.body.i28.i.i685.i.for.body.i28.i.i685.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i668.i ]
  %offset.addr.017.i13.i.i670.i = phi i32 [ %inc5.i26.i.i683.i, %for.body.i28.i.i685.i.for.body.i28.i.i685.i_crit_edge ], [ %add5.i.i667.i, %for.body.i28.preheader.i.i668.i ]
  %div15.i14.i.i671.i = lshr i32 %offset.addr.017.i13.i.i670.i, 5
  %arrayidx.i15.i.i672.i = getelementptr i32, ptr %mask2.i.i666.i, i32 %div15.i14.i.i671.i
  %560 = ptrtoint ptr %arrayidx.i15.i.i672.i to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load i32, ptr %arrayidx.i15.i.i672.i, align 4
  %rem.i16.i.i673.i = and i32 %offset.addr.017.i13.i.i670.i, 31
  %shl.i17.i.i674.i = shl nuw i32 1, %rem.i16.i.i673.i
  %shl1.i18.i.i675.i = shl nuw i32 1, %i.018.i12.i.i669.i
  %and.i19.i.i676.i = and i32 %shl1.i18.i.i675.i, %conv12.i160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i.i676.i)
  %tobool.not.i20.i.i677.i = icmp eq i32 %and.i19.i.i676.i, 0
  %or.i21.i.i678.i = or i32 %shl.i17.i.i674.i, %561
  %neg.i22.i.i679.i = xor i32 %shl.i17.i.i674.i, -1
  %and2.i23.i.i680.i = and i32 %561, %neg.i22.i.i679.i
  %v.0.i24.i.i681.i = select i1 %tobool.not.i20.i.i677.i, i32 %and2.i23.i.i680.i, i32 %or.i21.i.i678.i
  %562 = ptrtoint ptr %arrayidx.i15.i.i672.i to i32
  call void @__asan_store4_noabort(i32 %562)
  store i32 %v.0.i24.i.i681.i, ptr %arrayidx.i15.i.i672.i, align 4
  %inc.i25.i.i682.i = add nuw i32 %i.018.i12.i.i669.i, 1
  %inc5.i26.i.i683.i = add i32 %offset.addr.017.i13.i.i670.i, 1
  %exitcond.not.i27.i.i684.i = icmp eq i32 %inc.i25.i.i682.i, %552
  br i1 %exitcond.not.i27.i.i684.i, label %for.body.i28.i.i685.i.vcap_key_set.exit686.i_crit_edge, label %for.body.i28.i.i685.i.for.body.i28.i.i685.i_crit_edge

for.body.i28.i.i685.i.for.body.i28.i.i685.i_crit_edge: ; preds = %for.body.i28.i.i685.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i685.i

for.body.i28.i.i685.i.vcap_key_set.exit686.i_crit_edge: ; preds = %for.body.i28.i.i685.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit686.i

vcap_key_set.exit686.i:                           ; preds = %for.body.i28.i.i685.i.vcap_key_set.exit686.i_crit_edge, %vcap_key_bit_set.exit641.i.vcap_key_set.exit686.i_crit_edge
  %pcp.i161 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 15, i32 1
  %563 = ptrtoint ptr %pcp.i161 to i32
  call void @__asan_load1_noabort(i32 %563)
  %564 = load i8, ptr %pcp.i161, align 4
  %conv15.i = zext i8 %564 to i32
  %mask17.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 15, i32 1, i32 1
  %565 = ptrtoint ptr %mask17.i to i32
  call void @__asan_load1_noabort(i32 %565)
  %566 = load i8, ptr %mask17.i, align 1
  %conv19.i = zext i8 %566 to i32
  %567 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %567)
  %568 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx.i688.i = getelementptr %struct.vcap_field, ptr %568, i32 12
  %569 = ptrtoint ptr %arrayidx.i688.i to i32
  call void @__asan_load4_noabort(i32 %569)
  %570 = load i32, ptr %arrayidx.i688.i, align 4
  %length4.i689.i = getelementptr %struct.vcap_field, ptr %568, i32 12, i32 1
  %571 = ptrtoint ptr %length4.i689.i to i32
  call void @__asan_load4_noabort(i32 %571)
  %572 = load i32, ptr %length4.i689.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %572)
  %cmp16.not.i.i.i691.i = icmp eq i32 %572, 0
  br i1 %cmp16.not.i.i.i691.i, label %vcap_key_set.exit686.i.vcap_key_set.exit731.i_crit_edge, label %for.body.i.preheader.i.i693.i

vcap_key_set.exit686.i.vcap_key_set.exit731.i_crit_edge: ; preds = %vcap_key_set.exit686.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit731.i

for.body.i.preheader.i.i693.i:                    ; preds = %vcap_key_set.exit686.i
  %573 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %573)
  %574 = load i32, ptr %key_offset.i.i87, align 4
  %add.i.i692.i = add i32 %574, %570
  br label %for.body.i.i.i710.i

for.body.i.i.i710.i:                              ; preds = %for.body.i.i.i710.i.for.body.i.i.i710.i_crit_edge, %for.body.i.preheader.i.i693.i
  %i.018.i.i.i694.i = phi i32 [ %inc.i.i.i707.i, %for.body.i.i.i710.i.for.body.i.i.i710.i_crit_edge ], [ 0, %for.body.i.preheader.i.i693.i ]
  %offset.addr.017.i.i.i695.i = phi i32 [ %inc5.i.i.i708.i, %for.body.i.i.i710.i.for.body.i.i.i710.i_crit_edge ], [ %add.i.i692.i, %for.body.i.preheader.i.i693.i ]
  %div15.i.i.i696.i = lshr i32 %offset.addr.017.i.i.i695.i, 5
  %arrayidx.i.i.i697.i = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i696.i
  %575 = ptrtoint ptr %arrayidx.i.i.i697.i to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load i32, ptr %arrayidx.i.i.i697.i, align 4
  %rem.i.i.i698.i = and i32 %offset.addr.017.i.i.i695.i, 31
  %shl.i.i.i699.i = shl nuw i32 1, %rem.i.i.i698.i
  %shl1.i.i.i700.i = shl nuw i32 1, %i.018.i.i.i694.i
  %and.i.i.i701.i = and i32 %shl1.i.i.i700.i, %conv15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i701.i)
  %tobool.not.i.i.i702.i = icmp eq i32 %and.i.i.i701.i, 0
  %or.i.i.i703.i = or i32 %shl.i.i.i699.i, %576
  %neg.i.i.i704.i = xor i32 %shl.i.i.i699.i, -1
  %and2.i.i.i705.i = and i32 %576, %neg.i.i.i704.i
  %v.0.i.i.i706.i = select i1 %tobool.not.i.i.i702.i, i32 %and2.i.i.i705.i, i32 %or.i.i.i703.i
  %577 = ptrtoint ptr %arrayidx.i.i.i697.i to i32
  call void @__asan_store4_noabort(i32 %577)
  store i32 %v.0.i.i.i706.i, ptr %arrayidx.i.i.i697.i, align 4
  %inc.i.i.i707.i = add nuw i32 %i.018.i.i.i694.i, 1
  %inc5.i.i.i708.i = add i32 %offset.addr.017.i.i.i695.i, 1
  %exitcond.not.i.i.i709.i = icmp eq i32 %inc.i.i.i707.i, %572
  br i1 %exitcond.not.i.i.i709.i, label %for.body.i28.preheader.i.i713.i, label %for.body.i.i.i710.i.for.body.i.i.i710.i_crit_edge

for.body.i.i.i710.i.for.body.i.i.i710.i_crit_edge: ; preds = %for.body.i.i.i710.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i710.i

for.body.i28.preheader.i.i713.i:                  ; preds = %for.body.i.i.i710.i
  %mask2.i.i711.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %578 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i712.i = add i32 %579, %570
  br label %for.body.i28.i.i730.i

for.body.i28.i.i730.i:                            ; preds = %for.body.i28.i.i730.i.for.body.i28.i.i730.i_crit_edge, %for.body.i28.preheader.i.i713.i
  %i.018.i12.i.i714.i = phi i32 [ %inc.i25.i.i727.i, %for.body.i28.i.i730.i.for.body.i28.i.i730.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i713.i ]
  %offset.addr.017.i13.i.i715.i = phi i32 [ %inc5.i26.i.i728.i, %for.body.i28.i.i730.i.for.body.i28.i.i730.i_crit_edge ], [ %add5.i.i712.i, %for.body.i28.preheader.i.i713.i ]
  %div15.i14.i.i716.i = lshr i32 %offset.addr.017.i13.i.i715.i, 5
  %arrayidx.i15.i.i717.i = getelementptr i32, ptr %mask2.i.i711.i, i32 %div15.i14.i.i716.i
  %580 = ptrtoint ptr %arrayidx.i15.i.i717.i to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load i32, ptr %arrayidx.i15.i.i717.i, align 4
  %rem.i16.i.i718.i = and i32 %offset.addr.017.i13.i.i715.i, 31
  %shl.i17.i.i719.i = shl nuw i32 1, %rem.i16.i.i718.i
  %shl1.i18.i.i720.i = shl nuw i32 1, %i.018.i12.i.i714.i
  %and.i19.i.i721.i = and i32 %shl1.i18.i.i720.i, %conv19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i.i721.i)
  %tobool.not.i20.i.i722.i = icmp eq i32 %and.i19.i.i721.i, 0
  %or.i21.i.i723.i = or i32 %shl.i17.i.i719.i, %581
  %neg.i22.i.i724.i = xor i32 %shl.i17.i.i719.i, -1
  %and2.i23.i.i725.i = and i32 %581, %neg.i22.i.i724.i
  %v.0.i24.i.i726.i = select i1 %tobool.not.i20.i.i722.i, i32 %and2.i23.i.i725.i, i32 %or.i21.i.i723.i
  %582 = ptrtoint ptr %arrayidx.i15.i.i717.i to i32
  call void @__asan_store4_noabort(i32 %582)
  store i32 %v.0.i24.i.i726.i, ptr %arrayidx.i15.i.i717.i, align 4
  %inc.i25.i.i727.i = add nuw i32 %i.018.i12.i.i714.i, 1
  %inc5.i26.i.i728.i = add i32 %offset.addr.017.i13.i.i715.i, 1
  %exitcond.not.i27.i.i729.i = icmp eq i32 %inc.i25.i.i727.i, %572
  br i1 %exitcond.not.i27.i.i729.i, label %for.body.i28.i.i730.i.vcap_key_set.exit731.i_crit_edge, label %for.body.i28.i.i730.i.for.body.i28.i.i730.i_crit_edge

for.body.i28.i.i730.i.for.body.i28.i.i730.i_crit_edge: ; preds = %for.body.i28.i.i730.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i730.i

for.body.i28.i.i730.i.vcap_key_set.exit731.i_crit_edge: ; preds = %for.body.i28.i.i730.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit731.i

vcap_key_set.exit731.i:                           ; preds = %for.body.i28.i.i730.i.vcap_key_set.exit731.i_crit_edge, %vcap_key_set.exit686.i.vcap_key_set.exit731.i_crit_edge
  %dei.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 15, i32 2
  %583 = ptrtoint ptr %dei.i to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load i32, ptr %dei.i, align 4
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 11, i32 noundef %584) #8
  %key_type.i162 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 16
  %585 = ptrtoint ptr %key_type.i162 to i32
  call void @__asan_load4_noabort(i32 %585)
  %586 = load i32, ptr %key_type.i162, align 8
  %587 = zext i32 %586 to i64
  call void @__sanitizer_cov_trace_switch(i64 %587, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %586, label %sw.default.i [
    i32 1, label %sw.bb.i164
    i32 2, label %sw.bb41.i
    i32 3, label %sw.bb71.i
    i32 4, label %sw.bb93.i
    i32 5, label %vcap_key_set.exit731.i.sw.bb131.i_crit_edge
    i32 6, label %vcap_key_set.exit731.i.sw.bb131.i_crit_edge337
  ]

vcap_key_set.exit731.i.sw.bb131.i_crit_edge337:   ; preds = %vcap_key_set.exit731.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb131.i

vcap_key_set.exit731.i.sw.bb131.i_crit_edge:      ; preds = %vcap_key_set.exit731.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb131.i

sw.bb.i164:                                       ; preds = %vcap_key_set.exit731.i
  %key.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17
  %mask22.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 4
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 13, ptr noundef %key.i, ptr noundef %mask22.i) #8
  %smac.i163 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 10
  %mask27.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 14, ptr noundef %smac.i163, ptr noundef %mask27.i) #8
  %etype29.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 6
  %mask33.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 8
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 15, ptr noundef %etype29.i, ptr noundef %mask33.i) #8
  %588 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %588)
  %589 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx.i733.i = getelementptr %struct.vcap_field, ptr %589, i32 16
  %590 = ptrtoint ptr %arrayidx.i733.i to i32
  call void @__asan_load4_noabort(i32 %590)
  %591 = load i32, ptr %arrayidx.i733.i, align 4
  %length4.i734.i = getelementptr %struct.vcap_field, ptr %589, i32 16, i32 1
  %592 = ptrtoint ptr %length4.i734.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load i32, ptr %length4.i734.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %593)
  %cmp16.not.i.i.i736.i = icmp eq i32 %593, 0
  br i1 %cmp16.not.i.i.i736.i, label %sw.bb.i164.vcap_key_set.exit770.i_crit_edge, label %for.body.i.preheader.i.i738.i

sw.bb.i164.vcap_key_set.exit770.i_crit_edge:      ; preds = %sw.bb.i164
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit770.i

for.body.i.preheader.i.i738.i:                    ; preds = %sw.bb.i164
  %594 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %594)
  %595 = load i32, ptr %key_offset.i.i87, align 4
  %add.i.i737.i = add i32 %595, %591
  br label %for.body.i.i.i752.i

for.body.i.i.i752.i:                              ; preds = %for.body.i.i.i752.i.for.body.i.i.i752.i_crit_edge, %for.body.i.preheader.i.i738.i
  %i.018.i.i.i739.i = phi i32 [ %inc.i.i.i749.i, %for.body.i.i.i752.i.for.body.i.i.i752.i_crit_edge ], [ 0, %for.body.i.preheader.i.i738.i ]
  %offset.addr.017.i.i.i740.i = phi i32 [ %inc5.i.i.i750.i, %for.body.i.i.i752.i.for.body.i.i.i752.i_crit_edge ], [ %add.i.i737.i, %for.body.i.preheader.i.i738.i ]
  %div15.i.i.i741.i = lshr i32 %offset.addr.017.i.i.i740.i, 5
  %arrayidx.i.i.i742.i = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i741.i
  %596 = ptrtoint ptr %arrayidx.i.i.i742.i to i32
  call void @__asan_load4_noabort(i32 %596)
  %597 = load i32, ptr %arrayidx.i.i.i742.i, align 4
  %rem.i.i.i743.i = and i32 %offset.addr.017.i.i.i740.i, 31
  %shl.i.i.i744.i = shl nuw i32 1, %rem.i.i.i743.i
  %neg.i.i.i747.i = xor i32 %shl.i.i.i744.i, -1
  %and2.i.i.i748.i = and i32 %597, %neg.i.i.i747.i
  store i32 %and2.i.i.i748.i, ptr %arrayidx.i.i.i742.i, align 4
  %inc.i.i.i749.i = add nuw i32 %i.018.i.i.i739.i, 1
  %inc5.i.i.i750.i = add i32 %offset.addr.017.i.i.i740.i, 1
  %exitcond.not.i.i.i751.i = icmp eq i32 %inc.i.i.i749.i, %593
  br i1 %exitcond.not.i.i.i751.i, label %for.body.i28.preheader.i.i755.i, label %for.body.i.i.i752.i.for.body.i.i.i752.i_crit_edge

for.body.i.i.i752.i.for.body.i.i.i752.i_crit_edge: ; preds = %for.body.i.i.i752.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i752.i

for.body.i28.preheader.i.i755.i:                  ; preds = %for.body.i.i.i752.i
  %mask2.i.i753.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %598 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %598)
  %599 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i754.i = add i32 %599, %591
  br label %for.body.i28.i.i769.i

for.body.i28.i.i769.i:                            ; preds = %for.body.i28.i.i769.i.for.body.i28.i.i769.i_crit_edge, %for.body.i28.preheader.i.i755.i
  %i.018.i12.i.i756.i = phi i32 [ %inc.i25.i.i766.i, %for.body.i28.i.i769.i.for.body.i28.i.i769.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i755.i ]
  %offset.addr.017.i13.i.i757.i = phi i32 [ %inc5.i26.i.i767.i, %for.body.i28.i.i769.i.for.body.i28.i.i769.i_crit_edge ], [ %add5.i.i754.i, %for.body.i28.preheader.i.i755.i ]
  %div15.i14.i.i758.i = lshr i32 %offset.addr.017.i13.i.i757.i, 5
  %arrayidx.i15.i.i759.i = getelementptr i32, ptr %mask2.i.i753.i, i32 %div15.i14.i.i758.i
  %600 = ptrtoint ptr %arrayidx.i15.i.i759.i to i32
  call void @__asan_load4_noabort(i32 %600)
  %601 = load i32, ptr %arrayidx.i15.i.i759.i, align 4
  %rem.i16.i.i760.i = and i32 %offset.addr.017.i13.i.i757.i, 31
  %shl.i17.i.i761.i = shl nuw i32 1, %rem.i16.i.i760.i
  %neg.i22.i.i764.i = xor i32 %shl.i17.i.i761.i, -1
  %and2.i23.i.i765.i = and i32 %601, %neg.i22.i.i764.i
  store i32 %and2.i23.i.i765.i, ptr %arrayidx.i15.i.i759.i, align 4
  %inc.i25.i.i766.i = add nuw i32 %i.018.i12.i.i756.i, 1
  %inc5.i26.i.i767.i = add i32 %offset.addr.017.i13.i.i757.i, 1
  %exitcond.not.i27.i.i768.i = icmp eq i32 %inc.i25.i.i766.i, %593
  br i1 %exitcond.not.i27.i.i768.i, label %for.body.i28.i.i769.i.vcap_key_set.exit770.i_crit_edge, label %for.body.i28.i.i769.i.for.body.i28.i.i769.i_crit_edge

for.body.i28.i.i769.i.for.body.i28.i.i769.i_crit_edge: ; preds = %for.body.i28.i.i769.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i769.i

for.body.i28.i.i769.i.vcap_key_set.exit770.i_crit_edge: ; preds = %for.body.i28.i.i769.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit770.i

vcap_key_set.exit770.i:                           ; preds = %for.body.i28.i.i769.i.vcap_key_set.exit770.i_crit_edge, %sw.bb.i164.vcap_key_set.exit770.i_crit_edge
  %602 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %602)
  %603 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx.i772.i = getelementptr %struct.vcap_field, ptr %603, i32 17
  %604 = ptrtoint ptr %arrayidx.i772.i to i32
  call void @__asan_load4_noabort(i32 %604)
  %605 = load i32, ptr %arrayidx.i772.i, align 4
  %length4.i773.i = getelementptr %struct.vcap_field, ptr %603, i32 17, i32 1
  %606 = ptrtoint ptr %length4.i773.i to i32
  call void @__asan_load4_noabort(i32 %606)
  %607 = load i32, ptr %length4.i773.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %607)
  %cmp16.not.i.i.i775.i = icmp eq i32 %607, 0
  br i1 %cmp16.not.i.i.i775.i, label %vcap_key_set.exit770.i.vcap_key_set.exit809.i_crit_edge, label %for.body.i.preheader.i.i777.i

vcap_key_set.exit770.i.vcap_key_set.exit809.i_crit_edge: ; preds = %vcap_key_set.exit770.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit809.i

for.body.i.preheader.i.i777.i:                    ; preds = %vcap_key_set.exit770.i
  %608 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %key_offset.i.i87, align 4
  %add.i.i776.i = add i32 %609, %605
  br label %for.body.i.i.i791.i

for.body.i.i.i791.i:                              ; preds = %for.body.i.i.i791.i.for.body.i.i.i791.i_crit_edge, %for.body.i.preheader.i.i777.i
  %i.018.i.i.i778.i = phi i32 [ %inc.i.i.i788.i, %for.body.i.i.i791.i.for.body.i.i.i791.i_crit_edge ], [ 0, %for.body.i.preheader.i.i777.i ]
  %offset.addr.017.i.i.i779.i = phi i32 [ %inc5.i.i.i789.i, %for.body.i.i.i791.i.for.body.i.i.i791.i_crit_edge ], [ %add.i.i776.i, %for.body.i.preheader.i.i777.i ]
  %div15.i.i.i780.i = lshr i32 %offset.addr.017.i.i.i779.i, 5
  %arrayidx.i.i.i781.i = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i780.i
  %610 = ptrtoint ptr %arrayidx.i.i.i781.i to i32
  call void @__asan_load4_noabort(i32 %610)
  %611 = load i32, ptr %arrayidx.i.i.i781.i, align 4
  %rem.i.i.i782.i = and i32 %offset.addr.017.i.i.i779.i, 31
  %shl.i.i.i783.i = shl nuw i32 1, %rem.i.i.i782.i
  %neg.i.i.i786.i = xor i32 %shl.i.i.i783.i, -1
  %and2.i.i.i787.i = and i32 %611, %neg.i.i.i786.i
  store i32 %and2.i.i.i787.i, ptr %arrayidx.i.i.i781.i, align 4
  %inc.i.i.i788.i = add nuw i32 %i.018.i.i.i778.i, 1
  %inc5.i.i.i789.i = add i32 %offset.addr.017.i.i.i779.i, 1
  %exitcond.not.i.i.i790.i = icmp eq i32 %inc.i.i.i788.i, %607
  br i1 %exitcond.not.i.i.i790.i, label %for.body.i28.preheader.i.i794.i, label %for.body.i.i.i791.i.for.body.i.i.i791.i_crit_edge

for.body.i.i.i791.i.for.body.i.i.i791.i_crit_edge: ; preds = %for.body.i.i.i791.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i791.i

for.body.i28.preheader.i.i794.i:                  ; preds = %for.body.i.i.i791.i
  %mask2.i.i792.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %612 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %612)
  %613 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i793.i = add i32 %613, %605
  br label %for.body.i28.i.i808.i

for.body.i28.i.i808.i:                            ; preds = %for.body.i28.i.i808.i.for.body.i28.i.i808.i_crit_edge, %for.body.i28.preheader.i.i794.i
  %i.018.i12.i.i795.i = phi i32 [ %inc.i25.i.i805.i, %for.body.i28.i.i808.i.for.body.i28.i.i808.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i794.i ]
  %offset.addr.017.i13.i.i796.i = phi i32 [ %inc5.i26.i.i806.i, %for.body.i28.i.i808.i.for.body.i28.i.i808.i_crit_edge ], [ %add5.i.i793.i, %for.body.i28.preheader.i.i794.i ]
  %div15.i14.i.i797.i = lshr i32 %offset.addr.017.i13.i.i796.i, 5
  %arrayidx.i15.i.i798.i = getelementptr i32, ptr %mask2.i.i792.i, i32 %div15.i14.i.i797.i
  %614 = ptrtoint ptr %arrayidx.i15.i.i798.i to i32
  call void @__asan_load4_noabort(i32 %614)
  %615 = load i32, ptr %arrayidx.i15.i.i798.i, align 4
  %rem.i16.i.i799.i = and i32 %offset.addr.017.i13.i.i796.i, 31
  %shl.i17.i.i800.i = shl nuw i32 1, %rem.i16.i.i799.i
  %neg.i22.i.i803.i = xor i32 %shl.i17.i.i800.i, -1
  %and2.i23.i.i804.i = and i32 %615, %neg.i22.i.i803.i
  store i32 %and2.i23.i.i804.i, ptr %arrayidx.i15.i.i798.i, align 4
  %inc.i25.i.i805.i = add nuw i32 %i.018.i12.i.i795.i, 1
  %inc5.i26.i.i806.i = add i32 %offset.addr.017.i13.i.i796.i, 1
  %exitcond.not.i27.i.i807.i = icmp eq i32 %inc.i25.i.i805.i, %607
  br i1 %exitcond.not.i27.i.i807.i, label %for.body.i28.i.i808.i.vcap_key_set.exit809.i_crit_edge, label %for.body.i28.i.i808.i.for.body.i28.i.i808.i_crit_edge

for.body.i28.i.i808.i.for.body.i28.i.i808.i_crit_edge: ; preds = %for.body.i28.i.i808.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i808.i

for.body.i28.i.i808.i.vcap_key_set.exit809.i_crit_edge: ; preds = %for.body.i28.i.i808.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit809.i

vcap_key_set.exit809.i:                           ; preds = %for.body.i28.i.i808.i.vcap_key_set.exit809.i_crit_edge, %vcap_key_set.exit770.i.vcap_key_set.exit809.i_crit_edge
  %616 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx.i811.i = getelementptr %struct.vcap_field, ptr %617, i32 18
  %618 = ptrtoint ptr %arrayidx.i811.i to i32
  call void @__asan_load4_noabort(i32 %618)
  %619 = load i32, ptr %arrayidx.i811.i, align 4
  %length4.i812.i = getelementptr %struct.vcap_field, ptr %617, i32 18, i32 1
  %620 = ptrtoint ptr %length4.i812.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load i32, ptr %length4.i812.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %621)
  %cmp16.not.i.i.i814.i = icmp eq i32 %621, 0
  br i1 %cmp16.not.i.i.i814.i, label %vcap_key_set.exit809.i.vcap_key_set.exit848.i_crit_edge, label %for.body.i.preheader.i.i816.i

vcap_key_set.exit809.i.vcap_key_set.exit848.i_crit_edge: ; preds = %vcap_key_set.exit809.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit848.i

for.body.i.preheader.i.i816.i:                    ; preds = %vcap_key_set.exit809.i
  %622 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %622)
  %623 = load i32, ptr %key_offset.i.i87, align 4
  %add.i.i815.i = add i32 %623, %619
  br label %for.body.i.i.i830.i

for.body.i.i.i830.i:                              ; preds = %for.body.i.i.i830.i.for.body.i.i.i830.i_crit_edge, %for.body.i.preheader.i.i816.i
  %i.018.i.i.i817.i = phi i32 [ %inc.i.i.i827.i, %for.body.i.i.i830.i.for.body.i.i.i830.i_crit_edge ], [ 0, %for.body.i.preheader.i.i816.i ]
  %offset.addr.017.i.i.i818.i = phi i32 [ %inc5.i.i.i828.i, %for.body.i.i.i830.i.for.body.i.i.i830.i_crit_edge ], [ %add.i.i815.i, %for.body.i.preheader.i.i816.i ]
  %div15.i.i.i819.i = lshr i32 %offset.addr.017.i.i.i818.i, 5
  %arrayidx.i.i.i820.i = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i819.i
  %624 = ptrtoint ptr %arrayidx.i.i.i820.i to i32
  call void @__asan_load4_noabort(i32 %624)
  %625 = load i32, ptr %arrayidx.i.i.i820.i, align 4
  %rem.i.i.i821.i = and i32 %offset.addr.017.i.i.i818.i, 31
  %shl.i.i.i822.i = shl nuw i32 1, %rem.i.i.i821.i
  %neg.i.i.i825.i = xor i32 %shl.i.i.i822.i, -1
  %and2.i.i.i826.i = and i32 %625, %neg.i.i.i825.i
  store i32 %and2.i.i.i826.i, ptr %arrayidx.i.i.i820.i, align 4
  %inc.i.i.i827.i = add nuw i32 %i.018.i.i.i817.i, 1
  %inc5.i.i.i828.i = add i32 %offset.addr.017.i.i.i818.i, 1
  %exitcond.not.i.i.i829.i = icmp eq i32 %inc.i.i.i827.i, %621
  br i1 %exitcond.not.i.i.i829.i, label %for.body.i28.preheader.i.i833.i, label %for.body.i.i.i830.i.for.body.i.i.i830.i_crit_edge

for.body.i.i.i830.i.for.body.i.i.i830.i_crit_edge: ; preds = %for.body.i.i.i830.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i830.i

for.body.i28.preheader.i.i833.i:                  ; preds = %for.body.i.i.i830.i
  %mask2.i.i831.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %626 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i832.i = add i32 %627, %619
  br label %for.body.i28.i.i847.i

for.body.i28.i.i847.i:                            ; preds = %for.body.i28.i.i847.i.for.body.i28.i.i847.i_crit_edge, %for.body.i28.preheader.i.i833.i
  %i.018.i12.i.i834.i = phi i32 [ %inc.i25.i.i844.i, %for.body.i28.i.i847.i.for.body.i28.i.i847.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i833.i ]
  %offset.addr.017.i13.i.i835.i = phi i32 [ %inc5.i26.i.i845.i, %for.body.i28.i.i847.i.for.body.i28.i.i847.i_crit_edge ], [ %add5.i.i832.i, %for.body.i28.preheader.i.i833.i ]
  %div15.i14.i.i836.i = lshr i32 %offset.addr.017.i13.i.i835.i, 5
  %arrayidx.i15.i.i837.i = getelementptr i32, ptr %mask2.i.i831.i, i32 %div15.i14.i.i836.i
  %628 = ptrtoint ptr %arrayidx.i15.i.i837.i to i32
  call void @__asan_load4_noabort(i32 %628)
  %629 = load i32, ptr %arrayidx.i15.i.i837.i, align 4
  %rem.i16.i.i838.i = and i32 %offset.addr.017.i13.i.i835.i, 31
  %shl.i17.i.i839.i = shl nuw i32 1, %rem.i16.i.i838.i
  %neg.i22.i.i842.i = xor i32 %shl.i17.i.i839.i, -1
  %and2.i23.i.i843.i = and i32 %629, %neg.i22.i.i842.i
  store i32 %and2.i23.i.i843.i, ptr %arrayidx.i15.i.i837.i, align 4
  %inc.i25.i.i844.i = add nuw i32 %i.018.i12.i.i834.i, 1
  %inc5.i26.i.i845.i = add i32 %offset.addr.017.i13.i.i835.i, 1
  %exitcond.not.i27.i.i846.i = icmp eq i32 %inc.i25.i.i844.i, %621
  br i1 %exitcond.not.i27.i.i846.i, label %for.body.i28.i.i847.i.vcap_key_set.exit848.i_crit_edge, label %for.body.i28.i.i847.i.for.body.i28.i.i847.i_crit_edge

for.body.i28.i.i847.i.for.body.i28.i.i847.i_crit_edge: ; preds = %for.body.i28.i.i847.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i847.i

for.body.i28.i.i847.i.vcap_key_set.exit848.i_crit_edge: ; preds = %for.body.i28.i.i847.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit848.i

vcap_key_set.exit848.i:                           ; preds = %for.body.i28.i.i847.i.vcap_key_set.exit848.i_crit_edge, %vcap_key_set.exit809.i.vcap_key_set.exit848.i_crit_edge
  %data35.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 10
  %mask39.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 12
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 16, ptr noundef %data35.i, ptr noundef %mask39.i) #8
  br label %sw.epilog.i167

sw.bb41.i:                                        ; preds = %vcap_key_set.exit731.i
  call void @__sanitizer_cov_trace_pc() #10
  %key42.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17
  %mask47.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 4
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 13, ptr noundef %key42.i, ptr noundef %mask47.i) #8
  %smac49.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 10
  %mask53.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 14, ptr noundef %smac49.i, ptr noundef %mask53.i) #8
  %llc57.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 6
  %mask63.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 10
  %630 = ptrtoint ptr %llc57.i to i32
  call void @__asan_loadN_noabort(i32 %630, i32 4)
  %631 = load i32, ptr %llc57.i, align 1
  %632 = ptrtoint ptr %payload.i to i32
  call void @__asan_store4_noabort(i32 %632)
  store i32 %631, ptr %payload.i, align 4
  %633 = ptrtoint ptr %mask63.i to i32
  call void @__asan_loadN_noabort(i32 %633, i32 4)
  %634 = load i32, ptr %mask63.i, align 1
  %635 = ptrtoint ptr %399 to i32
  call void @__asan_store4_noabort(i32 %635)
  store i32 %634, ptr %399, align 4
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 21, ptr noundef nonnull %payload.i, ptr noundef %399) #8
  br label %sw.epilog.i167

sw.bb71.i:                                        ; preds = %vcap_key_set.exit731.i
  call void @__sanitizer_cov_trace_pc() #10
  %key72.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17
  %mask77.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 4
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 13, ptr noundef %key72.i, ptr noundef %mask77.i) #8
  %smac79.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 10
  %mask83.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 14, ptr noundef %smac79.i, ptr noundef %mask83.i) #8
  %snap86.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 6
  %mask91.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 11
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 24, ptr noundef %snap86.i, ptr noundef %mask91.i) #8
  br label %sw.epilog.i167

sw.bb93.i:                                        ; preds = %vcap_key_set.exit731.i
  %key94.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17
  %mask99.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 4
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 25, ptr noundef %key94.i, ptr noundef %mask99.i) #8
  %ethernet.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 2, i32 0, i32 6
  %636 = ptrtoint ptr %ethernet.i to i32
  call void @__asan_load4_noabort(i32 %636)
  %637 = load i32, ptr %ethernet.i, align 4
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 26, i32 noundef %637) #8
  %ip.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 2, i32 0, i32 2
  %638 = ptrtoint ptr %ip.i to i32
  call void @__asan_load4_noabort(i32 %638)
  %639 = load i32, ptr %ip.i, align 4
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 27, i32 noundef %639) #8
  %length.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 14
  %640 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %640)
  %641 = load i32, ptr %length.i, align 4
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 28, i32 noundef %641) #8
  %dmac_match.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 10
  %642 = ptrtoint ptr %dmac_match.i to i32
  call void @__asan_load4_noabort(i32 %642)
  %643 = load i32, ptr %dmac_match.i, align 4
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 29, i32 noundef %643) #8
  %smac_match.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 6
  %644 = ptrtoint ptr %smac_match.i to i32
  call void @__asan_load4_noabort(i32 %644)
  %645 = load i32, ptr %smac_match.i, align 4
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 30, i32 noundef %645) #8
  %unknown.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 2
  %646 = ptrtoint ptr %unknown.i to i32
  call void @__asan_load4_noabort(i32 %646)
  %647 = load i32, ptr %unknown.i, align 4
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 31, i32 noundef %647) #8
  %req.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 14
  %648 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %648)
  %649 = load i32, ptr %req.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %649)
  %cmp101.i = icmp eq i32 %649, 1
  %cond103.i = zext i1 %cmp101.i to i32
  %arp104.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 10
  %650 = ptrtoint ptr %arp104.i to i32
  call void @__asan_load4_noabort(i32 %650)
  %651 = load i32, ptr %arp104.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %651)
  %cmp105.i = icmp eq i32 %651, 1
  %cond107.i = select i1 %cmp105.i, i32 2, i32 0
  %or108.i = or i32 %cond107.i, %cond103.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %649)
  %cmp110.i = icmp ne i32 %649, 0
  %cond112.i = zext i1 %cmp110.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %651)
  %cmp114.i = icmp eq i32 %651, 0
  %cond116.i = select i1 %cmp114.i, i32 0, i32 2
  %or117.i = or i32 %cond116.i, %cond112.i
  %652 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %652)
  %653 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx.i850.i = getelementptr %struct.vcap_field, ptr %653, i32 32
  %654 = ptrtoint ptr %arrayidx.i850.i to i32
  call void @__asan_load4_noabort(i32 %654)
  %655 = load i32, ptr %arrayidx.i850.i, align 4
  %length4.i851.i = getelementptr %struct.vcap_field, ptr %653, i32 32, i32 1
  %656 = ptrtoint ptr %length4.i851.i to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load i32, ptr %length4.i851.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %657)
  %cmp16.not.i.i.i853.i = icmp eq i32 %657, 0
  br i1 %cmp16.not.i.i.i853.i, label %sw.bb93.i.vcap_key_set.exit893.i_crit_edge, label %for.body.i.preheader.i.i855.i

sw.bb93.i.vcap_key_set.exit893.i_crit_edge:       ; preds = %sw.bb93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit893.i

for.body.i.preheader.i.i855.i:                    ; preds = %sw.bb93.i
  %658 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %658)
  %659 = load i32, ptr %key_offset.i.i87, align 4
  %add.i.i854.i = add i32 %659, %655
  br label %for.body.i.i.i872.i

for.body.i.i.i872.i:                              ; preds = %for.body.i.i.i872.i.for.body.i.i.i872.i_crit_edge, %for.body.i.preheader.i.i855.i
  %i.018.i.i.i856.i = phi i32 [ %inc.i.i.i869.i, %for.body.i.i.i872.i.for.body.i.i.i872.i_crit_edge ], [ 0, %for.body.i.preheader.i.i855.i ]
  %offset.addr.017.i.i.i857.i = phi i32 [ %inc5.i.i.i870.i, %for.body.i.i.i872.i.for.body.i.i.i872.i_crit_edge ], [ %add.i.i854.i, %for.body.i.preheader.i.i855.i ]
  %div15.i.i.i858.i = lshr i32 %offset.addr.017.i.i.i857.i, 5
  %arrayidx.i.i.i859.i = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i858.i
  %660 = ptrtoint ptr %arrayidx.i.i.i859.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load i32, ptr %arrayidx.i.i.i859.i, align 4
  %rem.i.i.i860.i = and i32 %offset.addr.017.i.i.i857.i, 31
  %shl.i.i.i861.i = shl nuw i32 1, %rem.i.i.i860.i
  %shl1.i.i.i862.i = shl nuw i32 1, %i.018.i.i.i856.i
  %and.i.i.i863.i = and i32 %shl1.i.i.i862.i, %or108.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i863.i)
  %tobool.not.i.i.i864.i = icmp eq i32 %and.i.i.i863.i, 0
  %or.i.i.i865.i = or i32 %shl.i.i.i861.i, %661
  %neg.i.i.i866.i = xor i32 %shl.i.i.i861.i, -1
  %and2.i.i.i867.i = and i32 %661, %neg.i.i.i866.i
  %v.0.i.i.i868.i = select i1 %tobool.not.i.i.i864.i, i32 %and2.i.i.i867.i, i32 %or.i.i.i865.i
  %662 = ptrtoint ptr %arrayidx.i.i.i859.i to i32
  call void @__asan_store4_noabort(i32 %662)
  store i32 %v.0.i.i.i868.i, ptr %arrayidx.i.i.i859.i, align 4
  %inc.i.i.i869.i = add nuw i32 %i.018.i.i.i856.i, 1
  %inc5.i.i.i870.i = add i32 %offset.addr.017.i.i.i857.i, 1
  %exitcond.not.i.i.i871.i = icmp eq i32 %inc.i.i.i869.i, %657
  br i1 %exitcond.not.i.i.i871.i, label %for.body.i28.preheader.i.i875.i, label %for.body.i.i.i872.i.for.body.i.i.i872.i_crit_edge

for.body.i.i.i872.i.for.body.i.i.i872.i_crit_edge: ; preds = %for.body.i.i.i872.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i872.i

for.body.i28.preheader.i.i875.i:                  ; preds = %for.body.i.i.i872.i
  %mask2.i.i873.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %663 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i874.i = add i32 %664, %655
  br label %for.body.i28.i.i892.i

for.body.i28.i.i892.i:                            ; preds = %for.body.i28.i.i892.i.for.body.i28.i.i892.i_crit_edge, %for.body.i28.preheader.i.i875.i
  %i.018.i12.i.i876.i = phi i32 [ %inc.i25.i.i889.i, %for.body.i28.i.i892.i.for.body.i28.i.i892.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i875.i ]
  %offset.addr.017.i13.i.i877.i = phi i32 [ %inc5.i26.i.i890.i, %for.body.i28.i.i892.i.for.body.i28.i.i892.i_crit_edge ], [ %add5.i.i874.i, %for.body.i28.preheader.i.i875.i ]
  %div15.i14.i.i878.i = lshr i32 %offset.addr.017.i13.i.i877.i, 5
  %arrayidx.i15.i.i879.i = getelementptr i32, ptr %mask2.i.i873.i, i32 %div15.i14.i.i878.i
  %665 = ptrtoint ptr %arrayidx.i15.i.i879.i to i32
  call void @__asan_load4_noabort(i32 %665)
  %666 = load i32, ptr %arrayidx.i15.i.i879.i, align 4
  %rem.i16.i.i880.i = and i32 %offset.addr.017.i13.i.i877.i, 31
  %shl.i17.i.i881.i = shl nuw i32 1, %rem.i16.i.i880.i
  %shl1.i18.i.i882.i = shl nuw i32 1, %i.018.i12.i.i876.i
  %and.i19.i.i883.i = and i32 %shl1.i18.i.i882.i, %or117.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i.i883.i)
  %tobool.not.i20.i.i884.i = icmp eq i32 %and.i19.i.i883.i, 0
  %or.i21.i.i885.i = or i32 %shl.i17.i.i881.i, %666
  %neg.i22.i.i886.i = xor i32 %shl.i17.i.i881.i, -1
  %and2.i23.i.i887.i = and i32 %666, %neg.i22.i.i886.i
  %v.0.i24.i.i888.i = select i1 %tobool.not.i20.i.i884.i, i32 %and2.i23.i.i887.i, i32 %or.i21.i.i885.i
  %667 = ptrtoint ptr %arrayidx.i15.i.i879.i to i32
  call void @__asan_store4_noabort(i32 %667)
  store i32 %v.0.i24.i.i888.i, ptr %arrayidx.i15.i.i879.i, align 4
  %inc.i25.i.i889.i = add nuw i32 %i.018.i12.i.i876.i, 1
  %inc5.i26.i.i890.i = add i32 %offset.addr.017.i13.i.i877.i, 1
  %exitcond.not.i27.i.i891.i = icmp eq i32 %inc.i25.i.i889.i, %657
  br i1 %exitcond.not.i27.i.i891.i, label %for.body.i28.i.i892.i.vcap_key_set.exit893.i_crit_edge, label %for.body.i28.i.i892.i.for.body.i28.i.i892.i_crit_edge

for.body.i28.i.i892.i.for.body.i28.i.i892.i_crit_edge: ; preds = %for.body.i28.i.i892.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i892.i

for.body.i28.i.i892.i.vcap_key_set.exit893.i_crit_edge: ; preds = %for.body.i28.i.i892.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit893.i

vcap_key_set.exit893.i:                           ; preds = %for.body.i28.i.i892.i.vcap_key_set.exit893.i_crit_edge, %sw.bb93.i.vcap_key_set.exit893.i_crit_edge
  %dip.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 2, i32 1, i32 2
  %mask121.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 2, i32 1, i32 6
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 33, ptr noundef %dip.i, ptr noundef %mask121.i) #8
  %sip.i165 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 2, i32 0, i32 10
  %mask128.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 2, i32 0, i32 14
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 34, ptr noundef %sip.i165, ptr noundef %mask128.i) #8
  %668 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %668)
  %669 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx.i895.i = getelementptr %struct.vcap_field, ptr %669, i32 35
  %670 = ptrtoint ptr %arrayidx.i895.i to i32
  call void @__asan_load4_noabort(i32 %670)
  %671 = load i32, ptr %arrayidx.i895.i, align 4
  %length4.i896.i = getelementptr %struct.vcap_field, ptr %669, i32 35, i32 1
  %672 = ptrtoint ptr %length4.i896.i to i32
  call void @__asan_load4_noabort(i32 %672)
  %673 = load i32, ptr %length4.i896.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %673)
  %cmp16.not.i.i.i898.i = icmp eq i32 %673, 0
  br i1 %cmp16.not.i.i.i898.i, label %vcap_key_set.exit893.i.sw.epilog.i167_crit_edge, label %for.body.i.preheader.i.i900.i

vcap_key_set.exit893.i.sw.epilog.i167_crit_edge:  ; preds = %vcap_key_set.exit893.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i167

for.body.i.preheader.i.i900.i:                    ; preds = %vcap_key_set.exit893.i
  %674 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %674)
  %675 = load i32, ptr %key_offset.i.i87, align 4
  %add.i.i899.i = add i32 %675, %671
  br label %for.body.i.i.i914.i

for.body.i.i.i914.i:                              ; preds = %for.body.i.i.i914.i.for.body.i.i.i914.i_crit_edge, %for.body.i.preheader.i.i900.i
  %i.018.i.i.i901.i = phi i32 [ %inc.i.i.i911.i, %for.body.i.i.i914.i.for.body.i.i.i914.i_crit_edge ], [ 0, %for.body.i.preheader.i.i900.i ]
  %offset.addr.017.i.i.i902.i = phi i32 [ %inc5.i.i.i912.i, %for.body.i.i.i914.i.for.body.i.i.i914.i_crit_edge ], [ %add.i.i899.i, %for.body.i.preheader.i.i900.i ]
  %div15.i.i.i903.i = lshr i32 %offset.addr.017.i.i.i902.i, 5
  %arrayidx.i.i.i904.i = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i903.i
  %676 = ptrtoint ptr %arrayidx.i.i.i904.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %arrayidx.i.i.i904.i, align 4
  %rem.i.i.i905.i = and i32 %offset.addr.017.i.i.i902.i, 31
  %shl.i.i.i906.i = shl nuw i32 1, %rem.i.i.i905.i
  %neg.i.i.i909.i = xor i32 %shl.i.i.i906.i, -1
  %and2.i.i.i910.i = and i32 %677, %neg.i.i.i909.i
  store i32 %and2.i.i.i910.i, ptr %arrayidx.i.i.i904.i, align 4
  %inc.i.i.i911.i = add nuw i32 %i.018.i.i.i901.i, 1
  %inc5.i.i.i912.i = add i32 %offset.addr.017.i.i.i902.i, 1
  %exitcond.not.i.i.i913.i = icmp eq i32 %inc.i.i.i911.i, %673
  br i1 %exitcond.not.i.i.i913.i, label %for.body.i28.preheader.i.i917.i, label %for.body.i.i.i914.i.for.body.i.i.i914.i_crit_edge

for.body.i.i.i914.i.for.body.i.i.i914.i_crit_edge: ; preds = %for.body.i.i.i914.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i914.i

for.body.i28.preheader.i.i917.i:                  ; preds = %for.body.i.i.i914.i
  %mask2.i.i915.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %678 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i916.i = add i32 %679, %671
  br label %for.body.i28.i.i931.i

for.body.i28.i.i931.i:                            ; preds = %for.body.i28.i.i931.i.for.body.i28.i.i931.i_crit_edge, %for.body.i28.preheader.i.i917.i
  %i.018.i12.i.i918.i = phi i32 [ %inc.i25.i.i928.i, %for.body.i28.i.i931.i.for.body.i28.i.i931.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i917.i ]
  %offset.addr.017.i13.i.i919.i = phi i32 [ %inc5.i26.i.i929.i, %for.body.i28.i.i931.i.for.body.i28.i.i931.i_crit_edge ], [ %add5.i.i916.i, %for.body.i28.preheader.i.i917.i ]
  %div15.i14.i.i920.i = lshr i32 %offset.addr.017.i13.i.i919.i, 5
  %arrayidx.i15.i.i921.i = getelementptr i32, ptr %mask2.i.i915.i, i32 %div15.i14.i.i920.i
  %680 = ptrtoint ptr %arrayidx.i15.i.i921.i to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load i32, ptr %arrayidx.i15.i.i921.i, align 4
  %rem.i16.i.i922.i = and i32 %offset.addr.017.i13.i.i919.i, 31
  %shl.i17.i.i923.i = shl nuw i32 1, %rem.i16.i.i922.i
  %neg.i22.i.i926.i = xor i32 %shl.i17.i.i923.i, -1
  %and2.i23.i.i927.i = and i32 %681, %neg.i22.i.i926.i
  store i32 %and2.i23.i.i927.i, ptr %arrayidx.i15.i.i921.i, align 4
  %inc.i25.i.i928.i = add nuw i32 %i.018.i12.i.i918.i, 1
  %inc5.i26.i.i929.i = add i32 %offset.addr.017.i13.i.i919.i, 1
  %exitcond.not.i27.i.i930.i = icmp eq i32 %inc.i25.i.i928.i, %673
  br i1 %exitcond.not.i27.i.i930.i, label %for.body.i28.i.i931.i.sw.epilog.i167_crit_edge, label %for.body.i28.i.i931.i.for.body.i28.i.i931.i_crit_edge

for.body.i28.i.i931.i.for.body.i28.i.i931.i_crit_edge: ; preds = %for.body.i28.i.i931.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i931.i

for.body.i28.i.i931.i.sw.epilog.i167_crit_edge:   ; preds = %for.body.i28.i.i931.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i167

sw.bb131.i:                                       ; preds = %vcap_key_set.exit731.i.sw.bb131.i_crit_edge, %vcap_key_set.exit731.i.sw.bb131.i_crit_edge337
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sip132.i) #8
  %682 = getelementptr inbounds %struct.ocelot_vcap_ipv4, ptr %sip132.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dip133.i) #8
  %683 = getelementptr inbounds %struct.ocelot_vcap_ipv4, ptr %dip133.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %proto.i) #8
  %684 = getelementptr inbounds %struct.ocelot_vcap_u8, ptr %proto.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ds.i) #8
  %685 = getelementptr inbounds %struct.ocelot_vcap_u8, ptr %ds.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %586)
  %cmp135.i = icmp eq i32 %586, 5
  %key138.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17
  br i1 %cmp135.i, label %if.then137.i, label %for.inc198.7.i

if.then137.i:                                     ; preds = %sw.bb131.i
  call void @__sanitizer_cov_trace_pc() #10
  %686 = ptrtoint ptr %key138.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load i32, ptr %key138.i, align 4
  %fragment140.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 2
  %688 = ptrtoint ptr %fragment140.i to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load i32, ptr %fragment140.i, align 4
  %options141.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 6
  %690 = ptrtoint ptr %options141.i to i32
  call void @__asan_load4_noabort(i32 %690)
  %691 = load i32, ptr %options141.i, align 4
  %proto142.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 12
  %692 = ptrtoint ptr %proto142.i to i32
  call void @__asan_load2_noabort(i32 %692)
  %693 = load i16, ptr %proto142.i, align 2
  %694 = ptrtoint ptr %proto.i to i32
  call void @__asan_store2_noabort(i32 %694)
  store i16 %693, ptr %proto.i, align 2
  %ds143.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 10
  %695 = ptrtoint ptr %ds143.i to i32
  call void @__asan_load2_noabort(i32 %695)
  %696 = load i16, ptr %ds143.i, align 4
  %697 = ptrtoint ptr %ds.i to i32
  call void @__asan_store2_noabort(i32 %697)
  store i16 %696, ptr %ds.i, align 2
  %data144.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 14
  %sip145.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 14
  %698 = ptrtoint ptr %sip145.i to i32
  call void @__asan_loadN_noabort(i32 %698, i32 8)
  %699 = load i64, ptr %sip145.i, align 4
  %700 = ptrtoint ptr %sip132.i to i32
  call void @__asan_store8_noabort(i32 %700)
  store i64 %699, ptr %sip132.i, align 8
  %dip146.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 6
  %701 = ptrtoint ptr %dip146.i to i32
  call void @__asan_loadN_noabort(i32 %701, i32 8)
  %702 = load i64, ptr %dip146.i, align 4
  %703 = ptrtoint ptr %dip133.i to i32
  call void @__asan_store8_noabort(i32 %703)
  store i64 %702, ptr %dip133.i, align 8
  %sport147.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 2, i32 0, i32 10
  %dport148.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 2, i32 0, i32 14
  %tcp_fin149.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 2, i32 1, i32 2
  %tcp_syn150.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 2, i32 1, i32 6
  %tcp_rst151.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 2, i32 1, i32 10
  %tcp_psh152.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 2, i32 1, i32 14
  %tcp_ack153.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 3
  %tcp_urg154.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 4
  %sip_eq_dip155.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 5, i32 0, i32 2
  %sport_eq_dport156.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 5, i32 1
  %seq_zero157.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 5, i32 1, i32 4
  br label %if.end212.i

for.inc198.7.i:                                   ; preds = %sw.bb131.i
  call void @__sanitizer_cov_trace_pc() #10
  %704 = getelementptr inbounds [4 x i8], ptr %dip133.i, i32 0, i32 3
  %705 = getelementptr inbounds [4 x i8], ptr %dip133.i, i32 0, i32 2
  %706 = getelementptr inbounds [4 x i8], ptr %dip133.i, i32 0, i32 1
  %707 = getelementptr inbounds [4 x i8], ptr %sip132.i, i32 0, i32 3
  %708 = getelementptr inbounds [4 x i8], ptr %sip132.i, i32 0, i32 2
  %709 = getelementptr inbounds [4 x i8], ptr %sip132.i, i32 0, i32 1
  %ttl159.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 3
  %710 = ptrtoint ptr %ttl159.i to i32
  call void @__asan_load4_noabort(i32 %710)
  %711 = load i32, ptr %ttl159.i, align 4
  %712 = ptrtoint ptr %key138.i to i32
  call void @__asan_load2_noabort(i32 %712)
  %713 = load i16, ptr %key138.i, align 4
  %714 = ptrtoint ptr %proto.i to i32
  call void @__asan_store2_noabort(i32 %714)
  store i16 %713, ptr %proto.i, align 2
  %ds161.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 4
  %715 = ptrtoint ptr %ds161.i to i32
  call void @__asan_load2_noabort(i32 %715)
  %716 = load i16, ptr %ds161.i, align 4
  %717 = ptrtoint ptr %ds.i to i32
  call void @__asan_store2_noabort(i32 %717)
  store i16 %716, ptr %ds.i, align 2
  %arrayidx174.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 8
  %718 = ptrtoint ptr %arrayidx174.i to i32
  call void @__asan_load1_noabort(i32 %718)
  %719 = load i8, ptr %arrayidx174.i, align 1
  %arrayidx169.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8
  %720 = ptrtoint ptr %arrayidx169.i to i32
  call void @__asan_load1_noabort(i32 %720)
  %721 = load i8, ptr %arrayidx169.i, align 1
  %722 = ptrtoint ptr %dip133.i to i32
  call void @__asan_store1_noabort(i32 %722)
  store i8 %721, ptr %dip133.i, align 8
  %723 = ptrtoint ptr %683 to i32
  call void @__asan_store1_noabort(i32 %723)
  store i8 %719, ptr %683, align 4
  %arrayidx174.1.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 9
  %724 = ptrtoint ptr %arrayidx174.1.i to i32
  call void @__asan_load1_noabort(i32 %724)
  %725 = load i8, ptr %arrayidx174.1.i, align 1
  %arrayidx169.1.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 9
  %726 = ptrtoint ptr %arrayidx169.1.i to i32
  call void @__asan_load1_noabort(i32 %726)
  %727 = load i8, ptr %arrayidx169.1.i, align 1
  %728 = ptrtoint ptr %706 to i32
  call void @__asan_store1_noabort(i32 %728)
  store i8 %727, ptr %706, align 1
  %arrayidx186.1.i = getelementptr inbounds %struct.ocelot_vcap_ipv4, ptr %dip133.i, i32 0, i32 1, i32 0, i32 1
  %729 = ptrtoint ptr %arrayidx186.1.i to i32
  call void @__asan_store1_noabort(i32 %729)
  store i8 %725, ptr %arrayidx186.1.i, align 1
  %arrayidx174.2.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 10
  %730 = ptrtoint ptr %arrayidx174.2.i to i32
  call void @__asan_load1_noabort(i32 %730)
  %731 = load i8, ptr %arrayidx174.2.i, align 1
  %arrayidx169.2.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 10
  %732 = ptrtoint ptr %arrayidx169.2.i to i32
  call void @__asan_load1_noabort(i32 %732)
  %733 = load i8, ptr %arrayidx169.2.i, align 1
  %734 = ptrtoint ptr %705 to i32
  call void @__asan_store1_noabort(i32 %734)
  store i8 %733, ptr %705, align 2
  %arrayidx186.2.i = getelementptr inbounds %struct.ocelot_vcap_ipv4, ptr %dip133.i, i32 0, i32 1, i32 0, i32 2
  %735 = ptrtoint ptr %arrayidx186.2.i to i32
  call void @__asan_store1_noabort(i32 %735)
  store i8 %731, ptr %arrayidx186.2.i, align 2
  %arrayidx174.3.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 11
  %736 = ptrtoint ptr %arrayidx174.3.i to i32
  call void @__asan_load1_noabort(i32 %736)
  %737 = load i8, ptr %arrayidx174.3.i, align 1
  %arrayidx169.3.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 11
  %738 = ptrtoint ptr %arrayidx169.3.i to i32
  call void @__asan_load1_noabort(i32 %738)
  %739 = load i8, ptr %arrayidx169.3.i, align 1
  %740 = ptrtoint ptr %704 to i32
  call void @__asan_store1_noabort(i32 %740)
  store i8 %739, ptr %704, align 1
  %arrayidx186.3.i = getelementptr inbounds %struct.ocelot_vcap_ipv4, ptr %dip133.i, i32 0, i32 1, i32 0, i32 3
  %741 = ptrtoint ptr %arrayidx186.3.i to i32
  call void @__asan_store1_noabort(i32 %741)
  store i8 %737, ptr %arrayidx186.3.i, align 1
  %arrayidx174.4.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 12
  %742 = ptrtoint ptr %arrayidx174.4.i to i32
  call void @__asan_load1_noabort(i32 %742)
  %743 = load i8, ptr %arrayidx174.4.i, align 1
  %arrayidx169.4.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 12
  %744 = ptrtoint ptr %arrayidx169.4.i to i32
  call void @__asan_load1_noabort(i32 %744)
  %745 = load i8, ptr %arrayidx169.4.i, align 1
  %746 = ptrtoint ptr %sip132.i to i32
  call void @__asan_store1_noabort(i32 %746)
  store i8 %745, ptr %sip132.i, align 8
  %747 = ptrtoint ptr %682 to i32
  call void @__asan_store1_noabort(i32 %747)
  store i8 %743, ptr %682, align 4
  %arrayidx174.5.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 13
  %748 = ptrtoint ptr %arrayidx174.5.i to i32
  call void @__asan_load1_noabort(i32 %748)
  %749 = load i8, ptr %arrayidx174.5.i, align 1
  %arrayidx169.5.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 13
  %750 = ptrtoint ptr %arrayidx169.5.i to i32
  call void @__asan_load1_noabort(i32 %750)
  %751 = load i8, ptr %arrayidx169.5.i, align 1
  %752 = ptrtoint ptr %709 to i32
  call void @__asan_store1_noabort(i32 %752)
  store i8 %751, ptr %709, align 1
  %arrayidx196.5.i = getelementptr inbounds %struct.ocelot_vcap_ipv4, ptr %sip132.i, i32 0, i32 1, i32 0, i32 1
  %753 = ptrtoint ptr %arrayidx196.5.i to i32
  call void @__asan_store1_noabort(i32 %753)
  store i8 %749, ptr %arrayidx196.5.i, align 1
  %arrayidx174.6.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 14
  %754 = ptrtoint ptr %arrayidx174.6.i to i32
  call void @__asan_load1_noabort(i32 %754)
  %755 = load i8, ptr %arrayidx174.6.i, align 1
  %arrayidx169.6.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 14
  %756 = ptrtoint ptr %arrayidx169.6.i to i32
  call void @__asan_load1_noabort(i32 %756)
  %757 = load i8, ptr %arrayidx169.6.i, align 1
  %758 = ptrtoint ptr %708 to i32
  call void @__asan_store1_noabort(i32 %758)
  store i8 %757, ptr %708, align 2
  %arrayidx196.6.i = getelementptr inbounds %struct.ocelot_vcap_ipv4, ptr %sip132.i, i32 0, i32 1, i32 0, i32 2
  %759 = ptrtoint ptr %arrayidx196.6.i to i32
  call void @__asan_store1_noabort(i32 %759)
  store i8 %755, ptr %arrayidx196.6.i, align 2
  %arrayidx174.7.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 1, i32 15
  %760 = ptrtoint ptr %arrayidx174.7.i to i32
  call void @__asan_load1_noabort(i32 %760)
  %761 = load i8, ptr %arrayidx174.7.i, align 1
  %arrayidx169.7.i = getelementptr %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 1, i32 0, i32 15
  %762 = ptrtoint ptr %arrayidx169.7.i to i32
  call void @__asan_load1_noabort(i32 %762)
  %763 = load i8, ptr %arrayidx169.7.i, align 1
  %764 = ptrtoint ptr %707 to i32
  call void @__asan_store1_noabort(i32 %764)
  store i8 %763, ptr %707, align 1
  %arrayidx196.7.i = getelementptr inbounds %struct.ocelot_vcap_ipv4, ptr %sip132.i, i32 0, i32 1, i32 0, i32 3
  %765 = ptrtoint ptr %arrayidx196.7.i to i32
  call void @__asan_store1_noabort(i32 %765)
  store i8 %761, ptr %arrayidx196.7.i, align 1
  %data162.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 5
  %sport201.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 6
  %dport202.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 7
  %tcp_fin203.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 8
  %tcp_syn204.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 9
  %tcp_rst205.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 10
  %tcp_psh206.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 11
  %tcp_ack207.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 12
  %tcp_urg208.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 13
  %sip_eq_dip209.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 14
  %sport_eq_dport210.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 15
  %seq_zero211.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 17, i32 0, i32 16
  br label %if.end212.i

if.end212.i:                                      ; preds = %for.inc198.7.i, %if.then137.i
  %sip_eq_dip.0.in.i = phi ptr [ %sip_eq_dip155.i, %if.then137.i ], [ %sip_eq_dip209.i, %for.inc198.7.i ]
  %sport_eq_dport.0.in.i = phi ptr [ %sport_eq_dport156.i, %if.then137.i ], [ %sport_eq_dport210.i, %for.inc198.7.i ]
  %seq_zero.0.in.i = phi ptr [ %seq_zero157.i, %if.then137.i ], [ %seq_zero211.i, %for.inc198.7.i ]
  %ttl.0.i = phi i32 [ %687, %if.then137.i ], [ %711, %for.inc198.7.i ]
  %fragment.0.i = phi i32 [ %689, %if.then137.i ], [ 0, %for.inc198.7.i ]
  %options.0.i = phi i32 [ %691, %if.then137.i ], [ 0, %for.inc198.7.i ]
  %tcp_ack.0.in.i = phi ptr [ %tcp_ack153.i, %if.then137.i ], [ %tcp_ack207.i, %for.inc198.7.i ]
  %tcp_urg.0.in.i = phi ptr [ %tcp_urg154.i, %if.then137.i ], [ %tcp_urg208.i, %for.inc198.7.i ]
  %tcp_fin.0.in.i = phi ptr [ %tcp_fin149.i, %if.then137.i ], [ %tcp_fin203.i, %for.inc198.7.i ]
  %tcp_syn.0.in.i = phi ptr [ %tcp_syn150.i, %if.then137.i ], [ %tcp_syn204.i, %for.inc198.7.i ]
  %tcp_rst.0.in.i = phi ptr [ %tcp_rst151.i, %if.then137.i ], [ %tcp_rst205.i, %for.inc198.7.i ]
  %tcp_psh.0.in.i = phi ptr [ %tcp_psh152.i, %if.then137.i ], [ %tcp_psh206.i, %for.inc198.7.i ]
  %ipv4.0.i = phi i32 [ 2, %if.then137.i ], [ 1, %for.inc198.7.i ]
  %sport.0.i = phi ptr [ %sport147.i, %if.then137.i ], [ %sport201.i, %for.inc198.7.i ]
  %dport.0.i = phi ptr [ %dport148.i, %if.then137.i ], [ %dport202.i, %for.inc198.7.i ]
  %ip_data.0.i = phi ptr [ %data144.i, %if.then137.i ], [ %data162.i, %for.inc198.7.i ]
  %766 = ptrtoint ptr %tcp_psh.0.in.i to i32
  call void @__asan_load4_noabort(i32 %766)
  %tcp_psh.0.i = load i32, ptr %tcp_psh.0.in.i, align 4
  %767 = ptrtoint ptr %tcp_rst.0.in.i to i32
  call void @__asan_load4_noabort(i32 %767)
  %tcp_rst.0.i = load i32, ptr %tcp_rst.0.in.i, align 4
  %768 = ptrtoint ptr %tcp_syn.0.in.i to i32
  call void @__asan_load4_noabort(i32 %768)
  %tcp_syn.0.i = load i32, ptr %tcp_syn.0.in.i, align 4
  %769 = ptrtoint ptr %tcp_fin.0.in.i to i32
  call void @__asan_load4_noabort(i32 %769)
  %tcp_fin.0.i = load i32, ptr %tcp_fin.0.in.i, align 4
  %770 = ptrtoint ptr %tcp_urg.0.in.i to i32
  call void @__asan_load4_noabort(i32 %770)
  %tcp_urg.0.i = load i32, ptr %tcp_urg.0.in.i, align 4
  %771 = ptrtoint ptr %tcp_ack.0.in.i to i32
  call void @__asan_load4_noabort(i32 %771)
  %tcp_ack.0.i = load i32, ptr %tcp_ack.0.in.i, align 4
  %772 = ptrtoint ptr %seq_zero.0.in.i to i32
  call void @__asan_load4_noabort(i32 %772)
  %seq_zero.0.i = load i32, ptr %seq_zero.0.in.i, align 4
  %773 = ptrtoint ptr %sport_eq_dport.0.in.i to i32
  call void @__asan_load4_noabort(i32 %773)
  %sport_eq_dport.0.i = load i32, ptr %sport_eq_dport.0.in.i, align 4
  %774 = ptrtoint ptr %sip_eq_dip.0.in.i to i32
  call void @__asan_load4_noabort(i32 %774)
  %sip_eq_dip.0.i = load i32, ptr %sip_eq_dip.0.in.i, align 4
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 36, i32 noundef %ipv4.0.i) #8
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 37, i32 noundef %fragment.0.i) #8
  %775 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %775)
  %776 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx.i934.i = getelementptr %struct.vcap_field, ptr %776, i32 38
  %777 = ptrtoint ptr %arrayidx.i934.i to i32
  call void @__asan_load4_noabort(i32 %777)
  %778 = load i32, ptr %arrayidx.i934.i, align 4
  %length4.i935.i = getelementptr %struct.vcap_field, ptr %776, i32 38, i32 1
  %779 = ptrtoint ptr %length4.i935.i to i32
  call void @__asan_load4_noabort(i32 %779)
  %780 = load i32, ptr %length4.i935.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %780)
  %cmp16.not.i.i.i937.i = icmp eq i32 %780, 0
  br i1 %cmp16.not.i.i.i937.i, label %if.end212.i.vcap_key_set.exit971.i_crit_edge, label %for.body.i.preheader.i.i939.i

if.end212.i.vcap_key_set.exit971.i_crit_edge:     ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit971.i

for.body.i.preheader.i.i939.i:                    ; preds = %if.end212.i
  %781 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %781)
  %782 = load i32, ptr %key_offset.i.i87, align 4
  %add.i.i938.i = add i32 %782, %778
  br label %for.body.i.i.i953.i

for.body.i.i.i953.i:                              ; preds = %for.body.i.i.i953.i.for.body.i.i.i953.i_crit_edge, %for.body.i.preheader.i.i939.i
  %i.018.i.i.i940.i = phi i32 [ %inc.i.i.i950.i, %for.body.i.i.i953.i.for.body.i.i.i953.i_crit_edge ], [ 0, %for.body.i.preheader.i.i939.i ]
  %offset.addr.017.i.i.i941.i = phi i32 [ %inc5.i.i.i951.i, %for.body.i.i.i953.i.for.body.i.i.i953.i_crit_edge ], [ %add.i.i938.i, %for.body.i.preheader.i.i939.i ]
  %div15.i.i.i942.i = lshr i32 %offset.addr.017.i.i.i941.i, 5
  %arrayidx.i.i.i943.i = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i942.i
  %783 = ptrtoint ptr %arrayidx.i.i.i943.i to i32
  call void @__asan_load4_noabort(i32 %783)
  %784 = load i32, ptr %arrayidx.i.i.i943.i, align 4
  %rem.i.i.i944.i = and i32 %offset.addr.017.i.i.i941.i, 31
  %shl.i.i.i945.i = shl nuw i32 1, %rem.i.i.i944.i
  %neg.i.i.i948.i = xor i32 %shl.i.i.i945.i, -1
  %and2.i.i.i949.i = and i32 %784, %neg.i.i.i948.i
  store i32 %and2.i.i.i949.i, ptr %arrayidx.i.i.i943.i, align 4
  %inc.i.i.i950.i = add nuw i32 %i.018.i.i.i940.i, 1
  %inc5.i.i.i951.i = add i32 %offset.addr.017.i.i.i941.i, 1
  %exitcond.not.i.i.i952.i = icmp eq i32 %inc.i.i.i950.i, %780
  br i1 %exitcond.not.i.i.i952.i, label %for.body.i28.preheader.i.i956.i, label %for.body.i.i.i953.i.for.body.i.i.i953.i_crit_edge

for.body.i.i.i953.i.for.body.i.i.i953.i_crit_edge: ; preds = %for.body.i.i.i953.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i953.i

for.body.i28.preheader.i.i956.i:                  ; preds = %for.body.i.i.i953.i
  %mask2.i.i954.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %785 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %785)
  %786 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i955.i = add i32 %786, %778
  br label %for.body.i28.i.i970.i

for.body.i28.i.i970.i:                            ; preds = %for.body.i28.i.i970.i.for.body.i28.i.i970.i_crit_edge, %for.body.i28.preheader.i.i956.i
  %i.018.i12.i.i957.i = phi i32 [ %inc.i25.i.i967.i, %for.body.i28.i.i970.i.for.body.i28.i.i970.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i956.i ]
  %offset.addr.017.i13.i.i958.i = phi i32 [ %inc5.i26.i.i968.i, %for.body.i28.i.i970.i.for.body.i28.i.i970.i_crit_edge ], [ %add5.i.i955.i, %for.body.i28.preheader.i.i956.i ]
  %div15.i14.i.i959.i = lshr i32 %offset.addr.017.i13.i.i958.i, 5
  %arrayidx.i15.i.i960.i = getelementptr i32, ptr %mask2.i.i954.i, i32 %div15.i14.i.i959.i
  %787 = ptrtoint ptr %arrayidx.i15.i.i960.i to i32
  call void @__asan_load4_noabort(i32 %787)
  %788 = load i32, ptr %arrayidx.i15.i.i960.i, align 4
  %rem.i16.i.i961.i = and i32 %offset.addr.017.i13.i.i958.i, 31
  %shl.i17.i.i962.i = shl nuw i32 1, %rem.i16.i.i961.i
  %neg.i22.i.i965.i = xor i32 %shl.i17.i.i962.i, -1
  %and2.i23.i.i966.i = and i32 %788, %neg.i22.i.i965.i
  store i32 %and2.i23.i.i966.i, ptr %arrayidx.i15.i.i960.i, align 4
  %inc.i25.i.i967.i = add nuw i32 %i.018.i12.i.i957.i, 1
  %inc5.i26.i.i968.i = add i32 %offset.addr.017.i13.i.i958.i, 1
  %exitcond.not.i27.i.i969.i = icmp eq i32 %inc.i25.i.i967.i, %780
  br i1 %exitcond.not.i27.i.i969.i, label %for.body.i28.i.i970.i.vcap_key_set.exit971.i_crit_edge, label %for.body.i28.i.i970.i.for.body.i28.i.i970.i_crit_edge

for.body.i28.i.i970.i.for.body.i28.i.i970.i_crit_edge: ; preds = %for.body.i28.i.i970.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i970.i

for.body.i28.i.i970.i.vcap_key_set.exit971.i_crit_edge: ; preds = %for.body.i28.i.i970.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit971.i

vcap_key_set.exit971.i:                           ; preds = %for.body.i28.i.i970.i.vcap_key_set.exit971.i_crit_edge, %if.end212.i.vcap_key_set.exit971.i_crit_edge
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 39, i32 noundef %options.0.i) #8
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 40, i32 noundef %ttl.0.i) #8
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 41, ptr noundef nonnull %ds.i, ptr noundef %685) #8
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 42, ptr noundef nonnull %dip133.i, ptr noundef %683) #8
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 43, ptr noundef nonnull %sip132.i, ptr noundef %682) #8
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 44, i32 noundef %sip_eq_dip.0.i) #8
  %789 = ptrtoint ptr %684 to i32
  call void @__asan_load1_noabort(i32 %789)
  %790 = load i8, ptr %684, align 1
  %791 = zext i8 %790 to i64
  call void @__sanitizer_cov_trace_switch(i64 %791, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %790, label %vcap_key_set.exit971.i.if.else250.i_crit_edge [
    i8 -1, label %land.lhs.true.i
    i8 0, label %vcap_key_set.exit971.i.if.end266.i_crit_edge
  ]

vcap_key_set.exit971.i.if.end266.i_crit_edge:     ; preds = %vcap_key_set.exit971.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end266.i

vcap_key_set.exit971.i.if.else250.i_crit_edge:    ; preds = %vcap_key_set.exit971.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else250.i

land.lhs.true.i:                                  ; preds = %vcap_key_set.exit971.i
  %792 = ptrtoint ptr %proto.i to i32
  call void @__asan_load1_noabort(i32 %792)
  %793 = load i8, ptr %proto.i, align 2
  %794 = zext i8 %793 to i64
  call void @__sanitizer_cov_trace_switch(i64 %794, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %793, label %land.lhs.true.i.if.else250.i_crit_edge [
    i8 6, label %land.lhs.true.i.if.then242.i_crit_edge
    i8 17, label %if.then242.fold.split.i
  ]

land.lhs.true.i.if.then242.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then242.i

land.lhs.true.i.if.else250.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else250.i

if.then242.fold.split.i:                          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then242.i

if.then242.i:                                     ; preds = %if.then242.fold.split.i, %land.lhs.true.i.if.then242.i_crit_edge
  %cond245.i = phi i32 [ 2, %land.lhs.true.i.if.then242.i_crit_edge ], [ 1, %if.then242.fold.split.i ]
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 45, i32 noundef %cond245.i) #8
  call fastcc void @vcap_key_l4_port_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 47, ptr noundef %dport.0.i) #8
  call fastcc void @vcap_key_l4_port_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 46, ptr noundef %sport.0.i) #8
  %795 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %795)
  %796 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx.i973.i = getelementptr %struct.vcap_field, ptr %796, i32 48
  %797 = ptrtoint ptr %arrayidx.i973.i to i32
  call void @__asan_load4_noabort(i32 %797)
  %798 = load i32, ptr %arrayidx.i973.i, align 4
  %length4.i974.i = getelementptr %struct.vcap_field, ptr %796, i32 48, i32 1
  %799 = ptrtoint ptr %length4.i974.i to i32
  call void @__asan_load4_noabort(i32 %799)
  %800 = load i32, ptr %length4.i974.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %800)
  %cmp16.not.i.i.i976.i = icmp eq i32 %800, 0
  br i1 %cmp16.not.i.i.i976.i, label %if.then242.i.vcap_key_set.exit1010.i_crit_edge, label %for.body.i.preheader.i.i978.i

if.then242.i.vcap_key_set.exit1010.i_crit_edge:   ; preds = %if.then242.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit1010.i

for.body.i.preheader.i.i978.i:                    ; preds = %if.then242.i
  %801 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %801)
  %802 = load i32, ptr %key_offset.i.i87, align 4
  %add.i.i977.i = add i32 %802, %798
  br label %for.body.i.i.i992.i

for.body.i.i.i992.i:                              ; preds = %for.body.i.i.i992.i.for.body.i.i.i992.i_crit_edge, %for.body.i.preheader.i.i978.i
  %i.018.i.i.i979.i = phi i32 [ %inc.i.i.i989.i, %for.body.i.i.i992.i.for.body.i.i.i992.i_crit_edge ], [ 0, %for.body.i.preheader.i.i978.i ]
  %offset.addr.017.i.i.i980.i = phi i32 [ %inc5.i.i.i990.i, %for.body.i.i.i992.i.for.body.i.i.i992.i_crit_edge ], [ %add.i.i977.i, %for.body.i.preheader.i.i978.i ]
  %div15.i.i.i981.i = lshr i32 %offset.addr.017.i.i.i980.i, 5
  %arrayidx.i.i.i982.i = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i981.i
  %803 = ptrtoint ptr %arrayidx.i.i.i982.i to i32
  call void @__asan_load4_noabort(i32 %803)
  %804 = load i32, ptr %arrayidx.i.i.i982.i, align 4
  %rem.i.i.i983.i = and i32 %offset.addr.017.i.i.i980.i, 31
  %shl.i.i.i984.i = shl nuw i32 1, %rem.i.i.i983.i
  %neg.i.i.i987.i = xor i32 %shl.i.i.i984.i, -1
  %and2.i.i.i988.i = and i32 %804, %neg.i.i.i987.i
  store i32 %and2.i.i.i988.i, ptr %arrayidx.i.i.i982.i, align 4
  %inc.i.i.i989.i = add nuw i32 %i.018.i.i.i979.i, 1
  %inc5.i.i.i990.i = add i32 %offset.addr.017.i.i.i980.i, 1
  %exitcond.not.i.i.i991.i = icmp eq i32 %inc.i.i.i989.i, %800
  br i1 %exitcond.not.i.i.i991.i, label %for.body.i28.preheader.i.i995.i, label %for.body.i.i.i992.i.for.body.i.i.i992.i_crit_edge

for.body.i.i.i992.i.for.body.i.i.i992.i_crit_edge: ; preds = %for.body.i.i.i992.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i992.i

for.body.i28.preheader.i.i995.i:                  ; preds = %for.body.i.i.i992.i
  %mask2.i.i993.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %805 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %805)
  %806 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i994.i = add i32 %806, %798
  br label %for.body.i28.i.i1009.i

for.body.i28.i.i1009.i:                           ; preds = %for.body.i28.i.i1009.i.for.body.i28.i.i1009.i_crit_edge, %for.body.i28.preheader.i.i995.i
  %i.018.i12.i.i996.i = phi i32 [ %inc.i25.i.i1006.i, %for.body.i28.i.i1009.i.for.body.i28.i.i1009.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i995.i ]
  %offset.addr.017.i13.i.i997.i = phi i32 [ %inc5.i26.i.i1007.i, %for.body.i28.i.i1009.i.for.body.i28.i.i1009.i_crit_edge ], [ %add5.i.i994.i, %for.body.i28.preheader.i.i995.i ]
  %div15.i14.i.i998.i = lshr i32 %offset.addr.017.i13.i.i997.i, 5
  %arrayidx.i15.i.i999.i = getelementptr i32, ptr %mask2.i.i993.i, i32 %div15.i14.i.i998.i
  %807 = ptrtoint ptr %arrayidx.i15.i.i999.i to i32
  call void @__asan_load4_noabort(i32 %807)
  %808 = load i32, ptr %arrayidx.i15.i.i999.i, align 4
  %rem.i16.i.i1000.i = and i32 %offset.addr.017.i13.i.i997.i, 31
  %shl.i17.i.i1001.i = shl nuw i32 1, %rem.i16.i.i1000.i
  %neg.i22.i.i1004.i = xor i32 %shl.i17.i.i1001.i, -1
  %and2.i23.i.i1005.i = and i32 %808, %neg.i22.i.i1004.i
  store i32 %and2.i23.i.i1005.i, ptr %arrayidx.i15.i.i999.i, align 4
  %inc.i25.i.i1006.i = add nuw i32 %i.018.i12.i.i996.i, 1
  %inc5.i26.i.i1007.i = add i32 %offset.addr.017.i13.i.i997.i, 1
  %exitcond.not.i27.i.i1008.i = icmp eq i32 %inc.i25.i.i1006.i, %800
  br i1 %exitcond.not.i27.i.i1008.i, label %for.body.i28.i.i1009.i.vcap_key_set.exit1010.i_crit_edge, label %for.body.i28.i.i1009.i.for.body.i28.i.i1009.i_crit_edge

for.body.i28.i.i1009.i.for.body.i28.i.i1009.i_crit_edge: ; preds = %for.body.i28.i.i1009.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i1009.i

for.body.i28.i.i1009.i.vcap_key_set.exit1010.i_crit_edge: ; preds = %for.body.i28.i.i1009.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit1010.i

vcap_key_set.exit1010.i:                          ; preds = %for.body.i28.i.i1009.i.vcap_key_set.exit1010.i_crit_edge, %if.then242.i.vcap_key_set.exit1010.i_crit_edge
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 49, i32 noundef %sport_eq_dport.0.i) #8
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 50, i32 noundef %seq_zero.0.i) #8
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 56, i32 noundef %tcp_fin.0.i) #8
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 55, i32 noundef %tcp_syn.0.i) #8
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 54, i32 noundef %tcp_rst.0.i) #8
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 53, i32 noundef %tcp_psh.0.i) #8
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 52, i32 noundef %tcp_ack.0.i) #8
  call fastcc void @vcap_key_bit_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 51, i32 noundef %tcp_urg.0.i) #8
  %809 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %809)
  %810 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx.i1012.i = getelementptr %struct.vcap_field, ptr %810, i32 57
  %811 = ptrtoint ptr %arrayidx.i1012.i to i32
  call void @__asan_load4_noabort(i32 %811)
  %812 = load i32, ptr %arrayidx.i1012.i, align 4
  %length4.i1013.i = getelementptr %struct.vcap_field, ptr %810, i32 57, i32 1
  %813 = ptrtoint ptr %length4.i1013.i to i32
  call void @__asan_load4_noabort(i32 %813)
  %814 = load i32, ptr %length4.i1013.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %814)
  %cmp16.not.i.i.i1015.i = icmp eq i32 %814, 0
  br i1 %cmp16.not.i.i.i1015.i, label %vcap_key_set.exit1010.i.vcap_key_set.exit1049.i_crit_edge, label %for.body.i.preheader.i.i1017.i

vcap_key_set.exit1010.i.vcap_key_set.exit1049.i_crit_edge: ; preds = %vcap_key_set.exit1010.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit1049.i

for.body.i.preheader.i.i1017.i:                   ; preds = %vcap_key_set.exit1010.i
  %815 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %815)
  %816 = load i32, ptr %key_offset.i.i87, align 4
  %add.i.i1016.i = add i32 %816, %812
  br label %for.body.i.i.i1031.i

for.body.i.i.i1031.i:                             ; preds = %for.body.i.i.i1031.i.for.body.i.i.i1031.i_crit_edge, %for.body.i.preheader.i.i1017.i
  %i.018.i.i.i1018.i = phi i32 [ %inc.i.i.i1028.i, %for.body.i.i.i1031.i.for.body.i.i.i1031.i_crit_edge ], [ 0, %for.body.i.preheader.i.i1017.i ]
  %offset.addr.017.i.i.i1019.i = phi i32 [ %inc5.i.i.i1029.i, %for.body.i.i.i1031.i.for.body.i.i.i1031.i_crit_edge ], [ %add.i.i1016.i, %for.body.i.preheader.i.i1017.i ]
  %div15.i.i.i1020.i = lshr i32 %offset.addr.017.i.i.i1019.i, 5
  %arrayidx.i.i.i1021.i = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i1020.i
  %817 = ptrtoint ptr %arrayidx.i.i.i1021.i to i32
  call void @__asan_load4_noabort(i32 %817)
  %818 = load i32, ptr %arrayidx.i.i.i1021.i, align 4
  %rem.i.i.i1022.i = and i32 %offset.addr.017.i.i.i1019.i, 31
  %shl.i.i.i1023.i = shl nuw i32 1, %rem.i.i.i1022.i
  %neg.i.i.i1026.i = xor i32 %shl.i.i.i1023.i, -1
  %and2.i.i.i1027.i = and i32 %818, %neg.i.i.i1026.i
  store i32 %and2.i.i.i1027.i, ptr %arrayidx.i.i.i1021.i, align 4
  %inc.i.i.i1028.i = add nuw i32 %i.018.i.i.i1018.i, 1
  %inc5.i.i.i1029.i = add i32 %offset.addr.017.i.i.i1019.i, 1
  %exitcond.not.i.i.i1030.i = icmp eq i32 %inc.i.i.i1028.i, %814
  br i1 %exitcond.not.i.i.i1030.i, label %for.body.i28.preheader.i.i1034.i, label %for.body.i.i.i1031.i.for.body.i.i.i1031.i_crit_edge

for.body.i.i.i1031.i.for.body.i.i.i1031.i_crit_edge: ; preds = %for.body.i.i.i1031.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i1031.i

for.body.i28.preheader.i.i1034.i:                 ; preds = %for.body.i.i.i1031.i
  %mask2.i.i1032.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %819 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %819)
  %820 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i1033.i = add i32 %820, %812
  br label %for.body.i28.i.i1048.i

for.body.i28.i.i1048.i:                           ; preds = %for.body.i28.i.i1048.i.for.body.i28.i.i1048.i_crit_edge, %for.body.i28.preheader.i.i1034.i
  %i.018.i12.i.i1035.i = phi i32 [ %inc.i25.i.i1045.i, %for.body.i28.i.i1048.i.for.body.i28.i.i1048.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i1034.i ]
  %offset.addr.017.i13.i.i1036.i = phi i32 [ %inc5.i26.i.i1046.i, %for.body.i28.i.i1048.i.for.body.i28.i.i1048.i_crit_edge ], [ %add5.i.i1033.i, %for.body.i28.preheader.i.i1034.i ]
  %div15.i14.i.i1037.i = lshr i32 %offset.addr.017.i13.i.i1036.i, 5
  %arrayidx.i15.i.i1038.i = getelementptr i32, ptr %mask2.i.i1032.i, i32 %div15.i14.i.i1037.i
  %821 = ptrtoint ptr %arrayidx.i15.i.i1038.i to i32
  call void @__asan_load4_noabort(i32 %821)
  %822 = load i32, ptr %arrayidx.i15.i.i1038.i, align 4
  %rem.i16.i.i1039.i = and i32 %offset.addr.017.i13.i.i1036.i, 31
  %shl.i17.i.i1040.i = shl nuw i32 1, %rem.i16.i.i1039.i
  %neg.i22.i.i1043.i = xor i32 %shl.i17.i.i1040.i, -1
  %and2.i23.i.i1044.i = and i32 %822, %neg.i22.i.i1043.i
  store i32 %and2.i23.i.i1044.i, ptr %arrayidx.i15.i.i1038.i, align 4
  %inc.i25.i.i1045.i = add nuw i32 %i.018.i12.i.i1035.i, 1
  %inc5.i26.i.i1046.i = add i32 %offset.addr.017.i13.i.i1036.i, 1
  %exitcond.not.i27.i.i1047.i = icmp eq i32 %inc.i25.i.i1045.i, %814
  br i1 %exitcond.not.i27.i.i1047.i, label %for.body.i28.i.i1048.i.vcap_key_set.exit1049.i_crit_edge, label %for.body.i28.i.i1048.i.for.body.i28.i.i1048.i_crit_edge

for.body.i28.i.i1048.i.for.body.i28.i.i1048.i_crit_edge: ; preds = %for.body.i28.i.i1048.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i1048.i

for.body.i28.i.i1048.i.vcap_key_set.exit1049.i_crit_edge: ; preds = %for.body.i28.i.i1048.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit1049.i

vcap_key_set.exit1049.i:                          ; preds = %for.body.i28.i.i1048.i.vcap_key_set.exit1049.i_crit_edge, %vcap_key_set.exit1010.i.vcap_key_set.exit1049.i_crit_edge
  %823 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %823)
  %824 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx.i1051.i = getelementptr %struct.vcap_field, ptr %824, i32 58
  %825 = ptrtoint ptr %arrayidx.i1051.i to i32
  call void @__asan_load4_noabort(i32 %825)
  %826 = load i32, ptr %arrayidx.i1051.i, align 4
  %length4.i1052.i = getelementptr %struct.vcap_field, ptr %824, i32 58, i32 1
  %827 = ptrtoint ptr %length4.i1052.i to i32
  call void @__asan_load4_noabort(i32 %827)
  %828 = load i32, ptr %length4.i1052.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %828)
  %cmp16.not.i.i.i1054.i = icmp eq i32 %828, 0
  br i1 %cmp16.not.i.i.i1054.i, label %vcap_key_set.exit1049.i.if.end275.i_crit_edge, label %for.body.i.preheader.i.i1056.i

vcap_key_set.exit1049.i.if.end275.i_crit_edge:    ; preds = %vcap_key_set.exit1049.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275.i

for.body.i.preheader.i.i1056.i:                   ; preds = %vcap_key_set.exit1049.i
  %829 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %829)
  %830 = load i32, ptr %key_offset.i.i87, align 4
  %add.i.i1055.i = add i32 %830, %826
  br label %for.body.i.i.i1070.i

for.body.i.i.i1070.i:                             ; preds = %for.body.i.i.i1070.i.for.body.i.i.i1070.i_crit_edge, %for.body.i.preheader.i.i1056.i
  %i.018.i.i.i1057.i = phi i32 [ %inc.i.i.i1067.i, %for.body.i.i.i1070.i.for.body.i.i.i1070.i_crit_edge ], [ 0, %for.body.i.preheader.i.i1056.i ]
  %offset.addr.017.i.i.i1058.i = phi i32 [ %inc5.i.i.i1068.i, %for.body.i.i.i1070.i.for.body.i.i.i1070.i_crit_edge ], [ %add.i.i1055.i, %for.body.i.preheader.i.i1056.i ]
  %div15.i.i.i1059.i = lshr i32 %offset.addr.017.i.i.i1058.i, 5
  %arrayidx.i.i.i1060.i = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i1059.i
  %831 = ptrtoint ptr %arrayidx.i.i.i1060.i to i32
  call void @__asan_load4_noabort(i32 %831)
  %832 = load i32, ptr %arrayidx.i.i.i1060.i, align 4
  %rem.i.i.i1061.i = and i32 %offset.addr.017.i.i.i1058.i, 31
  %shl.i.i.i1062.i = shl nuw i32 1, %rem.i.i.i1061.i
  %neg.i.i.i1065.i = xor i32 %shl.i.i.i1062.i, -1
  %and2.i.i.i1066.i = and i32 %832, %neg.i.i.i1065.i
  store i32 %and2.i.i.i1066.i, ptr %arrayidx.i.i.i1060.i, align 4
  %inc.i.i.i1067.i = add nuw i32 %i.018.i.i.i1057.i, 1
  %inc5.i.i.i1068.i = add i32 %offset.addr.017.i.i.i1058.i, 1
  %exitcond.not.i.i.i1069.i = icmp eq i32 %inc.i.i.i1067.i, %828
  br i1 %exitcond.not.i.i.i1069.i, label %for.body.i28.preheader.i.i1073.i, label %for.body.i.i.i1070.i.for.body.i.i.i1070.i_crit_edge

for.body.i.i.i1070.i.for.body.i.i.i1070.i_crit_edge: ; preds = %for.body.i.i.i1070.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i1070.i

for.body.i28.preheader.i.i1073.i:                 ; preds = %for.body.i.i.i1070.i
  %mask2.i.i1071.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %833 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %833)
  %834 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i1072.i = add i32 %834, %826
  br label %for.body.i28.i.i1087.i

for.body.i28.i.i1087.i:                           ; preds = %for.body.i28.i.i1087.i.for.body.i28.i.i1087.i_crit_edge, %for.body.i28.preheader.i.i1073.i
  %i.018.i12.i.i1074.i = phi i32 [ %inc.i25.i.i1084.i, %for.body.i28.i.i1087.i.for.body.i28.i.i1087.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i1073.i ]
  %offset.addr.017.i13.i.i1075.i = phi i32 [ %inc5.i26.i.i1085.i, %for.body.i28.i.i1087.i.for.body.i28.i.i1087.i_crit_edge ], [ %add5.i.i1072.i, %for.body.i28.preheader.i.i1073.i ]
  %div15.i14.i.i1076.i = lshr i32 %offset.addr.017.i13.i.i1075.i, 5
  %arrayidx.i15.i.i1077.i = getelementptr i32, ptr %mask2.i.i1071.i, i32 %div15.i14.i.i1076.i
  %835 = ptrtoint ptr %arrayidx.i15.i.i1077.i to i32
  call void @__asan_load4_noabort(i32 %835)
  %836 = load i32, ptr %arrayidx.i15.i.i1077.i, align 4
  %rem.i16.i.i1078.i = and i32 %offset.addr.017.i13.i.i1075.i, 31
  %shl.i17.i.i1079.i = shl nuw i32 1, %rem.i16.i.i1078.i
  %neg.i22.i.i1082.i = xor i32 %shl.i17.i.i1079.i, -1
  %and2.i23.i.i1083.i = and i32 %836, %neg.i22.i.i1082.i
  store i32 %and2.i23.i.i1083.i, ptr %arrayidx.i15.i.i1077.i, align 4
  %inc.i25.i.i1084.i = add nuw i32 %i.018.i12.i.i1074.i, 1
  %inc5.i26.i.i1085.i = add i32 %offset.addr.017.i13.i.i1075.i, 1
  %exitcond.not.i27.i.i1086.i = icmp eq i32 %inc.i25.i.i1084.i, %828
  br i1 %exitcond.not.i27.i.i1086.i, label %for.body.i28.i.i1087.i.if.end275.i_crit_edge, label %for.body.i28.i.i1087.i.for.body.i28.i.i1087.i_crit_edge

for.body.i28.i.i1087.i.for.body.i28.i.i1087.i_crit_edge: ; preds = %for.body.i28.i.i1087.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i1087.i

for.body.i28.i.i1087.i.if.end275.i_crit_edge:     ; preds = %for.body.i28.i.i1087.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275.i

if.else250.i:                                     ; preds = %land.lhs.true.i.if.else250.i_crit_edge, %vcap_key_set.exit971.i.if.else250.i_crit_edge
  %837 = call ptr @memcpy(ptr %payload.i, ptr %ip_data.0.i, i32 6)
  %uglygep1195.i = getelementptr i8, ptr %ip_data.0.i, i32 6
  %838 = call ptr @memcpy(ptr %399, ptr %uglygep1195.i, i32 6)
  br label %if.end266.i

if.end266.i:                                      ; preds = %if.else250.i, %vcap_key_set.exit971.i.if.end266.i_crit_edge
  %type.0.i = phi i32 [ 4, %vcap_key_set.exit971.i.if.end266.i_crit_edge ], [ 5, %if.else250.i ]
  %type_mask.0.i = phi i32 [ 14, %vcap_key_set.exit971.i.if.end266.i_crit_edge ], [ 15, %if.else250.i ]
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 59, ptr noundef nonnull %proto.i, ptr noundef %684) #8
  call fastcc void @vcap_key_bytes_set(ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18, i32 noundef 60, ptr noundef nonnull %payload.i, ptr noundef %399) #8
  br label %if.end275.i

if.end275.i:                                      ; preds = %if.end266.i, %for.body.i28.i.i1087.i.if.end275.i_crit_edge, %vcap_key_set.exit1049.i.if.end275.i_crit_edge
  %type.1.i = phi i32 [ %type.0.i, %if.end266.i ], [ 4, %vcap_key_set.exit1049.i.if.end275.i_crit_edge ], [ 4, %for.body.i28.i.i1087.i.if.end275.i_crit_edge ]
  %type_mask.1.i = phi i32 [ %type_mask.0.i, %if.end266.i ], [ 15, %vcap_key_set.exit1049.i.if.end275.i_crit_edge ], [ 15, %for.body.i28.i.i1087.i.if.end275.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ds.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %proto.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dip133.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sip132.i) #8
  br label %sw.epilog.i167

sw.default.i:                                     ; preds = %vcap_key_set.exit731.i
  %839 = ptrtoint ptr %entry_width.i.i25 to i32
  call void @__asan_load2_noabort(i32 %839)
  %840 = load i16, ptr %entry_width.i.i25, align 4
  %841 = lshr i16 %840, 1
  %div278.i = zext i16 %841 to i32
  %842 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %842)
  %843 = load ptr, ptr %keys.i.i108, align 4
  %arrayidx279.i = getelementptr %struct.vcap_field, ptr %843, i32 13
  %844 = ptrtoint ptr %arrayidx279.i to i32
  call void @__asan_load4_noabort(i32 %844)
  %845 = load i32, ptr %arrayidx279.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %845, i32 %div278.i)
  %cmp2811191.i = icmp ult i32 %845, %div278.i
  br i1 %cmp2811191.i, label %for.body283.lr.ph.i, label %sw.default.i.sw.epilog.i167_crit_edge

sw.default.i.sw.epilog.i167_crit_edge:            ; preds = %sw.default.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i167

for.body283.lr.ph.i:                              ; preds = %sw.default.i
  %mask2.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  br label %for.body283.i

for.body283.i:                                    ; preds = %vcap_key_field_set.exit.i.for.body283.i_crit_edge, %for.body283.lr.ph.i
  %i.31192.i = phi i32 [ %845, %for.body283.lr.ph.i ], [ %add289.i, %vcap_key_field_set.exit.i.for.body283.i_crit_edge ]
  %sub284.i = sub i32 %div278.i, %i.31192.i
  %846 = tail call i32 @llvm.umin.i32(i32 %sub284.i, i32 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %846)
  %cmp16.not.i.i.i = icmp eq i32 %846, 0
  br i1 %cmp16.not.i.i.i, label %for.body283.i.vcap_key_field_set.exit.i_crit_edge, label %for.body.i.preheader.i.i

for.body283.i.vcap_key_field_set.exit.i_crit_edge: ; preds = %for.body283.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_field_set.exit.i

for.body.i.preheader.i.i:                         ; preds = %for.body283.i
  %847 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %847)
  %848 = load i32, ptr %key_offset.i.i87, align 4
  %add.i1090.i = add i32 %848, %i.31192.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.preheader.i.i
  %i.018.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.i ]
  %offset.addr.017.i.i.i = phi i32 [ %inc5.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %add.i1090.i, %for.body.i.preheader.i.i ]
  %div15.i.i.i = lshr i32 %offset.addr.017.i.i.i, 5
  %arrayidx.i.i.i166 = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i
  %849 = ptrtoint ptr %arrayidx.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %849)
  %850 = load i32, ptr %arrayidx.i.i.i166, align 4
  %rem.i.i.i = and i32 %offset.addr.017.i.i.i, 31
  %shl.i.i.i = shl nuw i32 1, %rem.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %and2.i.i.i = and i32 %850, %neg.i.i.i
  store i32 %and2.i.i.i, ptr %arrayidx.i.i.i166, align 4
  %inc.i.i.i = add nuw nsw i32 %i.018.i.i.i, 1
  %inc5.i.i.i = add i32 %offset.addr.017.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %846
  br i1 %exitcond.not.i.i.i, label %for.body.i28.preheader.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.body.i28.preheader.i.i:                       ; preds = %for.body.i.i.i
  %851 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %851)
  %852 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i = add i32 %852, %i.31192.i
  br label %for.body.i28.i.i

for.body.i28.i.i:                                 ; preds = %for.body.i28.i.i.for.body.i28.i.i_crit_edge, %for.body.i28.preheader.i.i
  %i.018.i12.i.i = phi i32 [ %inc.i25.i.i, %for.body.i28.i.i.for.body.i28.i.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i ]
  %offset.addr.017.i13.i.i = phi i32 [ %inc5.i26.i.i, %for.body.i28.i.i.for.body.i28.i.i_crit_edge ], [ %add5.i.i, %for.body.i28.preheader.i.i ]
  %div15.i14.i.i = lshr i32 %offset.addr.017.i13.i.i, 5
  %arrayidx.i15.i.i = getelementptr i32, ptr %mask2.i.i, i32 %div15.i14.i.i
  %853 = ptrtoint ptr %arrayidx.i15.i.i to i32
  call void @__asan_load4_noabort(i32 %853)
  %854 = load i32, ptr %arrayidx.i15.i.i, align 4
  %rem.i16.i.i = and i32 %offset.addr.017.i13.i.i, 31
  %shl.i17.i.i = shl nuw i32 1, %rem.i16.i.i
  %neg.i22.i.i = xor i32 %shl.i17.i.i, -1
  %and2.i23.i.i = and i32 %854, %neg.i22.i.i
  store i32 %and2.i23.i.i, ptr %arrayidx.i15.i.i, align 4
  %inc.i25.i.i = add nuw nsw i32 %i.018.i12.i.i, 1
  %inc5.i26.i.i = add i32 %offset.addr.017.i13.i.i, 1
  %exitcond.not.i27.i.i = icmp eq i32 %inc.i25.i.i, %846
  br i1 %exitcond.not.i27.i.i, label %for.body.i28.i.i.vcap_key_field_set.exit.i_crit_edge, label %for.body.i28.i.i.for.body.i28.i.i_crit_edge

for.body.i28.i.i.for.body.i28.i.i_crit_edge:      ; preds = %for.body.i28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i

for.body.i28.i.i.vcap_key_field_set.exit.i_crit_edge: ; preds = %for.body.i28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_field_set.exit.i

vcap_key_field_set.exit.i:                        ; preds = %for.body.i28.i.i.vcap_key_field_set.exit.i_crit_edge, %for.body283.i.vcap_key_field_set.exit.i_crit_edge
  %add289.i = add nuw nsw i32 %i.31192.i, 32
  %cmp281.i = icmp ult i32 %add289.i, %div278.i
  br i1 %cmp281.i, label %vcap_key_field_set.exit.i.for.body283.i_crit_edge, label %vcap_key_field_set.exit.i.sw.epilog.i167_crit_edge

vcap_key_field_set.exit.i.sw.epilog.i167_crit_edge: ; preds = %vcap_key_field_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i167

vcap_key_field_set.exit.i.for.body283.i_crit_edge: ; preds = %vcap_key_field_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body283.i

sw.epilog.i167:                                   ; preds = %vcap_key_field_set.exit.i.sw.epilog.i167_crit_edge, %sw.default.i.sw.epilog.i167_crit_edge, %if.end275.i, %for.body.i28.i.i931.i.sw.epilog.i167_crit_edge, %vcap_key_set.exit893.i.sw.epilog.i167_crit_edge, %sw.bb71.i, %sw.bb41.i, %vcap_key_set.exit848.i
  %type.2.i = phi i32 [ %type.1.i, %if.end275.i ], [ 2, %sw.bb71.i ], [ 1, %sw.bb41.i ], [ 0, %vcap_key_set.exit848.i ], [ 3, %vcap_key_set.exit893.i.sw.epilog.i167_crit_edge ], [ 0, %sw.default.i.sw.epilog.i167_crit_edge ], [ 0, %vcap_key_field_set.exit.i.sw.epilog.i167_crit_edge ], [ 3, %for.body.i28.i.i931.i.sw.epilog.i167_crit_edge ]
  %type_mask.2.i = phi i32 [ %type_mask.1.i, %if.end275.i ], [ 15, %sw.bb71.i ], [ 15, %sw.bb41.i ], [ 15, %vcap_key_set.exit848.i ], [ 15, %vcap_key_set.exit893.i.sw.epilog.i167_crit_edge ], [ 0, %sw.default.i.sw.epilog.i167_crit_edge ], [ 0, %vcap_key_field_set.exit.i.sw.epilog.i167_crit_edge ], [ 15, %for.body.i28.i.i931.i.sw.epilog.i167_crit_edge ]
  %855 = ptrtoint ptr %keys.i.i108 to i32
  call void @__asan_load4_noabort(i32 %855)
  %856 = load ptr, ptr %keys.i.i108, align 4
  %857 = ptrtoint ptr %856 to i32
  call void @__asan_load4_noabort(i32 %857)
  %858 = load i32, ptr %856, align 4
  %length4.i1092.i = getelementptr %struct.vcap_field, ptr %856, i32 0, i32 1
  %859 = ptrtoint ptr %length4.i1092.i to i32
  call void @__asan_load4_noabort(i32 %859)
  %860 = load i32, ptr %length4.i1092.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %860)
  %cmp16.not.i.i.i1094.i = icmp eq i32 %860, 0
  br i1 %cmp16.not.i.i.i1094.i, label %sw.epilog.i167.vcap_key_set.exit1134.i_crit_edge, label %for.body.i.preheader.i.i1096.i

sw.epilog.i167.vcap_key_set.exit1134.i_crit_edge: ; preds = %sw.epilog.i167
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit1134.i

for.body.i.preheader.i.i1096.i:                   ; preds = %sw.epilog.i167
  %861 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %861)
  %862 = load i32, ptr %key_offset.i.i87, align 4
  %add.i.i1095.i = add i32 %862, %858
  br label %for.body.i.i.i1113.i

for.body.i.i.i1113.i:                             ; preds = %for.body.i.i.i1113.i.for.body.i.i.i1113.i_crit_edge, %for.body.i.preheader.i.i1096.i
  %i.018.i.i.i1097.i = phi i32 [ %inc.i.i.i1110.i, %for.body.i.i.i1113.i.for.body.i.i.i1113.i_crit_edge ], [ 0, %for.body.i.preheader.i.i1096.i ]
  %offset.addr.017.i.i.i1098.i = phi i32 [ %inc5.i.i.i1111.i, %for.body.i.i.i1113.i.for.body.i.i.i1113.i_crit_edge ], [ %add.i.i1095.i, %for.body.i.preheader.i.i1096.i ]
  %div15.i.i.i1099.i = lshr i32 %offset.addr.017.i.i.i1098.i, 5
  %arrayidx.i.i.i1100.i = getelementptr i32, ptr %data.i18, i32 %div15.i.i.i1099.i
  %863 = ptrtoint ptr %arrayidx.i.i.i1100.i to i32
  call void @__asan_load4_noabort(i32 %863)
  %864 = load i32, ptr %arrayidx.i.i.i1100.i, align 4
  %rem.i.i.i1101.i = and i32 %offset.addr.017.i.i.i1098.i, 31
  %shl.i.i.i1102.i = shl nuw i32 1, %rem.i.i.i1101.i
  %shl1.i.i.i1103.i = shl nuw i32 1, %i.018.i.i.i1097.i
  %and.i.i.i1104.i = and i32 %shl1.i.i.i1103.i, %type.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1104.i)
  %tobool.not.i.i.i1105.i = icmp eq i32 %and.i.i.i1104.i, 0
  %or.i.i.i1106.i = or i32 %shl.i.i.i1102.i, %864
  %neg.i.i.i1107.i = xor i32 %shl.i.i.i1102.i, -1
  %and2.i.i.i1108.i = and i32 %864, %neg.i.i.i1107.i
  %v.0.i.i.i1109.i = select i1 %tobool.not.i.i.i1105.i, i32 %and2.i.i.i1108.i, i32 %or.i.i.i1106.i
  %865 = ptrtoint ptr %arrayidx.i.i.i1100.i to i32
  call void @__asan_store4_noabort(i32 %865)
  store i32 %v.0.i.i.i1109.i, ptr %arrayidx.i.i.i1100.i, align 4
  %inc.i.i.i1110.i = add nuw i32 %i.018.i.i.i1097.i, 1
  %inc5.i.i.i1111.i = add i32 %offset.addr.017.i.i.i1098.i, 1
  %exitcond.not.i.i.i1112.i = icmp eq i32 %inc.i.i.i1110.i, %860
  br i1 %exitcond.not.i.i.i1112.i, label %for.body.i28.preheader.i.i1116.i, label %for.body.i.i.i1113.i.for.body.i.i.i1113.i_crit_edge

for.body.i.i.i1113.i.for.body.i.i.i1113.i_crit_edge: ; preds = %for.body.i.i.i1113.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i1113.i

for.body.i28.preheader.i.i1116.i:                 ; preds = %for.body.i.i.i1113.i
  %mask2.i.i1114.i = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 1
  %866 = ptrtoint ptr %key_offset.i.i87 to i32
  call void @__asan_load4_noabort(i32 %866)
  %867 = load i32, ptr %key_offset.i.i87, align 4
  %add5.i.i1115.i = add i32 %867, %858
  br label %for.body.i28.i.i1133.i

for.body.i28.i.i1133.i:                           ; preds = %for.body.i28.i.i1133.i.for.body.i28.i.i1133.i_crit_edge, %for.body.i28.preheader.i.i1116.i
  %i.018.i12.i.i1117.i = phi i32 [ %inc.i25.i.i1130.i, %for.body.i28.i.i1133.i.for.body.i28.i.i1133.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i1116.i ]
  %offset.addr.017.i13.i.i1118.i = phi i32 [ %inc5.i26.i.i1131.i, %for.body.i28.i.i1133.i.for.body.i28.i.i1133.i_crit_edge ], [ %add5.i.i1115.i, %for.body.i28.preheader.i.i1116.i ]
  %div15.i14.i.i1119.i = lshr i32 %offset.addr.017.i13.i.i1118.i, 5
  %arrayidx.i15.i.i1120.i = getelementptr i32, ptr %mask2.i.i1114.i, i32 %div15.i14.i.i1119.i
  %868 = ptrtoint ptr %arrayidx.i15.i.i1120.i to i32
  call void @__asan_load4_noabort(i32 %868)
  %869 = load i32, ptr %arrayidx.i15.i.i1120.i, align 4
  %rem.i16.i.i1121.i = and i32 %offset.addr.017.i13.i.i1118.i, 31
  %shl.i17.i.i1122.i = shl nuw i32 1, %rem.i16.i.i1121.i
  %shl1.i18.i.i1123.i = shl nuw i32 1, %i.018.i12.i.i1117.i
  %and.i19.i.i1124.i = and i32 %shl1.i18.i.i1123.i, %type_mask.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i.i1124.i)
  %tobool.not.i20.i.i1125.i = icmp eq i32 %and.i19.i.i1124.i, 0
  %or.i21.i.i1126.i = or i32 %shl.i17.i.i1122.i, %869
  %neg.i22.i.i1127.i = xor i32 %shl.i17.i.i1122.i, -1
  %and2.i23.i.i1128.i = and i32 %869, %neg.i22.i.i1127.i
  %v.0.i24.i.i1129.i = select i1 %tobool.not.i20.i.i1125.i, i32 %and2.i23.i.i1128.i, i32 %or.i21.i.i1126.i
  %870 = ptrtoint ptr %arrayidx.i15.i.i1120.i to i32
  call void @__asan_store4_noabort(i32 %870)
  store i32 %v.0.i24.i.i1129.i, ptr %arrayidx.i15.i.i1120.i, align 4
  %inc.i25.i.i1130.i = add nuw i32 %i.018.i12.i.i1117.i, 1
  %inc5.i26.i.i1131.i = add i32 %offset.addr.017.i13.i.i1118.i, 1
  %exitcond.not.i27.i.i1132.i = icmp eq i32 %inc.i25.i.i1130.i, %860
  br i1 %exitcond.not.i27.i.i1132.i, label %for.body.i28.i.i1133.i.vcap_key_set.exit1134.i_crit_edge, label %for.body.i28.i.i1133.i.for.body.i28.i.i1133.i_crit_edge

for.body.i28.i.i1133.i.for.body.i28.i.i1133.i_crit_edge: ; preds = %for.body.i28.i.i1133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i1133.i

for.body.i28.i.i1133.i.vcap_key_set.exit1134.i_crit_edge: ; preds = %for.body.i28.i.i1133.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit1134.i

vcap_key_set.exit1134.i:                          ; preds = %for.body.i28.i.i1133.i.vcap_key_set.exit1134.i_crit_edge, %sw.epilog.i167.vcap_key_set.exit1134.i_crit_edge
  %871 = ptrtoint ptr %vcap1.i19 to i32
  call void @__asan_load4_noabort(i32 %871)
  %872 = load ptr, ptr %vcap1.i19, align 4
  %action.i.i168 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8
  %mask_mode.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 1
  %873 = ptrtoint ptr %mask_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %873)
  %874 = load i32, ptr %mask_mode.i.i, align 4
  %actions.i.i.i169 = getelementptr %struct.vcap_props, ptr %872, i32 2, i32 14
  %875 = ptrtoint ptr %actions.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %875)
  %876 = load ptr, ptr %actions.i.i.i169, align 4
  %length4.i.i.i170 = getelementptr %struct.vcap_field, ptr %876, i32 3, i32 1
  %877 = ptrtoint ptr %length4.i.i.i170 to i32
  call void @__asan_load4_noabort(i32 %877)
  %878 = load i32, ptr %length4.i.i.i170, align 4
  %action.i.i.i171 = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %878)
  %cmp16.not.i.i.i1135.i = icmp eq i32 %878, 0
  br i1 %cmp16.not.i.i.i1135.i, label %vcap_key_set.exit1134.i.vcap_action_set.exit.i.i172_crit_edge, label %for.body.i.preheader.i.i1138.i

vcap_key_set.exit1134.i.vcap_action_set.exit.i.i172_crit_edge: ; preds = %vcap_key_set.exit1134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit.i.i172

for.body.i.preheader.i.i1138.i:                   ; preds = %vcap_key_set.exit1134.i
  %879 = ptrtoint ptr %action_offset.i.i98 to i32
  call void @__asan_load4_noabort(i32 %879)
  %880 = load i32, ptr %action_offset.i.i98, align 4
  %arrayidx.i.i1136.i = getelementptr %struct.vcap_field, ptr %876, i32 3
  %881 = ptrtoint ptr %arrayidx.i.i1136.i to i32
  call void @__asan_load4_noabort(i32 %881)
  %882 = load i32, ptr %arrayidx.i.i1136.i, align 4
  %add.i.i1137.i = add i32 %882, %880
  br label %for.body.i.i.i1155.i

for.body.i.i.i1155.i:                             ; preds = %for.body.i.i.i1155.i.for.body.i.i.i1155.i_crit_edge, %for.body.i.preheader.i.i1138.i
  %i.018.i.i.i1139.i = phi i32 [ %inc.i.i.i1152.i, %for.body.i.i.i1155.i.for.body.i.i.i1155.i_crit_edge ], [ 0, %for.body.i.preheader.i.i1138.i ]
  %offset.addr.017.i.i.i1140.i = phi i32 [ %inc5.i.i.i1153.i, %for.body.i.i.i1155.i.for.body.i.i.i1155.i_crit_edge ], [ %add.i.i1137.i, %for.body.i.preheader.i.i1138.i ]
  %div15.i.i.i1141.i = lshr i32 %offset.addr.017.i.i.i1140.i, 5
  %arrayidx.i.i.i1142.i = getelementptr i32, ptr %action.i.i.i171, i32 %div15.i.i.i1141.i
  %883 = ptrtoint ptr %arrayidx.i.i.i1142.i to i32
  call void @__asan_load4_noabort(i32 %883)
  %884 = load i32, ptr %arrayidx.i.i.i1142.i, align 4
  %rem.i.i.i1143.i = and i32 %offset.addr.017.i.i.i1140.i, 31
  %shl.i.i.i1144.i = shl nuw i32 1, %rem.i.i.i1143.i
  %shl1.i.i.i1145.i = shl nuw i32 1, %i.018.i.i.i1139.i
  %and.i.i.i1146.i = and i32 %shl1.i.i.i1145.i, %874
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i1146.i)
  %tobool.not.i.i.i1147.i = icmp eq i32 %and.i.i.i1146.i, 0
  %or.i.i.i1148.i = or i32 %shl.i.i.i1144.i, %884
  %neg.i.i.i1149.i = xor i32 %shl.i.i.i1144.i, -1
  %and2.i.i.i1150.i = and i32 %884, %neg.i.i.i1149.i
  %v.0.i.i.i1151.i = select i1 %tobool.not.i.i.i1147.i, i32 %and2.i.i.i1150.i, i32 %or.i.i.i1148.i
  %885 = ptrtoint ptr %arrayidx.i.i.i1142.i to i32
  call void @__asan_store4_noabort(i32 %885)
  store i32 %v.0.i.i.i1151.i, ptr %arrayidx.i.i.i1142.i, align 4
  %inc.i.i.i1152.i = add nuw i32 %i.018.i.i.i1139.i, 1
  %inc5.i.i.i1153.i = add i32 %offset.addr.017.i.i.i1140.i, 1
  %exitcond.not.i.i.i1154.i = icmp eq i32 %inc.i.i.i1152.i, %878
  br i1 %exitcond.not.i.i.i1154.i, label %for.body.i.i.i1155.i.vcap_action_set.exit.i.i172_crit_edge, label %for.body.i.i.i1155.i.for.body.i.i.i1155.i_crit_edge

for.body.i.i.i1155.i.for.body.i.i.i1155.i_crit_edge: ; preds = %for.body.i.i.i1155.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i1155.i

for.body.i.i.i1155.i.vcap_action_set.exit.i.i172_crit_edge: ; preds = %for.body.i.i.i1155.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit.i.i172

vcap_action_set.exit.i.i172:                      ; preds = %for.body.i.i.i1155.i.vcap_action_set.exit.i.i172_crit_edge, %vcap_key_set.exit1134.i.vcap_action_set.exit.i.i172_crit_edge
  %port_mask.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 2
  %886 = ptrtoint ptr %port_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %886)
  %887 = load i32, ptr %port_mask.i.i, align 4
  %888 = ptrtoint ptr %actions.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %888)
  %889 = load ptr, ptr %actions.i.i.i169, align 4
  %length4.i21.i.i = getelementptr %struct.vcap_field, ptr %889, i32 9, i32 1
  %890 = ptrtoint ptr %length4.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %890)
  %891 = load i32, ptr %length4.i21.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %891)
  %cmp16.not.i.i23.i.i = icmp eq i32 %891, 0
  br i1 %cmp16.not.i.i23.i.i, label %vcap_action_set.exit.i.i172.vcap_action_set.exit45.i.i_crit_edge, label %for.body.i.preheader.i27.i.i

vcap_action_set.exit.i.i172.vcap_action_set.exit45.i.i_crit_edge: ; preds = %vcap_action_set.exit.i.i172
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit45.i.i

for.body.i.preheader.i27.i.i:                     ; preds = %vcap_action_set.exit.i.i172
  %892 = ptrtoint ptr %action_offset.i.i98 to i32
  call void @__asan_load4_noabort(i32 %892)
  %893 = load i32, ptr %action_offset.i.i98, align 4
  %arrayidx.i25.i.i = getelementptr %struct.vcap_field, ptr %889, i32 9
  %894 = ptrtoint ptr %arrayidx.i25.i.i to i32
  call void @__asan_load4_noabort(i32 %894)
  %895 = load i32, ptr %arrayidx.i25.i.i, align 4
  %add.i26.i.i = add i32 %895, %893
  br label %for.body.i.i44.i.i

for.body.i.i44.i.i:                               ; preds = %for.body.i.i44.i.i.for.body.i.i44.i.i_crit_edge, %for.body.i.preheader.i27.i.i
  %i.018.i.i28.i.i = phi i32 [ %inc.i.i41.i.i, %for.body.i.i44.i.i.for.body.i.i44.i.i_crit_edge ], [ 0, %for.body.i.preheader.i27.i.i ]
  %offset.addr.017.i.i29.i.i = phi i32 [ %inc5.i.i42.i.i, %for.body.i.i44.i.i.for.body.i.i44.i.i_crit_edge ], [ %add.i26.i.i, %for.body.i.preheader.i27.i.i ]
  %div15.i.i30.i.i = lshr i32 %offset.addr.017.i.i29.i.i, 5
  %arrayidx.i.i31.i.i = getelementptr i32, ptr %action.i.i.i171, i32 %div15.i.i30.i.i
  %896 = ptrtoint ptr %arrayidx.i.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %896)
  %897 = load i32, ptr %arrayidx.i.i31.i.i, align 4
  %rem.i.i32.i.i = and i32 %offset.addr.017.i.i29.i.i, 31
  %shl.i.i33.i.i = shl nuw i32 1, %rem.i.i32.i.i
  %shl1.i.i34.i.i = shl nuw i32 1, %i.018.i.i28.i.i
  %and.i.i35.i.i = and i32 %shl1.i.i34.i.i, %887
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i35.i.i)
  %tobool.not.i.i36.i.i = icmp eq i32 %and.i.i35.i.i, 0
  %or.i.i37.i.i = or i32 %shl.i.i33.i.i, %897
  %neg.i.i38.i.i = xor i32 %shl.i.i33.i.i, -1
  %and2.i.i39.i.i = and i32 %897, %neg.i.i38.i.i
  %v.0.i.i40.i.i = select i1 %tobool.not.i.i36.i.i, i32 %and2.i.i39.i.i, i32 %or.i.i37.i.i
  %898 = ptrtoint ptr %arrayidx.i.i31.i.i to i32
  call void @__asan_store4_noabort(i32 %898)
  store i32 %v.0.i.i40.i.i, ptr %arrayidx.i.i31.i.i, align 4
  %inc.i.i41.i.i = add nuw i32 %i.018.i.i28.i.i, 1
  %inc5.i.i42.i.i = add i32 %offset.addr.017.i.i29.i.i, 1
  %exitcond.not.i.i43.i.i = icmp eq i32 %inc.i.i41.i.i, %891
  br i1 %exitcond.not.i.i43.i.i, label %for.body.i.i44.i.i.vcap_action_set.exit45.i.i_crit_edge, label %for.body.i.i44.i.i.for.body.i.i44.i.i_crit_edge

for.body.i.i44.i.i.for.body.i.i44.i.i_crit_edge:  ; preds = %for.body.i.i44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i44.i.i

for.body.i.i44.i.i.vcap_action_set.exit45.i.i_crit_edge: ; preds = %for.body.i.i44.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit45.i.i

vcap_action_set.exit45.i.i:                       ; preds = %for.body.i.i44.i.i.vcap_action_set.exit45.i.i_crit_edge, %vcap_action_set.exit.i.i172.vcap_action_set.exit45.i.i_crit_edge
  %police_ena.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 3
  %899 = ptrtoint ptr %police_ena.i.i to i32
  call void @__asan_load1_noabort(i32 %899)
  %900 = load i8, ptr %police_ena.i.i, align 4, !range !31
  %901 = zext i8 %900 to i32
  %902 = ptrtoint ptr %actions.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %902)
  %903 = load ptr, ptr %actions.i.i.i169, align 4
  %length4.i47.i.i = getelementptr %struct.vcap_field, ptr %903, i32 6, i32 1
  %904 = ptrtoint ptr %length4.i47.i.i to i32
  call void @__asan_load4_noabort(i32 %904)
  %905 = load i32, ptr %length4.i47.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %905)
  %cmp16.not.i.i49.i.i = icmp eq i32 %905, 0
  br i1 %cmp16.not.i.i49.i.i, label %vcap_action_set.exit45.i.i.vcap_action_set.exit71.i.i_crit_edge, label %for.body.i.preheader.i53.i.i

vcap_action_set.exit45.i.i.vcap_action_set.exit71.i.i_crit_edge: ; preds = %vcap_action_set.exit45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit71.i.i

for.body.i.preheader.i53.i.i:                     ; preds = %vcap_action_set.exit45.i.i
  %906 = ptrtoint ptr %action_offset.i.i98 to i32
  call void @__asan_load4_noabort(i32 %906)
  %907 = load i32, ptr %action_offset.i.i98, align 4
  %arrayidx.i51.i.i = getelementptr %struct.vcap_field, ptr %903, i32 6
  %908 = ptrtoint ptr %arrayidx.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %908)
  %909 = load i32, ptr %arrayidx.i51.i.i, align 4
  %add.i52.i.i = add i32 %909, %907
  br label %for.body.i.i70.i.i

for.body.i.i70.i.i:                               ; preds = %for.body.i.i70.i.i.for.body.i.i70.i.i_crit_edge, %for.body.i.preheader.i53.i.i
  %i.018.i.i54.i.i = phi i32 [ %inc.i.i67.i.i, %for.body.i.i70.i.i.for.body.i.i70.i.i_crit_edge ], [ 0, %for.body.i.preheader.i53.i.i ]
  %offset.addr.017.i.i55.i.i = phi i32 [ %inc5.i.i68.i.i, %for.body.i.i70.i.i.for.body.i.i70.i.i_crit_edge ], [ %add.i52.i.i, %for.body.i.preheader.i53.i.i ]
  %div15.i.i56.i.i = lshr i32 %offset.addr.017.i.i55.i.i, 5
  %arrayidx.i.i57.i.i = getelementptr i32, ptr %action.i.i.i171, i32 %div15.i.i56.i.i
  %910 = ptrtoint ptr %arrayidx.i.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %910)
  %911 = load i32, ptr %arrayidx.i.i57.i.i, align 4
  %rem.i.i58.i.i = and i32 %offset.addr.017.i.i55.i.i, 31
  %shl.i.i59.i.i = shl nuw i32 1, %rem.i.i58.i.i
  %shl1.i.i60.i.i = shl nuw i32 1, %i.018.i.i54.i.i
  %and.i.i61.i.i = and i32 %shl1.i.i60.i.i, %901
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i61.i.i)
  %tobool.not.i.i62.i.i = icmp eq i32 %and.i.i61.i.i, 0
  %or.i.i63.i.i = or i32 %shl.i.i59.i.i, %911
  %neg.i.i64.i.i = xor i32 %shl.i.i59.i.i, -1
  %and2.i.i65.i.i = and i32 %911, %neg.i.i64.i.i
  %v.0.i.i66.i.i = select i1 %tobool.not.i.i62.i.i, i32 %and2.i.i65.i.i, i32 %or.i.i63.i.i
  %912 = ptrtoint ptr %arrayidx.i.i57.i.i to i32
  call void @__asan_store4_noabort(i32 %912)
  store i32 %v.0.i.i66.i.i, ptr %arrayidx.i.i57.i.i, align 4
  %inc.i.i67.i.i = add nuw i32 %i.018.i.i54.i.i, 1
  %inc5.i.i68.i.i = add i32 %offset.addr.017.i.i55.i.i, 1
  %exitcond.not.i.i69.i.i = icmp eq i32 %inc.i.i67.i.i, %905
  br i1 %exitcond.not.i.i69.i.i, label %for.body.i.i70.i.i.vcap_action_set.exit71.i.i_crit_edge, label %for.body.i.i70.i.i.for.body.i.i70.i.i_crit_edge

for.body.i.i70.i.i.for.body.i.i70.i.i_crit_edge:  ; preds = %for.body.i.i70.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i70.i.i

for.body.i.i70.i.i.vcap_action_set.exit71.i.i_crit_edge: ; preds = %for.body.i.i70.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit71.i.i

vcap_action_set.exit71.i.i:                       ; preds = %for.body.i.i70.i.i.vcap_action_set.exit71.i.i_crit_edge, %vcap_action_set.exit45.i.i.vcap_action_set.exit71.i.i_crit_edge
  %pol_ix.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 8
  %913 = ptrtoint ptr %pol_ix.i.i to i32
  call void @__asan_load4_noabort(i32 %913)
  %914 = load i32, ptr %pol_ix.i.i, align 4
  %915 = ptrtoint ptr %actions.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %915)
  %916 = load ptr, ptr %actions.i.i.i169, align 4
  %length4.i73.i.i = getelementptr %struct.vcap_field, ptr %916, i32 7, i32 1
  %917 = ptrtoint ptr %length4.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %917)
  %918 = load i32, ptr %length4.i73.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %918)
  %cmp16.not.i.i75.i.i = icmp eq i32 %918, 0
  br i1 %cmp16.not.i.i75.i.i, label %vcap_action_set.exit71.i.i.vcap_action_set.exit97.i.i_crit_edge, label %for.body.i.preheader.i79.i.i

vcap_action_set.exit71.i.i.vcap_action_set.exit97.i.i_crit_edge: ; preds = %vcap_action_set.exit71.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit97.i.i

for.body.i.preheader.i79.i.i:                     ; preds = %vcap_action_set.exit71.i.i
  %919 = ptrtoint ptr %action_offset.i.i98 to i32
  call void @__asan_load4_noabort(i32 %919)
  %920 = load i32, ptr %action_offset.i.i98, align 4
  %arrayidx.i77.i.i = getelementptr %struct.vcap_field, ptr %916, i32 7
  %921 = ptrtoint ptr %arrayidx.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %921)
  %922 = load i32, ptr %arrayidx.i77.i.i, align 4
  %add.i78.i.i = add i32 %922, %920
  br label %for.body.i.i96.i.i

for.body.i.i96.i.i:                               ; preds = %for.body.i.i96.i.i.for.body.i.i96.i.i_crit_edge, %for.body.i.preheader.i79.i.i
  %i.018.i.i80.i.i = phi i32 [ %inc.i.i93.i.i, %for.body.i.i96.i.i.for.body.i.i96.i.i_crit_edge ], [ 0, %for.body.i.preheader.i79.i.i ]
  %offset.addr.017.i.i81.i.i = phi i32 [ %inc5.i.i94.i.i, %for.body.i.i96.i.i.for.body.i.i96.i.i_crit_edge ], [ %add.i78.i.i, %for.body.i.preheader.i79.i.i ]
  %div15.i.i82.i.i = lshr i32 %offset.addr.017.i.i81.i.i, 5
  %arrayidx.i.i83.i.i = getelementptr i32, ptr %action.i.i.i171, i32 %div15.i.i82.i.i
  %923 = ptrtoint ptr %arrayidx.i.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %923)
  %924 = load i32, ptr %arrayidx.i.i83.i.i, align 4
  %rem.i.i84.i.i = and i32 %offset.addr.017.i.i81.i.i, 31
  %shl.i.i85.i.i = shl nuw i32 1, %rem.i.i84.i.i
  %shl1.i.i86.i.i = shl nuw i32 1, %i.018.i.i80.i.i
  %and.i.i87.i.i = and i32 %shl1.i.i86.i.i, %914
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i87.i.i)
  %tobool.not.i.i88.i.i = icmp eq i32 %and.i.i87.i.i, 0
  %or.i.i89.i.i = or i32 %shl.i.i85.i.i, %924
  %neg.i.i90.i.i = xor i32 %shl.i.i85.i.i, -1
  %and2.i.i91.i.i = and i32 %924, %neg.i.i90.i.i
  %v.0.i.i92.i.i = select i1 %tobool.not.i.i88.i.i, i32 %and2.i.i91.i.i, i32 %or.i.i89.i.i
  %925 = ptrtoint ptr %arrayidx.i.i83.i.i to i32
  call void @__asan_store4_noabort(i32 %925)
  store i32 %v.0.i.i92.i.i, ptr %arrayidx.i.i83.i.i, align 4
  %inc.i.i93.i.i = add nuw i32 %i.018.i.i80.i.i, 1
  %inc5.i.i94.i.i = add i32 %offset.addr.017.i.i81.i.i, 1
  %exitcond.not.i.i95.i.i = icmp eq i32 %inc.i.i93.i.i, %918
  br i1 %exitcond.not.i.i95.i.i, label %for.body.i.i96.i.i.vcap_action_set.exit97.i.i_crit_edge, label %for.body.i.i96.i.i.for.body.i.i96.i.i_crit_edge

for.body.i.i96.i.i.for.body.i.i96.i.i_crit_edge:  ; preds = %for.body.i.i96.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i96.i.i

for.body.i.i96.i.i.vcap_action_set.exit97.i.i_crit_edge: ; preds = %for.body.i.i96.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit97.i.i

vcap_action_set.exit97.i.i:                       ; preds = %for.body.i.i96.i.i.vcap_action_set.exit97.i.i_crit_edge, %vcap_action_set.exit71.i.i.vcap_action_set.exit97.i.i_crit_edge
  %cpu_qu_num.i.i = getelementptr inbounds %struct.anon.172, ptr %action.i.i168, i32 0, i32 1
  %926 = ptrtoint ptr %cpu_qu_num.i.i to i32
  call void @__asan_load1_noabort(i32 %926)
  %927 = load i8, ptr %cpu_qu_num.i.i, align 1
  %conv2.i1156.i = zext i8 %927 to i32
  %928 = ptrtoint ptr %actions.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %928)
  %929 = load ptr, ptr %actions.i.i.i169, align 4
  %length4.i99.i.i = getelementptr %struct.vcap_field, ptr %929, i32 2, i32 1
  %930 = ptrtoint ptr %length4.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %930)
  %931 = load i32, ptr %length4.i99.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %931)
  %cmp16.not.i.i101.i.i = icmp eq i32 %931, 0
  br i1 %cmp16.not.i.i101.i.i, label %vcap_action_set.exit97.i.i.vcap_action_set.exit123.i.i_crit_edge, label %for.body.i.preheader.i105.i.i

vcap_action_set.exit97.i.i.vcap_action_set.exit123.i.i_crit_edge: ; preds = %vcap_action_set.exit97.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit123.i.i

for.body.i.preheader.i105.i.i:                    ; preds = %vcap_action_set.exit97.i.i
  %932 = ptrtoint ptr %action_offset.i.i98 to i32
  call void @__asan_load4_noabort(i32 %932)
  %933 = load i32, ptr %action_offset.i.i98, align 4
  %arrayidx.i103.i.i = getelementptr %struct.vcap_field, ptr %929, i32 2
  %934 = ptrtoint ptr %arrayidx.i103.i.i to i32
  call void @__asan_load4_noabort(i32 %934)
  %935 = load i32, ptr %arrayidx.i103.i.i, align 4
  %add.i104.i.i = add i32 %935, %933
  br label %for.body.i.i122.i.i

for.body.i.i122.i.i:                              ; preds = %for.body.i.i122.i.i.for.body.i.i122.i.i_crit_edge, %for.body.i.preheader.i105.i.i
  %i.018.i.i106.i.i = phi i32 [ %inc.i.i119.i.i, %for.body.i.i122.i.i.for.body.i.i122.i.i_crit_edge ], [ 0, %for.body.i.preheader.i105.i.i ]
  %offset.addr.017.i.i107.i.i = phi i32 [ %inc5.i.i120.i.i, %for.body.i.i122.i.i.for.body.i.i122.i.i_crit_edge ], [ %add.i104.i.i, %for.body.i.preheader.i105.i.i ]
  %div15.i.i108.i.i = lshr i32 %offset.addr.017.i.i107.i.i, 5
  %arrayidx.i.i109.i.i = getelementptr i32, ptr %action.i.i.i171, i32 %div15.i.i108.i.i
  %936 = ptrtoint ptr %arrayidx.i.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %936)
  %937 = load i32, ptr %arrayidx.i.i109.i.i, align 4
  %rem.i.i110.i.i = and i32 %offset.addr.017.i.i107.i.i, 31
  %shl.i.i111.i.i = shl nuw i32 1, %rem.i.i110.i.i
  %shl1.i.i112.i.i = shl nuw i32 1, %i.018.i.i106.i.i
  %and.i.i113.i.i = and i32 %shl1.i.i112.i.i, %conv2.i1156.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i113.i.i)
  %tobool.not.i.i114.i.i = icmp eq i32 %and.i.i113.i.i, 0
  %or.i.i115.i.i = or i32 %shl.i.i111.i.i, %937
  %neg.i.i116.i.i = xor i32 %shl.i.i111.i.i, -1
  %and2.i.i117.i.i = and i32 %937, %neg.i.i116.i.i
  %v.0.i.i118.i.i = select i1 %tobool.not.i.i114.i.i, i32 %and2.i.i117.i.i, i32 %or.i.i115.i.i
  %938 = ptrtoint ptr %arrayidx.i.i109.i.i to i32
  call void @__asan_store4_noabort(i32 %938)
  store i32 %v.0.i.i118.i.i, ptr %arrayidx.i.i109.i.i, align 4
  %inc.i.i119.i.i = add nuw i32 %i.018.i.i106.i.i, 1
  %inc5.i.i120.i.i = add i32 %offset.addr.017.i.i107.i.i, 1
  %exitcond.not.i.i121.i.i = icmp eq i32 %inc.i.i119.i.i, %931
  br i1 %exitcond.not.i.i121.i.i, label %for.body.i.i122.i.i.vcap_action_set.exit123.i.i_crit_edge, label %for.body.i.i122.i.i.for.body.i.i122.i.i_crit_edge

for.body.i.i122.i.i.for.body.i.i122.i.i_crit_edge: ; preds = %for.body.i.i122.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i122.i.i

for.body.i.i122.i.i.vcap_action_set.exit123.i.i_crit_edge: ; preds = %for.body.i.i122.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit123.i.i

vcap_action_set.exit123.i.i:                      ; preds = %for.body.i.i122.i.i.vcap_action_set.exit123.i.i_crit_edge, %vcap_action_set.exit97.i.i.vcap_action_set.exit123.i.i_crit_edge
  %939 = ptrtoint ptr %action.i.i168 to i32
  call void @__asan_load1_noabort(i32 %939)
  %940 = load i8, ptr %action.i.i168, align 4, !range !31
  %941 = zext i8 %940 to i32
  %942 = ptrtoint ptr %actions.i.i.i169 to i32
  call void @__asan_load4_noabort(i32 %942)
  %943 = load ptr, ptr %actions.i.i.i169, align 4
  %length4.i125.i.i = getelementptr %struct.vcap_field, ptr %943, i32 1, i32 1
  %944 = ptrtoint ptr %length4.i125.i.i to i32
  call void @__asan_load4_noabort(i32 %944)
  %945 = load i32, ptr %length4.i125.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %945)
  %cmp16.not.i.i127.i.i = icmp eq i32 %945, 0
  br i1 %cmp16.not.i.i127.i.i, label %vcap_action_set.exit123.i.i.is2_action_set.exit.i_crit_edge, label %for.body.i.preheader.i131.i.i

vcap_action_set.exit123.i.i.is2_action_set.exit.i_crit_edge: ; preds = %vcap_action_set.exit123.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is2_action_set.exit.i

for.body.i.preheader.i131.i.i:                    ; preds = %vcap_action_set.exit123.i.i
  %946 = ptrtoint ptr %action_offset.i.i98 to i32
  call void @__asan_load4_noabort(i32 %946)
  %947 = load i32, ptr %action_offset.i.i98, align 4
  %arrayidx.i129.i.i = getelementptr %struct.vcap_field, ptr %943, i32 1
  %948 = ptrtoint ptr %arrayidx.i129.i.i to i32
  call void @__asan_load4_noabort(i32 %948)
  %949 = load i32, ptr %arrayidx.i129.i.i, align 4
  %add.i130.i.i = add i32 %949, %947
  br label %for.body.i.i148.i.i

for.body.i.i148.i.i:                              ; preds = %for.body.i.i148.i.i.for.body.i.i148.i.i_crit_edge, %for.body.i.preheader.i131.i.i
  %i.018.i.i132.i.i = phi i32 [ %inc.i.i145.i.i, %for.body.i.i148.i.i.for.body.i.i148.i.i_crit_edge ], [ 0, %for.body.i.preheader.i131.i.i ]
  %offset.addr.017.i.i133.i.i = phi i32 [ %inc5.i.i146.i.i, %for.body.i.i148.i.i.for.body.i.i148.i.i_crit_edge ], [ %add.i130.i.i, %for.body.i.preheader.i131.i.i ]
  %div15.i.i134.i.i = lshr i32 %offset.addr.017.i.i133.i.i, 5
  %arrayidx.i.i135.i.i = getelementptr i32, ptr %action.i.i.i171, i32 %div15.i.i134.i.i
  %950 = ptrtoint ptr %arrayidx.i.i135.i.i to i32
  call void @__asan_load4_noabort(i32 %950)
  %951 = load i32, ptr %arrayidx.i.i135.i.i, align 4
  %rem.i.i136.i.i = and i32 %offset.addr.017.i.i133.i.i, 31
  %shl.i.i137.i.i = shl nuw i32 1, %rem.i.i136.i.i
  %shl1.i.i138.i.i = shl nuw i32 1, %i.018.i.i132.i.i
  %and.i.i139.i.i = and i32 %shl1.i.i138.i.i, %941
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i139.i.i)
  %tobool.not.i.i140.i.i = icmp eq i32 %and.i.i139.i.i, 0
  %or.i.i141.i.i = or i32 %shl.i.i137.i.i, %951
  %neg.i.i142.i.i = xor i32 %shl.i.i137.i.i, -1
  %and2.i.i143.i.i = and i32 %951, %neg.i.i142.i.i
  %v.0.i.i144.i.i = select i1 %tobool.not.i.i140.i.i, i32 %and2.i.i143.i.i, i32 %or.i.i141.i.i
  %952 = ptrtoint ptr %arrayidx.i.i135.i.i to i32
  call void @__asan_store4_noabort(i32 %952)
  store i32 %v.0.i.i144.i.i, ptr %arrayidx.i.i135.i.i, align 4
  %inc.i.i145.i.i = add nuw i32 %i.018.i.i132.i.i, 1
  %inc5.i.i146.i.i = add i32 %offset.addr.017.i.i133.i.i, 1
  %exitcond.not.i.i147.i.i = icmp eq i32 %inc.i.i145.i.i, %945
  br i1 %exitcond.not.i.i147.i.i, label %for.body.i.i148.i.i.is2_action_set.exit.i_crit_edge, label %for.body.i.i148.i.i.for.body.i.i148.i.i_crit_edge

for.body.i.i148.i.i.for.body.i.i148.i.i_crit_edge: ; preds = %for.body.i.i148.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i148.i.i

for.body.i.i148.i.i.is2_action_set.exit.i_crit_edge: ; preds = %for.body.i.i148.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is2_action_set.exit.i

is2_action_set.exit.i:                            ; preds = %for.body.i.i148.i.i.is2_action_set.exit.i_crit_edge, %vcap_action_set.exit123.i.i.is2_action_set.exit.i_crit_edge
  %counter.i173 = getelementptr inbounds %struct.vcap_data, ptr %data.i18, i32 0, i32 3
  %953 = ptrtoint ptr %counter_width.i.i89 to i32
  call void @__asan_load2_noabort(i32 %953)
  %954 = load i16, ptr %counter_width.i.i89, align 4
  %conv292.i = zext i16 %954 to i32
  %pkts.i174 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 9, i32 1
  %955 = ptrtoint ptr %pkts.i174 to i32
  call void @__asan_load8_noabort(i32 %955)
  %956 = load i64, ptr %pkts.i174, align 8
  %conv293.i = trunc i64 %956 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %954)
  %cmp16.not.i.i175 = icmp eq i16 %954, 0
  br i1 %cmp16.not.i.i175, label %is2_action_set.exit.i.vcap_data_set.exit.i184_crit_edge, label %for.body.i1166.preheader.i

is2_action_set.exit.i.vcap_data_set.exit.i184_crit_edge: ; preds = %is2_action_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_data_set.exit.i184

for.body.i1166.preheader.i:                       ; preds = %is2_action_set.exit.i
  %957 = ptrtoint ptr %counter_offset.i.i92 to i32
  call void @__asan_load4_noabort(i32 %957)
  %958 = load i32, ptr %counter_offset.i.i92, align 4
  br label %for.body.i1166.i

for.body.i1166.i:                                 ; preds = %for.body.i1166.i.for.body.i1166.i_crit_edge, %for.body.i1166.preheader.i
  %i.018.i.i176 = phi i32 [ %inc.i1164.i, %for.body.i1166.i.for.body.i1166.i_crit_edge ], [ 0, %for.body.i1166.preheader.i ]
  %offset.addr.017.i.i177 = phi i32 [ %inc5.i.i182, %for.body.i1166.i.for.body.i1166.i_crit_edge ], [ %958, %for.body.i1166.preheader.i ]
  %div15.i.i178 = lshr i32 %offset.addr.017.i.i177, 5
  %arrayidx.i1157.i = getelementptr i32, ptr %counter.i173, i32 %div15.i.i178
  %959 = ptrtoint ptr %arrayidx.i1157.i to i32
  call void @__asan_load4_noabort(i32 %959)
  %960 = load i32, ptr %arrayidx.i1157.i, align 4
  %rem.i1158.i = and i32 %offset.addr.017.i.i177, 31
  %shl.i1159.i = shl nuw i32 1, %rem.i1158.i
  %shl1.i.i179 = shl nuw i32 1, %i.018.i.i176
  %and.i1160.i = and i32 %shl1.i.i179, %conv293.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1160.i)
  %tobool.not.i1161.i = icmp eq i32 %and.i1160.i, 0
  %or.i1162.i = or i32 %shl.i1159.i, %960
  %neg.i1163.i = xor i32 %shl.i1159.i, -1
  %and2.i.i180 = and i32 %960, %neg.i1163.i
  %v.0.i.i181 = select i1 %tobool.not.i1161.i, i32 %and2.i.i180, i32 %or.i1162.i
  %961 = ptrtoint ptr %arrayidx.i1157.i to i32
  call void @__asan_store4_noabort(i32 %961)
  store i32 %v.0.i.i181, ptr %arrayidx.i1157.i, align 4
  %inc.i1164.i = add nuw nsw i32 %i.018.i.i176, 1
  %inc5.i.i182 = add i32 %offset.addr.017.i.i177, 1
  %exitcond.not.i1165.i = icmp eq i32 %inc.i1164.i, %conv292.i
  br i1 %exitcond.not.i1165.i, label %for.body.i1166.i.vcap_data_set.exit.i184_crit_edge, label %for.body.i1166.i.for.body.i1166.i_crit_edge

for.body.i1166.i.for.body.i1166.i_crit_edge:      ; preds = %for.body.i1166.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i1166.i

for.body.i1166.i.vcap_data_set.exit.i184_crit_edge: ; preds = %for.body.i1166.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_data_set.exit.i184

vcap_data_set.exit.i184:                          ; preds = %for.body.i1166.i.vcap_data_set.exit.i184_crit_edge, %is2_action_set.exit.i.vcap_data_set.exit.i184_crit_edge
  %962 = ptrtoint ptr %entry_width.i.i25 to i32
  call void @__asan_load2_noabort(i32 %962)
  %963 = load i16, ptr %entry_width.i.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %963)
  %cmp20.not.i.i183 = icmp eq i16 %963, 0
  br i1 %cmp20.not.i.i183, label %vcap_data_set.exit.i184.is2_entry_set.exit_crit_edge, label %for.body.lr.ph.i1172.i

vcap_data_set.exit.i184.is2_entry_set.exit_crit_edge: ; preds = %vcap_data_set.exit.i184
  call void @__sanitizer_cov_trace_pc() #10
  br label %is2_entry_set.exit

for.body.lr.ph.i1172.i:                           ; preds = %vcap_data_set.exit.i184
  %conv.i1169.i = zext i16 %963 to i32
  %sub.i1170.i = add nuw nsw i32 %conv.i1169.i, 31
  %div19.i.i185 = lshr i32 %sub.i1170.i, 5
  br label %for.body.i1178.i

for.body.i1178.i:                                 ; preds = %for.body.i1178.i.for.body.i1178.i_crit_edge, %for.body.lr.ph.i1172.i
  %i.021.i.i186 = phi i32 [ 0, %for.body.lr.ph.i1172.i ], [ %inc.i1176.i, %for.body.i1178.i.for.body.i1178.i_crit_edge ]
  %964 = ptrtoint ptr %target7.i.i42 to i32
  call void @__asan_load4_noabort(i32 %964)
  %965 = load i32, ptr %target7.i.i42, align 4
  %arrayidx.i1173.i = getelementptr [12 x i32], ptr %data.i18, i32 0, i32 %i.021.i.i186
  %966 = ptrtoint ptr %arrayidx.i1173.i to i32
  call void @__asan_load4_noabort(i32 %966)
  %967 = load i32, ptr %arrayidx.i1173.i, align 4
  %mul.i1174.i = shl i32 %i.021.i.i186, 2
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %965, i32 noundef %967, i32 noundef 2, i32 noundef %mul.i1174.i) #8
  %968 = ptrtoint ptr %target7.i.i42 to i32
  call void @__asan_load4_noabort(i32 %968)
  %969 = load i32, ptr %target7.i.i42, align 4
  %arrayidx4.i.i187 = getelementptr %struct.vcap_data, ptr %data.i18, i32 0, i32 1, i32 %i.021.i.i186
  %970 = ptrtoint ptr %arrayidx4.i.i187 to i32
  call void @__asan_load4_noabort(i32 %970)
  %971 = load i32, ptr %arrayidx4.i.i187, align 4
  %neg.i1175.i = xor i32 %971, -1
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %969, i32 noundef %neg.i1175.i, i32 noundef 3, i32 noundef %mul.i1174.i) #8
  %inc.i1176.i = add nuw nsw i32 %i.021.i.i186, 1
  %exitcond.not.i1177.i = icmp eq i32 %inc.i1176.i, %div19.i.i185
  br i1 %exitcond.not.i1177.i, label %for.body.i1178.i.is2_entry_set.exit_crit_edge, label %for.body.i1178.i.for.body.i1178.i_crit_edge

for.body.i1178.i.for.body.i1178.i_crit_edge:      ; preds = %for.body.i1178.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i1178.i

for.body.i1178.i.is2_entry_set.exit_crit_edge:    ; preds = %for.body.i1178.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is2_entry_set.exit

is2_entry_set.exit:                               ; preds = %for.body.i1178.i.is2_entry_set.exit_crit_edge, %vcap_data_set.exit.i184.is2_entry_set.exit_crit_edge
  %972 = ptrtoint ptr %target7.i.i42 to i32
  call void @__asan_load4_noabort(i32 %972)
  %973 = load i32, ptr %target7.i.i42, align 4
  %974 = ptrtoint ptr %tg.i.i44 to i32
  call void @__asan_load4_noabort(i32 %974)
  %975 = load i32, ptr %tg.i.i44, align 4
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %973, i32 noundef %975, i32 noundef 6, i32 noundef 0) #8
  call fastcc void @vcap_action2cache(ptr noundef %ocelot, ptr noundef %arrayidx.i20, ptr noundef nonnull %data.i18) #8
  %976 = ptrtoint ptr %entry_count.i.i23 to i32
  call void @__asan_load2_noabort(i32 %976)
  %977 = load i16, ptr %entry_count.i.i23, align 4
  %conv2.i1182.i = add i16 %977, %405
  tail call fastcc void @vcap_cmd(ptr noundef %ocelot, ptr noundef %arrayidx.i20, i16 noundef zeroext %conv2.i1182.i, i32 noundef 0, i32 noundef 7) #8
  call void @llvm.lifetime.end.p0(i64 196, ptr nonnull %data.i18) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %payload.i) #8
  br label %if.end8

if.then7:                                         ; preds = %entry
  %vcap1.i189 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 26
  %978 = ptrtoint ptr %vcap1.i189 to i32
  call void @__asan_load4_noabort(i32 %978)
  %979 = load ptr, ptr %vcap1.i189, align 4
  call void @llvm.lifetime.start.p0(i64 196, ptr nonnull %data.i188) #8
  %980 = call ptr @memset(ptr %data.i188, i32 0, i32 196)
  %entry_count.i.i190 = getelementptr inbounds %struct.vcap_props, ptr %979, i32 0, i32 2
  %981 = ptrtoint ptr %entry_count.i.i190 to i32
  call void @__asan_load2_noabort(i32 %981)
  %982 = load i16, ptr %entry_count.i.i190, align 4
  %983 = trunc i32 %ix to i16
  %984 = xor i16 %983, -1
  %conv2.i.i191 = add i16 %982, %984
  tail call fastcc void @vcap_cmd(ptr noundef %ocelot, ptr noundef %979, i16 noundef zeroext %conv2.i.i191, i32 noundef 1, i32 noundef 7) #8
  %entry_width.i.i192 = getelementptr inbounds %struct.vcap_props, ptr %979, i32 0, i32 4
  %985 = ptrtoint ptr %entry_width.i.i192 to i32
  call void @__asan_load2_noabort(i32 %985)
  %986 = load i16, ptr %entry_width.i.i192, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %986)
  %cmp22.not.i.i193 = icmp eq i16 %986, 0
  br i1 %cmp22.not.i.i193, label %if.then7.vcap_cache2entry.exit.i214_crit_edge, label %for.body.lr.ph.i.i198

if.then7.vcap_cache2entry.exit.i214_crit_edge:    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_cache2entry.exit.i214

for.body.lr.ph.i.i198:                            ; preds = %if.then7
  %conv.i.i194 = zext i16 %986 to i32
  %sub.i.i195 = add nuw nsw i32 %conv.i.i194, 31
  %div21.i.i196 = lshr i32 %sub.i.i195, 5
  %target.i.i197 = getelementptr inbounds %struct.vcap_props, ptr %979, i32 0, i32 12
  br label %for.body.i.i208

for.body.i.i208:                                  ; preds = %for.body.i.i208.for.body.i.i208_crit_edge, %for.body.lr.ph.i.i198
  %i.023.i.i199 = phi i32 [ 0, %for.body.lr.ph.i.i198 ], [ %inc.i.i206, %for.body.i.i208.for.body.i.i208_crit_edge ]
  %987 = ptrtoint ptr %target.i.i197 to i32
  call void @__asan_load4_noabort(i32 %987)
  %988 = load i32, ptr %target.i.i197, align 4
  %mul.i.i200 = shl i32 %i.023.i.i199, 2
  %call.i.i201 = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %988, i32 noundef 2, i32 noundef %mul.i.i200) #8
  %arrayidx.i.i202 = getelementptr [12 x i32], ptr %data.i188, i32 0, i32 %i.023.i.i199
  %989 = ptrtoint ptr %arrayidx.i.i202 to i32
  call void @__asan_store4_noabort(i32 %989)
  store i32 %call.i.i201, ptr %arrayidx.i.i202, align 4
  %990 = ptrtoint ptr %target.i.i197 to i32
  call void @__asan_load4_noabort(i32 %990)
  %991 = load i32, ptr %target.i.i197, align 4
  %call5.i.i203 = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %991, i32 noundef 3, i32 noundef %mul.i.i200) #8
  %neg.i.i204 = xor i32 %call5.i.i203, -1
  %arrayidx6.i.i205 = getelementptr %struct.vcap_data, ptr %data.i188, i32 0, i32 1, i32 %i.023.i.i199
  %992 = ptrtoint ptr %arrayidx6.i.i205 to i32
  call void @__asan_store4_noabort(i32 %992)
  store i32 %neg.i.i204, ptr %arrayidx6.i.i205, align 4
  %inc.i.i206 = add nuw nsw i32 %i.023.i.i199, 1
  %exitcond.not.i.i207 = icmp eq i32 %inc.i.i206, %div21.i.i196
  br i1 %exitcond.not.i.i207, label %for.body.i.i208.vcap_cache2entry.exit.i214_crit_edge, label %for.body.i.i208.for.body.i.i208_crit_edge

for.body.i.i208.for.body.i.i208_crit_edge:        ; preds = %for.body.i.i208
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i208

for.body.i.i208.vcap_cache2entry.exit.i214_crit_edge: ; preds = %for.body.i.i208
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_cache2entry.exit.i214

vcap_cache2entry.exit.i214:                       ; preds = %for.body.i.i208.vcap_cache2entry.exit.i214_crit_edge, %if.then7.vcap_cache2entry.exit.i214_crit_edge
  %target7.i.i209 = getelementptr inbounds %struct.vcap_props, ptr %979, i32 0, i32 12
  %993 = ptrtoint ptr %target7.i.i209 to i32
  call void @__asan_load4_noabort(i32 %993)
  %994 = load i32, ptr %target7.i.i209, align 4
  %call8.i.i210 = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %994, i32 noundef 6, i32 noundef 0) #8
  %tg.i.i211 = getelementptr inbounds %struct.vcap_data, ptr %data.i188, i32 0, i32 4
  %995 = ptrtoint ptr %tg.i.i211 to i32
  call void @__asan_store4_noabort(i32 %995)
  store i32 %call8.i.i210, ptr %tg.i.i211, align 4
  %action_width.i.i212 = getelementptr inbounds %struct.vcap_props, ptr %979, i32 0, i32 7
  %996 = ptrtoint ptr %action_width.i.i212 to i32
  call void @__asan_load2_noabort(i32 %996)
  %997 = load i16, ptr %action_width.i.i212, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %997)
  %cmp37.not.i.i213 = icmp eq i16 %997, 0
  br i1 %cmp37.not.i.i213, label %vcap_cache2entry.exit.i214.for.cond2.preheader.i.i218_crit_edge, label %for.body.lr.ph.i64.i

vcap_cache2entry.exit.i214.for.cond2.preheader.i.i218_crit_edge: ; preds = %vcap_cache2entry.exit.i214
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.i.i218

for.body.lr.ph.i64.i:                             ; preds = %vcap_cache2entry.exit.i214
  %conv.i61.i = zext i16 %997 to i32
  %sub.i62.i = add nuw nsw i32 %conv.i61.i, 31
  %div36.i.i215 = lshr i32 %sub.i62.i, 5
  br label %for.body.i71.i

for.cond2.preheader.i.i218:                       ; preds = %for.body.i71.i.for.cond2.preheader.i.i218_crit_edge, %vcap_cache2entry.exit.i214.for.cond2.preheader.i.i218_crit_edge
  %counter_words.i.i216 = getelementptr inbounds %struct.vcap_props, ptr %979, i32 0, i32 10
  %998 = ptrtoint ptr %counter_words.i.i216 to i32
  call void @__asan_load2_noabort(i32 %998)
  %999 = load i16, ptr %counter_words.i.i216, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %999)
  %cmp440.not.i.i217 = icmp eq i16 %999, 0
  br i1 %cmp440.not.i.i217, label %for.cond2.preheader.i.i218.for.end13.i.i235_crit_edge, label %for.cond2.preheader.i.i218.for.body6.i.i227_crit_edge

for.cond2.preheader.i.i218.for.body6.i.i227_crit_edge: ; preds = %for.cond2.preheader.i.i218
  br label %for.body6.i.i227

for.cond2.preheader.i.i218.for.end13.i.i235_crit_edge: ; preds = %for.cond2.preheader.i.i218
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end13.i.i235

for.body.i71.i:                                   ; preds = %for.body.i71.i.for.body.i71.i_crit_edge, %for.body.lr.ph.i64.i
  %i.038.i.i219 = phi i32 [ 0, %for.body.lr.ph.i64.i ], [ %inc.i69.i, %for.body.i71.i.for.body.i71.i_crit_edge ]
  %1000 = ptrtoint ptr %target7.i.i209 to i32
  call void @__asan_load4_noabort(i32 %1000)
  %1001 = load i32, ptr %target7.i.i209, align 4
  %mul.i66.i = shl i32 %i.038.i.i219, 2
  %call.i67.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %1001, i32 noundef 4, i32 noundef %mul.i66.i) #8
  %arrayidx.i68.i = getelementptr %struct.vcap_data, ptr %data.i188, i32 0, i32 2, i32 %i.038.i.i219
  %1002 = ptrtoint ptr %arrayidx.i68.i to i32
  call void @__asan_store4_noabort(i32 %1002)
  store i32 %call.i67.i, ptr %arrayidx.i68.i, align 4
  %inc.i69.i = add nuw nsw i32 %i.038.i.i219, 1
  %exitcond.not.i70.i = icmp eq i32 %inc.i69.i, %div36.i.i215
  br i1 %exitcond.not.i70.i, label %for.body.i71.i.for.cond2.preheader.i.i218_crit_edge, label %for.body.i71.i.for.body.i71.i_crit_edge

for.body.i71.i.for.body.i71.i_crit_edge:          ; preds = %for.body.i71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i71.i

for.body.i71.i.for.cond2.preheader.i.i218_crit_edge: ; preds = %for.body.i71.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.i.i218

for.body6.i.i227:                                 ; preds = %for.body6.i.i227.for.body6.i.i227_crit_edge, %for.cond2.preheader.i.i218.for.body6.i.i227_crit_edge
  %i.141.i.i220 = phi i32 [ %inc12.i.i224, %for.body6.i.i227.for.body6.i.i227_crit_edge ], [ 0, %for.cond2.preheader.i.i218.for.body6.i.i227_crit_edge ]
  %1003 = ptrtoint ptr %target7.i.i209 to i32
  call void @__asan_load4_noabort(i32 %1003)
  %1004 = load i32, ptr %target7.i.i209, align 4
  %mul8.i.i221 = shl i32 %i.141.i.i220, 2
  %call9.i.i222 = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %1004, i32 noundef 5, i32 noundef %mul8.i.i221) #8
  %arrayidx10.i.i223 = getelementptr %struct.vcap_data, ptr %data.i188, i32 0, i32 3, i32 %i.141.i.i220
  %1005 = ptrtoint ptr %arrayidx10.i.i223 to i32
  call void @__asan_store4_noabort(i32 %1005)
  store i32 %call9.i.i222, ptr %arrayidx10.i.i223, align 4
  %inc12.i.i224 = add nuw nsw i32 %i.141.i.i220, 1
  %1006 = ptrtoint ptr %counter_words.i.i216 to i32
  call void @__asan_load2_noabort(i32 %1006)
  %1007 = load i16, ptr %counter_words.i.i216, align 2
  %conv3.i.i225 = zext i16 %1007 to i32
  %cmp4.i.i226 = icmp ult i32 %inc12.i.i224, %conv3.i.i225
  br i1 %cmp4.i.i226, label %for.body6.i.i227.for.body6.i.i227_crit_edge, label %for.body6.i.i227.for.end13.i.i235_crit_edge

for.body6.i.i227.for.end13.i.i235_crit_edge:      ; preds = %for.body6.i.i227
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end13.i.i235

for.body6.i.i227.for.body6.i.i227_crit_edge:      ; preds = %for.body6.i.i227
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.i.i227

for.end13.i.i235:                                 ; preds = %for.body6.i.i227.for.end13.i.i235_crit_edge, %for.cond2.preheader.i.i218.for.end13.i.i235_crit_edge
  %action_type_width.i.i228 = getelementptr inbounds %struct.vcap_props, ptr %979, i32 0, i32 8
  %type.i.i229 = getelementptr inbounds %struct.vcap_data, ptr %data.i188, i32 0, i32 5
  %tg_sw.i230 = getelementptr inbounds %struct.vcap_data, ptr %data.i188, i32 0, i32 6
  %1008 = ptrtoint ptr %tg_sw.i230 to i32
  call void @__asan_store4_noabort(i32 %1008)
  store i32 1, ptr %tg_sw.i230, align 4
  %1009 = ptrtoint ptr %type.i.i229 to i32
  call void @__asan_store4_noabort(i32 %1009)
  store i32 0, ptr %type.i.i229, align 4
  %1010 = ptrtoint ptr %979 to i32
  call void @__asan_load2_noabort(i32 %1010)
  %1011 = load i16, ptr %979, align 4
  %conv.i72.i = zext i16 %1011 to i32
  %sw_count.i.i231 = getelementptr inbounds %struct.vcap_props, ptr %979, i32 0, i32 1
  %1012 = ptrtoint ptr %sw_count.i.i231 to i32
  call void @__asan_load2_noabort(i32 %1012)
  %1013 = load i16, ptr %sw_count.i.i231, align 2
  %tg_value.i.i232 = getelementptr inbounds %struct.vcap_data, ptr %data.i188, i32 0, i32 11
  %1014 = ptrtoint ptr %tg_value.i.i232 to i32
  call void @__asan_store4_noabort(i32 %1014)
  store i32 0, ptr %tg_value.i.i232, align 4
  %tg_mask.i.i233 = getelementptr inbounds %struct.vcap_data, ptr %data.i188, i32 0, i32 12
  %1015 = ptrtoint ptr %tg_mask.i.i233 to i32
  call void @__asan_store4_noabort(i32 %1015)
  store i32 0, ptr %tg_mask.i.i233, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1013)
  %cmp85.not.i.i234 = icmp eq i16 %1013, 0
  br i1 %cmp85.not.i.i234, label %for.end13.i.i235.vcap_data_offset_get.exit.i253_crit_edge, label %for.body.lr.ph.i75.i

for.end13.i.i235.vcap_data_offset_get.exit.i253_crit_edge: ; preds = %for.end13.i.i235
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_data_offset_get.exit.i253

for.body.lr.ph.i75.i:                             ; preds = %for.end13.i.i235
  %umax.i.i236 = zext i16 %1013 to i32
  br label %for.body.i80.i

for.body.i80.i:                                   ; preds = %for.body.i80.i.for.body.i80.i_crit_edge, %for.body.lr.ph.i75.i
  %1016 = phi i32 [ 0, %for.body.lr.ph.i75.i ], [ %or19.i.i243, %for.body.i80.i.for.body.i80.i_crit_edge ]
  %1017 = phi i32 [ 0, %for.body.lr.ph.i75.i ], [ %or.i.i239, %for.body.i80.i.for.body.i80.i_crit_edge ]
  %i.086.i.i237 = phi i32 [ 0, %for.body.lr.ph.i75.i ], [ %inc.i78.i, %for.body.i80.i.for.body.i80.i_crit_edge ]
  %mul8.i76.i = mul nuw i32 %i.086.i.i237, %conv.i72.i
  %shl.i.i238 = shl nuw i32 1, %mul8.i76.i
  %or.i.i239 = or i32 %shl.i.i238, %1017
  %shl11.neg.i.i240 = shl nsw i32 -1, %mul8.i76.i
  %1018 = add nuw i32 %mul8.i76.i, %conv.i72.i
  %sub16.i.i241 = sub i32 32, %1018
  %shr.i77.i = lshr i32 -1, %sub16.i.i241
  %and.i.i242 = and i32 %shr.i77.i, %shl11.neg.i.i240
  %or19.i.i243 = or i32 %and.i.i242, %1016
  %inc.i78.i = add nuw nsw i32 %i.086.i.i237, 1
  %exitcond.not.i79.i = icmp eq i32 %inc.i78.i, %umax.i.i236
  br i1 %exitcond.not.i79.i, label %for.cond.for.end_crit_edge.i.i244, label %for.body.i80.i.for.body.i80.i_crit_edge

for.body.i80.i.for.body.i80.i_crit_edge:          ; preds = %for.body.i80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i80.i

for.cond.for.end_crit_edge.i.i244:                ; preds = %for.body.i80.i
  call void @__sanitizer_cov_trace_pc() #10
  %1019 = ptrtoint ptr %tg_value.i.i232 to i32
  call void @__asan_store4_noabort(i32 %1019)
  store i32 %or.i.i239, ptr %tg_value.i.i232, align 4
  %1020 = ptrtoint ptr %tg_mask.i.i233 to i32
  call void @__asan_store4_noabort(i32 %1020)
  store i32 %or19.i.i243, ptr %tg_mask.i.i233, align 4
  br label %vcap_data_offset_get.exit.i253

vcap_data_offset_get.exit.i253:                   ; preds = %for.cond.for.end_crit_edge.i.i244, %for.end13.i.i235.vcap_data_offset_get.exit.i253_crit_edge
  %key_offset.i.i245 = getelementptr inbounds %struct.vcap_data, ptr %data.i188, i32 0, i32 8
  %1021 = ptrtoint ptr %key_offset.i.i245 to i32
  call void @__asan_store4_noabort(i32 %1021)
  store i32 0, ptr %key_offset.i.i245, align 4
  %counter_offset.i.i246 = getelementptr inbounds %struct.vcap_data, ptr %data.i188, i32 0, i32 10
  %1022 = ptrtoint ptr %counter_offset.i.i246 to i32
  call void @__asan_store4_noabort(i32 %1022)
  store i32 0, ptr %counter_offset.i.i246, align 4
  %action_offset.i.i247 = getelementptr inbounds %struct.vcap_data, ptr %data.i188, i32 0, i32 9
  %1023 = ptrtoint ptr %action_offset.i.i247 to i32
  call void @__asan_store4_noabort(i32 %1023)
  store i32 0, ptr %action_offset.i.i247, align 4
  %1024 = ptrtoint ptr %action_type_width.i.i228 to i32
  call void @__asan_load2_noabort(i32 %1024)
  %1025 = load i16, ptr %action_type_width.i.i228, align 4
  %conv38.i.i248 = zext i16 %1025 to i32
  store i32 %conv38.i.i248, ptr %action_offset.i.i247, align 4
  %1026 = ptrtoint ptr %tg.i.i211 to i32
  call void @__asan_load4_noabort(i32 %1026)
  %1027 = load i32, ptr %tg.i.i211, align 4
  %1028 = ptrtoint ptr %tg_mask.i.i233 to i32
  call void @__asan_load4_noabort(i32 %1028)
  %1029 = load i32, ptr %tg_mask.i.i233, align 4
  %neg.i249 = xor i32 %1029, -1
  %and.i250 = and i32 %1027, %neg.i249
  store i32 %and.i250, ptr %tg.i.i211, align 4
  %prio.i251 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 6
  %1030 = ptrtoint ptr %prio.i251 to i32
  call void @__asan_load2_noabort(i32 %1030)
  %1031 = load i16, ptr %prio.i251, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1031)
  %cmp.not.i252 = icmp eq i16 %1031, 0
  br i1 %cmp.not.i252, label %vcap_data_offset_get.exit.i253.if.end.i262_crit_edge, label %if.then.i255

vcap_data_offset_get.exit.i253.if.end.i262_crit_edge: ; preds = %vcap_data_offset_get.exit.i253
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i262

if.then.i255:                                     ; preds = %vcap_data_offset_get.exit.i253
  call void @__sanitizer_cov_trace_pc() #10
  %1032 = ptrtoint ptr %tg_value.i.i232 to i32
  call void @__asan_load4_noabort(i32 %1032)
  %1033 = load i32, ptr %tg_value.i.i232, align 4
  %or.i254 = or i32 %1033, %and.i250
  %1034 = ptrtoint ptr %tg.i.i211 to i32
  call void @__asan_store4_noabort(i32 %1034)
  store i32 %or.i254, ptr %tg.i.i211, align 4
  br label %if.end.i262

if.end.i262:                                      ; preds = %if.then.i255, %vcap_data_offset_get.exit.i253.if.end.i262_crit_edge
  %vlan.i256 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 15
  %ingress_port.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 11
  %1035 = ptrtoint ptr %ingress_port.i to i32
  call void @__asan_load1_noabort(i32 %1035)
  %1036 = load i8, ptr %ingress_port.i, align 4
  %conv5.i = zext i8 %1036 to i32
  %mask.i257 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 11, i32 1
  %1037 = ptrtoint ptr %mask.i257 to i32
  call void @__asan_load1_noabort(i32 %1037)
  %1038 = load i8, ptr %mask.i257, align 1
  %conv7.i258 = zext i8 %1038 to i32
  %keys.i.i259 = getelementptr inbounds %struct.vcap_props, ptr %979, i32 0, i32 13
  %1039 = ptrtoint ptr %keys.i.i259 to i32
  call void @__asan_load4_noabort(i32 %1039)
  %1040 = load ptr, ptr %keys.i.i259, align 4
  %arrayidx.i85.i = getelementptr %struct.vcap_field, ptr %1040, i32 1
  %1041 = ptrtoint ptr %arrayidx.i85.i to i32
  call void @__asan_load4_noabort(i32 %1041)
  %1042 = load i32, ptr %arrayidx.i85.i, align 4
  %length4.i.i260 = getelementptr %struct.vcap_field, ptr %1040, i32 1, i32 1
  %1043 = ptrtoint ptr %length4.i.i260 to i32
  call void @__asan_load4_noabort(i32 %1043)
  %1044 = load i32, ptr %length4.i.i260, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1044)
  %cmp16.not.i.i.i.i261 = icmp eq i32 %1044, 0
  br i1 %cmp16.not.i.i.i.i261, label %if.end.i262.vcap_key_set.exit.i302_crit_edge, label %if.end.i262.for.body.i.i.i.i281_crit_edge

if.end.i262.for.body.i.i.i.i281_crit_edge:        ; preds = %if.end.i262
  br label %for.body.i.i.i.i281

if.end.i262.vcap_key_set.exit.i302_crit_edge:     ; preds = %if.end.i262
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit.i302

for.body.i.i.i.i281:                              ; preds = %for.body.i.i.i.i281.for.body.i.i.i.i281_crit_edge, %if.end.i262.for.body.i.i.i.i281_crit_edge
  %i.018.i.i.i.i265 = phi i32 [ %inc.i.i.i.i278, %for.body.i.i.i.i281.for.body.i.i.i.i281_crit_edge ], [ 0, %if.end.i262.for.body.i.i.i.i281_crit_edge ]
  %offset.addr.017.i.i.i.i266 = phi i32 [ %inc5.i.i.i.i279, %for.body.i.i.i.i281.for.body.i.i.i.i281_crit_edge ], [ %1042, %if.end.i262.for.body.i.i.i.i281_crit_edge ]
  %div15.i.i.i.i267 = lshr i32 %offset.addr.017.i.i.i.i266, 5
  %arrayidx.i.i.i.i268 = getelementptr i32, ptr %data.i188, i32 %div15.i.i.i.i267
  %1045 = ptrtoint ptr %arrayidx.i.i.i.i268 to i32
  call void @__asan_load4_noabort(i32 %1045)
  %1046 = load i32, ptr %arrayidx.i.i.i.i268, align 4
  %rem.i.i.i.i269 = and i32 %offset.addr.017.i.i.i.i266, 31
  %shl.i.i.i.i270 = shl nuw i32 1, %rem.i.i.i.i269
  %shl1.i.i.i.i271 = shl nuw i32 1, %i.018.i.i.i.i265
  %and.i.i.i.i272 = and i32 %shl1.i.i.i.i271, %conv5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i272)
  %tobool.not.i.i.i.i273 = icmp eq i32 %and.i.i.i.i272, 0
  %or.i.i.i.i274 = or i32 %shl.i.i.i.i270, %1046
  %neg.i.i.i.i275 = xor i32 %shl.i.i.i.i270, -1
  %and2.i.i.i.i276 = and i32 %1046, %neg.i.i.i.i275
  %v.0.i.i.i.i277 = select i1 %tobool.not.i.i.i.i273, i32 %and2.i.i.i.i276, i32 %or.i.i.i.i274
  %1047 = ptrtoint ptr %arrayidx.i.i.i.i268 to i32
  call void @__asan_store4_noabort(i32 %1047)
  store i32 %v.0.i.i.i.i277, ptr %arrayidx.i.i.i.i268, align 4
  %inc.i.i.i.i278 = add nuw i32 %i.018.i.i.i.i265, 1
  %inc5.i.i.i.i279 = add i32 %offset.addr.017.i.i.i.i266, 1
  %exitcond.not.i.i.i.i280 = icmp eq i32 %inc.i.i.i.i278, %1044
  br i1 %exitcond.not.i.i.i.i280, label %for.body.i28.preheader.i.i.i284, label %for.body.i.i.i.i281.for.body.i.i.i.i281_crit_edge

for.body.i.i.i.i281.for.body.i.i.i.i281_crit_edge: ; preds = %for.body.i.i.i.i281
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i281

for.body.i28.preheader.i.i.i284:                  ; preds = %for.body.i.i.i.i281
  %mask2.i.i.i282 = getelementptr inbounds %struct.vcap_data, ptr %data.i188, i32 0, i32 1
  %1048 = ptrtoint ptr %key_offset.i.i245 to i32
  call void @__asan_load4_noabort(i32 %1048)
  %1049 = load i32, ptr %key_offset.i.i245, align 4
  %add5.i.i.i283 = add i32 %1049, %1042
  br label %for.body.i28.i.i.i299

for.body.i28.i.i.i299:                            ; preds = %for.body.i28.i.i.i299.for.body.i28.i.i.i299_crit_edge, %for.body.i28.preheader.i.i.i284
  %i.018.i12.i.i.i285 = phi i32 [ %inc.i25.i.i.i296, %for.body.i28.i.i.i299.for.body.i28.i.i.i299_crit_edge ], [ 0, %for.body.i28.preheader.i.i.i284 ]
  %offset.addr.017.i13.i.i.i286 = phi i32 [ %inc5.i26.i.i.i297, %for.body.i28.i.i.i299.for.body.i28.i.i.i299_crit_edge ], [ %add5.i.i.i283, %for.body.i28.preheader.i.i.i284 ]
  %div15.i14.i.i.i287 = lshr i32 %offset.addr.017.i13.i.i.i286, 5
  %arrayidx.i15.i.i.i288 = getelementptr i32, ptr %mask2.i.i.i282, i32 %div15.i14.i.i.i287
  %1050 = ptrtoint ptr %arrayidx.i15.i.i.i288 to i32
  call void @__asan_load4_noabort(i32 %1050)
  %1051 = load i32, ptr %arrayidx.i15.i.i.i288, align 4
  %rem.i16.i.i.i289 = and i32 %offset.addr.017.i13.i.i.i286, 31
  %shl.i17.i.i.i290 = shl nuw i32 1, %rem.i16.i.i.i289
  %shl1.i18.i.i.i = shl nuw i32 1, %i.018.i12.i.i.i285
  %and.i19.i.i.i = and i32 %shl1.i18.i.i.i, %conv7.i258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i.i.i)
  %tobool.not.i20.i.i.i291 = icmp eq i32 %and.i19.i.i.i, 0
  %or.i21.i.i.i292 = or i32 %shl.i17.i.i.i290, %1051
  %neg.i22.i.i.i293 = xor i32 %shl.i17.i.i.i290, -1
  %and2.i23.i.i.i294 = and i32 %1051, %neg.i22.i.i.i293
  %v.0.i24.i.i.i295 = select i1 %tobool.not.i20.i.i.i291, i32 %and2.i23.i.i.i294, i32 %or.i21.i.i.i292
  %1052 = ptrtoint ptr %arrayidx.i15.i.i.i288 to i32
  call void @__asan_store4_noabort(i32 %1052)
  store i32 %v.0.i24.i.i.i295, ptr %arrayidx.i15.i.i.i288, align 4
  %inc.i25.i.i.i296 = add nuw i32 %i.018.i12.i.i.i285, 1
  %inc5.i26.i.i.i297 = add i32 %offset.addr.017.i13.i.i.i286, 1
  %exitcond.not.i27.i.i.i298 = icmp eq i32 %inc.i25.i.i.i296, %1044
  br i1 %exitcond.not.i27.i.i.i298, label %for.body.i28.i.i.i299.vcap_key_set.exit.i302_crit_edge, label %for.body.i28.i.i.i299.for.body.i28.i.i.i299_crit_edge

for.body.i28.i.i.i299.for.body.i28.i.i.i299_crit_edge: ; preds = %for.body.i28.i.i.i299
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i.i299

for.body.i28.i.i.i299.vcap_key_set.exit.i302_crit_edge: ; preds = %for.body.i28.i.i.i299
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit.i302

vcap_key_set.exit.i302:                           ; preds = %for.body.i28.i.i.i299.vcap_key_set.exit.i302_crit_edge, %if.end.i262.vcap_key_set.exit.i302_crit_edge
  %egress_port.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 12
  %1053 = ptrtoint ptr %egress_port.i to i32
  call void @__asan_load1_noabort(i32 %1053)
  %1054 = load i8, ptr %egress_port.i, align 2
  %conv9.i300 = zext i8 %1054 to i32
  %mask11.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 12, i32 1
  %1055 = ptrtoint ptr %mask11.i to i32
  call void @__asan_load1_noabort(i32 %1055)
  %1056 = load i8, ptr %mask11.i, align 1
  %conv12.i301 = zext i8 %1056 to i32
  %1057 = ptrtoint ptr %keys.i.i259 to i32
  call void @__asan_load4_noabort(i32 %1057)
  %1058 = load ptr, ptr %keys.i.i259, align 4
  %1059 = ptrtoint ptr %1058 to i32
  call void @__asan_load4_noabort(i32 %1059)
  %1060 = load i32, ptr %1058, align 4
  %length4.i87.i = getelementptr %struct.vcap_field, ptr %1058, i32 0, i32 1
  %1061 = ptrtoint ptr %length4.i87.i to i32
  call void @__asan_load4_noabort(i32 %1061)
  %1062 = load i32, ptr %length4.i87.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1062)
  %cmp16.not.i.i.i89.i = icmp eq i32 %1062, 0
  br i1 %cmp16.not.i.i.i89.i, label %vcap_key_set.exit.i302.vcap_key_set.exit129.i_crit_edge, label %for.body.i.preheader.i.i91.i

vcap_key_set.exit.i302.vcap_key_set.exit129.i_crit_edge: ; preds = %vcap_key_set.exit.i302
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit129.i

for.body.i.preheader.i.i91.i:                     ; preds = %vcap_key_set.exit.i302
  %1063 = ptrtoint ptr %key_offset.i.i245 to i32
  call void @__asan_load4_noabort(i32 %1063)
  %1064 = load i32, ptr %key_offset.i.i245, align 4
  %add.i.i90.i = add i32 %1064, %1060
  br label %for.body.i.i.i108.i

for.body.i.i.i108.i:                              ; preds = %for.body.i.i.i108.i.for.body.i.i.i108.i_crit_edge, %for.body.i.preheader.i.i91.i
  %i.018.i.i.i92.i = phi i32 [ %inc.i.i.i105.i, %for.body.i.i.i108.i.for.body.i.i.i108.i_crit_edge ], [ 0, %for.body.i.preheader.i.i91.i ]
  %offset.addr.017.i.i.i93.i = phi i32 [ %inc5.i.i.i106.i, %for.body.i.i.i108.i.for.body.i.i.i108.i_crit_edge ], [ %add.i.i90.i, %for.body.i.preheader.i.i91.i ]
  %div15.i.i.i94.i = lshr i32 %offset.addr.017.i.i.i93.i, 5
  %arrayidx.i.i.i95.i = getelementptr i32, ptr %data.i188, i32 %div15.i.i.i94.i
  %1065 = ptrtoint ptr %arrayidx.i.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %1065)
  %1066 = load i32, ptr %arrayidx.i.i.i95.i, align 4
  %rem.i.i.i96.i = and i32 %offset.addr.017.i.i.i93.i, 31
  %shl.i.i.i97.i = shl nuw i32 1, %rem.i.i.i96.i
  %shl1.i.i.i98.i = shl nuw i32 1, %i.018.i.i.i92.i
  %and.i.i.i99.i = and i32 %shl1.i.i.i98.i, %conv9.i300
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i99.i)
  %tobool.not.i.i.i100.i = icmp eq i32 %and.i.i.i99.i, 0
  %or.i.i.i101.i = or i32 %shl.i.i.i97.i, %1066
  %neg.i.i.i102.i = xor i32 %shl.i.i.i97.i, -1
  %and2.i.i.i103.i = and i32 %1066, %neg.i.i.i102.i
  %v.0.i.i.i104.i = select i1 %tobool.not.i.i.i100.i, i32 %and2.i.i.i103.i, i32 %or.i.i.i101.i
  %1067 = ptrtoint ptr %arrayidx.i.i.i95.i to i32
  call void @__asan_store4_noabort(i32 %1067)
  store i32 %v.0.i.i.i104.i, ptr %arrayidx.i.i.i95.i, align 4
  %inc.i.i.i105.i = add nuw i32 %i.018.i.i.i92.i, 1
  %inc5.i.i.i106.i = add i32 %offset.addr.017.i.i.i93.i, 1
  %exitcond.not.i.i.i107.i = icmp eq i32 %inc.i.i.i105.i, %1062
  br i1 %exitcond.not.i.i.i107.i, label %for.body.i28.preheader.i.i111.i, label %for.body.i.i.i108.i.for.body.i.i.i108.i_crit_edge

for.body.i.i.i108.i.for.body.i.i.i108.i_crit_edge: ; preds = %for.body.i.i.i108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i108.i

for.body.i28.preheader.i.i111.i:                  ; preds = %for.body.i.i.i108.i
  %mask2.i.i109.i = getelementptr inbounds %struct.vcap_data, ptr %data.i188, i32 0, i32 1
  %1068 = ptrtoint ptr %key_offset.i.i245 to i32
  call void @__asan_load4_noabort(i32 %1068)
  %1069 = load i32, ptr %key_offset.i.i245, align 4
  %add5.i.i110.i = add i32 %1069, %1060
  br label %for.body.i28.i.i128.i

for.body.i28.i.i128.i:                            ; preds = %for.body.i28.i.i128.i.for.body.i28.i.i128.i_crit_edge, %for.body.i28.preheader.i.i111.i
  %i.018.i12.i.i112.i = phi i32 [ %inc.i25.i.i125.i, %for.body.i28.i.i128.i.for.body.i28.i.i128.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i111.i ]
  %offset.addr.017.i13.i.i113.i = phi i32 [ %inc5.i26.i.i126.i, %for.body.i28.i.i128.i.for.body.i28.i.i128.i_crit_edge ], [ %add5.i.i110.i, %for.body.i28.preheader.i.i111.i ]
  %div15.i14.i.i114.i = lshr i32 %offset.addr.017.i13.i.i113.i, 5
  %arrayidx.i15.i.i115.i = getelementptr i32, ptr %mask2.i.i109.i, i32 %div15.i14.i.i114.i
  %1070 = ptrtoint ptr %arrayidx.i15.i.i115.i to i32
  call void @__asan_load4_noabort(i32 %1070)
  %1071 = load i32, ptr %arrayidx.i15.i.i115.i, align 4
  %rem.i16.i.i116.i = and i32 %offset.addr.017.i13.i.i113.i, 31
  %shl.i17.i.i117.i = shl nuw i32 1, %rem.i16.i.i116.i
  %shl1.i18.i.i118.i = shl nuw i32 1, %i.018.i12.i.i112.i
  %and.i19.i.i119.i = and i32 %shl1.i18.i.i118.i, %conv12.i301
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i.i119.i)
  %tobool.not.i20.i.i120.i = icmp eq i32 %and.i19.i.i119.i, 0
  %or.i21.i.i121.i = or i32 %shl.i17.i.i117.i, %1071
  %neg.i22.i.i122.i = xor i32 %shl.i17.i.i117.i, -1
  %and2.i23.i.i123.i = and i32 %1071, %neg.i22.i.i122.i
  %v.0.i24.i.i124.i = select i1 %tobool.not.i20.i.i120.i, i32 %and2.i23.i.i123.i, i32 %or.i21.i.i121.i
  %1072 = ptrtoint ptr %arrayidx.i15.i.i115.i to i32
  call void @__asan_store4_noabort(i32 %1072)
  store i32 %v.0.i24.i.i124.i, ptr %arrayidx.i15.i.i115.i, align 4
  %inc.i25.i.i125.i = add nuw i32 %i.018.i12.i.i112.i, 1
  %inc5.i26.i.i126.i = add i32 %offset.addr.017.i13.i.i113.i, 1
  %exitcond.not.i27.i.i127.i = icmp eq i32 %inc.i25.i.i125.i, %1062
  br i1 %exitcond.not.i27.i.i127.i, label %for.body.i28.i.i128.i.vcap_key_set.exit129.i_crit_edge, label %for.body.i28.i.i128.i.for.body.i28.i.i128.i_crit_edge

for.body.i28.i.i128.i.for.body.i28.i.i128.i_crit_edge: ; preds = %for.body.i28.i.i128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i128.i

for.body.i28.i.i128.i.vcap_key_set.exit129.i_crit_edge: ; preds = %for.body.i28.i.i128.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit129.i

vcap_key_set.exit129.i:                           ; preds = %for.body.i28.i.i128.i.vcap_key_set.exit129.i_crit_edge, %vcap_key_set.exit.i302.vcap_key_set.exit129.i_crit_edge
  %dmac_mc.i303 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 13
  %1073 = ptrtoint ptr %dmac_mc.i303 to i32
  call void @__asan_load4_noabort(i32 %1073)
  %1074 = load i32, ptr %dmac_mc.i303, align 8
  call fastcc void @vcap_key_bit_set(ptr noundef %979, ptr noundef nonnull %data.i188, i32 noundef 3, i32 noundef %1074) #8
  %dmac_bc.i304 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 14
  %1075 = ptrtoint ptr %dmac_bc.i304 to i32
  call void @__asan_load4_noabort(i32 %1075)
  %1076 = load i32, ptr %dmac_bc.i304, align 4
  call fastcc void @vcap_key_bit_set(ptr noundef %979, ptr noundef nonnull %data.i188, i32 noundef 4, i32 noundef %1076) #8
  %1077 = ptrtoint ptr %vlan.i256 to i32
  call void @__asan_load2_noabort(i32 %1077)
  %1078 = load i16, ptr %vlan.i256, align 4
  %conv14.i = zext i16 %1078 to i32
  %mask16.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 15, i32 0, i32 1
  %1079 = ptrtoint ptr %mask16.i to i32
  call void @__asan_load2_noabort(i32 %1079)
  %1080 = load i16, ptr %mask16.i, align 2
  %conv17.i = zext i16 %1080 to i32
  %1081 = ptrtoint ptr %keys.i.i259 to i32
  call void @__asan_load4_noabort(i32 %1081)
  %1082 = load ptr, ptr %keys.i.i259, align 4
  %arrayidx.i131.i = getelementptr %struct.vcap_field, ptr %1082, i32 5
  %1083 = ptrtoint ptr %arrayidx.i131.i to i32
  call void @__asan_load4_noabort(i32 %1083)
  %1084 = load i32, ptr %arrayidx.i131.i, align 4
  %length4.i132.i = getelementptr %struct.vcap_field, ptr %1082, i32 5, i32 1
  %1085 = ptrtoint ptr %length4.i132.i to i32
  call void @__asan_load4_noabort(i32 %1085)
  %1086 = load i32, ptr %length4.i132.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1086)
  %cmp16.not.i.i.i134.i = icmp eq i32 %1086, 0
  br i1 %cmp16.not.i.i.i134.i, label %vcap_key_set.exit129.i.vcap_key_set.exit174.i_crit_edge, label %for.body.i.preheader.i.i136.i

vcap_key_set.exit129.i.vcap_key_set.exit174.i_crit_edge: ; preds = %vcap_key_set.exit129.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit174.i

for.body.i.preheader.i.i136.i:                    ; preds = %vcap_key_set.exit129.i
  %1087 = ptrtoint ptr %key_offset.i.i245 to i32
  call void @__asan_load4_noabort(i32 %1087)
  %1088 = load i32, ptr %key_offset.i.i245, align 4
  %add.i.i135.i = add i32 %1088, %1084
  br label %for.body.i.i.i153.i

for.body.i.i.i153.i:                              ; preds = %for.body.i.i.i153.i.for.body.i.i.i153.i_crit_edge, %for.body.i.preheader.i.i136.i
  %i.018.i.i.i137.i = phi i32 [ %inc.i.i.i150.i, %for.body.i.i.i153.i.for.body.i.i.i153.i_crit_edge ], [ 0, %for.body.i.preheader.i.i136.i ]
  %offset.addr.017.i.i.i138.i = phi i32 [ %inc5.i.i.i151.i, %for.body.i.i.i153.i.for.body.i.i.i153.i_crit_edge ], [ %add.i.i135.i, %for.body.i.preheader.i.i136.i ]
  %div15.i.i.i139.i = lshr i32 %offset.addr.017.i.i.i138.i, 5
  %arrayidx.i.i.i140.i = getelementptr i32, ptr %data.i188, i32 %div15.i.i.i139.i
  %1089 = ptrtoint ptr %arrayidx.i.i.i140.i to i32
  call void @__asan_load4_noabort(i32 %1089)
  %1090 = load i32, ptr %arrayidx.i.i.i140.i, align 4
  %rem.i.i.i141.i = and i32 %offset.addr.017.i.i.i138.i, 31
  %shl.i.i.i142.i = shl nuw i32 1, %rem.i.i.i141.i
  %shl1.i.i.i143.i = shl nuw i32 1, %i.018.i.i.i137.i
  %and.i.i.i144.i = and i32 %shl1.i.i.i143.i, %conv14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i144.i)
  %tobool.not.i.i.i145.i = icmp eq i32 %and.i.i.i144.i, 0
  %or.i.i.i146.i = or i32 %shl.i.i.i142.i, %1090
  %neg.i.i.i147.i = xor i32 %shl.i.i.i142.i, -1
  %and2.i.i.i148.i = and i32 %1090, %neg.i.i.i147.i
  %v.0.i.i.i149.i = select i1 %tobool.not.i.i.i145.i, i32 %and2.i.i.i148.i, i32 %or.i.i.i146.i
  %1091 = ptrtoint ptr %arrayidx.i.i.i140.i to i32
  call void @__asan_store4_noabort(i32 %1091)
  store i32 %v.0.i.i.i149.i, ptr %arrayidx.i.i.i140.i, align 4
  %inc.i.i.i150.i = add nuw i32 %i.018.i.i.i137.i, 1
  %inc5.i.i.i151.i = add i32 %offset.addr.017.i.i.i138.i, 1
  %exitcond.not.i.i.i152.i = icmp eq i32 %inc.i.i.i150.i, %1086
  br i1 %exitcond.not.i.i.i152.i, label %for.body.i28.preheader.i.i156.i, label %for.body.i.i.i153.i.for.body.i.i.i153.i_crit_edge

for.body.i.i.i153.i.for.body.i.i.i153.i_crit_edge: ; preds = %for.body.i.i.i153.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i153.i

for.body.i28.preheader.i.i156.i:                  ; preds = %for.body.i.i.i153.i
  %mask2.i.i154.i = getelementptr inbounds %struct.vcap_data, ptr %data.i188, i32 0, i32 1
  %1092 = ptrtoint ptr %key_offset.i.i245 to i32
  call void @__asan_load4_noabort(i32 %1092)
  %1093 = load i32, ptr %key_offset.i.i245, align 4
  %add5.i.i155.i = add i32 %1093, %1084
  br label %for.body.i28.i.i173.i

for.body.i28.i.i173.i:                            ; preds = %for.body.i28.i.i173.i.for.body.i28.i.i173.i_crit_edge, %for.body.i28.preheader.i.i156.i
  %i.018.i12.i.i157.i = phi i32 [ %inc.i25.i.i170.i, %for.body.i28.i.i173.i.for.body.i28.i.i173.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i156.i ]
  %offset.addr.017.i13.i.i158.i = phi i32 [ %inc5.i26.i.i171.i, %for.body.i28.i.i173.i.for.body.i28.i.i173.i_crit_edge ], [ %add5.i.i155.i, %for.body.i28.preheader.i.i156.i ]
  %div15.i14.i.i159.i = lshr i32 %offset.addr.017.i13.i.i158.i, 5
  %arrayidx.i15.i.i160.i = getelementptr i32, ptr %mask2.i.i154.i, i32 %div15.i14.i.i159.i
  %1094 = ptrtoint ptr %arrayidx.i15.i.i160.i to i32
  call void @__asan_load4_noabort(i32 %1094)
  %1095 = load i32, ptr %arrayidx.i15.i.i160.i, align 4
  %rem.i16.i.i161.i = and i32 %offset.addr.017.i13.i.i158.i, 31
  %shl.i17.i.i162.i = shl nuw i32 1, %rem.i16.i.i161.i
  %shl1.i18.i.i163.i = shl nuw i32 1, %i.018.i12.i.i157.i
  %and.i19.i.i164.i = and i32 %shl1.i18.i.i163.i, %conv17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i.i164.i)
  %tobool.not.i20.i.i165.i = icmp eq i32 %and.i19.i.i164.i, 0
  %or.i21.i.i166.i = or i32 %shl.i17.i.i162.i, %1095
  %neg.i22.i.i167.i = xor i32 %shl.i17.i.i162.i, -1
  %and2.i23.i.i168.i = and i32 %1095, %neg.i22.i.i167.i
  %v.0.i24.i.i169.i = select i1 %tobool.not.i20.i.i165.i, i32 %and2.i23.i.i168.i, i32 %or.i21.i.i166.i
  %1096 = ptrtoint ptr %arrayidx.i15.i.i160.i to i32
  call void @__asan_store4_noabort(i32 %1096)
  store i32 %v.0.i24.i.i169.i, ptr %arrayidx.i15.i.i160.i, align 4
  %inc.i25.i.i170.i = add nuw i32 %i.018.i12.i.i157.i, 1
  %inc5.i26.i.i171.i = add i32 %offset.addr.017.i13.i.i158.i, 1
  %exitcond.not.i27.i.i172.i = icmp eq i32 %inc.i25.i.i170.i, %1086
  br i1 %exitcond.not.i27.i.i172.i, label %for.body.i28.i.i173.i.vcap_key_set.exit174.i_crit_edge, label %for.body.i28.i.i173.i.for.body.i28.i.i173.i_crit_edge

for.body.i28.i.i173.i.for.body.i28.i.i173.i_crit_edge: ; preds = %for.body.i28.i.i173.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i173.i

for.body.i28.i.i173.i.vcap_key_set.exit174.i_crit_edge: ; preds = %for.body.i28.i.i173.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit174.i

vcap_key_set.exit174.i:                           ; preds = %for.body.i28.i.i173.i.vcap_key_set.exit174.i_crit_edge, %vcap_key_set.exit129.i.vcap_key_set.exit174.i_crit_edge
  %pcp.i305 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 15, i32 1
  %1097 = ptrtoint ptr %pcp.i305 to i32
  call void @__asan_load1_noabort(i32 %1097)
  %1098 = load i8, ptr %pcp.i305, align 4
  %conv20.i = zext i8 %1098 to i32
  %mask22.i306 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 15, i32 1, i32 1
  %1099 = ptrtoint ptr %mask22.i306 to i32
  call void @__asan_load1_noabort(i32 %1099)
  %1100 = load i8, ptr %mask22.i306, align 1
  %conv24.i = zext i8 %1100 to i32
  %1101 = ptrtoint ptr %keys.i.i259 to i32
  call void @__asan_load4_noabort(i32 %1101)
  %1102 = load ptr, ptr %keys.i.i259, align 4
  %arrayidx.i176.i = getelementptr %struct.vcap_field, ptr %1102, i32 7
  %1103 = ptrtoint ptr %arrayidx.i176.i to i32
  call void @__asan_load4_noabort(i32 %1103)
  %1104 = load i32, ptr %arrayidx.i176.i, align 4
  %length4.i177.i = getelementptr %struct.vcap_field, ptr %1102, i32 7, i32 1
  %1105 = ptrtoint ptr %length4.i177.i to i32
  call void @__asan_load4_noabort(i32 %1105)
  %1106 = load i32, ptr %length4.i177.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1106)
  %cmp16.not.i.i.i179.i = icmp eq i32 %1106, 0
  br i1 %cmp16.not.i.i.i179.i, label %vcap_key_set.exit174.i.vcap_key_set.exit219.i_crit_edge, label %for.body.i.preheader.i.i181.i

vcap_key_set.exit174.i.vcap_key_set.exit219.i_crit_edge: ; preds = %vcap_key_set.exit174.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit219.i

for.body.i.preheader.i.i181.i:                    ; preds = %vcap_key_set.exit174.i
  %1107 = ptrtoint ptr %key_offset.i.i245 to i32
  call void @__asan_load4_noabort(i32 %1107)
  %1108 = load i32, ptr %key_offset.i.i245, align 4
  %add.i.i180.i = add i32 %1108, %1104
  br label %for.body.i.i.i198.i

for.body.i.i.i198.i:                              ; preds = %for.body.i.i.i198.i.for.body.i.i.i198.i_crit_edge, %for.body.i.preheader.i.i181.i
  %i.018.i.i.i182.i = phi i32 [ %inc.i.i.i195.i, %for.body.i.i.i198.i.for.body.i.i.i198.i_crit_edge ], [ 0, %for.body.i.preheader.i.i181.i ]
  %offset.addr.017.i.i.i183.i = phi i32 [ %inc5.i.i.i196.i, %for.body.i.i.i198.i.for.body.i.i.i198.i_crit_edge ], [ %add.i.i180.i, %for.body.i.preheader.i.i181.i ]
  %div15.i.i.i184.i = lshr i32 %offset.addr.017.i.i.i183.i, 5
  %arrayidx.i.i.i185.i = getelementptr i32, ptr %data.i188, i32 %div15.i.i.i184.i
  %1109 = ptrtoint ptr %arrayidx.i.i.i185.i to i32
  call void @__asan_load4_noabort(i32 %1109)
  %1110 = load i32, ptr %arrayidx.i.i.i185.i, align 4
  %rem.i.i.i186.i = and i32 %offset.addr.017.i.i.i183.i, 31
  %shl.i.i.i187.i = shl nuw i32 1, %rem.i.i.i186.i
  %shl1.i.i.i188.i = shl nuw i32 1, %i.018.i.i.i182.i
  %and.i.i.i189.i = and i32 %shl1.i.i.i188.i, %conv20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i189.i)
  %tobool.not.i.i.i190.i = icmp eq i32 %and.i.i.i189.i, 0
  %or.i.i.i191.i = or i32 %shl.i.i.i187.i, %1110
  %neg.i.i.i192.i = xor i32 %shl.i.i.i187.i, -1
  %and2.i.i.i193.i = and i32 %1110, %neg.i.i.i192.i
  %v.0.i.i.i194.i = select i1 %tobool.not.i.i.i190.i, i32 %and2.i.i.i193.i, i32 %or.i.i.i191.i
  %1111 = ptrtoint ptr %arrayidx.i.i.i185.i to i32
  call void @__asan_store4_noabort(i32 %1111)
  store i32 %v.0.i.i.i194.i, ptr %arrayidx.i.i.i185.i, align 4
  %inc.i.i.i195.i = add nuw i32 %i.018.i.i.i182.i, 1
  %inc5.i.i.i196.i = add i32 %offset.addr.017.i.i.i183.i, 1
  %exitcond.not.i.i.i197.i = icmp eq i32 %inc.i.i.i195.i, %1106
  br i1 %exitcond.not.i.i.i197.i, label %for.body.i28.preheader.i.i201.i, label %for.body.i.i.i198.i.for.body.i.i.i198.i_crit_edge

for.body.i.i.i198.i.for.body.i.i.i198.i_crit_edge: ; preds = %for.body.i.i.i198.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i198.i

for.body.i28.preheader.i.i201.i:                  ; preds = %for.body.i.i.i198.i
  %mask2.i.i199.i = getelementptr inbounds %struct.vcap_data, ptr %data.i188, i32 0, i32 1
  %1112 = ptrtoint ptr %key_offset.i.i245 to i32
  call void @__asan_load4_noabort(i32 %1112)
  %1113 = load i32, ptr %key_offset.i.i245, align 4
  %add5.i.i200.i = add i32 %1113, %1104
  br label %for.body.i28.i.i218.i

for.body.i28.i.i218.i:                            ; preds = %for.body.i28.i.i218.i.for.body.i28.i.i218.i_crit_edge, %for.body.i28.preheader.i.i201.i
  %i.018.i12.i.i202.i = phi i32 [ %inc.i25.i.i215.i, %for.body.i28.i.i218.i.for.body.i28.i.i218.i_crit_edge ], [ 0, %for.body.i28.preheader.i.i201.i ]
  %offset.addr.017.i13.i.i203.i = phi i32 [ %inc5.i26.i.i216.i, %for.body.i28.i.i218.i.for.body.i28.i.i218.i_crit_edge ], [ %add5.i.i200.i, %for.body.i28.preheader.i.i201.i ]
  %div15.i14.i.i204.i = lshr i32 %offset.addr.017.i13.i.i203.i, 5
  %arrayidx.i15.i.i205.i = getelementptr i32, ptr %mask2.i.i199.i, i32 %div15.i14.i.i204.i
  %1114 = ptrtoint ptr %arrayidx.i15.i.i205.i to i32
  call void @__asan_load4_noabort(i32 %1114)
  %1115 = load i32, ptr %arrayidx.i15.i.i205.i, align 4
  %rem.i16.i.i206.i = and i32 %offset.addr.017.i13.i.i203.i, 31
  %shl.i17.i.i207.i = shl nuw i32 1, %rem.i16.i.i206.i
  %shl1.i18.i.i208.i = shl nuw i32 1, %i.018.i12.i.i202.i
  %and.i19.i.i209.i = and i32 %shl1.i18.i.i208.i, %conv24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i.i209.i)
  %tobool.not.i20.i.i210.i = icmp eq i32 %and.i19.i.i209.i, 0
  %or.i21.i.i211.i = or i32 %shl.i17.i.i207.i, %1115
  %neg.i22.i.i212.i = xor i32 %shl.i17.i.i207.i, -1
  %and2.i23.i.i213.i = and i32 %1115, %neg.i22.i.i212.i
  %v.0.i24.i.i214.i = select i1 %tobool.not.i20.i.i210.i, i32 %and2.i23.i.i213.i, i32 %or.i21.i.i211.i
  %1116 = ptrtoint ptr %arrayidx.i15.i.i205.i to i32
  call void @__asan_store4_noabort(i32 %1116)
  store i32 %v.0.i24.i.i214.i, ptr %arrayidx.i15.i.i205.i, align 4
  %inc.i25.i.i215.i = add nuw i32 %i.018.i12.i.i202.i, 1
  %inc5.i26.i.i216.i = add i32 %offset.addr.017.i13.i.i203.i, 1
  %exitcond.not.i27.i.i217.i = icmp eq i32 %inc.i25.i.i215.i, %1106
  br i1 %exitcond.not.i27.i.i217.i, label %for.body.i28.i.i218.i.vcap_key_set.exit219.i_crit_edge, label %for.body.i28.i.i218.i.for.body.i28.i.i218.i_crit_edge

for.body.i28.i.i218.i.for.body.i28.i.i218.i_crit_edge: ; preds = %for.body.i28.i.i218.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i.i218.i

for.body.i28.i.i218.i.vcap_key_set.exit219.i_crit_edge: ; preds = %for.body.i28.i.i218.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_set.exit219.i

vcap_key_set.exit219.i:                           ; preds = %for.body.i28.i.i218.i.vcap_key_set.exit219.i_crit_edge, %vcap_key_set.exit174.i.vcap_key_set.exit219.i_crit_edge
  %1117 = ptrtoint ptr %vcap1.i189 to i32
  call void @__asan_load4_noabort(i32 %1117)
  %1118 = load ptr, ptr %vcap1.i189, align 4
  %action.i.i307 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8
  %1119 = ptrtoint ptr %action.i.i307 to i32
  call void @__asan_load4_noabort(i32 %1119)
  %1120 = load i32, ptr %action.i.i307, align 4
  %actions.i.i.i308 = getelementptr inbounds %struct.vcap_props, ptr %1118, i32 0, i32 14
  %1121 = ptrtoint ptr %actions.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1121)
  %1122 = load ptr, ptr %actions.i.i.i308, align 4
  %length4.i.i.i309 = getelementptr %struct.vcap_field, ptr %1122, i32 0, i32 1
  %1123 = ptrtoint ptr %length4.i.i.i309 to i32
  call void @__asan_load4_noabort(i32 %1123)
  %1124 = load i32, ptr %length4.i.i.i309, align 4
  %action.i.i.i310 = getelementptr inbounds %struct.vcap_data, ptr %data.i188, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1124)
  %cmp16.not.i.i.i220.i = icmp eq i32 %1124, 0
  br i1 %cmp16.not.i.i.i220.i, label %vcap_key_set.exit219.i.vcap_action_set.exit.i.i311_crit_edge, label %for.body.i.preheader.i.i222.i

vcap_key_set.exit219.i.vcap_action_set.exit.i.i311_crit_edge: ; preds = %vcap_key_set.exit219.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit.i.i311

for.body.i.preheader.i.i222.i:                    ; preds = %vcap_key_set.exit219.i
  %1125 = ptrtoint ptr %action_offset.i.i247 to i32
  call void @__asan_load4_noabort(i32 %1125)
  %1126 = load i32, ptr %action_offset.i.i247, align 4
  %1127 = ptrtoint ptr %1122 to i32
  call void @__asan_load4_noabort(i32 %1127)
  %1128 = load i32, ptr %1122, align 4
  %add.i.i221.i = add i32 %1128, %1126
  br label %for.body.i.i.i239.i

for.body.i.i.i239.i:                              ; preds = %for.body.i.i.i239.i.for.body.i.i.i239.i_crit_edge, %for.body.i.preheader.i.i222.i
  %i.018.i.i.i223.i = phi i32 [ %inc.i.i.i236.i, %for.body.i.i.i239.i.for.body.i.i.i239.i_crit_edge ], [ 0, %for.body.i.preheader.i.i222.i ]
  %offset.addr.017.i.i.i224.i = phi i32 [ %inc5.i.i.i237.i, %for.body.i.i.i239.i.for.body.i.i.i239.i_crit_edge ], [ %add.i.i221.i, %for.body.i.preheader.i.i222.i ]
  %div15.i.i.i225.i = lshr i32 %offset.addr.017.i.i.i224.i, 5
  %arrayidx.i.i.i226.i = getelementptr i32, ptr %action.i.i.i310, i32 %div15.i.i.i225.i
  %1129 = ptrtoint ptr %arrayidx.i.i.i226.i to i32
  call void @__asan_load4_noabort(i32 %1129)
  %1130 = load i32, ptr %arrayidx.i.i.i226.i, align 4
  %rem.i.i.i227.i = and i32 %offset.addr.017.i.i.i224.i, 31
  %shl.i.i.i228.i = shl nuw i32 1, %rem.i.i.i227.i
  %shl1.i.i.i229.i = shl nuw i32 1, %i.018.i.i.i223.i
  %and.i.i.i230.i = and i32 %shl1.i.i.i229.i, %1120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i230.i)
  %tobool.not.i.i.i231.i = icmp eq i32 %and.i.i.i230.i, 0
  %or.i.i.i232.i = or i32 %shl.i.i.i228.i, %1130
  %neg.i.i.i233.i = xor i32 %shl.i.i.i228.i, -1
  %and2.i.i.i234.i = and i32 %1130, %neg.i.i.i233.i
  %v.0.i.i.i235.i = select i1 %tobool.not.i.i.i231.i, i32 %and2.i.i.i234.i, i32 %or.i.i.i232.i
  %1131 = ptrtoint ptr %arrayidx.i.i.i226.i to i32
  call void @__asan_store4_noabort(i32 %1131)
  store i32 %v.0.i.i.i235.i, ptr %arrayidx.i.i.i226.i, align 4
  %inc.i.i.i236.i = add nuw i32 %i.018.i.i.i223.i, 1
  %inc5.i.i.i237.i = add i32 %offset.addr.017.i.i.i224.i, 1
  %exitcond.not.i.i.i238.i = icmp eq i32 %inc.i.i.i236.i, %1124
  br i1 %exitcond.not.i.i.i238.i, label %for.body.i.i.i239.i.vcap_action_set.exit.i.i311_crit_edge, label %for.body.i.i.i239.i.for.body.i.i.i239.i_crit_edge

for.body.i.i.i239.i.for.body.i.i.i239.i_crit_edge: ; preds = %for.body.i.i.i239.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i239.i

for.body.i.i.i239.i.vcap_action_set.exit.i.i311_crit_edge: ; preds = %for.body.i.i.i239.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit.i.i311

vcap_action_set.exit.i.i311:                      ; preds = %for.body.i.i.i239.i.vcap_action_set.exit.i.i311_crit_edge, %vcap_key_set.exit219.i.vcap_action_set.exit.i.i311_crit_edge
  %push_inner_tag.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 1
  %1132 = ptrtoint ptr %push_inner_tag.i.i to i32
  call void @__asan_load4_noabort(i32 %1132)
  %1133 = load i32, ptr %push_inner_tag.i.i, align 4
  %1134 = ptrtoint ptr %actions.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1134)
  %1135 = load ptr, ptr %actions.i.i.i308, align 4
  %length4.i39.i.i = getelementptr %struct.vcap_field, ptr %1135, i32 1, i32 1
  %1136 = ptrtoint ptr %length4.i39.i.i to i32
  call void @__asan_load4_noabort(i32 %1136)
  %1137 = load i32, ptr %length4.i39.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1137)
  %cmp16.not.i.i41.i.i = icmp eq i32 %1137, 0
  br i1 %cmp16.not.i.i41.i.i, label %vcap_action_set.exit.i.i311.vcap_action_set.exit62.i.i_crit_edge, label %for.body.i.preheader.i44.i.i

vcap_action_set.exit.i.i311.vcap_action_set.exit62.i.i_crit_edge: ; preds = %vcap_action_set.exit.i.i311
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit62.i.i

for.body.i.preheader.i44.i.i:                     ; preds = %vcap_action_set.exit.i.i311
  %1138 = ptrtoint ptr %action_offset.i.i247 to i32
  call void @__asan_load4_noabort(i32 %1138)
  %1139 = load i32, ptr %action_offset.i.i247, align 4
  %arrayidx.i.i.i312 = getelementptr %struct.vcap_field, ptr %1135, i32 1
  %1140 = ptrtoint ptr %arrayidx.i.i.i312 to i32
  call void @__asan_load4_noabort(i32 %1140)
  %1141 = load i32, ptr %arrayidx.i.i.i312, align 4
  %add.i43.i.i = add i32 %1141, %1139
  br label %for.body.i.i61.i.i

for.body.i.i61.i.i:                               ; preds = %for.body.i.i61.i.i.for.body.i.i61.i.i_crit_edge, %for.body.i.preheader.i44.i.i
  %i.018.i.i45.i.i = phi i32 [ %inc.i.i58.i.i, %for.body.i.i61.i.i.for.body.i.i61.i.i_crit_edge ], [ 0, %for.body.i.preheader.i44.i.i ]
  %offset.addr.017.i.i46.i.i = phi i32 [ %inc5.i.i59.i.i, %for.body.i.i61.i.i.for.body.i.i61.i.i_crit_edge ], [ %add.i43.i.i, %for.body.i.preheader.i44.i.i ]
  %div15.i.i47.i.i = lshr i32 %offset.addr.017.i.i46.i.i, 5
  %arrayidx.i.i48.i.i = getelementptr i32, ptr %action.i.i.i310, i32 %div15.i.i47.i.i
  %1142 = ptrtoint ptr %arrayidx.i.i48.i.i to i32
  call void @__asan_load4_noabort(i32 %1142)
  %1143 = load i32, ptr %arrayidx.i.i48.i.i, align 4
  %rem.i.i49.i.i = and i32 %offset.addr.017.i.i46.i.i, 31
  %shl.i.i50.i.i = shl nuw i32 1, %rem.i.i49.i.i
  %shl1.i.i51.i.i = shl nuw i32 1, %i.018.i.i45.i.i
  %and.i.i52.i.i = and i32 %shl1.i.i51.i.i, %1133
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i52.i.i)
  %tobool.not.i.i53.i.i = icmp eq i32 %and.i.i52.i.i, 0
  %or.i.i54.i.i = or i32 %shl.i.i50.i.i, %1143
  %neg.i.i55.i.i = xor i32 %shl.i.i50.i.i, -1
  %and2.i.i56.i.i = and i32 %1143, %neg.i.i55.i.i
  %v.0.i.i57.i.i = select i1 %tobool.not.i.i53.i.i, i32 %and2.i.i56.i.i, i32 %or.i.i54.i.i
  %1144 = ptrtoint ptr %arrayidx.i.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %1144)
  store i32 %v.0.i.i57.i.i, ptr %arrayidx.i.i48.i.i, align 4
  %inc.i.i58.i.i = add nuw i32 %i.018.i.i45.i.i, 1
  %inc5.i.i59.i.i = add i32 %offset.addr.017.i.i46.i.i, 1
  %exitcond.not.i.i60.i.i = icmp eq i32 %inc.i.i58.i.i, %1137
  br i1 %exitcond.not.i.i60.i.i, label %for.body.i.i61.i.i.vcap_action_set.exit62.i.i_crit_edge, label %for.body.i.i61.i.i.for.body.i.i61.i.i_crit_edge

for.body.i.i61.i.i.for.body.i.i61.i.i_crit_edge:  ; preds = %for.body.i.i61.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i61.i.i

for.body.i.i61.i.i.vcap_action_set.exit62.i.i_crit_edge: ; preds = %for.body.i.i61.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit62.i.i

vcap_action_set.exit62.i.i:                       ; preds = %for.body.i.i61.i.i.vcap_action_set.exit62.i.i_crit_edge, %vcap_action_set.exit.i.i311.vcap_action_set.exit62.i.i_crit_edge
  %tag_a_tpid_sel.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 2
  %1145 = ptrtoint ptr %tag_a_tpid_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %1145)
  %1146 = load i32, ptr %tag_a_tpid_sel.i.i, align 4
  %1147 = ptrtoint ptr %actions.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1147)
  %1148 = load ptr, ptr %actions.i.i.i308, align 4
  %length4.i64.i.i = getelementptr %struct.vcap_field, ptr %1148, i32 2, i32 1
  %1149 = ptrtoint ptr %length4.i64.i.i to i32
  call void @__asan_load4_noabort(i32 %1149)
  %1150 = load i32, ptr %length4.i64.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1150)
  %cmp16.not.i.i66.i.i = icmp eq i32 %1150, 0
  br i1 %cmp16.not.i.i66.i.i, label %vcap_action_set.exit62.i.i.vcap_action_set.exit88.i.i_crit_edge, label %for.body.i.preheader.i70.i.i

vcap_action_set.exit62.i.i.vcap_action_set.exit88.i.i_crit_edge: ; preds = %vcap_action_set.exit62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit88.i.i

for.body.i.preheader.i70.i.i:                     ; preds = %vcap_action_set.exit62.i.i
  %1151 = ptrtoint ptr %action_offset.i.i247 to i32
  call void @__asan_load4_noabort(i32 %1151)
  %1152 = load i32, ptr %action_offset.i.i247, align 4
  %arrayidx.i68.i.i = getelementptr %struct.vcap_field, ptr %1148, i32 2
  %1153 = ptrtoint ptr %arrayidx.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %1153)
  %1154 = load i32, ptr %arrayidx.i68.i.i, align 4
  %add.i69.i.i = add i32 %1154, %1152
  br label %for.body.i.i87.i.i

for.body.i.i87.i.i:                               ; preds = %for.body.i.i87.i.i.for.body.i.i87.i.i_crit_edge, %for.body.i.preheader.i70.i.i
  %i.018.i.i71.i.i = phi i32 [ %inc.i.i84.i.i, %for.body.i.i87.i.i.for.body.i.i87.i.i_crit_edge ], [ 0, %for.body.i.preheader.i70.i.i ]
  %offset.addr.017.i.i72.i.i = phi i32 [ %inc5.i.i85.i.i, %for.body.i.i87.i.i.for.body.i.i87.i.i_crit_edge ], [ %add.i69.i.i, %for.body.i.preheader.i70.i.i ]
  %div15.i.i73.i.i = lshr i32 %offset.addr.017.i.i72.i.i, 5
  %arrayidx.i.i74.i.i = getelementptr i32, ptr %action.i.i.i310, i32 %div15.i.i73.i.i
  %1155 = ptrtoint ptr %arrayidx.i.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %1155)
  %1156 = load i32, ptr %arrayidx.i.i74.i.i, align 4
  %rem.i.i75.i.i = and i32 %offset.addr.017.i.i72.i.i, 31
  %shl.i.i76.i.i = shl nuw i32 1, %rem.i.i75.i.i
  %shl1.i.i77.i.i = shl nuw i32 1, %i.018.i.i71.i.i
  %and.i.i78.i.i = and i32 %shl1.i.i77.i.i, %1146
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i78.i.i)
  %tobool.not.i.i79.i.i = icmp eq i32 %and.i.i78.i.i, 0
  %or.i.i80.i.i = or i32 %shl.i.i76.i.i, %1156
  %neg.i.i81.i.i = xor i32 %shl.i.i76.i.i, -1
  %and2.i.i82.i.i = and i32 %1156, %neg.i.i81.i.i
  %v.0.i.i83.i.i = select i1 %tobool.not.i.i79.i.i, i32 %and2.i.i82.i.i, i32 %or.i.i80.i.i
  %1157 = ptrtoint ptr %arrayidx.i.i74.i.i to i32
  call void @__asan_store4_noabort(i32 %1157)
  store i32 %v.0.i.i83.i.i, ptr %arrayidx.i.i74.i.i, align 4
  %inc.i.i84.i.i = add nuw i32 %i.018.i.i71.i.i, 1
  %inc5.i.i85.i.i = add i32 %offset.addr.017.i.i72.i.i, 1
  %exitcond.not.i.i86.i.i = icmp eq i32 %inc.i.i84.i.i, %1150
  br i1 %exitcond.not.i.i86.i.i, label %for.body.i.i87.i.i.vcap_action_set.exit88.i.i_crit_edge, label %for.body.i.i87.i.i.for.body.i.i87.i.i_crit_edge

for.body.i.i87.i.i.for.body.i.i87.i.i_crit_edge:  ; preds = %for.body.i.i87.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i87.i.i

for.body.i.i87.i.i.vcap_action_set.exit88.i.i_crit_edge: ; preds = %for.body.i.i87.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit88.i.i

vcap_action_set.exit88.i.i:                       ; preds = %for.body.i.i87.i.i.vcap_action_set.exit88.i.i_crit_edge, %vcap_action_set.exit62.i.i.vcap_action_set.exit88.i.i_crit_edge
  %tag_a_vid_sel.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 3
  %1158 = ptrtoint ptr %tag_a_vid_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %1158)
  %1159 = load i32, ptr %tag_a_vid_sel.i.i, align 4
  %1160 = ptrtoint ptr %actions.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1160)
  %1161 = load ptr, ptr %actions.i.i.i308, align 4
  %length4.i90.i.i = getelementptr %struct.vcap_field, ptr %1161, i32 3, i32 1
  %1162 = ptrtoint ptr %length4.i90.i.i to i32
  call void @__asan_load4_noabort(i32 %1162)
  %1163 = load i32, ptr %length4.i90.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1163)
  %cmp16.not.i.i92.i.i = icmp eq i32 %1163, 0
  br i1 %cmp16.not.i.i92.i.i, label %vcap_action_set.exit88.i.i.vcap_action_set.exit114.i.i_crit_edge, label %for.body.i.preheader.i96.i.i

vcap_action_set.exit88.i.i.vcap_action_set.exit114.i.i_crit_edge: ; preds = %vcap_action_set.exit88.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit114.i.i

for.body.i.preheader.i96.i.i:                     ; preds = %vcap_action_set.exit88.i.i
  %1164 = ptrtoint ptr %action_offset.i.i247 to i32
  call void @__asan_load4_noabort(i32 %1164)
  %1165 = load i32, ptr %action_offset.i.i247, align 4
  %arrayidx.i94.i.i = getelementptr %struct.vcap_field, ptr %1161, i32 3
  %1166 = ptrtoint ptr %arrayidx.i94.i.i to i32
  call void @__asan_load4_noabort(i32 %1166)
  %1167 = load i32, ptr %arrayidx.i94.i.i, align 4
  %add.i95.i.i = add i32 %1167, %1165
  br label %for.body.i.i113.i.i

for.body.i.i113.i.i:                              ; preds = %for.body.i.i113.i.i.for.body.i.i113.i.i_crit_edge, %for.body.i.preheader.i96.i.i
  %i.018.i.i97.i.i = phi i32 [ %inc.i.i110.i.i, %for.body.i.i113.i.i.for.body.i.i113.i.i_crit_edge ], [ 0, %for.body.i.preheader.i96.i.i ]
  %offset.addr.017.i.i98.i.i = phi i32 [ %inc5.i.i111.i.i, %for.body.i.i113.i.i.for.body.i.i113.i.i_crit_edge ], [ %add.i95.i.i, %for.body.i.preheader.i96.i.i ]
  %div15.i.i99.i.i = lshr i32 %offset.addr.017.i.i98.i.i, 5
  %arrayidx.i.i100.i.i = getelementptr i32, ptr %action.i.i.i310, i32 %div15.i.i99.i.i
  %1168 = ptrtoint ptr %arrayidx.i.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %1168)
  %1169 = load i32, ptr %arrayidx.i.i100.i.i, align 4
  %rem.i.i101.i.i = and i32 %offset.addr.017.i.i98.i.i, 31
  %shl.i.i102.i.i = shl nuw i32 1, %rem.i.i101.i.i
  %shl1.i.i103.i.i = shl nuw i32 1, %i.018.i.i97.i.i
  %and.i.i104.i.i = and i32 %shl1.i.i103.i.i, %1159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i104.i.i)
  %tobool.not.i.i105.i.i = icmp eq i32 %and.i.i104.i.i, 0
  %or.i.i106.i.i = or i32 %shl.i.i102.i.i, %1169
  %neg.i.i107.i.i = xor i32 %shl.i.i102.i.i, -1
  %and2.i.i108.i.i = and i32 %1169, %neg.i.i107.i.i
  %v.0.i.i109.i.i = select i1 %tobool.not.i.i105.i.i, i32 %and2.i.i108.i.i, i32 %or.i.i106.i.i
  %1170 = ptrtoint ptr %arrayidx.i.i100.i.i to i32
  call void @__asan_store4_noabort(i32 %1170)
  store i32 %v.0.i.i109.i.i, ptr %arrayidx.i.i100.i.i, align 4
  %inc.i.i110.i.i = add nuw i32 %i.018.i.i97.i.i, 1
  %inc5.i.i111.i.i = add i32 %offset.addr.017.i.i98.i.i, 1
  %exitcond.not.i.i112.i.i = icmp eq i32 %inc.i.i110.i.i, %1163
  br i1 %exitcond.not.i.i112.i.i, label %for.body.i.i113.i.i.vcap_action_set.exit114.i.i_crit_edge, label %for.body.i.i113.i.i.for.body.i.i113.i.i_crit_edge

for.body.i.i113.i.i.for.body.i.i113.i.i_crit_edge: ; preds = %for.body.i.i113.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i113.i.i

for.body.i.i113.i.i.vcap_action_set.exit114.i.i_crit_edge: ; preds = %for.body.i.i113.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit114.i.i

vcap_action_set.exit114.i.i:                      ; preds = %for.body.i.i113.i.i.vcap_action_set.exit114.i.i_crit_edge, %vcap_action_set.exit88.i.i.vcap_action_set.exit114.i.i_crit_edge
  %tag_a_pcp_sel.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 4
  %1171 = ptrtoint ptr %tag_a_pcp_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %1171)
  %1172 = load i32, ptr %tag_a_pcp_sel.i.i, align 4
  %1173 = ptrtoint ptr %actions.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1173)
  %1174 = load ptr, ptr %actions.i.i.i308, align 4
  %length4.i116.i.i = getelementptr %struct.vcap_field, ptr %1174, i32 4, i32 1
  %1175 = ptrtoint ptr %length4.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %1175)
  %1176 = load i32, ptr %length4.i116.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1176)
  %cmp16.not.i.i118.i.i = icmp eq i32 %1176, 0
  br i1 %cmp16.not.i.i118.i.i, label %vcap_action_set.exit114.i.i.vcap_action_set.exit140.i.i_crit_edge, label %for.body.i.preheader.i122.i.i

vcap_action_set.exit114.i.i.vcap_action_set.exit140.i.i_crit_edge: ; preds = %vcap_action_set.exit114.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit140.i.i

for.body.i.preheader.i122.i.i:                    ; preds = %vcap_action_set.exit114.i.i
  %1177 = ptrtoint ptr %action_offset.i.i247 to i32
  call void @__asan_load4_noabort(i32 %1177)
  %1178 = load i32, ptr %action_offset.i.i247, align 4
  %arrayidx.i120.i.i = getelementptr %struct.vcap_field, ptr %1174, i32 4
  %1179 = ptrtoint ptr %arrayidx.i120.i.i to i32
  call void @__asan_load4_noabort(i32 %1179)
  %1180 = load i32, ptr %arrayidx.i120.i.i, align 4
  %add.i121.i.i = add i32 %1180, %1178
  br label %for.body.i.i139.i.i

for.body.i.i139.i.i:                              ; preds = %for.body.i.i139.i.i.for.body.i.i139.i.i_crit_edge, %for.body.i.preheader.i122.i.i
  %i.018.i.i123.i.i = phi i32 [ %inc.i.i136.i.i, %for.body.i.i139.i.i.for.body.i.i139.i.i_crit_edge ], [ 0, %for.body.i.preheader.i122.i.i ]
  %offset.addr.017.i.i124.i.i = phi i32 [ %inc5.i.i137.i.i, %for.body.i.i139.i.i.for.body.i.i139.i.i_crit_edge ], [ %add.i121.i.i, %for.body.i.preheader.i122.i.i ]
  %div15.i.i125.i.i = lshr i32 %offset.addr.017.i.i124.i.i, 5
  %arrayidx.i.i126.i.i = getelementptr i32, ptr %action.i.i.i310, i32 %div15.i.i125.i.i
  %1181 = ptrtoint ptr %arrayidx.i.i126.i.i to i32
  call void @__asan_load4_noabort(i32 %1181)
  %1182 = load i32, ptr %arrayidx.i.i126.i.i, align 4
  %rem.i.i127.i.i = and i32 %offset.addr.017.i.i124.i.i, 31
  %shl.i.i128.i.i = shl nuw i32 1, %rem.i.i127.i.i
  %shl1.i.i129.i.i = shl nuw i32 1, %i.018.i.i123.i.i
  %and.i.i130.i.i = and i32 %shl1.i.i129.i.i, %1172
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i130.i.i)
  %tobool.not.i.i131.i.i = icmp eq i32 %and.i.i130.i.i, 0
  %or.i.i132.i.i = or i32 %shl.i.i128.i.i, %1182
  %neg.i.i133.i.i = xor i32 %shl.i.i128.i.i, -1
  %and2.i.i134.i.i = and i32 %1182, %neg.i.i133.i.i
  %v.0.i.i135.i.i = select i1 %tobool.not.i.i131.i.i, i32 %and2.i.i134.i.i, i32 %or.i.i132.i.i
  %1183 = ptrtoint ptr %arrayidx.i.i126.i.i to i32
  call void @__asan_store4_noabort(i32 %1183)
  store i32 %v.0.i.i135.i.i, ptr %arrayidx.i.i126.i.i, align 4
  %inc.i.i136.i.i = add nuw i32 %i.018.i.i123.i.i, 1
  %inc5.i.i137.i.i = add i32 %offset.addr.017.i.i124.i.i, 1
  %exitcond.not.i.i138.i.i = icmp eq i32 %inc.i.i136.i.i, %1176
  br i1 %exitcond.not.i.i138.i.i, label %for.body.i.i139.i.i.vcap_action_set.exit140.i.i_crit_edge, label %for.body.i.i139.i.i.for.body.i.i139.i.i_crit_edge

for.body.i.i139.i.i.for.body.i.i139.i.i_crit_edge: ; preds = %for.body.i.i139.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i139.i.i

for.body.i.i139.i.i.vcap_action_set.exit140.i.i_crit_edge: ; preds = %for.body.i.i139.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit140.i.i

vcap_action_set.exit140.i.i:                      ; preds = %for.body.i.i139.i.i.vcap_action_set.exit140.i.i_crit_edge, %vcap_action_set.exit114.i.i.vcap_action_set.exit140.i.i_crit_edge
  %vid_a_val.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 5
  %1184 = ptrtoint ptr %vid_a_val.i.i to i32
  call void @__asan_load2_noabort(i32 %1184)
  %1185 = load i16, ptr %vid_a_val.i.i, align 4
  %conv.i240.i = zext i16 %1185 to i32
  %1186 = ptrtoint ptr %actions.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1186)
  %1187 = load ptr, ptr %actions.i.i.i308, align 4
  %length4.i142.i.i = getelementptr %struct.vcap_field, ptr %1187, i32 10, i32 1
  %1188 = ptrtoint ptr %length4.i142.i.i to i32
  call void @__asan_load4_noabort(i32 %1188)
  %1189 = load i32, ptr %length4.i142.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1189)
  %cmp16.not.i.i144.i.i = icmp eq i32 %1189, 0
  br i1 %cmp16.not.i.i144.i.i, label %vcap_action_set.exit140.i.i.vcap_action_set.exit166.i.i_crit_edge, label %for.body.i.preheader.i148.i.i

vcap_action_set.exit140.i.i.vcap_action_set.exit166.i.i_crit_edge: ; preds = %vcap_action_set.exit140.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit166.i.i

for.body.i.preheader.i148.i.i:                    ; preds = %vcap_action_set.exit140.i.i
  %1190 = ptrtoint ptr %action_offset.i.i247 to i32
  call void @__asan_load4_noabort(i32 %1190)
  %1191 = load i32, ptr %action_offset.i.i247, align 4
  %arrayidx.i146.i.i = getelementptr %struct.vcap_field, ptr %1187, i32 10
  %1192 = ptrtoint ptr %arrayidx.i146.i.i to i32
  call void @__asan_load4_noabort(i32 %1192)
  %1193 = load i32, ptr %arrayidx.i146.i.i, align 4
  %add.i147.i.i = add i32 %1193, %1191
  br label %for.body.i.i165.i.i

for.body.i.i165.i.i:                              ; preds = %for.body.i.i165.i.i.for.body.i.i165.i.i_crit_edge, %for.body.i.preheader.i148.i.i
  %i.018.i.i149.i.i = phi i32 [ %inc.i.i162.i.i, %for.body.i.i165.i.i.for.body.i.i165.i.i_crit_edge ], [ 0, %for.body.i.preheader.i148.i.i ]
  %offset.addr.017.i.i150.i.i = phi i32 [ %inc5.i.i163.i.i, %for.body.i.i165.i.i.for.body.i.i165.i.i_crit_edge ], [ %add.i147.i.i, %for.body.i.preheader.i148.i.i ]
  %div15.i.i151.i.i = lshr i32 %offset.addr.017.i.i150.i.i, 5
  %arrayidx.i.i152.i.i = getelementptr i32, ptr %action.i.i.i310, i32 %div15.i.i151.i.i
  %1194 = ptrtoint ptr %arrayidx.i.i152.i.i to i32
  call void @__asan_load4_noabort(i32 %1194)
  %1195 = load i32, ptr %arrayidx.i.i152.i.i, align 4
  %rem.i.i153.i.i = and i32 %offset.addr.017.i.i150.i.i, 31
  %shl.i.i154.i.i = shl nuw i32 1, %rem.i.i153.i.i
  %shl1.i.i155.i.i = shl nuw i32 1, %i.018.i.i149.i.i
  %and.i.i156.i.i = and i32 %shl1.i.i155.i.i, %conv.i240.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i156.i.i)
  %tobool.not.i.i157.i.i = icmp eq i32 %and.i.i156.i.i, 0
  %or.i.i158.i.i = or i32 %shl.i.i154.i.i, %1195
  %neg.i.i159.i.i = xor i32 %shl.i.i154.i.i, -1
  %and2.i.i160.i.i = and i32 %1195, %neg.i.i159.i.i
  %v.0.i.i161.i.i = select i1 %tobool.not.i.i157.i.i, i32 %and2.i.i160.i.i, i32 %or.i.i158.i.i
  %1196 = ptrtoint ptr %arrayidx.i.i152.i.i to i32
  call void @__asan_store4_noabort(i32 %1196)
  store i32 %v.0.i.i161.i.i, ptr %arrayidx.i.i152.i.i, align 4
  %inc.i.i162.i.i = add nuw i32 %i.018.i.i149.i.i, 1
  %inc5.i.i163.i.i = add i32 %offset.addr.017.i.i150.i.i, 1
  %exitcond.not.i.i164.i.i = icmp eq i32 %inc.i.i162.i.i, %1189
  br i1 %exitcond.not.i.i164.i.i, label %for.body.i.i165.i.i.vcap_action_set.exit166.i.i_crit_edge, label %for.body.i.i165.i.i.for.body.i.i165.i.i_crit_edge

for.body.i.i165.i.i.for.body.i.i165.i.i_crit_edge: ; preds = %for.body.i.i165.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i165.i.i

for.body.i.i165.i.i.vcap_action_set.exit166.i.i_crit_edge: ; preds = %for.body.i.i165.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit166.i.i

vcap_action_set.exit166.i.i:                      ; preds = %for.body.i.i165.i.i.vcap_action_set.exit166.i.i_crit_edge, %vcap_action_set.exit140.i.i.vcap_action_set.exit166.i.i_crit_edge
  %pcp_a_val.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 6
  %1197 = ptrtoint ptr %pcp_a_val.i.i to i32
  call void @__asan_load1_noabort(i32 %1197)
  %1198 = load i8, ptr %pcp_a_val.i.i, align 2
  %conv2.i241.i = zext i8 %1198 to i32
  %1199 = ptrtoint ptr %actions.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1199)
  %1200 = load ptr, ptr %actions.i.i.i308, align 4
  %length4.i168.i.i = getelementptr %struct.vcap_field, ptr %1200, i32 11, i32 1
  %1201 = ptrtoint ptr %length4.i168.i.i to i32
  call void @__asan_load4_noabort(i32 %1201)
  %1202 = load i32, ptr %length4.i168.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1202)
  %cmp16.not.i.i170.i.i = icmp eq i32 %1202, 0
  br i1 %cmp16.not.i.i170.i.i, label %vcap_action_set.exit166.i.i.vcap_action_set.exit192.i.i_crit_edge, label %for.body.i.preheader.i174.i.i

vcap_action_set.exit166.i.i.vcap_action_set.exit192.i.i_crit_edge: ; preds = %vcap_action_set.exit166.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit192.i.i

for.body.i.preheader.i174.i.i:                    ; preds = %vcap_action_set.exit166.i.i
  %1203 = ptrtoint ptr %action_offset.i.i247 to i32
  call void @__asan_load4_noabort(i32 %1203)
  %1204 = load i32, ptr %action_offset.i.i247, align 4
  %arrayidx.i172.i.i = getelementptr %struct.vcap_field, ptr %1200, i32 11
  %1205 = ptrtoint ptr %arrayidx.i172.i.i to i32
  call void @__asan_load4_noabort(i32 %1205)
  %1206 = load i32, ptr %arrayidx.i172.i.i, align 4
  %add.i173.i.i = add i32 %1206, %1204
  br label %for.body.i.i191.i.i

for.body.i.i191.i.i:                              ; preds = %for.body.i.i191.i.i.for.body.i.i191.i.i_crit_edge, %for.body.i.preheader.i174.i.i
  %i.018.i.i175.i.i = phi i32 [ %inc.i.i188.i.i, %for.body.i.i191.i.i.for.body.i.i191.i.i_crit_edge ], [ 0, %for.body.i.preheader.i174.i.i ]
  %offset.addr.017.i.i176.i.i = phi i32 [ %inc5.i.i189.i.i, %for.body.i.i191.i.i.for.body.i.i191.i.i_crit_edge ], [ %add.i173.i.i, %for.body.i.preheader.i174.i.i ]
  %div15.i.i177.i.i = lshr i32 %offset.addr.017.i.i176.i.i, 5
  %arrayidx.i.i178.i.i = getelementptr i32, ptr %action.i.i.i310, i32 %div15.i.i177.i.i
  %1207 = ptrtoint ptr %arrayidx.i.i178.i.i to i32
  call void @__asan_load4_noabort(i32 %1207)
  %1208 = load i32, ptr %arrayidx.i.i178.i.i, align 4
  %rem.i.i179.i.i = and i32 %offset.addr.017.i.i176.i.i, 31
  %shl.i.i180.i.i = shl nuw i32 1, %rem.i.i179.i.i
  %shl1.i.i181.i.i = shl nuw i32 1, %i.018.i.i175.i.i
  %and.i.i182.i.i = and i32 %shl1.i.i181.i.i, %conv2.i241.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i182.i.i)
  %tobool.not.i.i183.i.i = icmp eq i32 %and.i.i182.i.i, 0
  %or.i.i184.i.i = or i32 %shl.i.i180.i.i, %1208
  %neg.i.i185.i.i = xor i32 %shl.i.i180.i.i, -1
  %and2.i.i186.i.i = and i32 %1208, %neg.i.i185.i.i
  %v.0.i.i187.i.i = select i1 %tobool.not.i.i183.i.i, i32 %and2.i.i186.i.i, i32 %or.i.i184.i.i
  %1209 = ptrtoint ptr %arrayidx.i.i178.i.i to i32
  call void @__asan_store4_noabort(i32 %1209)
  store i32 %v.0.i.i187.i.i, ptr %arrayidx.i.i178.i.i, align 4
  %inc.i.i188.i.i = add nuw i32 %i.018.i.i175.i.i, 1
  %inc5.i.i189.i.i = add i32 %offset.addr.017.i.i176.i.i, 1
  %exitcond.not.i.i190.i.i = icmp eq i32 %inc.i.i188.i.i, %1202
  br i1 %exitcond.not.i.i190.i.i, label %for.body.i.i191.i.i.vcap_action_set.exit192.i.i_crit_edge, label %for.body.i.i191.i.i.for.body.i.i191.i.i_crit_edge

for.body.i.i191.i.i.for.body.i.i191.i.i_crit_edge: ; preds = %for.body.i.i191.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i191.i.i

for.body.i.i191.i.i.vcap_action_set.exit192.i.i_crit_edge: ; preds = %for.body.i.i191.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit192.i.i

vcap_action_set.exit192.i.i:                      ; preds = %for.body.i.i191.i.i.vcap_action_set.exit192.i.i_crit_edge, %vcap_action_set.exit166.i.i.vcap_action_set.exit192.i.i_crit_edge
  %tag_b_tpid_sel.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 8
  %1210 = ptrtoint ptr %tag_b_tpid_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %1210)
  %1211 = load i32, ptr %tag_b_tpid_sel.i.i, align 4
  %1212 = ptrtoint ptr %actions.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1212)
  %1213 = load ptr, ptr %actions.i.i.i308, align 4
  %length4.i194.i.i = getelementptr %struct.vcap_field, ptr %1213, i32 6, i32 1
  %1214 = ptrtoint ptr %length4.i194.i.i to i32
  call void @__asan_load4_noabort(i32 %1214)
  %1215 = load i32, ptr %length4.i194.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1215)
  %cmp16.not.i.i196.i.i = icmp eq i32 %1215, 0
  br i1 %cmp16.not.i.i196.i.i, label %vcap_action_set.exit192.i.i.vcap_action_set.exit218.i.i_crit_edge, label %for.body.i.preheader.i200.i.i

vcap_action_set.exit192.i.i.vcap_action_set.exit218.i.i_crit_edge: ; preds = %vcap_action_set.exit192.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit218.i.i

for.body.i.preheader.i200.i.i:                    ; preds = %vcap_action_set.exit192.i.i
  %1216 = ptrtoint ptr %action_offset.i.i247 to i32
  call void @__asan_load4_noabort(i32 %1216)
  %1217 = load i32, ptr %action_offset.i.i247, align 4
  %arrayidx.i198.i.i = getelementptr %struct.vcap_field, ptr %1213, i32 6
  %1218 = ptrtoint ptr %arrayidx.i198.i.i to i32
  call void @__asan_load4_noabort(i32 %1218)
  %1219 = load i32, ptr %arrayidx.i198.i.i, align 4
  %add.i199.i.i = add i32 %1219, %1217
  br label %for.body.i.i217.i.i

for.body.i.i217.i.i:                              ; preds = %for.body.i.i217.i.i.for.body.i.i217.i.i_crit_edge, %for.body.i.preheader.i200.i.i
  %i.018.i.i201.i.i = phi i32 [ %inc.i.i214.i.i, %for.body.i.i217.i.i.for.body.i.i217.i.i_crit_edge ], [ 0, %for.body.i.preheader.i200.i.i ]
  %offset.addr.017.i.i202.i.i = phi i32 [ %inc5.i.i215.i.i, %for.body.i.i217.i.i.for.body.i.i217.i.i_crit_edge ], [ %add.i199.i.i, %for.body.i.preheader.i200.i.i ]
  %div15.i.i203.i.i = lshr i32 %offset.addr.017.i.i202.i.i, 5
  %arrayidx.i.i204.i.i = getelementptr i32, ptr %action.i.i.i310, i32 %div15.i.i203.i.i
  %1220 = ptrtoint ptr %arrayidx.i.i204.i.i to i32
  call void @__asan_load4_noabort(i32 %1220)
  %1221 = load i32, ptr %arrayidx.i.i204.i.i, align 4
  %rem.i.i205.i.i = and i32 %offset.addr.017.i.i202.i.i, 31
  %shl.i.i206.i.i = shl nuw i32 1, %rem.i.i205.i.i
  %shl1.i.i207.i.i = shl nuw i32 1, %i.018.i.i201.i.i
  %and.i.i208.i.i = and i32 %shl1.i.i207.i.i, %1211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i208.i.i)
  %tobool.not.i.i209.i.i = icmp eq i32 %and.i.i208.i.i, 0
  %or.i.i210.i.i = or i32 %shl.i.i206.i.i, %1221
  %neg.i.i211.i.i = xor i32 %shl.i.i206.i.i, -1
  %and2.i.i212.i.i = and i32 %1221, %neg.i.i211.i.i
  %v.0.i.i213.i.i = select i1 %tobool.not.i.i209.i.i, i32 %and2.i.i212.i.i, i32 %or.i.i210.i.i
  %1222 = ptrtoint ptr %arrayidx.i.i204.i.i to i32
  call void @__asan_store4_noabort(i32 %1222)
  store i32 %v.0.i.i213.i.i, ptr %arrayidx.i.i204.i.i, align 4
  %inc.i.i214.i.i = add nuw i32 %i.018.i.i201.i.i, 1
  %inc5.i.i215.i.i = add i32 %offset.addr.017.i.i202.i.i, 1
  %exitcond.not.i.i216.i.i = icmp eq i32 %inc.i.i214.i.i, %1215
  br i1 %exitcond.not.i.i216.i.i, label %for.body.i.i217.i.i.vcap_action_set.exit218.i.i_crit_edge, label %for.body.i.i217.i.i.for.body.i.i217.i.i_crit_edge

for.body.i.i217.i.i.for.body.i.i217.i.i_crit_edge: ; preds = %for.body.i.i217.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i217.i.i

for.body.i.i217.i.i.vcap_action_set.exit218.i.i_crit_edge: ; preds = %for.body.i.i217.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit218.i.i

vcap_action_set.exit218.i.i:                      ; preds = %for.body.i.i217.i.i.vcap_action_set.exit218.i.i_crit_edge, %vcap_action_set.exit192.i.i.vcap_action_set.exit218.i.i_crit_edge
  %tag_b_vid_sel.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 9
  %1223 = ptrtoint ptr %tag_b_vid_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %1223)
  %1224 = load i32, ptr %tag_b_vid_sel.i.i, align 4
  %1225 = ptrtoint ptr %actions.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1225)
  %1226 = load ptr, ptr %actions.i.i.i308, align 4
  %length4.i220.i.i = getelementptr %struct.vcap_field, ptr %1226, i32 7, i32 1
  %1227 = ptrtoint ptr %length4.i220.i.i to i32
  call void @__asan_load4_noabort(i32 %1227)
  %1228 = load i32, ptr %length4.i220.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1228)
  %cmp16.not.i.i222.i.i = icmp eq i32 %1228, 0
  br i1 %cmp16.not.i.i222.i.i, label %vcap_action_set.exit218.i.i.vcap_action_set.exit244.i.i_crit_edge, label %for.body.i.preheader.i226.i.i

vcap_action_set.exit218.i.i.vcap_action_set.exit244.i.i_crit_edge: ; preds = %vcap_action_set.exit218.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit244.i.i

for.body.i.preheader.i226.i.i:                    ; preds = %vcap_action_set.exit218.i.i
  %1229 = ptrtoint ptr %action_offset.i.i247 to i32
  call void @__asan_load4_noabort(i32 %1229)
  %1230 = load i32, ptr %action_offset.i.i247, align 4
  %arrayidx.i224.i.i = getelementptr %struct.vcap_field, ptr %1226, i32 7
  %1231 = ptrtoint ptr %arrayidx.i224.i.i to i32
  call void @__asan_load4_noabort(i32 %1231)
  %1232 = load i32, ptr %arrayidx.i224.i.i, align 4
  %add.i225.i.i = add i32 %1232, %1230
  br label %for.body.i.i243.i.i

for.body.i.i243.i.i:                              ; preds = %for.body.i.i243.i.i.for.body.i.i243.i.i_crit_edge, %for.body.i.preheader.i226.i.i
  %i.018.i.i227.i.i = phi i32 [ %inc.i.i240.i.i, %for.body.i.i243.i.i.for.body.i.i243.i.i_crit_edge ], [ 0, %for.body.i.preheader.i226.i.i ]
  %offset.addr.017.i.i228.i.i = phi i32 [ %inc5.i.i241.i.i, %for.body.i.i243.i.i.for.body.i.i243.i.i_crit_edge ], [ %add.i225.i.i, %for.body.i.preheader.i226.i.i ]
  %div15.i.i229.i.i = lshr i32 %offset.addr.017.i.i228.i.i, 5
  %arrayidx.i.i230.i.i = getelementptr i32, ptr %action.i.i.i310, i32 %div15.i.i229.i.i
  %1233 = ptrtoint ptr %arrayidx.i.i230.i.i to i32
  call void @__asan_load4_noabort(i32 %1233)
  %1234 = load i32, ptr %arrayidx.i.i230.i.i, align 4
  %rem.i.i231.i.i = and i32 %offset.addr.017.i.i228.i.i, 31
  %shl.i.i232.i.i = shl nuw i32 1, %rem.i.i231.i.i
  %shl1.i.i233.i.i = shl nuw i32 1, %i.018.i.i227.i.i
  %and.i.i234.i.i = and i32 %shl1.i.i233.i.i, %1224
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i234.i.i)
  %tobool.not.i.i235.i.i = icmp eq i32 %and.i.i234.i.i, 0
  %or.i.i236.i.i = or i32 %shl.i.i232.i.i, %1234
  %neg.i.i237.i.i = xor i32 %shl.i.i232.i.i, -1
  %and2.i.i238.i.i = and i32 %1234, %neg.i.i237.i.i
  %v.0.i.i239.i.i = select i1 %tobool.not.i.i235.i.i, i32 %and2.i.i238.i.i, i32 %or.i.i236.i.i
  %1235 = ptrtoint ptr %arrayidx.i.i230.i.i to i32
  call void @__asan_store4_noabort(i32 %1235)
  store i32 %v.0.i.i239.i.i, ptr %arrayidx.i.i230.i.i, align 4
  %inc.i.i240.i.i = add nuw i32 %i.018.i.i227.i.i, 1
  %inc5.i.i241.i.i = add i32 %offset.addr.017.i.i228.i.i, 1
  %exitcond.not.i.i242.i.i = icmp eq i32 %inc.i.i240.i.i, %1228
  br i1 %exitcond.not.i.i242.i.i, label %for.body.i.i243.i.i.vcap_action_set.exit244.i.i_crit_edge, label %for.body.i.i243.i.i.for.body.i.i243.i.i_crit_edge

for.body.i.i243.i.i.for.body.i.i243.i.i_crit_edge: ; preds = %for.body.i.i243.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i243.i.i

for.body.i.i243.i.i.vcap_action_set.exit244.i.i_crit_edge: ; preds = %for.body.i.i243.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit244.i.i

vcap_action_set.exit244.i.i:                      ; preds = %for.body.i.i243.i.i.vcap_action_set.exit244.i.i_crit_edge, %vcap_action_set.exit218.i.i.vcap_action_set.exit244.i.i_crit_edge
  %tag_b_pcp_sel.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 10
  %1236 = ptrtoint ptr %tag_b_pcp_sel.i.i to i32
  call void @__asan_load4_noabort(i32 %1236)
  %1237 = load i32, ptr %tag_b_pcp_sel.i.i, align 4
  %1238 = ptrtoint ptr %actions.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1238)
  %1239 = load ptr, ptr %actions.i.i.i308, align 4
  %length4.i246.i.i = getelementptr %struct.vcap_field, ptr %1239, i32 8, i32 1
  %1240 = ptrtoint ptr %length4.i246.i.i to i32
  call void @__asan_load4_noabort(i32 %1240)
  %1241 = load i32, ptr %length4.i246.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1241)
  %cmp16.not.i.i248.i.i = icmp eq i32 %1241, 0
  br i1 %cmp16.not.i.i248.i.i, label %vcap_action_set.exit244.i.i.vcap_action_set.exit270.i.i_crit_edge, label %for.body.i.preheader.i252.i.i

vcap_action_set.exit244.i.i.vcap_action_set.exit270.i.i_crit_edge: ; preds = %vcap_action_set.exit244.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit270.i.i

for.body.i.preheader.i252.i.i:                    ; preds = %vcap_action_set.exit244.i.i
  %1242 = ptrtoint ptr %action_offset.i.i247 to i32
  call void @__asan_load4_noabort(i32 %1242)
  %1243 = load i32, ptr %action_offset.i.i247, align 4
  %arrayidx.i250.i.i = getelementptr %struct.vcap_field, ptr %1239, i32 8
  %1244 = ptrtoint ptr %arrayidx.i250.i.i to i32
  call void @__asan_load4_noabort(i32 %1244)
  %1245 = load i32, ptr %arrayidx.i250.i.i, align 4
  %add.i251.i.i = add i32 %1245, %1243
  br label %for.body.i.i269.i.i

for.body.i.i269.i.i:                              ; preds = %for.body.i.i269.i.i.for.body.i.i269.i.i_crit_edge, %for.body.i.preheader.i252.i.i
  %i.018.i.i253.i.i = phi i32 [ %inc.i.i266.i.i, %for.body.i.i269.i.i.for.body.i.i269.i.i_crit_edge ], [ 0, %for.body.i.preheader.i252.i.i ]
  %offset.addr.017.i.i254.i.i = phi i32 [ %inc5.i.i267.i.i, %for.body.i.i269.i.i.for.body.i.i269.i.i_crit_edge ], [ %add.i251.i.i, %for.body.i.preheader.i252.i.i ]
  %div15.i.i255.i.i = lshr i32 %offset.addr.017.i.i254.i.i, 5
  %arrayidx.i.i256.i.i = getelementptr i32, ptr %action.i.i.i310, i32 %div15.i.i255.i.i
  %1246 = ptrtoint ptr %arrayidx.i.i256.i.i to i32
  call void @__asan_load4_noabort(i32 %1246)
  %1247 = load i32, ptr %arrayidx.i.i256.i.i, align 4
  %rem.i.i257.i.i = and i32 %offset.addr.017.i.i254.i.i, 31
  %shl.i.i258.i.i = shl nuw i32 1, %rem.i.i257.i.i
  %shl1.i.i259.i.i = shl nuw i32 1, %i.018.i.i253.i.i
  %and.i.i260.i.i = and i32 %shl1.i.i259.i.i, %1237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i260.i.i)
  %tobool.not.i.i261.i.i = icmp eq i32 %and.i.i260.i.i, 0
  %or.i.i262.i.i = or i32 %shl.i.i258.i.i, %1247
  %neg.i.i263.i.i = xor i32 %shl.i.i258.i.i, -1
  %and2.i.i264.i.i = and i32 %1247, %neg.i.i263.i.i
  %v.0.i.i265.i.i = select i1 %tobool.not.i.i261.i.i, i32 %and2.i.i264.i.i, i32 %or.i.i262.i.i
  %1248 = ptrtoint ptr %arrayidx.i.i256.i.i to i32
  call void @__asan_store4_noabort(i32 %1248)
  store i32 %v.0.i.i265.i.i, ptr %arrayidx.i.i256.i.i, align 4
  %inc.i.i266.i.i = add nuw i32 %i.018.i.i253.i.i, 1
  %inc5.i.i267.i.i = add i32 %offset.addr.017.i.i254.i.i, 1
  %exitcond.not.i.i268.i.i = icmp eq i32 %inc.i.i266.i.i, %1241
  br i1 %exitcond.not.i.i268.i.i, label %for.body.i.i269.i.i.vcap_action_set.exit270.i.i_crit_edge, label %for.body.i.i269.i.i.for.body.i.i269.i.i_crit_edge

for.body.i.i269.i.i.for.body.i.i269.i.i_crit_edge: ; preds = %for.body.i.i269.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i269.i.i

for.body.i.i269.i.i.vcap_action_set.exit270.i.i_crit_edge: ; preds = %for.body.i.i269.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit270.i.i

vcap_action_set.exit270.i.i:                      ; preds = %for.body.i.i269.i.i.vcap_action_set.exit270.i.i_crit_edge, %vcap_action_set.exit244.i.i.vcap_action_set.exit270.i.i_crit_edge
  %vid_b_val.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 11
  %1249 = ptrtoint ptr %vid_b_val.i.i to i32
  call void @__asan_load2_noabort(i32 %1249)
  %1250 = load i16, ptr %vid_b_val.i.i, align 4
  %conv3.i242.i = zext i16 %1250 to i32
  %1251 = ptrtoint ptr %actions.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1251)
  %1252 = load ptr, ptr %actions.i.i.i308, align 4
  %length4.i272.i.i = getelementptr %struct.vcap_field, ptr %1252, i32 13, i32 1
  %1253 = ptrtoint ptr %length4.i272.i.i to i32
  call void @__asan_load4_noabort(i32 %1253)
  %1254 = load i32, ptr %length4.i272.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1254)
  %cmp16.not.i.i274.i.i = icmp eq i32 %1254, 0
  br i1 %cmp16.not.i.i274.i.i, label %vcap_action_set.exit270.i.i.vcap_action_set.exit296.i.i_crit_edge, label %for.body.i.preheader.i278.i.i

vcap_action_set.exit270.i.i.vcap_action_set.exit296.i.i_crit_edge: ; preds = %vcap_action_set.exit270.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit296.i.i

for.body.i.preheader.i278.i.i:                    ; preds = %vcap_action_set.exit270.i.i
  %1255 = ptrtoint ptr %action_offset.i.i247 to i32
  call void @__asan_load4_noabort(i32 %1255)
  %1256 = load i32, ptr %action_offset.i.i247, align 4
  %arrayidx.i276.i.i = getelementptr %struct.vcap_field, ptr %1252, i32 13
  %1257 = ptrtoint ptr %arrayidx.i276.i.i to i32
  call void @__asan_load4_noabort(i32 %1257)
  %1258 = load i32, ptr %arrayidx.i276.i.i, align 4
  %add.i277.i.i = add i32 %1258, %1256
  br label %for.body.i.i295.i.i

for.body.i.i295.i.i:                              ; preds = %for.body.i.i295.i.i.for.body.i.i295.i.i_crit_edge, %for.body.i.preheader.i278.i.i
  %i.018.i.i279.i.i = phi i32 [ %inc.i.i292.i.i, %for.body.i.i295.i.i.for.body.i.i295.i.i_crit_edge ], [ 0, %for.body.i.preheader.i278.i.i ]
  %offset.addr.017.i.i280.i.i = phi i32 [ %inc5.i.i293.i.i, %for.body.i.i295.i.i.for.body.i.i295.i.i_crit_edge ], [ %add.i277.i.i, %for.body.i.preheader.i278.i.i ]
  %div15.i.i281.i.i = lshr i32 %offset.addr.017.i.i280.i.i, 5
  %arrayidx.i.i282.i.i = getelementptr i32, ptr %action.i.i.i310, i32 %div15.i.i281.i.i
  %1259 = ptrtoint ptr %arrayidx.i.i282.i.i to i32
  call void @__asan_load4_noabort(i32 %1259)
  %1260 = load i32, ptr %arrayidx.i.i282.i.i, align 4
  %rem.i.i283.i.i = and i32 %offset.addr.017.i.i280.i.i, 31
  %shl.i.i284.i.i = shl nuw i32 1, %rem.i.i283.i.i
  %shl1.i.i285.i.i = shl nuw i32 1, %i.018.i.i279.i.i
  %and.i.i286.i.i = and i32 %shl1.i.i285.i.i, %conv3.i242.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i286.i.i)
  %tobool.not.i.i287.i.i = icmp eq i32 %and.i.i286.i.i, 0
  %or.i.i288.i.i = or i32 %shl.i.i284.i.i, %1260
  %neg.i.i289.i.i = xor i32 %shl.i.i284.i.i, -1
  %and2.i.i290.i.i = and i32 %1260, %neg.i.i289.i.i
  %v.0.i.i291.i.i = select i1 %tobool.not.i.i287.i.i, i32 %and2.i.i290.i.i, i32 %or.i.i288.i.i
  %1261 = ptrtoint ptr %arrayidx.i.i282.i.i to i32
  call void @__asan_store4_noabort(i32 %1261)
  store i32 %v.0.i.i291.i.i, ptr %arrayidx.i.i282.i.i, align 4
  %inc.i.i292.i.i = add nuw i32 %i.018.i.i279.i.i, 1
  %inc5.i.i293.i.i = add i32 %offset.addr.017.i.i280.i.i, 1
  %exitcond.not.i.i294.i.i = icmp eq i32 %inc.i.i292.i.i, %1254
  br i1 %exitcond.not.i.i294.i.i, label %for.body.i.i295.i.i.vcap_action_set.exit296.i.i_crit_edge, label %for.body.i.i295.i.i.for.body.i.i295.i.i_crit_edge

for.body.i.i295.i.i.for.body.i.i295.i.i_crit_edge: ; preds = %for.body.i.i295.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i295.i.i

for.body.i.i295.i.i.vcap_action_set.exit296.i.i_crit_edge: ; preds = %for.body.i.i295.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_action_set.exit296.i.i

vcap_action_set.exit296.i.i:                      ; preds = %for.body.i.i295.i.i.vcap_action_set.exit296.i.i_crit_edge, %vcap_action_set.exit270.i.i.vcap_action_set.exit296.i.i_crit_edge
  %pcp_b_val.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 8, i32 0, i32 0, i32 12
  %1262 = ptrtoint ptr %pcp_b_val.i.i to i32
  call void @__asan_load1_noabort(i32 %1262)
  %1263 = load i8, ptr %pcp_b_val.i.i, align 2
  %conv4.i.i = zext i8 %1263 to i32
  %1264 = ptrtoint ptr %actions.i.i.i308 to i32
  call void @__asan_load4_noabort(i32 %1264)
  %1265 = load ptr, ptr %actions.i.i.i308, align 4
  %length4.i298.i.i = getelementptr %struct.vcap_field, ptr %1265, i32 14, i32 1
  %1266 = ptrtoint ptr %length4.i298.i.i to i32
  call void @__asan_load4_noabort(i32 %1266)
  %1267 = load i32, ptr %length4.i298.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1267)
  %cmp16.not.i.i300.i.i = icmp eq i32 %1267, 0
  br i1 %cmp16.not.i.i300.i.i, label %vcap_action_set.exit296.i.i.es0_action_set.exit.i_crit_edge, label %for.body.i.preheader.i304.i.i

vcap_action_set.exit296.i.i.es0_action_set.exit.i_crit_edge: ; preds = %vcap_action_set.exit296.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %es0_action_set.exit.i

for.body.i.preheader.i304.i.i:                    ; preds = %vcap_action_set.exit296.i.i
  %1268 = ptrtoint ptr %action_offset.i.i247 to i32
  call void @__asan_load4_noabort(i32 %1268)
  %1269 = load i32, ptr %action_offset.i.i247, align 4
  %arrayidx.i302.i.i = getelementptr %struct.vcap_field, ptr %1265, i32 14
  %1270 = ptrtoint ptr %arrayidx.i302.i.i to i32
  call void @__asan_load4_noabort(i32 %1270)
  %1271 = load i32, ptr %arrayidx.i302.i.i, align 4
  %add.i303.i.i = add i32 %1271, %1269
  br label %for.body.i.i321.i.i

for.body.i.i321.i.i:                              ; preds = %for.body.i.i321.i.i.for.body.i.i321.i.i_crit_edge, %for.body.i.preheader.i304.i.i
  %i.018.i.i305.i.i = phi i32 [ %inc.i.i318.i.i, %for.body.i.i321.i.i.for.body.i.i321.i.i_crit_edge ], [ 0, %for.body.i.preheader.i304.i.i ]
  %offset.addr.017.i.i306.i.i = phi i32 [ %inc5.i.i319.i.i, %for.body.i.i321.i.i.for.body.i.i321.i.i_crit_edge ], [ %add.i303.i.i, %for.body.i.preheader.i304.i.i ]
  %div15.i.i307.i.i = lshr i32 %offset.addr.017.i.i306.i.i, 5
  %arrayidx.i.i308.i.i = getelementptr i32, ptr %action.i.i.i310, i32 %div15.i.i307.i.i
  %1272 = ptrtoint ptr %arrayidx.i.i308.i.i to i32
  call void @__asan_load4_noabort(i32 %1272)
  %1273 = load i32, ptr %arrayidx.i.i308.i.i, align 4
  %rem.i.i309.i.i = and i32 %offset.addr.017.i.i306.i.i, 31
  %shl.i.i310.i.i = shl nuw i32 1, %rem.i.i309.i.i
  %shl1.i.i311.i.i = shl nuw i32 1, %i.018.i.i305.i.i
  %and.i.i312.i.i = and i32 %shl1.i.i311.i.i, %conv4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i312.i.i)
  %tobool.not.i.i313.i.i = icmp eq i32 %and.i.i312.i.i, 0
  %or.i.i314.i.i = or i32 %shl.i.i310.i.i, %1273
  %neg.i.i315.i.i = xor i32 %shl.i.i310.i.i, -1
  %and2.i.i316.i.i = and i32 %1273, %neg.i.i315.i.i
  %v.0.i.i317.i.i = select i1 %tobool.not.i.i313.i.i, i32 %and2.i.i316.i.i, i32 %or.i.i314.i.i
  %1274 = ptrtoint ptr %arrayidx.i.i308.i.i to i32
  call void @__asan_store4_noabort(i32 %1274)
  store i32 %v.0.i.i317.i.i, ptr %arrayidx.i.i308.i.i, align 4
  %inc.i.i318.i.i = add nuw i32 %i.018.i.i305.i.i, 1
  %inc5.i.i319.i.i = add i32 %offset.addr.017.i.i306.i.i, 1
  %exitcond.not.i.i320.i.i = icmp eq i32 %inc.i.i318.i.i, %1267
  br i1 %exitcond.not.i.i320.i.i, label %for.body.i.i321.i.i.es0_action_set.exit.i_crit_edge, label %for.body.i.i321.i.i.for.body.i.i321.i.i_crit_edge

for.body.i.i321.i.i.for.body.i.i321.i.i_crit_edge: ; preds = %for.body.i.i321.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i321.i.i

for.body.i.i321.i.i.es0_action_set.exit.i_crit_edge: ; preds = %for.body.i.i321.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %es0_action_set.exit.i

es0_action_set.exit.i:                            ; preds = %for.body.i.i321.i.i.es0_action_set.exit.i_crit_edge, %vcap_action_set.exit296.i.i.es0_action_set.exit.i_crit_edge
  %counter.i313 = getelementptr inbounds %struct.vcap_data, ptr %data.i188, i32 0, i32 3
  %counter_width.i = getelementptr inbounds %struct.vcap_props, ptr %979, i32 0, i32 11
  %1275 = ptrtoint ptr %counter_width.i to i32
  call void @__asan_load2_noabort(i32 %1275)
  %1276 = load i16, ptr %counter_width.i, align 4
  %conv25.i = zext i16 %1276 to i32
  %pkts.i314 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 9, i32 1
  %1277 = ptrtoint ptr %pkts.i314 to i32
  call void @__asan_load8_noabort(i32 %1277)
  %1278 = load i64, ptr %pkts.i314, align 8
  %conv26.i = trunc i64 %1278 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1276)
  %cmp16.not.i.i315 = icmp eq i16 %1276, 0
  br i1 %cmp16.not.i.i315, label %es0_action_set.exit.i.vcap_data_set.exit.i324_crit_edge, label %for.body.i252.preheader.i

es0_action_set.exit.i.vcap_data_set.exit.i324_crit_edge: ; preds = %es0_action_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_data_set.exit.i324

for.body.i252.preheader.i:                        ; preds = %es0_action_set.exit.i
  %1279 = ptrtoint ptr %counter_offset.i.i246 to i32
  call void @__asan_load4_noabort(i32 %1279)
  %1280 = load i32, ptr %counter_offset.i.i246, align 4
  br label %for.body.i252.i

for.body.i252.i:                                  ; preds = %for.body.i252.i.for.body.i252.i_crit_edge, %for.body.i252.preheader.i
  %i.018.i.i316 = phi i32 [ %inc.i250.i, %for.body.i252.i.for.body.i252.i_crit_edge ], [ 0, %for.body.i252.preheader.i ]
  %offset.addr.017.i.i317 = phi i32 [ %inc5.i.i322, %for.body.i252.i.for.body.i252.i_crit_edge ], [ %1280, %for.body.i252.preheader.i ]
  %div15.i.i318 = lshr i32 %offset.addr.017.i.i317, 5
  %arrayidx.i243.i = getelementptr i32, ptr %counter.i313, i32 %div15.i.i318
  %1281 = ptrtoint ptr %arrayidx.i243.i to i32
  call void @__asan_load4_noabort(i32 %1281)
  %1282 = load i32, ptr %arrayidx.i243.i, align 4
  %rem.i244.i = and i32 %offset.addr.017.i.i317, 31
  %shl.i245.i = shl nuw i32 1, %rem.i244.i
  %shl1.i.i319 = shl nuw i32 1, %i.018.i.i316
  %and.i246.i = and i32 %shl1.i.i319, %conv26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i246.i)
  %tobool.not.i247.i = icmp eq i32 %and.i246.i, 0
  %or.i248.i = or i32 %shl.i245.i, %1282
  %neg.i249.i = xor i32 %shl.i245.i, -1
  %and2.i.i320 = and i32 %1282, %neg.i249.i
  %v.0.i.i321 = select i1 %tobool.not.i247.i, i32 %and2.i.i320, i32 %or.i248.i
  %1283 = ptrtoint ptr %arrayidx.i243.i to i32
  call void @__asan_store4_noabort(i32 %1283)
  store i32 %v.0.i.i321, ptr %arrayidx.i243.i, align 4
  %inc.i250.i = add nuw nsw i32 %i.018.i.i316, 1
  %inc5.i.i322 = add i32 %offset.addr.017.i.i317, 1
  %exitcond.not.i251.i = icmp eq i32 %inc.i250.i, %conv25.i
  br i1 %exitcond.not.i251.i, label %for.body.i252.i.vcap_data_set.exit.i324_crit_edge, label %for.body.i252.i.for.body.i252.i_crit_edge

for.body.i252.i.for.body.i252.i_crit_edge:        ; preds = %for.body.i252.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i252.i

for.body.i252.i.vcap_data_set.exit.i324_crit_edge: ; preds = %for.body.i252.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_data_set.exit.i324

vcap_data_set.exit.i324:                          ; preds = %for.body.i252.i.vcap_data_set.exit.i324_crit_edge, %es0_action_set.exit.i.vcap_data_set.exit.i324_crit_edge
  %1284 = ptrtoint ptr %entry_width.i.i192 to i32
  call void @__asan_load2_noabort(i32 %1284)
  %1285 = load i16, ptr %entry_width.i.i192, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1285)
  %cmp20.not.i.i323 = icmp eq i16 %1285, 0
  br i1 %cmp20.not.i.i323, label %vcap_data_set.exit.i324.es0_entry_set.exit_crit_edge, label %for.body.lr.ph.i258.i

vcap_data_set.exit.i324.es0_entry_set.exit_crit_edge: ; preds = %vcap_data_set.exit.i324
  call void @__sanitizer_cov_trace_pc() #10
  br label %es0_entry_set.exit

for.body.lr.ph.i258.i:                            ; preds = %vcap_data_set.exit.i324
  %conv.i255.i = zext i16 %1285 to i32
  %sub.i256.i = add nuw nsw i32 %conv.i255.i, 31
  %div19.i.i325 = lshr i32 %sub.i256.i, 5
  br label %for.body.i264.i

for.body.i264.i:                                  ; preds = %for.body.i264.i.for.body.i264.i_crit_edge, %for.body.lr.ph.i258.i
  %i.021.i.i326 = phi i32 [ 0, %for.body.lr.ph.i258.i ], [ %inc.i262.i, %for.body.i264.i.for.body.i264.i_crit_edge ]
  %1286 = ptrtoint ptr %target7.i.i209 to i32
  call void @__asan_load4_noabort(i32 %1286)
  %1287 = load i32, ptr %target7.i.i209, align 4
  %arrayidx.i259.i = getelementptr [12 x i32], ptr %data.i188, i32 0, i32 %i.021.i.i326
  %1288 = ptrtoint ptr %arrayidx.i259.i to i32
  call void @__asan_load4_noabort(i32 %1288)
  %1289 = load i32, ptr %arrayidx.i259.i, align 4
  %mul.i260.i = shl i32 %i.021.i.i326, 2
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %1287, i32 noundef %1289, i32 noundef 2, i32 noundef %mul.i260.i) #8
  %1290 = ptrtoint ptr %target7.i.i209 to i32
  call void @__asan_load4_noabort(i32 %1290)
  %1291 = load i32, ptr %target7.i.i209, align 4
  %arrayidx4.i.i327 = getelementptr %struct.vcap_data, ptr %data.i188, i32 0, i32 1, i32 %i.021.i.i326
  %1292 = ptrtoint ptr %arrayidx4.i.i327 to i32
  call void @__asan_load4_noabort(i32 %1292)
  %1293 = load i32, ptr %arrayidx4.i.i327, align 4
  %neg.i261.i = xor i32 %1293, -1
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %1291, i32 noundef %neg.i261.i, i32 noundef 3, i32 noundef %mul.i260.i) #8
  %inc.i262.i = add nuw nsw i32 %i.021.i.i326, 1
  %exitcond.not.i263.i = icmp eq i32 %inc.i262.i, %div19.i.i325
  br i1 %exitcond.not.i263.i, label %for.body.i264.i.es0_entry_set.exit_crit_edge, label %for.body.i264.i.for.body.i264.i_crit_edge

for.body.i264.i.for.body.i264.i_crit_edge:        ; preds = %for.body.i264.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i264.i

for.body.i264.i.es0_entry_set.exit_crit_edge:     ; preds = %for.body.i264.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %es0_entry_set.exit

es0_entry_set.exit:                               ; preds = %for.body.i264.i.es0_entry_set.exit_crit_edge, %vcap_data_set.exit.i324.es0_entry_set.exit_crit_edge
  %1294 = ptrtoint ptr %target7.i.i209 to i32
  call void @__asan_load4_noabort(i32 %1294)
  %1295 = load i32, ptr %target7.i.i209, align 4
  %1296 = ptrtoint ptr %tg.i.i211 to i32
  call void @__asan_load4_noabort(i32 %1296)
  %1297 = load i32, ptr %tg.i.i211, align 4
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %1295, i32 noundef %1297, i32 noundef 6, i32 noundef 0) #8
  call fastcc void @vcap_action2cache(ptr noundef %ocelot, ptr noundef %979, ptr noundef nonnull %data.i188) #8
  %1298 = ptrtoint ptr %entry_count.i.i190 to i32
  call void @__asan_load2_noabort(i32 %1298)
  %1299 = load i16, ptr %entry_count.i.i190, align 4
  %conv2.i268.i = add i16 %1299, %984
  tail call fastcc void @vcap_cmd(ptr noundef %ocelot, ptr noundef %979, i16 noundef zeroext %conv2.i268.i, i32 noundef 0, i32 noundef 7) #8
  call void @llvm.lifetime.end.p0(i64 196, ptr nonnull %data.i188) #8
  br label %if.end8

if.end8:                                          ; preds = %es0_entry_set.exit, %is2_entry_set.exit, %is1_entry_set.exit, %entry.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_vcap_filter_del(ptr noundef %ocelot, ptr nocapture noundef readonly %filter) #0 align 64 {
entry:
  %del_filter = alloca %struct.ocelot_vcap_filter, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %block_id = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 2
  %0 = ptrtoint ptr %block_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_id, align 4
  %arrayidx = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 24, i32 %1
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %del_filter) #8
  %2 = call ptr @memset(ptr %del_filter, i32 0, i32 272)
  %id.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 7
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp.013.i = load ptr, ptr %arrayidx, align 4
  %cmp.not14.i = icmp eq ptr %tmp.013.i, %arrayidx
  br i1 %cmp.not14.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %tmp.016.i = phi ptr [ %tmp.0.i, %if.end.i.for.body.i_crit_edge ], [ %tmp.013.i, %entry.for.body.i_crit_edge ]
  %index.015.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %id1.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %tmp.016.i, i32 0, i32 7
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %id.i.i, ptr noundef dereferenceable(8) %id1.i.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %ocelot_vcap_block_get_filter_index.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %inc.i = add i32 %index.015.i, 1
  %4 = ptrtoint ptr %tmp.016.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %tmp.0.i = load ptr, ptr %tmp.016.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, %arrayidx
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ocelot_vcap_block_get_filter_index.exit:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.015.i)
  %cmp = icmp slt i32 %index.015.i, 0
  br i1 %cmp, label %ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge, label %ocelot_vcap_block_get_filter_index.exit.for.body.i26_crit_edge

ocelot_vcap_block_get_filter_index.exit.for.body.i26_crit_edge: ; preds = %ocelot_vcap_block_get_filter_index.exit
  br label %for.body.i26

ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge: ; preds = %ocelot_vcap_block_get_filter_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i26:                                     ; preds = %for.inc.i.for.body.i26_crit_edge, %ocelot_vcap_block_get_filter_index.exit.for.body.i26_crit_edge
  %pos.023.i = phi ptr [ %q.025.i, %for.inc.i.for.body.i26_crit_edge ], [ %tmp.013.i, %ocelot_vcap_block_get_filter_index.exit.for.body.i26_crit_edge ]
  %5 = ptrtoint ptr %pos.023.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %q.025.i = load ptr, ptr %pos.023.i, align 4
  %id1.i.i23 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %pos.023.i, i32 0, i32 7
  %bcmp.i.i24 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %id.i.i, ptr noundef dereferenceable(8) %id1.i.i23, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i24)
  %tobool.not.i.i25 = icmp eq i32 %bcmp.i.i24, 0
  br i1 %tobool.not.i.i25, label %if.then.i, label %for.body.i26.for.inc.i_crit_edge

for.body.i26.for.inc.i_crit_edge:                 ; preds = %for.body.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i26
  %block_id.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %pos.023.i, i32 0, i32 2
  %6 = ptrtoint ptr %block_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %block_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i = icmp eq i32 %7, 2
  br i1 %cmp.i, label %land.lhs.true.i, label %if.then.i.if.end.i27_crit_edge

if.then.i.if.end.i27_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i27

land.lhs.true.i:                                  ; preds = %if.then.i
  %police_ena.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %pos.023.i, i32 0, i32 8, i32 0, i32 0, i32 3
  %8 = ptrtoint ptr %police_ena.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %police_ena.i, align 4, !range !31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not.i = icmp eq i8 %9, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.if.end.i27_crit_edge, label %if.then6.i

land.lhs.true.i.if.end.i27_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i27

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %pol_ix.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %pos.023.i, i32 0, i32 8, i32 0, i32 0, i32 8
  %10 = ptrtoint ptr %pol_ix.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pol_ix.i, align 4
  %call8.i = tail call i32 @ocelot_vcap_policer_del(ptr noundef %ocelot, i32 noundef %11) #8
  br label %if.end.i27

if.end.i27:                                       ; preds = %if.then6.i, %land.lhs.true.i.if.end.i27_crit_edge, %if.then.i.if.end.i27_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pos.023.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i27.list_del.exit.i_crit_edge

if.end.i27.list_del.exit.i_crit_edge:             ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pos.023.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %pos.023.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pos.023.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i27.list_del.exit.i_crit_edge
  %18 = ptrtoint ptr %pos.023.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %pos.023.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pos.023.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %pos.023.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del.exit.i, %for.body.i26.for.inc.i_crit_edge
  %cmp.i.not.i = icmp eq ptr %q.025.i, %arrayidx
  br i1 %cmp.i.not.i, label %ocelot_vcap_block_remove_filter.exit, label %for.inc.i.for.body.i26_crit_edge

for.inc.i.for.body.i26_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i26

ocelot_vcap_block_remove_filter.exit:             ; preds = %for.inc.i
  %count.i = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 24, i32 %1, i32 1
  %20 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %21, -1
  store i32 %dec.i, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %index.015.i, i32 %dec.i)
  %cmp236 = icmp slt i32 %index.015.i, %dec.i
  br i1 %cmp236, label %ocelot_vcap_block_remove_filter.exit.for.body_crit_edge, label %ocelot_vcap_block_remove_filter.exit.for.end_crit_edge

ocelot_vcap_block_remove_filter.exit.for.end_crit_edge: ; preds = %ocelot_vcap_block_remove_filter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

ocelot_vcap_block_remove_filter.exit.for.body_crit_edge: ; preds = %ocelot_vcap_block_remove_filter.exit
  br label %for.body

for.body:                                         ; preds = %ocelot_vcap_block_find_filter_by_index.exit.for.body_crit_edge, %ocelot_vcap_block_remove_filter.exit.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %ocelot_vcap_block_find_filter_by_index.exit.for.body_crit_edge ], [ %index.015.i, %ocelot_vcap_block_remove_filter.exit.for.body_crit_edge ]
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %tmp.014.i = load ptr, ptr %arrayidx, align 4
  %cmp.not15.i = icmp eq ptr %tmp.014.i, %arrayidx
  br i1 %cmp.not15.i, label %for.body.ocelot_vcap_block_find_filter_by_index.exit_crit_edge, label %for.body.for.body.i31_crit_edge

for.body.for.body.i31_crit_edge:                  ; preds = %for.body
  br label %for.body.i31

for.body.ocelot_vcap_block_find_filter_by_index.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_block_find_filter_by_index.exit

for.cond.i:                                       ; preds = %for.body.i31
  %inc.i28 = add i32 %i.016.i, 1
  %23 = ptrtoint ptr %tmp.017.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %tmp.0.i29 = load ptr, ptr %tmp.017.i, align 4
  %cmp.not.i30 = icmp eq ptr %tmp.0.i29, %arrayidx
  br i1 %cmp.not.i30, label %for.cond.i.ocelot_vcap_block_find_filter_by_index.exit_crit_edge, label %for.cond.i.for.body.i31_crit_edge

for.cond.i.for.body.i31_crit_edge:                ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i31

for.cond.i.ocelot_vcap_block_find_filter_by_index.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_block_find_filter_by_index.exit

for.body.i31:                                     ; preds = %for.cond.i.for.body.i31_crit_edge, %for.body.for.body.i31_crit_edge
  %tmp.017.i = phi ptr [ %tmp.0.i29, %for.cond.i.for.body.i31_crit_edge ], [ %tmp.014.i, %for.body.for.body.i31_crit_edge ]
  %i.016.i = phi i32 [ %inc.i28, %for.cond.i.for.body.i31_crit_edge ], [ 0, %for.body.for.body.i31_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.016.i, i32 %i.037)
  %cmp3.i = icmp eq i32 %i.016.i, %i.037
  br i1 %cmp3.i, label %for.body.i31.ocelot_vcap_block_find_filter_by_index.exit_crit_edge, label %for.cond.i

for.body.i31.ocelot_vcap_block_find_filter_by_index.exit_crit_edge: ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_block_find_filter_by_index.exit

ocelot_vcap_block_find_filter_by_index.exit:      ; preds = %for.body.i31.ocelot_vcap_block_find_filter_by_index.exit_crit_edge, %for.cond.i.ocelot_vcap_block_find_filter_by_index.exit_crit_edge, %for.body.ocelot_vcap_block_find_filter_by_index.exit_crit_edge
  %retval.0.i32 = phi ptr [ null, %for.body.ocelot_vcap_block_find_filter_by_index.exit_crit_edge ], [ %tmp.017.i, %for.body.i31.ocelot_vcap_block_find_filter_by_index.exit_crit_edge ], [ null, %for.cond.i.ocelot_vcap_block_find_filter_by_index.exit_crit_edge ]
  tail call fastcc void @vcap_entry_set(ptr noundef %ocelot, i32 noundef %i.037, ptr noundef %retval.0.i32)
  %inc = add nsw i32 %i.037, 1
  %24 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count.i, align 4
  %cmp2 = icmp slt i32 %inc, %25
  br i1 %cmp2, label %ocelot_vcap_block_find_filter_by_index.exit.for.body_crit_edge, label %ocelot_vcap_block_find_filter_by_index.exit.for.end_crit_edge

ocelot_vcap_block_find_filter_by_index.exit.for.end_crit_edge: ; preds = %ocelot_vcap_block_find_filter_by_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

ocelot_vcap_block_find_filter_by_index.exit.for.body_crit_edge: ; preds = %ocelot_vcap_block_find_filter_by_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %ocelot_vcap_block_find_filter_by_index.exit.for.end_crit_edge, %ocelot_vcap_block_remove_filter.exit.for.end_crit_edge
  %.lcssa = phi i32 [ %dec.i, %ocelot_vcap_block_remove_filter.exit.for.end_crit_edge ], [ %25, %ocelot_vcap_block_find_filter_by_index.exit.for.end_crit_edge ]
  call fastcc void @vcap_entry_set(ptr noundef %ocelot, i32 noundef %.lcssa, ptr noundef nonnull %del_filter)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ %index.015.i, %ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %del_filter) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_vcap_filter_replace(ptr noundef %ocelot, ptr noundef %filter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %block_id = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 2
  %0 = ptrtoint ptr %block_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_id, align 4
  %arrayidx = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 24, i32 %1
  %id.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.013.i = load ptr, ptr %arrayidx, align 4
  %cmp.not14.i = icmp eq ptr %tmp.013.i, %arrayidx
  br i1 %cmp.not14.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %tmp.016.i = phi ptr [ %tmp.0.i, %if.end.i.for.body.i_crit_edge ], [ %tmp.013.i, %entry.for.body.i_crit_edge ]
  %index.015.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %id1.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %tmp.016.i, i32 0, i32 7
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %id.i.i, ptr noundef dereferenceable(8) %id1.i.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %ocelot_vcap_block_get_filter_index.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %inc.i = add i32 %index.015.i, 1
  %3 = ptrtoint ptr %tmp.016.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp.0.i = load ptr, ptr %tmp.016.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, %arrayidx
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ocelot_vcap_block_get_filter_index.exit:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.015.i)
  %cmp = icmp slt i32 %index.015.i, 0
  br i1 %cmp, label %ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge, label %if.end

ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge: ; preds = %ocelot_vcap_block_get_filter_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ocelot_vcap_block_get_filter_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @vcap_entry_set(ptr noundef %ocelot, i32 noundef %index.015.i, ptr noundef %filter)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %index.015.i, %ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_vcap_filter_stats_update(ptr noundef %ocelot, ptr nocapture noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca %struct.vcap_data, align 4
  %tmp = alloca %struct.ocelot_vcap_filter, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %block_id = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 2
  %0 = ptrtoint ptr %block_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %block_id, align 4
  %arrayidx = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 24, i32 %1
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %tmp) #8
  %id.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.013.i = load ptr, ptr %arrayidx, align 4
  %cmp.not14.i = icmp eq ptr %tmp.013.i, %arrayidx
  br i1 %cmp.not14.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %tmp.016.i = phi ptr [ %tmp.0.i, %if.end.i.for.body.i_crit_edge ], [ %tmp.013.i, %entry.for.body.i_crit_edge ]
  %index.015.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %id1.i.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %tmp.016.i, i32 0, i32 7
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %id.i.i, ptr noundef dereferenceable(8) %id1.i.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br i1 %tobool.not.i.i, label %ocelot_vcap_block_get_filter_index.exit, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %inc.i = add i32 %index.015.i, 1
  %3 = ptrtoint ptr %tmp.016.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp.0.i = load ptr, ptr %tmp.016.i, align 4
  %cmp.not.i = icmp eq ptr %tmp.0.i, %arrayidx
  br i1 %cmp.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

ocelot_vcap_block_get_filter_index.exit:          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index.015.i)
  %cmp = icmp slt i32 %index.015.i, 0
  br i1 %cmp, label %ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge, label %if.end

ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge: ; preds = %ocelot_vcap_block_get_filter_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %ocelot_vcap_block_get_filter_index.exit
  %vcap1.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 26
  %4 = ptrtoint ptr %vcap1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcap1.i, align 4
  call void @llvm.lifetime.start.p0(i64 196, ptr nonnull %data.i) #8
  %6 = call ptr @memset(ptr %data.i, i32 255, i32 196)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  %spec.select.i = select i1 %cmp.i, i32 1, i32 2
  %7 = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 6
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select.i, ptr %7, align 4
  %arrayidx.i = getelementptr %struct.vcap_props, ptr %5, i32 %1
  %sub.i = add nsw i32 %spec.select.i, -1
  %div.i1516 = lshr i32 %index.015.i, %sub.i
  %entry_count.i.i = getelementptr %struct.vcap_props, ptr %5, i32 %1, i32 2
  %9 = ptrtoint ptr %entry_count.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %entry_count.i.i, align 4
  %11 = trunc i32 %div.i1516 to i16
  %12 = xor i16 %11, -1
  %conv2.i.i = add i16 %10, %12
  tail call fastcc void @vcap_cmd(ptr noundef %ocelot, ptr noundef %arrayidx.i, i16 noundef zeroext %conv2.i.i, i32 noundef 1, i32 noundef 4) #8
  %action_width.i.i = getelementptr %struct.vcap_props, ptr %5, i32 %1, i32 7
  %13 = ptrtoint ptr %action_width.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %action_width.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp37.not.i.i = icmp eq i16 %14, 0
  br i1 %cmp37.not.i.i, label %if.end.for.cond2.preheader.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.for.cond2.preheader.i.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end
  %conv.i.i = zext i16 %14 to i32
  %sub.i.i = add nuw nsw i32 %conv.i.i, 31
  %div36.i.i = lshr i32 %sub.i.i, 5
  %target.i.i = getelementptr %struct.vcap_props, ptr %5, i32 %1, i32 12
  br label %for.body.i.i

for.cond2.preheader.i.i:                          ; preds = %for.body.i.i.for.cond2.preheader.i.i_crit_edge, %if.end.for.cond2.preheader.i.i_crit_edge
  %counter_words.i.i = getelementptr %struct.vcap_props, ptr %5, i32 %1, i32 10
  %15 = ptrtoint ptr %counter_words.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %counter_words.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp440.not.i.i = icmp eq i16 %16, 0
  br i1 %cmp440.not.i.i, label %for.cond2.preheader.i.i.for.end13.i.i_crit_edge, label %for.body6.lr.ph.i.i

for.cond2.preheader.i.i.for.end13.i.i_crit_edge:  ; preds = %for.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end13.i.i

for.body6.lr.ph.i.i:                              ; preds = %for.cond2.preheader.i.i
  %target7.i.i = getelementptr %struct.vcap_props, ptr %5, i32 %1, i32 12
  br label %for.body6.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.038.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %17 = ptrtoint ptr %target.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %target.i.i, align 4
  %mul.i.i = shl i32 %i.038.i.i, 2
  %call.i.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %18, i32 noundef 4, i32 noundef %mul.i.i) #8
  %arrayidx.i.i = getelementptr %struct.vcap_data, ptr %data.i, i32 0, i32 2, i32 %i.038.i.i
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.038.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div36.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.cond2.preheader.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.for.cond2.preheader.i.i_crit_edge:   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond2.preheader.i.i

for.body6.i.i:                                    ; preds = %for.body6.i.i.for.body6.i.i_crit_edge, %for.body6.lr.ph.i.i
  %i.141.i.i = phi i32 [ 0, %for.body6.lr.ph.i.i ], [ %inc12.i.i, %for.body6.i.i.for.body6.i.i_crit_edge ]
  %20 = ptrtoint ptr %target7.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %target7.i.i, align 4
  %mul8.i.i = shl i32 %i.141.i.i, 2
  %call9.i.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %21, i32 noundef 5, i32 noundef %mul8.i.i) #8
  %arrayidx10.i.i = getelementptr %struct.vcap_data, ptr %data.i, i32 0, i32 3, i32 %i.141.i.i
  %22 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call9.i.i, ptr %arrayidx10.i.i, align 4
  %inc12.i.i = add nuw nsw i32 %i.141.i.i, 1
  %23 = ptrtoint ptr %counter_words.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %counter_words.i.i, align 2
  %conv3.i.i = zext i16 %24 to i32
  %cmp4.i.i = icmp ult i32 %inc12.i.i, %conv3.i.i
  br i1 %cmp4.i.i, label %for.body6.i.i.for.body6.i.i_crit_edge, label %for.body6.i.i.for.end13.i.i_crit_edge

for.body6.i.i.for.end13.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end13.i.i

for.body6.i.i.for.body6.i.i_crit_edge:            ; preds = %for.body6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6.i.i

for.end13.i.i:                                    ; preds = %for.body6.i.i.for.end13.i.i_crit_edge, %for.cond2.preheader.i.i.for.end13.i.i_crit_edge
  %action_type_width.i.i = getelementptr %struct.vcap_props, ptr %5, i32 %1, i32 8
  %25 = ptrtoint ptr %action_type_width.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %action_type_width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %26)
  %tobool.not.i.i12 = icmp eq i16 %26, 0
  br i1 %tobool.not.i.i12, label %for.end13.i.i.vcap_cache2action.exit.i_crit_edge, label %cond.true.i.i

for.end13.i.i.vcap_cache2action.exit.i_crit_edge: ; preds = %for.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_cache2action.exit.i

cond.true.i.i:                                    ; preds = %for.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv14.i.i = zext i16 %26 to i32
  %action15.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 2
  %27 = ptrtoint ptr %action15.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %action15.i.i, align 4
  %sub17.i.i = sub nsw i32 31, %conv14.i.i
  %shr.i.i = lshr i32 -1, %sub17.i.i
  %and19.i.i = and i32 %28, %shr.i.i
  br label %vcap_cache2action.exit.i

vcap_cache2action.exit.i:                         ; preds = %cond.true.i.i, %for.end13.i.i.vcap_cache2action.exit.i_crit_edge
  %cond.i.i = phi i32 [ %and19.i.i, %cond.true.i.i ], [ 0, %for.end13.i.i.vcap_cache2action.exit.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 5
  %29 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %cond.i.i, ptr %type.i.i, align 4
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %arrayidx.i, align 4
  %conv.i14.i = zext i16 %31 to i32
  %32 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %7, align 4
  %switch.tableidx = add i32 %33, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %34 = icmp ult i32 %switch.tableidx, 3
  br i1 %34, label %switch.lookup, label %vcap_cache2action.exit.i.vcap_data_offset_get.exit.i_crit_edge

vcap_cache2action.exit.i.vcap_data_offset_get.exit.i_crit_edge: ; preds = %vcap_cache2action.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_data_offset_get.exit.i

switch.lookup:                                    ; preds = %vcap_cache2action.exit.i
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ocelot_vcap_filter_stats_update, i32 0, i32 %switch.tableidx
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load = load i32, ptr %switch.gep, align 4
  %rem.i.i = srem i32 %index.015.i, %switch.load
  %sw_count.i.i = getelementptr %struct.vcap_props, ptr %5, i32 %1, i32 1
  %36 = ptrtoint ptr %sw_count.i.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %sw_count.i.i, align 2
  %conv3.i15.i = zext i16 %37 to i32
  %div.rhs.trunc.i.i = trunc i32 %switch.load to i16
  %div84.i.i = udiv i16 %37, %div.rhs.trunc.i.i
  %div.zext.i.i = zext i16 %div84.i.i to i32
  %mul.i16.i = mul nsw i32 %rem.i.i, %div.zext.i.i
  %38 = add nsw i32 %mul.i16.i, %div.zext.i.i
  %sub6.i.i = sub nsw i32 %conv3.i15.i, %38
  %tg_value.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 11
  %39 = ptrtoint ptr %tg_value.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %tg_value.i.i, align 4
  %tg_mask.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 12
  %40 = ptrtoint ptr %tg_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %tg_mask.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %div.rhs.trunc.i.i)
  %cmp85.not.i.i = icmp ult i16 %37, %div.rhs.trunc.i.i
  br i1 %cmp85.not.i.i, label %switch.lookup.for.end.i.i_crit_edge, label %for.body.lr.ph.i17.i

switch.lookup.for.end.i.i_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.lr.ph.i17.i:                             ; preds = %switch.lookup
  %umax.i.i = tail call i32 @llvm.umax.i32(i32 %div.zext.i.i, i32 1) #8
  br label %for.body.i22.i

for.body.i22.i:                                   ; preds = %for.body.i22.i.for.body.i22.i_crit_edge, %for.body.lr.ph.i17.i
  %41 = phi i32 [ 0, %for.body.lr.ph.i17.i ], [ %or19.i.i, %for.body.i22.i.for.body.i22.i_crit_edge ]
  %42 = phi i32 [ 0, %for.body.lr.ph.i17.i ], [ %or.i.i, %for.body.i22.i.for.body.i22.i_crit_edge ]
  %i.086.i.i = phi i32 [ 0, %for.body.lr.ph.i17.i ], [ %inc.i20.i, %for.body.i22.i.for.body.i22.i_crit_edge ]
  %add.i.i = add i32 %i.086.i.i, %sub6.i.i
  %mul8.i18.i = mul i32 %add.i.i, %conv.i14.i
  %shl.i.i = shl i32 %33, %mul8.i18.i
  %or.i.i = or i32 %shl.i.i, %42
  %shl11.neg.i.i = shl nsw i32 -1, %mul8.i18.i
  %43 = add i32 %mul8.i18.i, %conv.i14.i
  %sub16.i.i = sub i32 32, %43
  %shr.i19.i = lshr i32 -1, %sub16.i.i
  %and.i.i = and i32 %shr.i19.i, %shl11.neg.i.i
  %or19.i.i = or i32 %and.i.i, %41
  %inc.i20.i = add nuw nsw i32 %i.086.i.i, 1
  %exitcond.not.i21.i = icmp eq i32 %inc.i20.i, %umax.i.i
  br i1 %exitcond.not.i21.i, label %for.cond.for.end_crit_edge.i.i, label %for.body.i22.i.for.body.i22.i_crit_edge

for.body.i22.i.for.body.i22.i_crit_edge:          ; preds = %for.body.i22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i22.i

for.cond.for.end_crit_edge.i.i:                   ; preds = %for.body.i22.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %tg_value.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or.i.i, ptr %tg_value.i.i, align 4
  %45 = ptrtoint ptr %tg_mask.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or19.i.i, ptr %tg_mask.i.i, align 4
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.cond.for.end_crit_edge.i.i, %switch.lookup.for.end.i.i_crit_edge
  %46 = xor i32 %rem.i.i, -1
  %sub21.i.i = add i32 %switch.load, %46
  %entry_width.i.i = getelementptr %struct.vcap_props, ptr %5, i32 %1, i32 4
  %47 = ptrtoint ptr %entry_width.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %entry_width.i.i, align 4
  %conv22.i.i = zext i16 %48 to i32
  %mul23.i.i = mul i32 %sub6.i.i, %conv22.i.i
  %div26.i.i = sdiv i32 %mul23.i.i, %conv3.i15.i
  %key_offset.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 8
  %49 = ptrtoint ptr %key_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %div26.i.i, ptr %key_offset.i.i, align 4
  %mul27.i.i = mul i32 %sub21.i.i, %div.zext.i.i
  %counter_width.i.i = getelementptr %struct.vcap_props, ptr %5, i32 %1, i32 11
  %50 = ptrtoint ptr %counter_width.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %counter_width.i.i, align 4
  %conv28.i.i = zext i16 %51 to i32
  %mul29.i.i = mul i32 %mul27.i.i, %conv28.i.i
  %counter_offset.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 10
  %52 = ptrtoint ptr %counter_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul29.i.i, ptr %counter_offset.i.i, align 4
  %arrayidx.i24.i = getelementptr %struct.vcap_props, ptr %5, i32 %1, i32 9, i32 %cond.i.i
  %53 = ptrtoint ptr %arrayidx.i24.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx.i24.i, align 2
  %conv31.i.i = zext i16 %54 to i32
  %count.i.i = getelementptr %struct.vcap_props, ptr %5, i32 %1, i32 9, i32 %cond.i.i, i32 1
  %55 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %count.i.i, align 2
  %conv34.i.i = zext i16 %56 to i32
  %mul35.i.i = mul i32 %sub21.i.i, %conv31.i.i
  %mul36.i.i = mul i32 %mul35.i.i, %conv34.i.i
  %div37.i.i = udiv i32 %mul36.i.i, %switch.load
  %action_offset.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 9
  %conv38.i.i = zext i16 %26 to i32
  %add40.i.i = add i32 %div37.i.i, %conv38.i.i
  %57 = ptrtoint ptr %action_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add40.i.i, ptr %action_offset.i.i, align 4
  br label %vcap_data_offset_get.exit.i

vcap_data_offset_get.exit.i:                      ; preds = %for.end.i.i, %vcap_cache2action.exit.i.vcap_data_offset_get.exit.i_crit_edge
  %counter.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 3
  %counter_width.i = getelementptr %struct.vcap_props, ptr %5, i32 %1, i32 11
  %58 = ptrtoint ptr %counter_width.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %counter_width.i, align 4
  %conv.i = zext i16 %59 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %cmp9.not.i.i = icmp eq i16 %59, 0
  br i1 %cmp9.not.i.i, label %vcap_data_offset_get.exit.i.vcap_entry_get.exit_crit_edge, label %for.body.i34.preheader.i

vcap_data_offset_get.exit.i.vcap_entry_get.exit_crit_edge: ; preds = %vcap_data_offset_get.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_entry_get.exit

for.body.i34.preheader.i:                         ; preds = %vcap_data_offset_get.exit.i
  %counter_offset.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 10
  %60 = ptrtoint ptr %counter_offset.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %counter_offset.i, align 4
  br label %for.body.i34.i

for.body.i34.i:                                   ; preds = %for.body.i34.i.for.body.i34.i_crit_edge, %for.body.i34.preheader.i
  %value.012.i.i = phi i32 [ %value.1.i.i, %for.body.i34.i.for.body.i34.i_crit_edge ], [ 0, %for.body.i34.preheader.i ]
  %i.011.i.i = phi i32 [ %inc.i32.i, %for.body.i34.i.for.body.i34.i_crit_edge ], [ 0, %for.body.i34.preheader.i ]
  %offset.addr.010.i.i = phi i32 [ %inc2.i.i, %for.body.i34.i.for.body.i34.i_crit_edge ], [ %61, %for.body.i34.preheader.i ]
  %div8.i.i = lshr i32 %offset.addr.010.i.i, 5
  %arrayidx.i26.i = getelementptr i32, ptr %counter.i, i32 %div8.i.i
  %62 = ptrtoint ptr %arrayidx.i26.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i26.i, align 4
  %rem.i27.i = and i32 %offset.addr.010.i.i, 31
  %shl.i28.i = shl nuw i32 1, %rem.i27.i
  %and.i29.i = and i32 %shl.i28.i, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i29.i)
  %tobool.not.i30.i = icmp eq i32 %and.i29.i, 0
  %shl1.i.i = shl nuw i32 1, %i.011.i.i
  %or.i31.i = select i1 %tobool.not.i30.i, i32 0, i32 %shl1.i.i
  %value.1.i.i = or i32 %or.i31.i, %value.012.i.i
  %inc.i32.i = add nuw nsw i32 %i.011.i.i, 1
  %inc2.i.i = add i32 %offset.addr.010.i.i, 1
  %exitcond.not.i33.i = icmp eq i32 %inc.i32.i, %conv.i
  br i1 %exitcond.not.i33.i, label %for.body.i34.i.vcap_entry_get.exit_crit_edge, label %for.body.i34.i.for.body.i34.i_crit_edge

for.body.i34.i.for.body.i34.i_crit_edge:          ; preds = %for.body.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i34.i

for.body.i34.i.vcap_entry_get.exit_crit_edge:     ; preds = %for.body.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_entry_get.exit

vcap_entry_get.exit:                              ; preds = %for.body.i34.i.vcap_entry_get.exit_crit_edge, %vcap_data_offset_get.exit.i.vcap_entry_get.exit_crit_edge
  %value.0.lcssa.i.i = phi i32 [ 0, %vcap_data_offset_get.exit.i.vcap_entry_get.exit_crit_edge ], [ %value.1.i.i, %for.body.i34.i.vcap_entry_get.exit_crit_edge ]
  %conv5.i = zext i32 %value.0.lcssa.i.i to i64
  %pkts.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %filter, i32 0, i32 9, i32 1
  %64 = ptrtoint ptr %pkts.i to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv5.i, ptr %pkts.i, align 8
  call void @llvm.lifetime.end.p0(i64 196, ptr nonnull %data.i) #8
  %65 = call ptr @memcpy(ptr %tmp, ptr %filter, i32 272)
  %pkts = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %tmp, i32 0, i32 9, i32 1
  %66 = ptrtoint ptr %pkts to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 0, ptr %pkts, align 8
  call fastcc void @vcap_entry_set(ptr noundef %ocelot, i32 noundef %index.015.i, ptr noundef nonnull %tmp)
  br label %cleanup

cleanup:                                          ; preds = %vcap_entry_get.exit, %ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %vcap_entry_get.exit ], [ %index.015.i, %ocelot_vcap_block_get_filter_index.exit.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_vcap_init(ptr noundef %ocelot) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca %struct.vcap_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef 665, i32 noundef 16777308, i32 noundef 12256) #8
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef 1, i32 noundef 16777306, i32 noundef 12256) #8
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef 4194303, i32 noundef 16777309, i32 noundef 12256) #8
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef 0, i32 noundef 16777307, i32 noundef 12256) #8
  tail call void @__ocelot_write_ix(ptr noundef %ocelot, i32 noundef 4194303, i32 noundef 16777310, i32 noundef 12256) #8
  %vcap2 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 26
  %tg.i.i = getelementptr inbounds %struct.vcap_data, ptr %data.i, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %ocelot_vcap_init_one.exit.for.body_crit_edge, %entry
  %i.023 = phi i32 [ 0, %entry ], [ %inc, %ocelot_vcap_init_one.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 24, i32 %i.023
  %0 = ptrtoint ptr %vcap2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcap2, align 4
  %arrayidx3 = getelementptr %struct.vcap_props, ptr %1, i32 %i.023
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %arrayidx, ptr %arrayidx, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %arrayidx, ptr %prev.i, align 4
  %target.i = getelementptr %struct.vcap_props, ptr %1, i32 %i.023, i32 12
  %4 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %target.i, align 4
  %call.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %5, i32 noundef 7, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp.not.i, label %if.end21.i, label %do.end.i, !prof !27

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1315, i32 noundef 9, ptr noundef null) #8
  br label %ocelot_vcap_detect_constants.exit

if.end21.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %target.i, align 4
  %call23.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %7, i32 noundef 11, i32 noundef 0) #8
  %conv.i = trunc i32 %call23.i to i16
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv.i, ptr %arrayidx3, align 4
  %9 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %target.i, align 4
  %call25.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %10, i32 noundef 10, i32 noundef 0) #8
  %conv26.i = trunc i32 %call25.i to i16
  %sw_count.i = getelementptr %struct.vcap_props, ptr %1, i32 %i.023, i32 1
  %11 = ptrtoint ptr %sw_count.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv26.i, ptr %sw_count.i, align 2
  %12 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %target.i, align 4
  %call28.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %13, i32 noundef 9, i32 noundef 0) #8
  %conv29.i = trunc i32 %call28.i to i16
  %entry_count.i = getelementptr %struct.vcap_props, ptr %1, i32 %i.023, i32 2
  %14 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv29.i, ptr %entry_count.i, align 4
  %15 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %target.i, align 4
  %call31.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %16, i32 noundef 8, i32 noundef 0) #8
  %entry_width.i = getelementptr %struct.vcap_props, ptr %1, i32 %i.023, i32 4
  %17 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx3, align 4
  %conv34.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %sw_count.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %sw_count.i, align 2
  %conv36.i = zext i16 %20 to i32
  %mul.i = mul nuw i32 %conv36.i, %conv34.i
  %sub.i = sub i32 %call31.i, %mul.i
  %conv39.i = trunc i32 %sub.i to i16
  %21 = ptrtoint ptr %entry_width.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv39.i, ptr %entry_width.i, align 4
  %22 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %target.i, align 4
  %call41.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %23, i32 noundef 12, i32 noundef 0) #8
  %24 = ptrtoint ptr %entry_count.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %entry_count.i, align 4
  %26 = trunc i32 %call41.i to i16
  %conv44.i = add i16 %25, %26
  %action_count.i = getelementptr %struct.vcap_props, ptr %1, i32 %i.023, i32 5
  %27 = ptrtoint ptr %action_count.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv44.i, ptr %action_count.i, align 2
  %28 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %target.i, align 4
  %call46.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %29, i32 noundef 13, i32 noundef 0) #8
  %conv47.i = trunc i32 %call46.i to i16
  %action_width.i = getelementptr %struct.vcap_props, ptr %1, i32 %i.023, i32 7
  %30 = ptrtoint ptr %action_width.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv47.i, ptr %action_width.i, align 2
  %31 = ptrtoint ptr %sw_count.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sw_count.i, align 2
  %counter_words.i = getelementptr %struct.vcap_props, ptr %1, i32 %i.023, i32 10
  %33 = ptrtoint ptr %counter_words.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %counter_words.i, align 2
  %34 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %target.i, align 4
  %call50.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %35, i32 noundef 14, i32 noundef 0) #8
  %36 = ptrtoint ptr %counter_words.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %counter_words.i, align 2
  %conv52.i = zext i16 %37 to i32
  %div.i = sdiv i32 %call50.i, %conv52.i
  %conv53.i = trunc i32 %div.i to i16
  %counter_width.i = getelementptr %struct.vcap_props, ptr %1, i32 %i.023, i32 11
  %38 = ptrtoint ptr %counter_width.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv53.i, ptr %counter_width.i, align 4
  br label %ocelot_vcap_detect_constants.exit

ocelot_vcap_detect_constants.exit:                ; preds = %if.end21.i, %do.end.i
  call void @llvm.lifetime.start.p0(i64 196, ptr nonnull %data.i) #8
  %39 = call ptr @memset(ptr %data.i, i32 0, i32 196)
  %entry_width.i.i = getelementptr %struct.vcap_props, ptr %1, i32 %i.023, i32 4
  %40 = ptrtoint ptr %entry_width.i.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %entry_width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %cmp20.not.i.i = icmp eq i16 %41, 0
  br i1 %cmp20.not.i.i, label %ocelot_vcap_detect_constants.exit.ocelot_vcap_init_one.exit_crit_edge, label %for.body.lr.ph.i.i

ocelot_vcap_detect_constants.exit.ocelot_vcap_init_one.exit_crit_edge: ; preds = %ocelot_vcap_detect_constants.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_init_one.exit

for.body.lr.ph.i.i:                               ; preds = %ocelot_vcap_detect_constants.exit
  %conv.i.i = zext i16 %41 to i32
  %sub.i.i = add nuw nsw i32 %conv.i.i, 31
  %div19.i.i = lshr i32 %sub.i.i, 5
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.021.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %42 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %target.i, align 4
  %arrayidx.i.i = getelementptr [12 x i32], ptr %data.i, i32 0, i32 %i.021.i.i
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i = shl i32 %i.021.i.i, 2
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %43, i32 noundef %45, i32 noundef 2, i32 noundef %mul.i.i) #8
  %46 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %target.i, align 4
  %arrayidx4.i.i = getelementptr %struct.vcap_data, ptr %data.i, i32 0, i32 1, i32 %i.021.i.i
  %48 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx4.i.i, align 4
  %neg.i.i = xor i32 %49, -1
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %47, i32 noundef %neg.i.i, i32 noundef 3, i32 noundef %mul.i.i) #8
  %inc.i.i = add nuw nsw i32 %i.021.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %div19.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.ocelot_vcap_init_one.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.ocelot_vcap_init_one.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocelot_vcap_init_one.exit

ocelot_vcap_init_one.exit:                        ; preds = %for.body.i.i.ocelot_vcap_init_one.exit_crit_edge, %ocelot_vcap_detect_constants.exit.ocelot_vcap_init_one.exit_crit_edge
  %50 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %target.i, align 4
  %52 = ptrtoint ptr %tg.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tg.i.i, align 4
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %51, i32 noundef %53, i32 noundef 6, i32 noundef 0) #8
  %54 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %target.i, align 4
  %entry_count.i18 = getelementptr %struct.vcap_props, ptr %1, i32 %i.023, i32 2
  %56 = ptrtoint ptr %entry_count.i18 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %entry_count.i18, align 4
  %conv.i19 = zext i16 %57 to i32
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %55, i32 noundef %conv.i19, i32 noundef 1, i32 noundef 0) #8
  tail call fastcc void @vcap_cmd(ptr noundef %ocelot, ptr noundef %arrayidx3, i16 noundef zeroext 0, i32 noundef 4, i32 noundef 1) #8
  call fastcc void @vcap_action2cache(ptr noundef %ocelot, ptr noundef %arrayidx3, ptr noundef nonnull %data.i) #8
  %58 = ptrtoint ptr %target.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %target.i, align 4
  %action_count.i20 = getelementptr %struct.vcap_props, ptr %1, i32 %i.023, i32 5
  %60 = ptrtoint ptr %action_count.i20 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %action_count.i20, align 2
  %conv2.i = zext i16 %61 to i32
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %59, i32 noundef %conv2.i, i32 noundef 1, i32 noundef 0) #8
  tail call fastcc void @vcap_cmd(ptr noundef %ocelot, ptr noundef %arrayidx3, i16 noundef zeroext 0, i32 noundef 4, i32 noundef 6) #8
  call void @llvm.lifetime.end.p0(i64 196, ptr nonnull %data.i) #8
  %inc = add nuw nsw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %ocelot_vcap_init_one.exit.for.body_crit_edge

ocelot_vcap_init_one.exit.for.body_crit_edge:     ; preds = %ocelot_vcap_init_one.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %ocelot_vcap_init_one.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dummy_rules = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 23
  %62 = ptrtoint ptr %dummy_rules to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %dummy_rules, ptr %dummy_rules, align 4
  %prev.i21 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 23, i32 1
  %63 = ptrtoint ptr %prev.i21 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %dummy_rules, ptr %prev.i21, align 4
  %vcap_pol = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 25
  %64 = ptrtoint ptr %vcap_pol to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %vcap_pol, ptr %vcap_pol, align 4
  %prev.i22 = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 25, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i22 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %vcap_pol, ptr %prev.i22, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ocelot_write_ix(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ocelot_rmw_ix(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vcap_key_bit_set(ptr nocapture noundef readonly %vcap, ptr nocapture noundef %data, i32 noundef %field, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %keys = getelementptr inbounds %struct.vcap_props, ptr %vcap, i32 0, i32 13
  %0 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keys, align 4
  %arrayidx = getelementptr %struct.vcap_field, ptr %1, i32 %field
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %length6 = getelementptr %struct.vcap_field, ptr %1, i32 %field, i32 1
  %4 = ptrtoint ptr %length6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp7.not = icmp eq i32 %5, 1
  br i1 %cmp7.not, label %entry.for.body.i.preheader.i_crit_edge, label %if.end, !prof !27

entry.for.body.i.preheader.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i

if.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 315, i32 noundef 9, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp16.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp16.not.i.i, label %if.end.vcap_key_field_set.exit_crit_edge, label %if.end.for.body.i.preheader.i_crit_edge

if.end.for.body.i.preheader.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i

if.end.vcap_key_field_set.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_field_set.exit

for.body.i.preheader.i:                           ; preds = %if.end.for.body.i.preheader.i_crit_edge, %entry.for.body.i.preheader.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cond237.in = icmp ne i32 %val, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val)
  %cond38.in = icmp eq i32 %val, 2
  %cond38 = zext i1 %cond38.in to i32
  %key_offset.i39 = getelementptr inbounds %struct.vcap_data, ptr %data, i32 0, i32 8
  %6 = ptrtoint ptr %key_offset.i39 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %key_offset.i39, align 4
  %add.i = add i32 %7, %3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.018.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %offset.addr.017.i.i = phi i32 [ %inc5.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.i, %for.body.i.preheader.i ]
  %div15.i.i = lshr i32 %offset.addr.017.i.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %data, i32 %div15.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %rem.i.i = and i32 %offset.addr.017.i.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %shl1.i.i = shl nuw i32 1, %i.018.i.i
  %and.i.i = and i32 %shl1.i.i, %cond38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.i.i = or i32 %shl.i.i, %9
  %neg.i.i = xor i32 %shl.i.i, -1
  %and2.i.i = and i32 %9, %neg.i.i
  %v.0.i.i = select i1 %tobool.not.i.i, i32 %and2.i.i, i32 %or.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %v.0.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw i32 %i.018.i.i, 1
  %inc5.i.i = add i32 %offset.addr.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %5
  br i1 %exitcond.not.i.i, label %for.body.i28.preheader.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i28.preheader.i:                         ; preds = %for.body.i.i
  %cond237 = zext i1 %cond237.in to i32
  %mask2.i = getelementptr inbounds %struct.vcap_data, ptr %data, i32 0, i32 1
  %11 = ptrtoint ptr %key_offset.i39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key_offset.i39, align 4
  %add5.i = add i32 %12, %3
  br label %for.body.i28.i

for.body.i28.i:                                   ; preds = %for.body.i28.i.for.body.i28.i_crit_edge, %for.body.i28.preheader.i
  %i.018.i12.i = phi i32 [ %inc.i25.i, %for.body.i28.i.for.body.i28.i_crit_edge ], [ 0, %for.body.i28.preheader.i ]
  %offset.addr.017.i13.i = phi i32 [ %inc5.i26.i, %for.body.i28.i.for.body.i28.i_crit_edge ], [ %add5.i, %for.body.i28.preheader.i ]
  %div15.i14.i = lshr i32 %offset.addr.017.i13.i, 5
  %arrayidx.i15.i = getelementptr i32, ptr %mask2.i, i32 %div15.i14.i
  %13 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i15.i, align 4
  %rem.i16.i = and i32 %offset.addr.017.i13.i, 31
  %shl.i17.i = shl nuw i32 1, %rem.i16.i
  %shl1.i18.i = shl nuw i32 1, %i.018.i12.i
  %and.i19.i = and i32 %shl1.i18.i, %cond237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i)
  %tobool.not.i20.i = icmp eq i32 %and.i19.i, 0
  %or.i21.i = or i32 %shl.i17.i, %14
  %neg.i22.i = xor i32 %shl.i17.i, -1
  %and2.i23.i = and i32 %14, %neg.i22.i
  %v.0.i24.i = select i1 %tobool.not.i20.i, i32 %and2.i23.i, i32 %or.i21.i
  %15 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %v.0.i24.i, ptr %arrayidx.i15.i, align 4
  %inc.i25.i = add nuw i32 %i.018.i12.i, 1
  %inc5.i26.i = add i32 %offset.addr.017.i13.i, 1
  %exitcond.not.i27.i = icmp eq i32 %inc.i25.i, %5
  br i1 %exitcond.not.i27.i, label %for.body.i28.i.vcap_key_field_set.exit_crit_edge, label %for.body.i28.i.for.body.i28.i_crit_edge

for.body.i28.i.for.body.i28.i_crit_edge:          ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i

for.body.i28.i.vcap_key_field_set.exit_crit_edge: ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_field_set.exit

vcap_key_field_set.exit:                          ; preds = %for.body.i28.i.vcap_key_field_set.exit_crit_edge, %if.end.vcap_key_field_set.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vcap_key_bytes_set(ptr nocapture noundef readonly %vcap, ptr nocapture noundef %data, i32 noundef %field, ptr nocapture noundef readonly %val, ptr nocapture noundef readonly %msk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %keys = getelementptr inbounds %struct.vcap_props, ptr %vcap, i32 0, i32 13
  %0 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keys, align 4
  %arrayidx = getelementptr %struct.vcap_field, ptr %1, i32 %field
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %length = getelementptr %struct.vcap_field, ptr %1, i32 %field, i32 1
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  %rem = and i32 %5, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !27

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %div60 = lshr i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp61.not = icmp ult i32 %5, 8
  br i1 %cmp61.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %add = add i32 %5, %3
  %key_offset.i = getelementptr inbounds %struct.vcap_data, ptr %data, i32 0, i32 8
  %mask2.i = getelementptr inbounds %struct.vcap_data, ptr %data, i32 0, i32 1
  %umax = call i32 @llvm.umax.i32(i32 %div60, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %offset.066 = phi i32 [ %add, %for.body.lr.ph ], [ %offset.1, %for.inc.for.body_crit_edge ]
  %mask.065 = phi i32 [ 0, %for.body.lr.ph ], [ %mask.1, %for.inc.for.body_crit_edge ]
  %value.064 = phi i32 [ 0, %for.body.lr.ph ], [ %value.1, %for.inc.for.body_crit_edge ]
  %n.063 = phi i32 [ 0, %for.body.lr.ph ], [ %n.1, %for.inc.for.body_crit_edge ]
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %add33, %for.inc.for.body_crit_edge ]
  %6 = xor i32 %i.062, -1
  %sub23 = add nsw i32 %div60, %6
  %arrayidx24 = getelementptr i8, ptr %val, i32 %sub23
  %7 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx24, align 1
  %conv = zext i8 %8 to i32
  %shl = shl i32 %conv, %n.063
  %add25 = add i32 %shl, %value.064
  %arrayidx26 = getelementptr i8, ptr %msk, i32 %sub23
  %9 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx26, align 1
  %conv27 = zext i8 %10 to i32
  %shl28 = shl i32 %conv27, %n.063
  %add29 = add i32 %shl28, %mask.065
  %add30 = add i32 %n.063, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %add30)
  %cmp31 = icmp eq i32 %add30, 32
  %add33 = add nuw nsw i32 %i.062, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add33, i32 %div60)
  %cmp34 = icmp eq i32 %add33, %div60
  %or.cond = select i1 %cmp31, i1 true, i1 %cmp34
  br i1 %or.cond, label %if.then36, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then36:                                        ; preds = %for.body
  %sub37 = sub i32 %offset.066, %add30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add30)
  %cmp16.not.i.i = icmp eq i32 %add30, 0
  br i1 %cmp16.not.i.i, label %if.then36.for.inc_crit_edge, label %for.body.i.preheader.i

if.then36.for.inc_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.body.i.preheader.i:                           ; preds = %if.then36
  %11 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %key_offset.i, align 4
  %add.i = add i32 %12, %sub37
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.018.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %offset.addr.017.i.i = phi i32 [ %inc5.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.i, %for.body.i.preheader.i ]
  %div15.i.i = lshr i32 %offset.addr.017.i.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %data, i32 %div15.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %rem.i.i = and i32 %offset.addr.017.i.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %shl1.i.i = shl nuw i32 1, %i.018.i.i
  %and.i.i = and i32 %shl1.i.i, %add25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.i.i = or i32 %shl.i.i, %14
  %neg.i.i = xor i32 %shl.i.i, -1
  %and2.i.i = and i32 %14, %neg.i.i
  %v.0.i.i = select i1 %tobool.not.i.i, i32 %and2.i.i, i32 %or.i.i
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %v.0.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw i32 %i.018.i.i, 1
  %inc5.i.i = add i32 %offset.addr.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %add30
  br i1 %exitcond.not.i.i, label %for.body.i28.preheader.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i28.preheader.i:                         ; preds = %for.body.i.i
  %16 = ptrtoint ptr %key_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %key_offset.i, align 4
  %add5.i = add i32 %17, %sub37
  br label %for.body.i28.i

for.body.i28.i:                                   ; preds = %for.body.i28.i.for.body.i28.i_crit_edge, %for.body.i28.preheader.i
  %i.018.i12.i = phi i32 [ %inc.i25.i, %for.body.i28.i.for.body.i28.i_crit_edge ], [ 0, %for.body.i28.preheader.i ]
  %offset.addr.017.i13.i = phi i32 [ %inc5.i26.i, %for.body.i28.i.for.body.i28.i_crit_edge ], [ %add5.i, %for.body.i28.preheader.i ]
  %div15.i14.i = lshr i32 %offset.addr.017.i13.i, 5
  %arrayidx.i15.i = getelementptr i32, ptr %mask2.i, i32 %div15.i14.i
  %18 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i15.i, align 4
  %rem.i16.i = and i32 %offset.addr.017.i13.i, 31
  %shl.i17.i = shl nuw i32 1, %rem.i16.i
  %shl1.i18.i = shl nuw i32 1, %i.018.i12.i
  %and.i19.i = and i32 %shl1.i18.i, %add29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i)
  %tobool.not.i20.i = icmp eq i32 %and.i19.i, 0
  %or.i21.i = or i32 %shl.i17.i, %19
  %neg.i22.i = xor i32 %shl.i17.i, -1
  %and2.i23.i = and i32 %19, %neg.i22.i
  %v.0.i24.i = select i1 %tobool.not.i20.i, i32 %and2.i23.i, i32 %or.i21.i
  %20 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %v.0.i24.i, ptr %arrayidx.i15.i, align 4
  %inc.i25.i = add nuw i32 %i.018.i12.i, 1
  %inc5.i26.i = add i32 %offset.addr.017.i13.i, 1
  %exitcond.not.i27.i = icmp eq i32 %inc.i25.i, %add30
  br i1 %exitcond.not.i27.i, label %for.body.i28.i.for.inc_crit_edge, label %for.body.i28.i.for.body.i28.i_crit_edge

for.body.i28.i.for.body.i28.i_crit_edge:          ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i

for.body.i28.i.for.inc_crit_edge:                 ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %for.body.i28.i.for.inc_crit_edge, %if.then36.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %n.1 = phi i32 [ %add30, %for.body.for.inc_crit_edge ], [ 0, %if.then36.for.inc_crit_edge ], [ 0, %for.body.i28.i.for.inc_crit_edge ]
  %value.1 = phi i32 [ %add25, %for.body.for.inc_crit_edge ], [ 0, %if.then36.for.inc_crit_edge ], [ 0, %for.body.i28.i.for.inc_crit_edge ]
  %mask.1 = phi i32 [ %add29, %for.body.for.inc_crit_edge ], [ 0, %if.then36.for.inc_crit_edge ], [ 0, %for.body.i28.i.for.inc_crit_edge ]
  %offset.1 = phi i32 [ %offset.066, %for.body.for.inc_crit_edge ], [ %sub37, %if.then36.for.inc_crit_edge ], [ %sub37, %for.body.i28.i.for.inc_crit_edge ]
  %exitcond.not = icmp eq i32 %add33, %umax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vcap_key_l4_port_set(ptr nocapture noundef readonly %vcap, ptr nocapture noundef %data, i32 noundef %field, ptr nocapture noundef readonly %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %keys = getelementptr inbounds %struct.vcap_props, ptr %vcap, i32 0, i32 13
  %0 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %keys, align 4
  %arrayidx = getelementptr %struct.vcap_field, ptr %1, i32 %field
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %length4 = getelementptr %struct.vcap_field, ptr %1, i32 %field, i32 1
  %4 = ptrtoint ptr %length4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp.not = icmp eq i32 %5, 16
  br i1 %cmp.not, label %entry.for.body.i.preheader.i_crit_edge, label %if.end, !prof !27

entry.for.body.i.preheader.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i

if.end:                                           ; preds = %entry
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 301, i32 noundef 9, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp16.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp16.not.i.i, label %if.end.vcap_key_field_set.exit_crit_edge, label %if.end.for.body.i.preheader.i_crit_edge

if.end.for.body.i.preheader.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.preheader.i

if.end.vcap_key_field_set.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_field_set.exit

for.body.i.preheader.i:                           ; preds = %if.end.for.body.i.preheader.i_crit_edge, %entry.for.body.i.preheader.i_crit_edge
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load2_noabort(i32 %6)
  %conv34.in = load i16, ptr %port, align 2
  %conv34 = zext i16 %conv34.in to i32
  %conv2335.in.in = getelementptr inbounds %struct.ocelot_vcap_udp_tcp, ptr %port, i32 0, i32 1
  %7 = ptrtoint ptr %conv2335.in.in to i32
  call void @__asan_load2_noabort(i32 %7)
  %conv2335.in = load i16, ptr %conv2335.in.in, align 2
  %key_offset.i36 = getelementptr inbounds %struct.vcap_data, ptr %data, i32 0, i32 8
  %8 = ptrtoint ptr %key_offset.i36 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %key_offset.i36, align 4
  %add.i = add i32 %9, %3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.preheader.i
  %i.018.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.i.preheader.i ]
  %offset.addr.017.i.i = phi i32 [ %inc5.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %add.i, %for.body.i.preheader.i ]
  %div15.i.i = lshr i32 %offset.addr.017.i.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %data, i32 %div15.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %rem.i.i = and i32 %offset.addr.017.i.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %shl1.i.i = shl nuw i32 1, %i.018.i.i
  %and.i.i = and i32 %shl1.i.i, %conv34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %or.i.i = or i32 %shl.i.i, %11
  %neg.i.i = xor i32 %shl.i.i, -1
  %and2.i.i = and i32 %11, %neg.i.i
  %v.0.i.i = select i1 %tobool.not.i.i, i32 %and2.i.i, i32 %or.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %v.0.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw i32 %i.018.i.i, 1
  %inc5.i.i = add i32 %offset.addr.017.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %5
  br i1 %exitcond.not.i.i, label %for.body.i28.preheader.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i28.preheader.i:                         ; preds = %for.body.i.i
  %conv2335 = zext i16 %conv2335.in to i32
  %mask2.i = getelementptr inbounds %struct.vcap_data, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %key_offset.i36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %key_offset.i36, align 4
  %add5.i = add i32 %14, %3
  br label %for.body.i28.i

for.body.i28.i:                                   ; preds = %for.body.i28.i.for.body.i28.i_crit_edge, %for.body.i28.preheader.i
  %i.018.i12.i = phi i32 [ %inc.i25.i, %for.body.i28.i.for.body.i28.i_crit_edge ], [ 0, %for.body.i28.preheader.i ]
  %offset.addr.017.i13.i = phi i32 [ %inc5.i26.i, %for.body.i28.i.for.body.i28.i_crit_edge ], [ %add5.i, %for.body.i28.preheader.i ]
  %div15.i14.i = lshr i32 %offset.addr.017.i13.i, 5
  %arrayidx.i15.i = getelementptr i32, ptr %mask2.i, i32 %div15.i14.i
  %15 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i15.i, align 4
  %rem.i16.i = and i32 %offset.addr.017.i13.i, 31
  %shl.i17.i = shl nuw i32 1, %rem.i16.i
  %shl1.i18.i = shl nuw i32 1, %i.018.i12.i
  %and.i19.i = and i32 %shl1.i18.i, %conv2335
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i19.i)
  %tobool.not.i20.i = icmp eq i32 %and.i19.i, 0
  %or.i21.i = or i32 %shl.i17.i, %16
  %neg.i22.i = xor i32 %shl.i17.i, -1
  %and2.i23.i = and i32 %16, %neg.i22.i
  %v.0.i24.i = select i1 %tobool.not.i20.i, i32 %and2.i23.i, i32 %or.i21.i
  %17 = ptrtoint ptr %arrayidx.i15.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %v.0.i24.i, ptr %arrayidx.i15.i, align 4
  %inc.i25.i = add nuw i32 %i.018.i12.i, 1
  %inc5.i26.i = add i32 %offset.addr.017.i13.i, 1
  %exitcond.not.i27.i = icmp eq i32 %inc.i25.i, %5
  br i1 %exitcond.not.i27.i, label %for.body.i28.i.vcap_key_field_set.exit_crit_edge, label %for.body.i28.i.for.body.i28.i_crit_edge

for.body.i28.i.for.body.i28.i_crit_edge:          ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i28.i

for.body.i28.i.vcap_key_field_set.exit_crit_edge: ; preds = %for.body.i28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vcap_key_field_set.exit

vcap_key_field_set.exit:                          ; preds = %for.body.i28.i.vcap_key_field_set.exit_crit_edge, %if.end.vcap_key_field_set.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vcap_action2cache(ptr noundef %ocelot, ptr nocapture noundef readonly %vcap, ptr nocapture noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %action_type_width = getelementptr inbounds %struct.vcap_props, ptr %vcap, i32 0, i32 8
  %0 = ptrtoint ptr %action_type_width to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %action_type_width, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %1 to i32
  %sub = sub nsw i32 31, %conv
  %shr = lshr i32 -1, %sub
  %action = getelementptr inbounds %struct.vcap_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %action, align 4
  %neg = xor i32 %shr, -1
  %and1 = and i32 %3, %neg
  %type = getelementptr inbounds %struct.vcap_data, ptr %data, i32 0, i32 5
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %or = or i32 %and1, %5
  store i32 %or, ptr %action, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %action_width = getelementptr inbounds %struct.vcap_props, ptr %vcap, i32 0, i32 7
  %6 = ptrtoint ptr %action_width to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %action_width, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp39.not = icmp eq i16 %7, 0
  br i1 %cmp39.not, label %if.end.for.cond10.preheader_crit_edge, label %for.body.lr.ph

if.end.for.cond10.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond10.preheader

for.body.lr.ph:                                   ; preds = %if.end
  %conv4 = zext i16 %7 to i32
  %sub6 = add nuw nsw i32 %conv4, 31
  %div38 = lshr i32 %sub6, 5
  %target = getelementptr inbounds %struct.vcap_props, ptr %vcap, i32 0, i32 12
  br label %for.body

for.cond10.preheader:                             ; preds = %for.body.for.cond10.preheader_crit_edge, %if.end.for.cond10.preheader_crit_edge
  %counter_words = getelementptr inbounds %struct.vcap_props, ptr %vcap, i32 0, i32 10
  %8 = ptrtoint ptr %counter_words to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %counter_words, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp1242.not = icmp eq i16 %9, 0
  br i1 %cmp1242.not, label %for.cond10.preheader.for.end20_crit_edge, label %for.body14.lr.ph

for.cond10.preheader.for.end20_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end20

for.body14.lr.ph:                                 ; preds = %for.cond10.preheader
  %target15 = getelementptr inbounds %struct.vcap_props, ptr %vcap, i32 0, i32 12
  br label %for.body14

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %target, align 4
  %arrayidx9 = getelementptr %struct.vcap_data, ptr %data, i32 0, i32 2, i32 %i.040
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx9, align 4
  %mul = shl i32 %i.040, 2
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %11, i32 noundef %13, i32 noundef 4, i32 noundef %mul) #8
  %inc = add nuw nsw i32 %i.040, 1
  %exitcond.not = icmp eq i32 %inc, %div38
  br i1 %exitcond.not, label %for.body.for.cond10.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.cond10.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond10.preheader

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.lr.ph
  %i.143 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc19, %for.body14.for.body14_crit_edge ]
  %14 = ptrtoint ptr %target15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %target15, align 4
  %arrayidx16 = getelementptr %struct.vcap_data, ptr %data, i32 0, i32 3, i32 %i.143
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx16, align 4
  %mul17 = shl i32 %i.143, 2
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %15, i32 noundef %17, i32 noundef 5, i32 noundef %mul17) #8
  %inc19 = add nuw nsw i32 %i.143, 1
  %18 = ptrtoint ptr %counter_words to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %counter_words, align 2
  %conv11 = zext i16 %19 to i32
  %cmp12 = icmp ult i32 %inc19, %conv11
  br i1 %cmp12, label %for.body14.for.body14_crit_edge, label %for.body14.for.end20_crit_edge

for.body14.for.end20_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end20

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14

for.end20:                                        ; preds = %for.body14.for.end20_crit_edge, %for.cond10.preheader.for.end20_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vcap_cmd(ptr noundef %ocelot, ptr nocapture noundef readonly %vcap, i16 noundef zeroext %ix, i32 noundef %cmd, i32 noundef %sel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %cmd, 22
  %and = and i32 %shl, 29360128
  %conv = zext i16 %ix to i32
  %shl1 = shl nuw nsw i32 %conv, 3
  %or = or i32 %and, %shl1
  %and4 = and i32 %sel, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %entry_count = getelementptr inbounds %struct.vcap_props, ptr %vcap, i32 0, i32 2
  %0 = ptrtoint ptr %entry_count to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %entry_count, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %ix)
  %cmp.not = icmp ugt i16 %1, %ix
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %spec.select.v = phi i32 [ 4, %land.lhs.true.if.end_crit_edge ], [ 2097156, %entry.if.end_crit_edge ]
  %spec.select = or i32 %spec.select.v, %or
  %and13 = shl i32 %sel, 19
  %2 = and i32 %and13, 1048576
  %3 = or i32 %spec.select, %2
  %and18 = shl i32 %sel, 17
  %4 = and i32 %and18, 524288
  %5 = or i32 %3, %4
  %6 = xor i32 %5, 1572864
  %target = getelementptr inbounds %struct.vcap_props, ptr %vcap, i32 0, i32 12
  %7 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %target, align 4
  tail call void @__ocelot_target_write_ix(ptr noundef %ocelot, i32 noundef %8, i32 noundef %6, i32 noundef 0, i32 noundef 0) #8
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 100000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 78) #8
  %9 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %target, align 4
  %call.i75 = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %10, i32 noundef 0, i32 noundef 0) #8
  %and3576 = and i32 %call.i75, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3576)
  %cmp3677 = icmp eq i32 %and3576, 0
  br i1 %cmp3677, label %if.end.cleanup_crit_edge, label %if.end.land.lhs.true41_crit_edge

if.end.land.lhs.true41_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true41

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true41:                                  ; preds = %if.then50.land.lhs.true41_crit_edge, %if.end.land.lhs.true41_crit_edge
  %call42 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call42, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call42, %add.i
  br i1 %cmp3.i, label %if.then46, label %if.then50

if.then46:                                        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %target, align 4
  %call.i74 = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %12, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

if.then50:                                        ; preds = %land.lhs.true41
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #8
  %13 = ptrtoint ptr %target to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %target, align 4
  %call.i = tail call i32 @__ocelot_target_read_ix(ptr noundef %ocelot, i32 noundef %14, i32 noundef 0, i32 noundef 0) #8
  %and35 = and i32 %call.i, 4
  %cmp36 = icmp eq i32 %and35, 0
  br i1 %cmp36, label %if.then50.cleanup_crit_edge, label %if.then50.land.lhs.true41_crit_edge

if.then50.land.lhs.true41_crit_edge:              ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true41

if.then50.cleanup_crit_edge:                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.then50.cleanup_crit_edge, %if.then46, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ocelot_target_write_ix(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ocelot_target_read_ix(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind readonly willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__ksymtab_ocelot_vcap_policer_add, !1, !"__ksymtab_ocelot_vcap_policer_add", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mscc/ocelot_vcap.c", i32 932, i32 1}
!2 = !{ptr @__ksymtab_ocelot_vcap_policer_del, !3, !"__ksymtab_ocelot_vcap_policer_del", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mscc/ocelot_vcap.c", i32 956, i32 1}
!4 = !{ptr @__ksymtab_ocelot_vcap_block_find_filter_by_id, !5, !"__ksymtab_ocelot_vcap_block_find_filter_by_id", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mscc/ocelot_vcap.c", i32 1040, i32 1}
!6 = !{ptr @ocelot_vcap_filter_add.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mscc/ocelot_vcap.c", i32 1165, i32 3}
!8 = !{ptr @__ksymtab_ocelot_vcap_filter_add, !9, !"__ksymtab_ocelot_vcap_filter_add", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mscc/ocelot_vcap.c", i32 1192, i32 1}
!10 = !{ptr @__ksymtab_ocelot_vcap_filter_del, !11, !"__ksymtab_ocelot_vcap_filter_del", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mscc/ocelot_vcap.c", i32 1247, i32 1}
!12 = !{ptr @__ksymtab_ocelot_vcap_filter_replace, !13, !"__ksymtab_ocelot_vcap_filter_replace", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/mscc/ocelot_vcap.c", i32 1263, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/mscc/ocelot_vcap.c", i32 76, i32 2}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2148260092, i64 2148260124, i64 2148260153, i64 2148260187, i64 2148260218, i64 2148260241}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{i64 2148348093}
!29 = !{i64 2148262557, i64 2148262589, i64 2148262618, i64 2148262652, i64 2148262683, i64 2148262706}
!30 = !{i64 2149679559}
!31 = !{i8 0, i8 2}
