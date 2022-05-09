; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/mscc/ocelot_mrp.c_pt.bc'
source_filename = "../drivers/net/ethernet/mscc/ocelot_mrp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ocelot_mrp_add\22, \22a\22\09"
module asm "\09.weak\09__crc_ocelot_mrp_add\09\09\09\09"
module asm "\09.long\09__crc_ocelot_mrp_add\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocelot_mrp_add:\09\09\09\09\09"
module asm "\09.asciz \09\22ocelot_mrp_add\22\09\09\09\09\09"
module asm "__kstrtabns_ocelot_mrp_add:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ocelot_mrp_del\22, \22a\22\09"
module asm "\09.weak\09__crc_ocelot_mrp_del\09\09\09\09"
module asm "\09.long\09__crc_ocelot_mrp_del\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocelot_mrp_del:\09\09\09\09\09"
module asm "\09.asciz \09\22ocelot_mrp_del\22\09\09\09\09\09"
module asm "__kstrtabns_ocelot_mrp_del:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ocelot_mrp_add_ring_role\22, \22a\22\09"
module asm "\09.weak\09__crc_ocelot_mrp_add_ring_role\09\09\09\09"
module asm "\09.long\09__crc_ocelot_mrp_add_ring_role\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocelot_mrp_add_ring_role:\09\09\09\09\09"
module asm "\09.asciz \09\22ocelot_mrp_add_ring_role\22\09\09\09\09\09"
module asm "__kstrtabns_ocelot_mrp_add_ring_role:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ocelot_mrp_del_ring_role\22, \22a\22\09"
module asm "\09.weak\09__crc_ocelot_mrp_del_ring_role\09\09\09\09"
module asm "\09.long\09__crc_ocelot_mrp_del_ring_role\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ocelot_mrp_del_ring_role:\09\09\09\09\09"
module asm "\09.asciz \09\22ocelot_mrp_del_ring_role\22\09\09\09\09\09"
module asm "__kstrtabns_ocelot_mrp_del_ring_role:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.ocelot_port_private = type { %struct.ocelot_port, ptr, ptr, %struct.phylink_config, i8, %struct.ocelot_port_tc }
%struct.ocelot_port = type { ptr, ptr, i8, ptr, i32, i8, %struct.sk_buff_head, i8, i32, ptr, i8, i8, ptr, i8, i16, ptr, i8, i32 }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.phylink_config = type { ptr, i32, i8, i8, i8, i8, ptr, [1 x i32], i32 }
%struct.ocelot_port_tc = type { i8, i32, i32 }
%struct.switchdev_obj_mrp = type { %struct.switchdev_obj, ptr, ptr, i32, i16 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.switchdev_obj_ring_role_mrp = type { %struct.switchdev_obj, i8, i32, i8 }
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
%struct.anon.172 = type { i8, i8, i32, i32, i8, %struct.ocelot_policer, i32 }
%struct.ocelot_policer = type { i32, i32 }

@__kstrtab_ocelot_mrp_add = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocelot_mrp_add = external dso_local constant [0 x i8], align 1
@__ksymtab_ocelot_mrp_add = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocelot_mrp_add to i32), ptr @__kstrtab_ocelot_mrp_add, ptr @__kstrtabns_ocelot_mrp_add }, section "___ksymtab+ocelot_mrp_add", align 4
@__kstrtab_ocelot_mrp_del = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocelot_mrp_del = external dso_local constant [0 x i8], align 1
@__ksymtab_ocelot_mrp_del = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocelot_mrp_del to i32), ptr @__kstrtab_ocelot_mrp_del, ptr @__kstrtabns_ocelot_mrp_del }, section "___ksymtab+ocelot_mrp_del", align 4
@__kstrtab_ocelot_mrp_add_ring_role = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocelot_mrp_add_ring_role = external dso_local constant [0 x i8], align 1
@__ksymtab_ocelot_mrp_add_ring_role = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocelot_mrp_add_ring_role to i32), ptr @__kstrtab_ocelot_mrp_add_ring_role, ptr @__kstrtabns_ocelot_mrp_add_ring_role }, section "___ksymtab+ocelot_mrp_add_ring_role", align 4
@__kstrtab_ocelot_mrp_del_ring_role = external dso_local constant [0 x i8], align 1
@__kstrtabns_ocelot_mrp_del_ring_role = external dso_local constant [0 x i8], align 1
@__ksymtab_ocelot_mrp_del_ring_role = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ocelot_mrp_del_ring_role to i32), ptr @__kstrtab_ocelot_mrp_del_ring_role, ptr @__kstrtabns_ocelot_mrp_del_ring_role }, section "___ksymtab+ocelot_mrp_del_ring_role", align 4
@mrp_test_dmac = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\15N\00\00\01", [26 x i8] zeroinitializer }, align 32
@mrp_control_dmac = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\15N\00\00\02", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"mrp_test_dmac\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 15, i32 17 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"mrp_control_dmac\00", align 1
@___asan_gen_.5 = private constant [42 x i8] c"../drivers/net/ethernet/mscc/ocelot_mrp.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 16, i32 17 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__ksymtab_ocelot_mrp_add, ptr @__ksymtab_ocelot_mrp_add_ring_role, ptr @__ksymtab_ocelot_mrp_del, ptr @__ksymtab_ocelot_mrp_del_ring_role, ptr @mrp_test_dmac, ptr @mrp_control_dmac], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrp_test_dmac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mrp_control_dmac to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ocelot_mrp_add(ptr nocapture noundef readonly %ocelot, i32 noundef %port, ptr nocapture noundef readonly %mrp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 13
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.ocelot_port_private, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %p_port = getelementptr inbounds %struct.switchdev_obj_mrp, ptr %mrp, i32 0, i32 1
  %6 = ptrtoint ptr %p_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p_port, align 4
  %cmp.not = icmp eq ptr %7, %5
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %s_port = getelementptr inbounds %struct.switchdev_obj_mrp, ptr %mrp, i32 0, i32 2
  %8 = ptrtoint ptr %s_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %s_port, align 4
  %cmp2.not = icmp eq ptr %9, %5
  br i1 %cmp2.not, label %land.lhs.true.if.end4_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %ring_id = getelementptr inbounds %struct.switchdev_obj_mrp, ptr %mrp, i32 0, i32 3
  %10 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ring_id, align 4
  %conv = trunc i32 %11 to i16
  %mrp_ring_id = getelementptr inbounds %struct.ocelot_port, ptr %3, i32 0, i32 14
  %12 = ptrtoint ptr %mrp_ring_id to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %mrp_ring_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @ocelot_mrp_del(ptr nocapture noundef readonly %ocelot, i32 noundef %port, ptr nocapture noundef readonly %mrp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 13
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %mrp_ring_id = getelementptr inbounds %struct.ocelot_port, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %mrp_ring_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mrp_ring_id, align 2
  %conv = zext i16 %5 to i32
  %ring_id = getelementptr inbounds %struct.switchdev_obj_mrp, ptr %mrp, i32 0, i32 3
  %6 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ring_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp.not = icmp eq i32 %7, %conv
  br i1 %cmp.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %mrp_ring_id to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %mrp_ring_id, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_mrp_add_ring_role(ptr noundef %ocelot, i32 noundef %port, ptr nocapture noundef readonly %mrp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 13
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ring_role = getelementptr inbounds %struct.switchdev_obj_ring_role_mrp, ptr %mrp, i32 0, i32 1
  %4 = ptrtoint ptr %ring_role to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ring_role, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not = icmp eq i8 %5, 1
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %sw_backup = getelementptr inbounds %struct.switchdev_obj_ring_role_mrp, ptr %mrp, i32 0, i32 3
  %6 = ptrtoint ptr %sw_backup to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sw_backup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %mrp_ring_id = getelementptr inbounds %struct.ocelot_port, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %mrp_ring_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mrp_ring_id, align 2
  %conv5 = zext i16 %9 to i32
  %ring_id = getelementptr inbounds %struct.switchdev_obj_ring_role_mrp, ptr %mrp, i32 0, i32 2
  %10 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ring_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv5)
  %cmp6.not = icmp eq i32 %11, %conv5
  br i1 %cmp6.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call.i = tail call i32 @ocelot_mact_learn(ptr noundef %ocelot, i32 noundef 57, ptr noundef nonnull @mrp_test_dmac, i32 noundef 0, i32 noundef 1) #4
  %call1.i = tail call i32 @ocelot_mact_learn(ptr noundef %ocelot, i32 noundef 57, ptr noundef nonnull @mrp_control_dmac, i32 noundef 0, i32 noundef 1) #4
  %12 = ptrtoint ptr %ring_role to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ring_role, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp12.not = icmp eq i8 %13, 1
  br i1 %cmp12.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 272) #7
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then14.cleanup_crit_edge, label %if.end.i

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i:                                         ; preds = %if.then14
  %key_type.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 16
  %15 = ptrtoint ptr %key_type.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %key_type.i, align 8
  %prio1.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %prio1.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %prio1.i, align 2
  %id.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 7
  %17 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %port, ptr %id.i, align 4
  %tc_offload.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %tc_offload.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %tc_offload.i, align 8
  %block_id.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %block_id.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %block_id.i, align 4
  %type.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %type.i, align 8
  %shl.i = shl nuw i32 1, %port
  %ingress_port_mask.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 10
  %21 = ptrtoint ptr %ingress_port_mask.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl.i, ptr %ingress_port_mask.i, align 8
  %key.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17
  %22 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 18173440, ptr %key.i, align 4
  %add.ptr1.i.i = getelementptr %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %add.ptr1.i.i, align 8
  %mask.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 0, i32 4
  %24 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %mask.i, align 4
  %add.ptr1.i33.i = getelementptr %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8
  %25 = ptrtoint ptr %add.ptr1.i33.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 -256, ptr %add.ptr1.i33.i, align 2
  %action.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8
  %mask_mode.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 1
  %26 = ptrtoint ptr %mask_mode.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %mask_mode.i, align 8
  %port_mask.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i, i32 0, i32 8, i32 0, i32 0, i32 2
  %27 = ptrtoint ptr %port_mask.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %port_mask.i, align 4
  %28 = ptrtoint ptr %action.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %action.i, align 4
  %cpu_qu_num.i = getelementptr inbounds %struct.anon.172, ptr %action.i, i32 0, i32 1
  %29 = ptrtoint ptr %cpu_qu_num.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 7, ptr %cpu_qu_num.i, align 1
  %call11.i = tail call i32 @ocelot_vcap_filter_add(ptr noundef %ocelot, ptr noundef nonnull %call7.i.i.i, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end.i.cleanup_crit_edge, label %if.then13.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then13.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #4
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %num_phys_ports.i = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 17
  %30 = ptrtoint ptr %num_phys_ports.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %num_phys_ports.i, align 4
  %conv.i = zext i8 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp22.not.i = icmp eq i8 %31, 0
  br i1 %cmp22.not.i, label %if.end15.cleanup_crit_edge, label %for.body.lr.ph.i

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end15
  %32 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ports, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.023.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr ptr, ptr %33, i32 %i.023.i
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i56 = icmp eq ptr %35, null
  %cmp2.i = icmp eq ptr %35, %3
  %or.cond.i = or i1 %tobool.not.i56, %cmp2.i
  br i1 %or.cond.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i57

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end.i57:                                       ; preds = %for.body.i
  %mrp_ring_id.i = getelementptr inbounds %struct.ocelot_port, ptr %35, i32 0, i32 14
  %36 = ptrtoint ptr %mrp_ring_id.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %mrp_ring_id.i, align 2
  %38 = ptrtoint ptr %mrp_ring_id to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mrp_ring_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %39)
  %cmp7.i = icmp eq i16 %37, %39
  br i1 %cmp7.i, label %if.end20, label %if.end.i57.for.inc.i_crit_edge

