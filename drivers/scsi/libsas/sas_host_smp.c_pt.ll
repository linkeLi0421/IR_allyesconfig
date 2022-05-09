; ModuleID = '/llk/IR_all_yes/drivers/scsi/libsas/sas_host_smp.c_pt.bc'
source_filename = "../drivers/scsi/libsas/sas_host_smp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+try_test_sas_gpio_gp_bit\22, \22a\22\09"
module asm "\09.weak\09__crc_try_test_sas_gpio_gp_bit\09\09\09\09"
module asm "\09.long\09__crc_try_test_sas_gpio_gp_bit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_try_test_sas_gpio_gp_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22try_test_sas_gpio_gp_bit\22\09\09\09\09\09"
module asm "__kstrtabns_try_test_sas_gpio_gp_bit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.bsg_job = type { ptr, %struct.kref, i32, ptr, ptr, i32, i32, %struct.bsg_buffer, %struct.bsg_buffer, i32, i32, ptr, ptr, ptr }
%struct.bsg_buffer = type { i32, i32, ptr }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.scsi_core = type { ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.sas_internal = type { %struct.scsi_transport_template, ptr, ptr, [0 x %struct.device_attribute], [17 x %struct.device_attribute], [1 x %struct.device_attribute], [8 x %struct.device_attribute], [5 x %struct.device_attribute], [7 x %struct.device_attribute], %struct.transport_container, %struct.transport_container, %struct.transport_container, %struct.transport_container, %struct.transport_container, [1 x ptr], [18 x ptr], [2 x ptr], [9 x ptr], [6 x ptr], [8 x ptr] }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.sas_domain_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.sas_phy = type { %struct.device, i32, i32, %struct.sas_identify, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct.asd_sas_port = type { %struct.sas_discovery, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i32, %struct.sas_work, i32, i32, i32, [8 x i8], [8 x i8], i32, i32, i32, %struct.spinlock, %struct.list_head, i32, i32, ptr, ptr, ptr }
%struct.sas_discovery = type { [4 x %struct.sas_discovery_event], i32, [8 x i8], [8 x i8], [8 x i8], i32 }
%struct.sas_discovery_event = type { %struct.sas_work, ptr }
%struct.sas_work = type { %struct.list_head, %struct.work_struct }
%struct.domain_device = type { %struct.spinlock, i32, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr, %struct.list_head, %struct.list_head, i32, i32, ptr, [8 x i8], [3 x i8], [32 x i8], [101 x i8], %union.anon.83, ptr, i32, %struct.kref, [116 x i8] }
%union.anon.83 = type { %struct.sata_device }
%struct.sata_device = type { i32, i8, ptr, ptr, [112 x i8], %struct.smp_resp, [24 x i8], [44 x i8] }
%struct.smp_resp = type { i8, i8, i8, i8, %union.anon.85 }
%union.anon.85 = type { %struct.report_phy_sata_resp }
%struct.report_phy_sata_resp = type { [5 x i8], i8, i8, i8, i32, [8 x i8], %struct.dev_to_host_fis, i32, [8 x i8], i32 }
%struct.dev_to_host_fis = type { i8, i8, i8, i8, i8, %union.anon.86, %union.anon.87, i8, i8, i8, i8, i8, %union.anon.88, i8, i8, i8, i32 }
%union.anon.86 = type { i8 }
%union.anon.87 = type { i8 }
%union.anon.88 = type { i8 }
%struct.sas_rphy = type { %struct.device, %struct.sas_identify, %struct.list_head, ptr, i32 }
%struct.sas_phy_linkrates = type { i32, i32 }

@__kstrtab_try_test_sas_gpio_gp_bit = external dso_local constant [0 x i8], align 1
@__kstrtabns_try_test_sas_gpio_gp_bit = external dso_local constant [0 x i8], align 1
@__ksymtab_try_test_sas_gpio_gp_bit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @try_test_sas_gpio_gp_bit to i32), ptr @__kstrtab_try_test_sas_gpio_gp_bit, ptr @__kstrtabns_try_test_sas_gpio_gp_bit }, section "___ksymtab+try_test_sas_gpio_gp_bit", align 4
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"libsas virt phy\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 16, i64 18, i64 130, i64 145]
@__sancov_gen_cov_switch_values.1 = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [38 x i8] c"../drivers/scsi/libsas/sas_host_smp.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 272, i32 26 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_try_test_sas_gpio_gp_bit, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @try_test_sas_gpio_gp_bit(i32 noundef %od, ptr noundef readonly %data, i8 noundef zeroext %index, i8 noundef zeroext %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %cmp.i = icmp eq i8 %index, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %dec.i = add i8 %index, -1
  %conv2.i = zext i8 %dec.i to i32
  %mul.i = shl nuw nsw i32 %conv2.i, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %od)
  %cmp3.i = icmp ugt i32 %mul.i, %od
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %sub.i = sub i32 %od, %mul.i
  %shr.i = lshr i32 %sub.i, 5
  %conv9.i = zext i8 %count to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %conv9.i)
  %cmp10.not.i = icmp ult i32 %shr.i, %conv9.i
  br i1 %cmp10.not.i, label %to_sas_gpio_gp_bit.exit, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

