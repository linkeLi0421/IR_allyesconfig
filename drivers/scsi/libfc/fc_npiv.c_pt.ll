; ModuleID = '/llk/IR_all_yes/drivers/scsi/libfc/fc_npiv.c_pt.bc'
source_filename = "../drivers/scsi/libfc/fc_npiv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+libfc_vport_create\22, \22a\22\09"
module asm "\09.weak\09__crc_libfc_vport_create\09\09\09\09"
module asm "\09.long\09__crc_libfc_vport_create\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_libfc_vport_create:\09\09\09\09\09"
module asm "\09.asciz \09\22libfc_vport_create\22\09\09\09\09\09"
module asm "__kstrtabns_libfc_vport_create:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_vport_id_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_vport_id_lookup\09\09\09\09"
module asm "\09.long\09__crc_fc_vport_id_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_vport_id_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_vport_id_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_fc_vport_id_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fc_vport_setlink\22, \22a\22\09"
module asm "\09.weak\09__crc_fc_vport_setlink\09\09\09\09"
module asm "\09.long\09__crc_fc_vport_setlink\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fc_vport_setlink:\09\09\09\09\09"
module asm "\09.asciz \09\22fc_vport_setlink\22\09\09\09\09\09"
module asm "__kstrtabns_fc_vport_setlink:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fc_vport = type { i32, i32, i64, i64, i32, i32, i32, [64 x i8], ptr, ptr, i32, i32, i8, %struct.list_head, %struct.device, %struct.work_struct }
%struct.list_head = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.fc_lport = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.fc_disc, %struct.list_head, ptr, %struct.libfc_function_template, i8, i8, i16, i32, i32, %struct.fc_host_statistics, ptr, i8, i32, i64, i64, i32, i32, i32, %struct.fc_els_rnid_gen, i8, i32, i8, i8, i16, i16, i16, i16, i32, %struct.fc_ns_fts, %struct.mutex, %struct.list_head, %struct.delayed_work, [9 x ptr], %struct.list_head }
%struct.fc_disc = type { i8, i8, i8, i16, i8, i16, %struct.list_head, ptr, %struct.mutex, %struct.fc_gpn_ft_resp, %struct.delayed_work, ptr }
%struct.fc_gpn_ft_resp = type { i8, [3 x i8], i32, i64 }
%struct.libfc_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc_host_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.fc_els_rnid_gen = type { [16 x i8], i32, i32, i32, i8, i8, i16, [4 x i32], [2 x i8], i16 }
%struct.fc_ns_fts = type { [8 x i32] }