if.end.i57.for.inc.i_crit_edge:                   ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i57.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end.i57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %40 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i58 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 272) #7
  %tobool.not.i59 = icmp eq ptr %call7.i.i.i58, null
  br i1 %tobool.not.i59, label %if.end20.cleanup_crit_edge, label %if.end.i72

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i72:                                       ; preds = %if.end20
  %key_type.i60 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i58, i32 0, i32 16
  %41 = ptrtoint ptr %key_type.i60 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %key_type.i60, align 8
  %prio.i = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i58, i32 0, i32 6
  %42 = ptrtoint ptr %prio.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %prio.i, align 2
  %id.i61 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i58, i32 0, i32 7
  %43 = ptrtoint ptr %id.i61 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %port, ptr %id.i61, align 4
  %tc_offload.i62 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i58, i32 0, i32 7, i32 1
  %44 = ptrtoint ptr %tc_offload.i62 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %tc_offload.i62, align 8
  %block_id.i63 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i58, i32 0, i32 2
  %45 = ptrtoint ptr %block_id.i63 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %block_id.i63, align 4
  %type.i64 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i58, i32 0, i32 1
  %46 = ptrtoint ptr %type.i64 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 2, ptr %type.i64, align 8
  %shl.i65 = shl nuw i32 1, %port
  %ingress_port_mask.i66 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i58, i32 0, i32 10
  %47 = ptrtoint ptr %ingress_port_mask.i66 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %shl.i65, ptr %ingress_port_mask.i66, align 8
  %key.i67 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i58, i32 0, i32 17
  %48 = ptrtoint ptr %key.i67 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 18173440, ptr %key.i67, align 4
  %add.ptr1.i.i68 = getelementptr %struct.ocelot_vcap_filter, ptr %call7.i.i.i58, i32 0, i32 17, i32 0, i32 1, i32 0, i32 2
  %49 = ptrtoint ptr %add.ptr1.i.i68 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %add.ptr1.i.i68, align 8
  %mask.i69 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i58, i32 0, i32 17, i32 0, i32 1, i32 0, i32 4
  %50 = ptrtoint ptr %mask.i69 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %mask.i69, align 4
  %add.ptr1.i29.i = getelementptr %struct.ocelot_vcap_filter, ptr %call7.i.i.i58, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8
  %51 = ptrtoint ptr %add.ptr1.i29.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -1, ptr %add.ptr1.i29.i, align 2
  %mask_mode.i70 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i58, i32 0, i32 8, i32 0, i32 0, i32 1
  %52 = ptrtoint ptr %mask_mode.i70 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %mask_mode.i70, align 8
  %shl6.i = shl nuw i32 1, %i.023.i
  %port_mask.i71 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i58, i32 0, i32 8, i32 0, i32 0, i32 2
  %53 = ptrtoint ptr %port_mask.i71 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shl6.i, ptr %port_mask.i71, align 4
  %call8.i = tail call i32 @ocelot_vcap_filter_add(ptr noundef %ocelot, ptr noundef nonnull %call7.i.i.i58, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end24, label %if.then10.i

if.then10.i:                                      ; preds = %if.end.i72
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i58) #4
  br label %cleanup