to_sas_gpio_gp_bit.exit:                          ; preds = %if.end6.i
  %and.i = lshr i32 %sub.i, 3
  %shr14.i = and i32 %and.i, 3
  %mul19.i = shl nuw nsw i32 %shr.i, 2
  %0 = or i32 %shr14.i, %mul19.i
  %add.i = xor i32 %0, 3
  %arrayidx.i = getelementptr i8, ptr %data, i32 %add.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %to_sas_gpio_gp_bit.exit.cleanup_crit_edge, label %if.end

to_sas_gpio_gp_bit.exit.cleanup_crit_edge:        ; preds = %to_sas_gpio_gp_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %to_sas_gpio_gp_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv18.i = and i32 %sub.i, 7
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx.i, align 1
  %conv = zext i8 %2 to i32
  %shr = lshr i32 %conv, %conv18.i
  %and = and i32 %shr, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %to_sas_gpio_gp_bit.exit.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ -1, %to_sas_gpio_gp_bit.exit.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.i.cleanup_crit_edge ], [ -1, %if.end6.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sas_smp_host_handler(ptr noundef %job, ptr nocapture noundef readonly %shost) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %hostdata = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %0 = ptrtoint ptr %hostdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hostdata, align 8
  %request_payload = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7
  %2 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %request_payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp ult i32 %3, 8
  br i1 %cmp, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %reply_payload = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8
  %4 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reply_payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %5)
  %cmp2 = icmp ult i32 %5, 8
  br i1 %cmp2, label %lor.lhs.false.out_crit_edge, label %if.end8.i.i

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end8.i.i:                                      ; preds = %lor.lhs.false
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.out_crit_edge, label %if.end6

if.end8.i.i.out_crit_edge:                        ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end6:                                          ; preds = %if.end8.i.i
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg_cnt, align 4
  %10 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %request_payload, align 4
  %call11 = tail call i32 @sg_copy_to_buffer(ptr noundef %7, i32 noundef %9, ptr noundef nonnull %call9.i.i, i32 noundef %11) #8
  %12 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reply_payload, align 4
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 128)
  %call9.i.i164 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #11
  %tobool16.not = icmp eq ptr %call9.i.i164, null
  br i1 %tobool16.not, label %if.end6.out_free_req_crit_edge, label %if.end18

if.end6.out_free_req_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_req

if.end18:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %16)
  %cmp19.not = icmp eq i8 %16, 64
  br i1 %cmp19.not, label %if.end22, label %if.end18.out_free_resp_crit_edge

if.end18.out_free_resp_crit_edge:                 ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_resp

if.end22:                                         ; preds = %if.end18
  %17 = ptrtoint ptr %call9.i.i164 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 65, ptr %call9.i.i164, align 128
  %arrayidx24 = getelementptr i8, ptr %call9.i.i, i32 1
  %18 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx24, align 1
  %arrayidx25 = getelementptr i8, ptr %call9.i.i164, i32 1
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %arrayidx25, align 1
  %arrayidx26 = getelementptr i8, ptr %call9.i.i164, i32 2
  %21 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %arrayidx26, align 2
  %22 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %if.end22.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb32
    i8 -111, label %sw.bb67
    i8 16, label %sw.bb35
    i8 -126, label %sw.bb51
    i8 18, label %sw.bb43
  ]

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx26, align 2
  %num_phys = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 19
  %24 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_phys, align 4
  %conv30 = trunc i32 %25 to i8
  %arrayidx31 = getelementptr i8, ptr %call9.i.i164, i32 9
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv30, ptr %arrayidx31, align 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %arrayidx26, align 2
  %add.ptr = getelementptr i8, ptr %call9.i.i164, i32 12
  %hostt = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 11
  %28 = ptrtoint ptr %hostt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hostt, align 8
  %name = getelementptr inbounds %struct.scsi_host_template, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %name, align 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %33 = load i64, ptr %31, align 1
  %34 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %34, i32 8)
  store i64 %33, ptr %add.ptr, align 4
  %add.ptr34 = getelementptr i8, ptr %call9.i.i164, i32 20
  %35 = call ptr @memcpy(ptr %add.ptr34, ptr @.str, i32 16)
  br label %sw.epilog