@__kstrtab_libfc_vport_create = external dso_local constant [0 x i8], align 1
@__kstrtabns_libfc_vport_create = external dso_local constant [0 x i8], align 1
@__ksymtab_libfc_vport_create = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @libfc_vport_create to i32), ptr @__kstrtab_libfc_vport_create, ptr @__kstrtabns_libfc_vport_create }, section "___ksymtab+libfc_vport_create", align 4
@__kstrtab_fc_vport_id_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_vport_id_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_vport_id_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_vport_id_lookup to i32), ptr @__kstrtab_fc_vport_id_lookup, ptr @__kstrtabns_fc_vport_id_lookup }, section "___ksymtab+fc_vport_id_lookup", align 4
@__kstrtab_fc_vport_setlink = external dso_local constant [0 x i8], align 1
@__kstrtabns_fc_vport_setlink = external dso_local constant [0 x i8], align 1
@__ksymtab_fc_vport_setlink = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fc_vport_setlink to i32), ptr @__kstrtab_fc_vport_setlink, ptr @__kstrtabns_fc_vport_setlink }, section "___ksymtab+fc_vport_setlink", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_fc_vport_id_lookup, ptr @__ksymtab_fc_vport_setlink, ptr @__ksymtab_libfc_vport_create], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @libfc_vport_create(ptr noundef %vport, i32 noundef %privsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %shost1 = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 9
  %0 = ptrtoint ptr %shost1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %shost1, align 8
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hostt, align 8
  %add.i = add i32 %privsize, 1008
  %call.i = tail call ptr @scsi_host_alloc(ptr noundef %3, i32 noundef %add.i) #2
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %libfc_host_alloc.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

libfc_host_alloc.exit:                            ; preds = %entry
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %hostdata.i.i, align 8
  %ema_list.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 0, i32 1
  %5 = ptrtoint ptr %ema_list.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %ema_list.i, ptr %ema_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ema_list.i, ptr %prev.i.i, align 4
  %vports.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 0, i32 2
  %7 = ptrtoint ptr %vports.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %vports.i, ptr %vports.i, align 4
  %prev.i8.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i8.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %vports.i, ptr %prev.i8.i, align 4
  %tobool.not = icmp eq ptr %hostdata.i.i, null
  br i1 %tobool.not, label %libfc_host_alloc.exit.cleanup_crit_edge, label %if.end

libfc_host_alloc.exit.cleanup_crit_edge:          ; preds = %libfc_host_alloc.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %libfc_host_alloc.exit
  %vport3 = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 13, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %vport3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %vport, ptr %vport3, align 8
  %dd_data = getelementptr inbounds %struct.fc_vport, ptr %vport, i32 0, i32 8
  %10 = ptrtoint ptr %dd_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %hostdata.i.i, ptr %dd_data, align 4
  %lp_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 49, i32 9, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #2
  %list = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 49, i32 10, i32 1, i32 1
  %vports = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 1, i32 13, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %12, ptr noundef %vports) #2
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %prev.i, align 4
  %14 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %vports, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %call.i, i32 1, i32 49, i32 10, i32 1, i32 2
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list, ptr %12, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #2
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %libfc_host_alloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0.i19 = phi ptr [ null, %libfc_host_alloc.exit.cleanup_crit_edge ], [ %hostdata.i.i, %list_add_tail.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0.i19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fc_vport_id_lookup(ptr noundef %n_port, i32 noundef %port_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %port_id1 = getelementptr inbounds %struct.fc_lport, ptr %n_port, i32 0, i32 18
  %0 = ptrtoint ptr %port_id1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_id1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %port_id)
  %cmp = icmp eq i32 %1, %port_id
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777214, i32 %port_id)
  %cmp2 = icmp eq i32 %port_id, 16777214
  %or.cond = or i1 %cmp2, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %lp_mutex = getelementptr inbounds %struct.fc_lport, ptr %n_port, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #2
  %vports = getelementptr inbounds %struct.fc_lport, ptr %n_port, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end4
  %.pn.in = phi ptr [ %vports, %if.end4 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp6.not = icmp eq ptr %.pn, %vports
  br i1 %cmp6.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.cond
  %port_id7 = getelementptr i8, ptr %.pn, i32 -236
  %3 = ptrtoint ptr %port_id7 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port_id7, align 8
  %cmp8 = icmp eq i32 %4, %port_id
  br i1 %cmp8, label %for.end.split.loop.exit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.cond

for.end.split.loop.exit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %vn_port.0.le = getelementptr i8, ptr %.pn, i32 -852
  br label %for.end

for.end:                                          ; preds = %for.end.split.loop.exit, %for.cond.for.end_crit_edge
  %lport.0 = phi ptr [ %vn_port.0.le, %for.end.split.loop.exit ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #2
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %lport.0, %for.end ], [ %n_port, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fc_vport_setlink(ptr noundef %vn_port) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %vport1 = getelementptr inbounds %struct.fc_lport, ptr %vn_port, i32 0, i32 8
  %0 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vport1, align 8
  %shost2 = getelementptr inbounds %struct.fc_vport, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %shost2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %shost2, align 8
  %lp_mutex = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 9, i32 1, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 0) #2
  %lp_mutex3 = getelementptr inbounds %struct.fc_lport, ptr %vn_port, i32 0, i32 35
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex3, i32 noundef 1) #2
  %4 = ptrtoint ptr %vport1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vport1, align 8
  %state.i = getelementptr inbounds %struct.fc_lport, ptr %vn_port, i32 0, i32 13
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp eq i32 %7, 0
  br i1 %cmp.i, label %entry.__fc_vport_setlink.exit_crit_edge, label %if.end.i

entry.__fc_vport_setlink.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %__fc_vport_setlink.exit

if.end.i:                                         ; preds = %entry
  %state2.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 13, i32 13, i32 1, i32 4
  %8 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %9)
  %cmp3.i = icmp eq i32 %9, 14
  br i1 %cmp3.i, label %if.then4.i, label %if.else7.i

if.then4.i:                                       ; preds = %if.end.i
  %npiv_enabled.i = getelementptr inbounds %struct.Scsi_Host, ptr %3, i32 1, i32 49, i32 0, i32 7, i32 1, i32 4, i32 7
  %10 = ptrtoint ptr %npiv_enabled.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %npiv_enabled.i, align 8
  %11 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %5, align 8
  tail call void @__fc_linkup(ptr noundef %vn_port) #2
  br label %__fc_vport_setlink.exit

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %5, align 8
  %vport_last_state.i.i = getelementptr inbounds %struct.fc_vport, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %vport_last_state.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %vport_last_state.i.i, align 4
  store i32 5, ptr %5, align 8
  tail call void @__fc_linkdown(ptr noundef %vn_port) #2
  br label %__fc_vport_setlink.exit