if.end24:                                         ; preds = %if.end.i72
  %54 = ptrtoint ptr %num_phys_ports.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_phys_ports.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i74 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 272) #7
  %tobool.not.i75 = icmp eq ptr %call7.i.i.i74, null
  br i1 %tobool.not.i75, label %if.end24.if.then28_crit_edge, label %if.end.i94

if.end24.if.then28_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then28

if.end.i94:                                       ; preds = %if.end24
  %conv25 = zext i8 %55 to i32
  %add = add i32 %conv25, %port
  %key_type.i76 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i74, i32 0, i32 16
  %57 = ptrtoint ptr %key_type.i76 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 1, ptr %key_type.i76, align 8
  %prio1.i77 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i74, i32 0, i32 6
  %58 = ptrtoint ptr %prio1.i77 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 2, ptr %prio1.i77, align 2
  %id.i78 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i74, i32 0, i32 7
  %59 = ptrtoint ptr %id.i78 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add, ptr %id.i78, align 4
  %tc_offload.i79 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i74, i32 0, i32 7, i32 1
  %60 = ptrtoint ptr %tc_offload.i79 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %tc_offload.i79, align 8
  %block_id.i80 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i74, i32 0, i32 2
  %61 = ptrtoint ptr %block_id.i80 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %block_id.i80, align 4
  %type.i81 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i74, i32 0, i32 1
  %62 = ptrtoint ptr %type.i81 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %type.i81, align 8
  %ingress_port_mask.i83 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i74, i32 0, i32 10
  %63 = ptrtoint ptr %ingress_port_mask.i83 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %shl.i65, ptr %ingress_port_mask.i83, align 8
  %key.i84 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i74, i32 0, i32 17
  %64 = ptrtoint ptr %key.i84 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 18173440, ptr %key.i84, align 4
  %add.ptr1.i.i85 = getelementptr %struct.ocelot_vcap_filter, ptr %call7.i.i.i74, i32 0, i32 17, i32 0, i32 1, i32 0, i32 2
  %65 = ptrtoint ptr %add.ptr1.i.i85 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 1, ptr %add.ptr1.i.i85, align 8
  %mask.i86 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i74, i32 0, i32 17, i32 0, i32 1, i32 0, i32 4
  %66 = ptrtoint ptr %mask.i86 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %mask.i86, align 4
  %add.ptr1.i33.i87 = getelementptr %struct.ocelot_vcap_filter, ptr %call7.i.i.i74, i32 0, i32 17, i32 0, i32 1, i32 0, i32 8
  %67 = ptrtoint ptr %add.ptr1.i33.i87 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 -256, ptr %add.ptr1.i33.i87, align 2
  %action.i88 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i74, i32 0, i32 8
  %mask_mode.i89 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i74, i32 0, i32 8, i32 0, i32 0, i32 1
  %68 = ptrtoint ptr %mask_mode.i89 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %mask_mode.i89, align 8
  %port_mask.i90 = getelementptr inbounds %struct.ocelot_vcap_filter, ptr %call7.i.i.i74, i32 0, i32 8, i32 0, i32 0, i32 2
  %69 = ptrtoint ptr %port_mask.i90 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %port_mask.i90, align 4
  %70 = ptrtoint ptr %action.i88 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %action.i88, align 4
  %cpu_qu_num.i91 = getelementptr inbounds %struct.anon.172, ptr %action.i88, i32 0, i32 1
  %71 = ptrtoint ptr %cpu_qu_num.i91 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 7, ptr %cpu_qu_num.i91, align 1
  %call11.i92 = tail call i32 @ocelot_vcap_filter_add(ptr noundef %ocelot, ptr noundef nonnull %call7.i.i.i74, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i92)
  %tobool12.not.i93 = icmp eq i32 %call11.i92, 0
  br i1 %tobool12.not.i93, label %if.end.i94.cleanup_crit_edge, label %if.then13.i95