sw.bb35:                                          ; preds = %if.end22
  %36 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %request_payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %37)
  %cmp38 = icmp ult i32 %37, 16
  br i1 %cmp38, label %sw.bb35.out_free_resp_crit_edge, label %if.end41

sw.bb35.out_free_resp_crit_edge:                  ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_resp

if.end41:                                         ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx42 = getelementptr i8, ptr %call9.i.i, i32 9
  %38 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx42, align 1
  tail call fastcc void @sas_host_smp_discover(ptr noundef %1, ptr noundef nonnull %call9.i.i164, i8 noundef zeroext %39)
  br label %sw.epilog

sw.bb43:                                          ; preds = %if.end22
  %40 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %request_payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %41)
  %cmp46 = icmp ult i32 %41, 16
  br i1 %cmp46, label %sw.bb43.out_free_resp_crit_edge, label %if.end49

sw.bb43.out_free_resp_crit_edge:                  ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_resp

if.end49:                                         ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx50 = getelementptr i8, ptr %call9.i.i, i32 9
  %42 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx50, align 1
  tail call fastcc void @sas_report_phy_sata(ptr noundef %1, ptr noundef nonnull %call9.i.i164, i8 noundef zeroext %43)
  br label %sw.epilog

sw.bb51:                                          ; preds = %if.end22
  %arrayidx52 = getelementptr i8, ptr %call9.i.i, i32 4
  %44 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx52, align 4
  %conv53 = zext i8 %45 to i32
  %46 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %request_payload, align 4
  %mul = shl nuw nsw i32 %conv53, 2
  %add = add nuw nsw i32 %mul, 11
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %add)
  %cmp56 = icmp ult i32 %47, %add
  br i1 %cmp56, label %if.then58, label %if.end60

if.then58:                                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 3, ptr %arrayidx26, align 2
  br label %sw.epilog

if.end60:                                         ; preds = %sw.bb51
  %core.i = getelementptr inbounds %struct.sas_ha_struct, ptr %1, i32 0, i32 8
  %49 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %core.i, align 4
  %transportt.i = getelementptr inbounds %struct.Scsi_Host, ptr %50, i32 0, i32 12
  %51 = ptrtoint ptr %transportt.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %transportt.i, align 4
  %dft.i = getelementptr inbounds %struct.sas_internal, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %dft.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dft.i, align 4
  %lldd_write_gpio.i = getelementptr inbounds %struct.sas_domain_function_template, ptr %54, i32 0, i32 17
  %55 = ptrtoint ptr %lldd_write_gpio.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %lldd_write_gpio.i, align 4
  %cmp.i = icmp eq ptr %56, null
  br i1 %cmp.i, label %if.end60.sw.epilog_crit_edge, label %if.end.i

if.end60.sw.epilog_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end60
  %arrayidx64 = getelementptr i8, ptr %call9.i.i, i32 8
  %arrayidx62 = getelementptr i8, ptr %call9.i.i, i32 3
  %57 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx62, align 1
  %arrayidx61 = getelementptr i8, ptr %call9.i.i, i32 2
  %59 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx61, align 2
  %call.i = tail call i32 %56(ptr noundef %1, i8 noundef zeroext %60, i8 noundef zeroext %58, i8 noundef zeroext %45, ptr noundef %arrayidx64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp slt i32 %call.i, 0
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %arrayidx26, align 2
  br label %sw.epilog

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx26, align 2
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.end22
  %63 = ptrtoint ptr %request_payload to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %request_payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 44, i32 %64)
  %cmp70 = icmp ult i32 %64, 44
  br i1 %cmp70, label %sw.bb67.out_free_resp_crit_edge, label %if.end73

sw.bb67.out_free_resp_crit_edge:                  ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_resp