if.else7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %5, align 8
  %vport_last_state.i16.i = getelementptr inbounds %struct.fc_vport, ptr %5, i32 0, i32 1
  %18 = ptrtoint ptr %vport_last_state.i16.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %vport_last_state.i16.i, align 4
  store i32 3, ptr %5, align 8
  tail call void @__fc_linkdown(ptr noundef %vn_port) #2
  br label %__fc_vport_setlink.exit

__fc_vport_setlink.exit:                          ; preds = %if.else7.i, %if.else.i, %if.then5.i, %entry.__fc_vport_setlink.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex3) #2
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fc_vports_linkchange(ptr noundef readonly %n_port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %vports = getelementptr inbounds %struct.fc_lport, ptr %n_port, i32 0, i32 7
  %0 = ptrtoint ptr %vports to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn14 = load ptr, ptr %vports, align 4
  %cmp.not15 = icmp eq ptr %.pn14, %vports
  br i1 %cmp.not15, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %state2.i = getelementptr inbounds %struct.fc_lport, ptr %n_port, i32 0, i32 13
  %npiv_enabled.i = getelementptr inbounds %struct.fc_lport, ptr %n_port, i32 0, i32 25
  br label %for.body

for.body:                                         ; preds = %__fc_vport_setlink.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn16 = phi ptr [ %.pn14, %for.body.lr.ph ], [ %.pn, %__fc_vport_setlink.exit.for.body_crit_edge ]
  %vn_port.0 = getelementptr i8, ptr %.pn16, i32 -852
  %lp_mutex = getelementptr i8, ptr %.pn16, i32 -92
  tail call void @mutex_lock_nested(ptr noundef %lp_mutex, i32 noundef 1) #2
  %vport1.i = getelementptr i8, ptr %.pn16, i32 -572
  %1 = ptrtoint ptr %vport1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vport1.i, align 8
  %state.i = getelementptr i8, ptr %.pn16, i32 -500
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp eq i32 %4, 0
  br i1 %cmp.i, label %for.body.__fc_vport_setlink.exit_crit_edge, label %if.end.i

for.body.__fc_vport_setlink.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %__fc_vport_setlink.exit

if.end.i:                                         ; preds = %for.body
  %5 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %6)
  %cmp3.i = icmp eq i32 %6, 14
  br i1 %cmp3.i, label %if.then4.i, label %if.else7.i

if.then4.i:                                       ; preds = %if.end.i
  %7 = ptrtoint ptr %npiv_enabled.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %npiv_enabled.i, align 8
  %8 = and i8 %bf.load.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %2, align 8
  tail call void @__fc_linkup(ptr noundef %vn_port.0) #2
  br label %__fc_vport_setlink.exit

if.else.i:                                        ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %2, align 8
  %vport_last_state.i.i = getelementptr inbounds %struct.fc_vport, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %vport_last_state.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %vport_last_state.i.i, align 4
  store i32 5, ptr %2, align 8
  tail call void @__fc_linkdown(ptr noundef %vn_port.0) #2
  br label %__fc_vport_setlink.exit

if.else7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %2, align 8
  %vport_last_state.i16.i = getelementptr inbounds %struct.fc_vport, ptr %2, i32 0, i32 1
  %15 = ptrtoint ptr %vport_last_state.i16.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %vport_last_state.i16.i, align 4
  store i32 3, ptr %2, align 8
  tail call void @__fc_linkdown(ptr noundef %vn_port.0) #2
  br label %__fc_vport_setlink.exit

__fc_vport_setlink.exit:                          ; preds = %if.else7.i, %if.else.i, %if.then5.i, %for.body.__fc_vport_setlink.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lp_mutex) #2
  %16 = ptrtoint ptr %.pn16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn16, align 4
  %cmp.not = icmp eq ptr %.pn, %vports
  br i1 %cmp.not, label %__fc_vport_setlink.exit.for.end_crit_edge, label %__fc_vport_setlink.exit.for.body_crit_edge

__fc_vport_setlink.exit.for.body_crit_edge:       ; preds = %__fc_vport_setlink.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

__fc_vport_setlink.exit.for.end_crit_edge:        ; preds = %__fc_vport_setlink.exit
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %__fc_vport_setlink.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @scsi_host_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fc_linkup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__fc_linkdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_libfc_vport_create, !1, !"__ksymtab_libfc_vport_create", i1 false, i1 false}
!1 = !{!"../drivers/scsi/libfc/fc_npiv.c", i32 40, i32 1}
!2 = !{ptr @__ksymtab_fc_vport_id_lookup, !3, !"__ksymtab_fc_vport_id_lookup", i1 false, i1 false}
!3 = !{!"../drivers/scsi/libfc/fc_npiv.c", i32 71, i32 1}
!4 = !{ptr @__ksymtab_fc_vport_setlink, !5, !"__ksymtab_fc_vport_setlink", i1 false, i1 false}
!5 = !{!"../drivers/scsi/libfc/fc_npiv.c", i32 129, i32 1}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