if.end.i94.cleanup_crit_edge:                     ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then13.i95:                                    ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i74) #4
  br label %if.then28

if.then28:                                        ; preds = %if.then13.i95, %if.end24.if.then28_crit_edge
  %retval.0.i96.ph = phi i32 [ %call11.i92, %if.then13.i95 ], [ -12, %if.end24.if.then28_crit_edge ]
  tail call fastcc void @ocelot_mrp_del_vcap(ptr noundef %ocelot, i32 noundef %port)
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end.i94.cleanup_crit_edge, %if.then10.i, %if.end20.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.then13.i, %if.end.i.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i96.ph, %if.then28 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -12, %if.then14.cleanup_crit_edge ], [ %call11.i, %if.then13.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end.i94.cleanup_crit_edge ], [ -22, %if.end15.cleanup_crit_edge ], [ %call8.i, %if.then10.i ], [ -12, %if.end20.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ocelot_mrp_del_vcap(ptr noundef %ocelot, i32 noundef %id) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 24, i32 2
  %call = tail call ptr @ocelot_vcap_block_find_filter_by_id(ptr noundef %arrayidx, i32 noundef %id, i1 noundef zeroext false) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @ocelot_vcap_filter_del(ptr noundef %ocelot, ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocelot_mrp_del_ring_role(ptr noundef %ocelot, i32 noundef %port, ptr nocapture noundef readonly %mrp) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 13
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ring_role = getelementptr inbounds %struct.switchdev_obj_ring_role_mrp, ptr %mrp, i32 0, i32 1
  %4 = ptrtoint ptr %ring_role to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ring_role, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp.not = icmp eq i8 %5, 1
  br i1 %cmp.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %sw_backup = getelementptr inbounds %struct.switchdev_obj_ring_role_mrp, ptr %mrp, i32 0, i32 3
  %6 = ptrtoint ptr %sw_backup to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sw_backup, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not = icmp eq i8 %7, 0
  br i1 %tobool2.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %mrp_ring_id = getelementptr inbounds %struct.ocelot_port, ptr %3, i32 0, i32 14
  %8 = ptrtoint ptr %mrp_ring_id to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %mrp_ring_id, align 2
  %conv5 = zext i16 %9 to i32
  %ring_id = getelementptr inbounds %struct.switchdev_obj_ring_role_mrp, ptr %mrp, i32 0, i32 2
  %10 = ptrtoint ptr %ring_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ring_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %conv5)
  %cmp6.not = icmp eq i32 %11, %conv5
  br i1 %cmp6.not, label %if.end9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %arrayidx.i = getelementptr %struct.ocelot, ptr %ocelot, i32 0, i32 24, i32 2
  %call.i = tail call ptr @ocelot_vcap_block_find_filter_by_id(ptr noundef %arrayidx.i, i32 noundef %port, i1 noundef zeroext false) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end9.ocelot_mrp_del_vcap.exit_crit_edge, label %if.end.i

if.end9.ocelot_mrp_del_vcap.exit_crit_edge:       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_mrp_del_vcap.exit

if.end.i:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call i32 @ocelot_vcap_filter_del(ptr noundef %ocelot, ptr noundef nonnull %call.i) #4
  br label %ocelot_mrp_del_vcap.exit

ocelot_mrp_del_vcap.exit:                         ; preds = %if.end.i, %if.end9.ocelot_mrp_del_vcap.exit_crit_edge
  %num_phys_ports = getelementptr inbounds %struct.ocelot, ptr %ocelot, i32 0, i32 17
  %12 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_phys_ports, align 4
  %conv10 = zext i8 %13 to i32
  %add = add i32 %conv10, %port
  %call.i49 = tail call ptr @ocelot_vcap_block_find_filter_by_id(ptr noundef %arrayidx.i, i32 noundef %add, i1 noundef zeroext false) #4
  %tobool.not.i50 = icmp eq ptr %call.i49, null
  br i1 %tobool.not.i50, label %ocelot_mrp_del_vcap.exit.ocelot_mrp_del_vcap.exit53_crit_edge, label %if.end.i52

ocelot_mrp_del_vcap.exit.ocelot_mrp_del_vcap.exit53_crit_edge: ; preds = %ocelot_mrp_del_vcap.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %ocelot_mrp_del_vcap.exit53

if.end.i52:                                       ; preds = %ocelot_mrp_del_vcap.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i51 = tail call i32 @ocelot_vcap_filter_del(ptr noundef %ocelot, ptr noundef nonnull %call.i49) #4
  br label %ocelot_mrp_del_vcap.exit53

ocelot_mrp_del_vcap.exit53:                       ; preds = %if.end.i52, %ocelot_mrp_del_vcap.exit.ocelot_mrp_del_vcap.exit53_crit_edge
  %14 = ptrtoint ptr %num_phys_ports to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num_phys_ports, align 4
  %conv13 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp1456.not = icmp eq i8 %15, 0
  br i1 %cmp1456.not, label %ocelot_mrp_del_vcap.exit53.for.end_crit_edge, label %for.body.lr.ph

ocelot_mrp_del_vcap.exit53.for.end_crit_edge:     ; preds = %ocelot_mrp_del_vcap.exit53
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %ocelot_mrp_del_vcap.exit53
  %16 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ports, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx17 = getelementptr ptr, ptr %17, i32 %i.057
  %18 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %19, null
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %if.end20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end20:                                         ; preds = %for.body
  %mrp_ring_id21 = getelementptr inbounds %struct.ocelot_port, ptr %19, i32 0, i32 14
  %20 = ptrtoint ptr %mrp_ring_id21 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mrp_ring_id21, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp23.not = icmp eq i16 %21, 0
  br i1 %cmp23.not, label %if.end20.for.inc_crit_edge, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %if.end20.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %conv13
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ocelot_mrp_del_vcap.exit53.for.end_crit_edge
  %call.i54 = tail call i32 @ocelot_mact_forget(ptr noundef %ocelot, ptr noundef nonnull @mrp_test_dmac, i32 noundef 0) #4
  %call1.i55 = tail call i32 @ocelot_mact_forget(ptr noundef %ocelot, ptr noundef nonnull @mrp_control_dmac, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end20.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %for.end ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_mact_learn(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vcap_filter_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ocelot_vcap_block_find_filter_by_id(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_vcap_filter_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ocelot_mact_forget(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @__ksymtab_ocelot_mrp_add, !1, !"__ksymtab_ocelot_mrp_add", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/mscc/ocelot_mrp.c", i32 151, i32 1}
!2 = !{ptr @__ksymtab_ocelot_mrp_del, !3, !"__ksymtab_ocelot_mrp_del", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/mscc/ocelot_mrp.c", i32 168, i32 1}
!4 = !{ptr @__ksymtab_ocelot_mrp_add_ring_role, !5, !"__ksymtab_ocelot_mrp_add_ring_role", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/mscc/ocelot_mrp.c", i32 208, i32 1}
!6 = !{ptr @__ksymtab_ocelot_mrp_del_ring_role, !7, !"__ksymtab_ocelot_mrp_del_ring_role", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/mscc/ocelot_mrp.c", i32 242, i32 1}
!8 = !{ptr @mrp_test_dmac, !9, !"mrp_test_dmac", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/mscc/ocelot_mrp.c", i32 15, i32 17}
!10 = !{ptr @mrp_control_dmac, !11, !"mrp_control_dmac", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/mscc/ocelot_mrp.c", i32 16, i32 17}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