if.end73:                                         ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx74 = getelementptr i8, ptr %call9.i.i, i32 9
  %65 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx74, align 1
  %arrayidx75 = getelementptr i8, ptr %call9.i.i, i32 10
  %67 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx75, align 2
  %arrayidx76 = getelementptr i8, ptr %call9.i.i, i32 32
  %69 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx76, align 32
  %71 = lshr i8 %70, 4
  %72 = zext i8 %71 to i32
  %arrayidx78 = getelementptr i8, ptr %call9.i.i, i32 33
  %73 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx78, align 1
  %75 = lshr i8 %74, 4
  %76 = zext i8 %75 to i32
  tail call fastcc void @sas_phy_control(ptr noundef %1, i8 noundef zeroext %66, i8 noundef zeroext %68, i32 noundef %72, i32 noundef %76, ptr noundef nonnull %call9.i.i164)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end73, %if.else.i, %if.then4.i, %if.end60.sw.epilog_crit_edge, %if.then58, %if.end49, %if.end41, %sw.bb32, %sw.bb, %if.end22.sw.epilog_crit_edge
  %reslen.1 = phi i32 [ 0, %if.end22.sw.epilog_crit_edge ], [ 60, %if.end49 ], [ 56, %if.end41 ], [ 8, %if.end73 ], [ 64, %sw.bb32 ], [ 32, %sw.bb ], [ 0, %if.then58 ], [ 8, %if.then4.i ], [ 8, %if.else.i ], [ 8, %if.end60.sw.epilog_crit_edge ]
  %sg_list82 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8, i32 2
  %77 = ptrtoint ptr %sg_list82 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sg_list82, align 4
  %sg_cnt84 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8, i32 1
  %79 = ptrtoint ptr %sg_cnt84 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %sg_cnt84, align 4
  %81 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %reply_payload, align 4
  %call87 = tail call i32 @sg_copy_from_buffer(ptr noundef %78, i32 noundef %80, ptr noundef nonnull %call9.i.i164, i32 noundef %82) #8
  br label %out_free_resp

out_free_resp:                                    ; preds = %sw.epilog, %sw.bb67.out_free_resp_crit_edge, %sw.bb43.out_free_resp_crit_edge, %sw.bb35.out_free_resp_crit_edge, %if.end18.out_free_resp_crit_edge
  %reslen.2 = phi i32 [ 0, %if.end18.out_free_resp_crit_edge ], [ %reslen.1, %sw.epilog ], [ 0, %sw.bb43.out_free_resp_crit_edge ], [ 0, %sw.bb35.out_free_resp_crit_edge ], [ 0, %sw.bb67.out_free_resp_crit_edge ]
  %error.0 = phi i32 [ -22, %if.end18.out_free_resp_crit_edge ], [ 0, %sw.epilog ], [ -22, %sw.bb43.out_free_resp_crit_edge ], [ -22, %sw.bb35.out_free_resp_crit_edge ], [ -22, %sw.bb67.out_free_resp_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i164) #8
  br label %out_free_req

out_free_req:                                     ; preds = %out_free_resp, %if.end6.out_free_req_crit_edge
  %reslen.3 = phi i32 [ %reslen.2, %out_free_resp ], [ 0, %if.end6.out_free_req_crit_edge ]
  %error.1 = phi i32 [ %error.0, %out_free_resp ], [ -12, %if.end6.out_free_req_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %out

out:                                              ; preds = %out_free_req, %if.end8.i.i.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %reslen.4 = phi i32 [ 0, %entry.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ %reslen.3, %out_free_req ], [ 0, %if.end8.i.i.out_crit_edge ]
  %error.2 = phi i32 [ -22, %entry.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ %error.1, %out_free_req ], [ -12, %if.end8.i.i.out_crit_edge ]
  tail call void @bsg_job_done(ptr noundef %job, i32 noundef %error.2, i32 noundef %reslen.4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @sas_host_smp_discover(ptr nocapture noundef readonly %sas_ha, ptr nocapture noundef writeonly %resp_data, i8 noundef zeroext %phy_id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %phy_id to i32
  %num_phys = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 19
  %0 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp sgt i32 %1, %conv
  %arrayidx2 = getelementptr i8, ptr %resp_data, i32 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %arrayidx2, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %arrayidx2, align 1
  %sas_phy = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 17
  %4 = ptrtoint ptr %sas_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sas_phy, align 4
  %arrayidx3 = getelementptr ptr, ptr %5, i32 %conv
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %phy4 = getelementptr inbounds %struct.asd_sas_phy, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy4, align 4
  %arrayidx5 = getelementptr i8, ptr %resp_data, i32 9
  %10 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %phy_id, ptr %arrayidx5, align 1
  %negotiated_linkrate = getelementptr inbounds %struct.sas_phy, ptr %9, i32 0, i32 4
  %11 = ptrtoint ptr %negotiated_linkrate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %negotiated_linkrate, align 8
  %conv6 = trunc i32 %12 to i8
  %arrayidx7 = getelementptr i8, ptr %resp_data, i32 13
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6, ptr %arrayidx7, align 1
  %add.ptr = getelementptr i8, ptr %resp_data, i32 16
  %sas_addr = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 14
  %14 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sas_addr, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %15, align 1
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %18, i32 8)
  store i64 %17, ptr %add.ptr, align 1
  %add.ptr8 = getelementptr i8, ptr %resp_data, i32 24
  %19 = load ptr, ptr %sas_phy, align 4
  %arrayidx11 = getelementptr ptr, ptr %19, i32 %conv
  %20 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx11, align 4
  %attached_sas_addr = getelementptr inbounds %struct.asd_sas_phy, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %attached_sas_addr, align 4
  %24 = ptrtoint ptr %add.ptr8 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %add.ptr8, align 1
  %minimum_linkrate = getelementptr inbounds %struct.sas_phy, ptr %9, i32 0, i32 6
  %25 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %minimum_linkrate, align 8
  %shl = shl i32 %26, 4
  %minimum_linkrate_hw = getelementptr inbounds %struct.sas_phy, ptr %9, i32 0, i32 5
  %27 = ptrtoint ptr %minimum_linkrate_hw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %minimum_linkrate_hw, align 4
  %or = or i32 %shl, %28
  %conv12 = trunc i32 %or to i8
  %arrayidx13 = getelementptr i8, ptr %resp_data, i32 40
  %29 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv12, ptr %arrayidx13, align 1
  %maximum_linkrate = getelementptr inbounds %struct.sas_phy, ptr %9, i32 0, i32 8
  %30 = ptrtoint ptr %maximum_linkrate to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %maximum_linkrate, align 8
  %shl14 = shl i32 %31, 4
  %maximum_linkrate_hw = getelementptr inbounds %struct.sas_phy, ptr %9, i32 0, i32 7
  %32 = ptrtoint ptr %maximum_linkrate_hw to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %maximum_linkrate_hw, align 4
  %or15 = or i32 %shl14, %33
  %conv16 = trunc i32 %or15 to i8
  %arrayidx17 = getelementptr i8, ptr %resp_data, i32 41
  %34 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv16, ptr %arrayidx17, align 1
  %35 = load ptr, ptr %sas_phy, align 4
  %arrayidx20 = getelementptr ptr, ptr %35, i32 %conv
  %36 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx20, align 4
  %port = getelementptr inbounds %struct.asd_sas_phy, ptr %37, i32 0, i32 22
  %38 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %39, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %port_dev = getelementptr inbounds %struct.asd_sas_port, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %port_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %port_dev, align 4
  %tobool25.not = icmp eq ptr %41, null
  br i1 %tobool25.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end27

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %rphy33 = getelementptr inbounds %struct.domain_device, ptr %41, i32 0, i32 14
  %42 = ptrtoint ptr %rphy33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rphy33, align 4
  %identify = getelementptr inbounds %struct.sas_rphy, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %identify to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %identify, align 8
  %.tr = trunc i32 %45 to i8
  %conv35 = shl i8 %.tr, 4
  %arrayidx36 = getelementptr i8, ptr %resp_data, i32 12
  %46 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv35, ptr %arrayidx36, align 1
  %initiator_port_protocols = getelementptr inbounds %struct.sas_rphy, ptr %43, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %initiator_port_protocols to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %initiator_port_protocols, align 4
  %conv38 = trunc i32 %48 to i8
  %arrayidx39 = getelementptr i8, ptr %resp_data, i32 14
  %49 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv38, ptr %arrayidx39, align 1
  %target_port_protocols = getelementptr inbounds %struct.sas_rphy, ptr %43, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %target_port_protocols to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %target_port_protocols, align 8
  %conv41 = trunc i32 %51 to i8
  %arrayidx42 = getelementptr i8, ptr %resp_data, i32 15
  %52 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv41, ptr %arrayidx42, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sas_report_phy_sata(ptr nocapture noundef readonly %sas_ha, ptr nocapture noundef writeonly %resp_data, i8 noundef zeroext %phy_id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %phy_id to i32
  %num_phys = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 19
  %0 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp sgt i32 %1, %conv
  %arrayidx2 = getelementptr i8, ptr %resp_data, i32 2
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 16, ptr %arrayidx2, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 18, ptr %arrayidx2, align 1
  %sas_phy = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 17
  %4 = ptrtoint ptr %sas_phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sas_phy, align 4
  %arrayidx3 = getelementptr ptr, ptr %5, i32 %conv
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %port = getelementptr inbounds %struct.asd_sas_phy, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %port_dev = getelementptr inbounds %struct.asd_sas_port, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %port_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_dev, align 4
  %rphy10 = getelementptr inbounds %struct.domain_device, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %rphy10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rphy10, align 4
  %target_port_protocols = getelementptr inbounds %struct.sas_rphy, ptr %13, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %target_port_protocols to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %target_port_protocols, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp16.not = icmp eq i32 %15, 1
  br i1 %cmp16.not, label %if.end19, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end5
  %frame_rcvd = getelementptr inbounds %struct.domain_device, ptr %11, i32 0, i32 17
  %16 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx2, align 1
  %arrayidx21 = getelementptr i8, ptr %resp_data, i32 9
  %17 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %phy_id, ptr %arrayidx21, align 1
  %add.ptr = getelementptr i8, ptr %resp_data, i32 16
  %18 = ptrtoint ptr %sas_phy to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sas_phy, align 4
  %arrayidx24 = getelementptr ptr, ptr %19, i32 %conv
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx24, align 4
  %attached_sas_addr = getelementptr inbounds %struct.asd_sas_phy, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %attached_sas_addr to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %23 = load i64, ptr %attached_sas_addr, align 4
  %24 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %add.ptr, align 1
  %25 = ptrtoint ptr %frame_rcvd to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %frame_rcvd, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 52, i8 %26)
  %cmp27.not = icmp eq i8 %26, 52
  br i1 %cmp27.not, label %for.cond.preheader, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr33 = getelementptr i8, ptr %resp_data, i32 24
  %27 = ptrtoint ptr %sas_phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sas_phy, align 4
  %arrayidx37 = getelementptr ptr, ptr %28, i32 %conv
  %29 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx37, align 4
  %port38 = getelementptr inbounds %struct.asd_sas_phy, ptr %30, i32 0, i32 22
  %31 = ptrtoint ptr %port38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %port38, align 4
  %port_dev39 = getelementptr inbounds %struct.asd_sas_port, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %port_dev39 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %port_dev39, align 4
  %arrayidx41 = getelementptr %struct.domain_device, ptr %34, i32 0, i32 17, i32 0
  %arrayidx42 = getelementptr %struct.domain_device, ptr %34, i32 0, i32 17, i32 3
  %35 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx42, align 1
  %37 = ptrtoint ptr %add.ptr33 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %add.ptr33, align 1
  %arrayidx44 = getelementptr %struct.domain_device, ptr %34, i32 0, i32 17, i32 2
  %38 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx44, align 1
  %arrayidx45 = getelementptr i8, ptr %resp_data, i32 25
  %40 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx45, align 1
  %arrayidx46 = getelementptr %struct.domain_device, ptr %34, i32 0, i32 17, i32 1
  %41 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx46, align 1
  %arrayidx47 = getelementptr i8, ptr %resp_data, i32 26
  %43 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %arrayidx47, align 1
  %44 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx41, align 1
  %arrayidx49 = getelementptr i8, ptr %resp_data, i32 27
  %46 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx49, align 1
  %add.ptr34.1 = getelementptr i8, ptr %resp_data, i32 28
  %47 = load ptr, ptr %sas_phy, align 4
  %arrayidx37.1 = getelementptr ptr, ptr %47, i32 %conv
  %48 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx37.1, align 4
  %port38.1 = getelementptr inbounds %struct.asd_sas_phy, ptr %49, i32 0, i32 22
  %50 = ptrtoint ptr %port38.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %port38.1, align 4
  %port_dev39.1 = getelementptr inbounds %struct.asd_sas_port, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %port_dev39.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %port_dev39.1, align 4
  %arrayidx41.1 = getelementptr %struct.domain_device, ptr %53, i32 0, i32 17, i32 4
  %arrayidx42.1 = getelementptr %struct.domain_device, ptr %53, i32 0, i32 17, i32 7
  %54 = ptrtoint ptr %arrayidx42.1 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx42.1, align 1
  %56 = ptrtoint ptr %add.ptr34.1 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %add.ptr34.1, align 1
  %arrayidx44.1 = getelementptr %struct.domain_device, ptr %53, i32 0, i32 17, i32 6
  %57 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx44.1, align 1
  %arrayidx45.1 = getelementptr i8, ptr %resp_data, i32 29
  %59 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx45.1, align 1
  %arrayidx46.1 = getelementptr %struct.domain_device, ptr %53, i32 0, i32 17, i32 5
  %60 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx46.1, align 1
  %arrayidx47.1 = getelementptr i8, ptr %resp_data, i32 30
  %62 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx47.1, align 1
  %63 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx41.1, align 1
  %arrayidx49.1 = getelementptr i8, ptr %resp_data, i32 31
  %65 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %64, ptr %arrayidx49.1, align 1
  %add.ptr34.2 = getelementptr i8, ptr %resp_data, i32 32
  %66 = load ptr, ptr %sas_phy, align 4
  %arrayidx37.2 = getelementptr ptr, ptr %66, i32 %conv
  %67 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx37.2, align 4
  %port38.2 = getelementptr inbounds %struct.asd_sas_phy, ptr %68, i32 0, i32 22
  %69 = ptrtoint ptr %port38.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %port38.2, align 4
  %port_dev39.2 = getelementptr inbounds %struct.asd_sas_port, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %port_dev39.2 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %port_dev39.2, align 4
  %arrayidx41.2 = getelementptr %struct.domain_device, ptr %72, i32 0, i32 17, i32 8
  %arrayidx42.2 = getelementptr %struct.domain_device, ptr %72, i32 0, i32 17, i32 11
  %73 = ptrtoint ptr %arrayidx42.2 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx42.2, align 1
  %75 = ptrtoint ptr %add.ptr34.2 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %74, ptr %add.ptr34.2, align 1
  %arrayidx44.2 = getelementptr %struct.domain_device, ptr %72, i32 0, i32 17, i32 10
  %76 = ptrtoint ptr %arrayidx44.2 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx44.2, align 1
  %arrayidx45.2 = getelementptr i8, ptr %resp_data, i32 33
  %78 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx45.2, align 1
  %arrayidx46.2 = getelementptr %struct.domain_device, ptr %72, i32 0, i32 17, i32 9
  %79 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx46.2, align 1
  %arrayidx47.2 = getelementptr i8, ptr %resp_data, i32 34
  %81 = ptrtoint ptr %arrayidx47.2 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %arrayidx47.2, align 1
  %82 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %arrayidx41.2, align 1
  %arrayidx49.2 = getelementptr i8, ptr %resp_data, i32 35
  %84 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx49.2, align 1
  %add.ptr34.3 = getelementptr i8, ptr %resp_data, i32 36
  %85 = load ptr, ptr %sas_phy, align 4
  %arrayidx37.3 = getelementptr ptr, ptr %85, i32 %conv
  %86 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx37.3, align 4
  %port38.3 = getelementptr inbounds %struct.asd_sas_phy, ptr %87, i32 0, i32 22
  %88 = ptrtoint ptr %port38.3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %port38.3, align 4
  %port_dev39.3 = getelementptr inbounds %struct.asd_sas_port, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %port_dev39.3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %port_dev39.3, align 4
  %arrayidx41.3 = getelementptr %struct.domain_device, ptr %91, i32 0, i32 17, i32 12
  %arrayidx42.3 = getelementptr %struct.domain_device, ptr %91, i32 0, i32 17, i32 15
  %92 = ptrtoint ptr %arrayidx42.3 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx42.3, align 1
  %94 = ptrtoint ptr %add.ptr34.3 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %93, ptr %add.ptr34.3, align 1
  %arrayidx44.3 = getelementptr %struct.domain_device, ptr %91, i32 0, i32 17, i32 14
  %95 = ptrtoint ptr %arrayidx44.3 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx44.3, align 1
  %arrayidx45.3 = getelementptr i8, ptr %resp_data, i32 37
  %97 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %96, ptr %arrayidx45.3, align 1
  %arrayidx46.3 = getelementptr %struct.domain_device, ptr %91, i32 0, i32 17, i32 13
  %98 = ptrtoint ptr %arrayidx46.3 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx46.3, align 1
  %arrayidx47.3 = getelementptr i8, ptr %resp_data, i32 38
  %100 = ptrtoint ptr %arrayidx47.3 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %99, ptr %arrayidx47.3, align 1
  %101 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %arrayidx41.3, align 1
  %arrayidx49.3 = getelementptr i8, ptr %resp_data, i32 39
  %103 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %102, ptr %arrayidx49.3, align 1
  %add.ptr34.4 = getelementptr i8, ptr %resp_data, i32 40
  %104 = load ptr, ptr %sas_phy, align 4
  %arrayidx37.4 = getelementptr ptr, ptr %104, i32 %conv
  %105 = ptrtoint ptr %arrayidx37.4 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx37.4, align 4
  %port38.4 = getelementptr inbounds %struct.asd_sas_phy, ptr %106, i32 0, i32 22
  %107 = ptrtoint ptr %port38.4 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %port38.4, align 4
  %port_dev39.4 = getelementptr inbounds %struct.asd_sas_port, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %port_dev39.4 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %port_dev39.4, align 4
  %arrayidx41.4 = getelementptr %struct.domain_device, ptr %110, i32 0, i32 17, i32 16
  %arrayidx42.4 = getelementptr %struct.domain_device, ptr %110, i32 0, i32 17, i32 19
  %111 = ptrtoint ptr %arrayidx42.4 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx42.4, align 1
  %113 = ptrtoint ptr %add.ptr34.4 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %112, ptr %add.ptr34.4, align 1
  %arrayidx44.4 = getelementptr %struct.domain_device, ptr %110, i32 0, i32 17, i32 18
  %114 = ptrtoint ptr %arrayidx44.4 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx44.4, align 1
  %arrayidx45.4 = getelementptr i8, ptr %resp_data, i32 41
  %116 = ptrtoint ptr %arrayidx45.4 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %arrayidx45.4, align 1
  %arrayidx46.4 = getelementptr %struct.domain_device, ptr %110, i32 0, i32 17, i32 17
  %117 = ptrtoint ptr %arrayidx46.4 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx46.4, align 1
  %arrayidx47.4 = getelementptr i8, ptr %resp_data, i32 42
  %119 = ptrtoint ptr %arrayidx47.4 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx47.4, align 1
  %120 = ptrtoint ptr %arrayidx41.4 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %arrayidx41.4, align 1
  %arrayidx49.4 = getelementptr i8, ptr %resp_data, i32 43
  %122 = ptrtoint ptr %arrayidx49.4 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %121, ptr %arrayidx49.4, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.cond.preheader, %if.end19.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sas_phy_control(ptr nocapture noundef readonly %sas_ha, i8 noundef zeroext %phy_id, i8 noundef zeroext %phy_op, i32 noundef %min, i32 noundef %max, ptr nocapture noundef writeonly %resp_data) unnamed_addr #2 align 64 {
entry:
  %rates = alloca %struct.sas_phy_linkrates, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 8
  %0 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %transportt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %transportt, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rates) #8
  %4 = getelementptr inbounds %struct.sas_phy_linkrates, ptr %rates, i32 0, i32 1
  %conv = zext i8 %phy_id to i32
  %num_phys = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 19
  %5 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp.not = icmp sgt i32 %6, %conv
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr i8, ptr %resp_data, i32 2
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %arrayidx, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  %sas_phy = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 17
  %8 = ptrtoint ptr %sas_phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sas_phy, align 4
  %arrayidx2 = getelementptr ptr, ptr %9, i32 %conv
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx2, align 4
  %conv3 = zext i8 %phy_op to i32
  %12 = zext i8 %phy_op to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %phy_op, label %sw.default [
    i8 0, label %if.end.sw.epilog_crit_edge
    i8 1, label %if.end.sw.epilog_crit_edge31
    i8 2, label %if.end.sw.epilog_crit_edge32
    i8 3, label %if.end.sw.epilog_crit_edge33
    i8 5, label %if.end.sw.epilog_crit_edge34
    i8 6, label %if.end.sw.epilog_crit_edge35
    i8 7, label %if.end.sw.epilog_crit_edge36
  ]

if.end.sw.epilog_crit_edge36:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge35:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge34:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge33:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge32:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge31:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx4 = getelementptr i8, ptr %resp_data, i32 2
  %13 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 19, ptr %arrayidx4, align 1
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge31, %if.end.sw.epilog_crit_edge32, %if.end.sw.epilog_crit_edge33, %if.end.sw.epilog_crit_edge34, %if.end.sw.epilog_crit_edge35, %if.end.sw.epilog_crit_edge36
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %min, ptr %4, align 4
  %15 = ptrtoint ptr %rates to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %max, ptr %rates, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %phy_op)
  %cmp6 = icmp eq i8 %phy_op, 1
  br i1 %cmp6, label %land.lhs.true, label %sw.epilog.if.end12_crit_edge

sw.epilog.if.end12_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %sw.epilog
  %call = tail call i32 @sas_try_ata_reset(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp eq i32 %call, 0
  br i1 %cmp8, label %if.then10, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11 = getelementptr i8, ptr %resp_data, i32 2
  %16 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx11, align 1
  br label %cleanup

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %sw.epilog.if.end12_crit_edge
  %dft = getelementptr inbounds %struct.sas_internal, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dft, align 4
  %lldd_control_phy = getelementptr inbounds %struct.sas_domain_function_template, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %lldd_control_phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lldd_control_phy, align 4
  %call14 = call i32 %20(ptr noundef %11, i32 noundef %conv3, ptr noundef nonnull %rates) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  %arrayidx17 = getelementptr i8, ptr %resp_data, i32 2
  br i1 %tobool.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 2, ptr %arrayidx17, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx17, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then15, %if.then10, %sw.default, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rates) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @bsg_job_done(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_try_ata_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_try_test_sas_gpio_gp_bit, !1, !"__ksymtab_try_test_sas_gpio_gp_bit", i1 false, i1 false}
!1 = !{!"../drivers/scsi/libsas/sas_host_smp.c", i32 111, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/scsi/libsas/sas_host_smp.c", i32 272, i32 26}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
