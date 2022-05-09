; ModuleID = '/llk/IR_all_yes/drivers/scsi/smartpqi/smartpqi_sas_transport.c_pt.bc'
source_filename = "../drivers/scsi/smartpqi/smartpqi_sas_transport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.sas_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pqi_ctrl_info = type <{ i32, ptr, [32 x i8], [17 x i8], [17 x i8], [9 x i8], i8, i8, [3 x i8], ptr, ptr, ptr, i32, i32, i32, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i8], i32, i32, ptr, i32, i32, i32, i16, i16, i16, i16, i16, [2 x i8], i32, i32, ptr, i32, i32, ptr, i32, i32, %struct.pqi_admin_queues, [64 x %struct.pqi_queue_group], %struct.pqi_event_queue, i32, i32, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, i8, i8, i8, i16, i8, [2 x i8], i32, i32, i32, i32, i32, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.delayed_work, ptr, [4 x i8], i64, ptr, i16, [2 x i8], [7 x %struct.pqi_event], %struct.work_struct, %struct.atomic_t, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.semaphore, %struct.atomic_t, %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, ptr, i32, ptr, %struct.work_struct, %struct.work_struct, i32, i16, [2 x i8] }>
%struct.pqi_admin_queues = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, ptr, i16 }
%struct.pqi_queue_group = type { ptr, [2 x i16], i16, i16, [2 x ptr], ptr, [2 x i32], i32, [2 x ptr], [2 x i32], [2 x ptr], ptr, [2 x i32], i32, ptr, i32, [2 x %struct.spinlock], [2 x %struct.list_head] }
%struct.pqi_event_queue = type { i16, i16, ptr, ptr, i32, i32, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.pqi_event = type { i8, i8, i16, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pqi_sas_port = type { %struct.list_head, i64, ptr, ptr, i32, %struct.list_head, ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.pqi_sas_node = type { ptr, %struct.list_head }
%struct.pqi_sas_phy = type { %struct.list_head, ptr, ptr, i8 }
%struct.sas_phy = type { %struct.device, i32, i32, %struct.sas_identify, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct.pqi_scsi_dev = type { i32, i8, i32, i32, i32, [8 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8, [8 x i8], [16 x i8], i64, i8, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, [8 x i8], [8 x i16], i8, i8, i8, i32, ptr, i32, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, [8 x %struct.pqi_stream_data], %struct.atomic_t, %struct.atomic_t, [16 x i8] }
%struct.pqi_stream_data = type { i64, i32 }
%struct.sas_rphy = type { %struct.device, %struct.sas_identify, %struct.list_head, ptr, i32 }
%struct.pqi_raid_error_info = type { i8, i8, [3 x i8], i8, i16, i16, i16, i32, i32, [256 x i8] }
%struct.bsg_job = type { ptr, %struct.kref, i32, ptr, ptr, i32, i32, %struct.bsg_buffer, %struct.bsg_buffer, i32, i32, ptr, ptr, ptr }
%struct.bsg_buffer = type { i32, i32, ptr }
%struct.bmic_csmi_ioctl_header = type { i32, [8 x i8], i32, i32, i32, i32 }
%struct.bmic_csmi_smp_passthru_buffer = type { %struct.bmic_csmi_ioctl_header, %struct.bmic_csmi_smp_passthru }
%struct.bmic_csmi_smp_passthru = type <{ i8, i8, i8, i8, i64, i32, %struct.bmic_smp_request, i8, [3 x i8], i32, %struct.bmic_smp_response }>
%struct.bmic_smp_request = type { i8, i8, i8, i8, [1016 x i8] }
%struct.bmic_smp_response = type { i8, i8, i8, i8, [1016 x i8] }

@pqi_sas_transport_functions = dso_local global { %struct.sas_function_template, [60 x i8] } { %struct.sas_function_template { ptr @pqi_sas_get_linkerrors, ptr @pqi_sas_get_enclosure_identifier, ptr @pqi_sas_get_bay_identifier, ptr @pqi_sas_phy_reset, ptr @pqi_sas_phy_enable, ptr @pqi_sas_phy_setup, ptr @pqi_sas_phy_release, ptr @pqi_sas_phy_speed, ptr @pqi_sas_smp_handler }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@switch.table.pqi_add_sas_device = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8, i32 8, i32 8, i32 2, i32 8, i32 8, i32 8, i32 8], [32 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [28 x i8] c"pqi_sas_transport_functions\00", align 1
@___asan_gen_.2 = private constant [50 x i8] c"../drivers/scsi/smartpqi/smartpqi_sas_transport.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 564, i32 30 }
@___asan_gen_.4 = private unnamed_addr constant [32 x i8] c"switch.table.pqi_add_sas_device\00", align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @pqi_sas_transport_functions, ptr @switch.table.pqi_add_sas_device], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pqi_sas_transport_functions to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pqi_add_sas_device to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pqi_find_device_by_sas_rphy(ptr noundef readonly %ctrl_info, ptr noundef readnone %rphy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %scsi_device_list = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 69
  %0 = ptrtoint ptr %scsi_device_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn19 = load ptr, ptr %scsi_device_list, align 4
  %cmp.not20 = icmp eq ptr %.pn19, %scsi_device_list
  br i1 %cmp.not20, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn21 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn19, %entry.for.body_crit_edge ]
  %sas_port = getelementptr i8, ptr %.pn21, i32 -8
  %1 = ptrtoint ptr %sas_port to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sas_port, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %rphy3 = getelementptr inbounds %struct.pqi_sas_port, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %rphy3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rphy3, align 8
  %cmp4 = icmp eq ptr %4, %rphy
  br i1 %cmp4, label %cleanup.split.loop.exit17, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %.pn21 to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn = load ptr, ptr %.pn21, align 4
  %cmp.not = icmp eq ptr %.pn, %scsi_device_list
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.split.loop.exit17:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %device.0.le = getelementptr i8, ptr %.pn21, i32 -172
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit17, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %device.0.le, %cleanup.split.loop.exit17 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pqi_add_sas_host(ptr noundef %shost, ptr nocapture noundef %ctrl_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 12) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %shost_dev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 50
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %shost_dev, ptr %call7.i.i.i, align 8
  %port_list_head.i = getelementptr inbounds %struct.pqi_sas_node, ptr %call7.i.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %port_list_head.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %port_list_head.i, ptr %port_list_head.i, align 4
  %prev.i.i = getelementptr inbounds %struct.pqi_sas_node, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %port_list_head.i, ptr %prev.i.i, align 8
  %sas_address = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 75
  %4 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sas_address, align 8
  %call1 = tail call fastcc ptr @pqi_alloc_sas_port(ptr noundef nonnull %call7.i.i.i, i64 noundef %5, ptr noundef null)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end.i44_crit_edge, label %if.end4

if.end.if.end.i44_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i44

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 20) #11
  %tobool.not.i27 = icmp eq ptr %call7.i.i.i26, null
  br i1 %tobool.not.i27, label %if.end4.free_sas_port_crit_edge, label %if.end.i

if.end4.free_sas_port_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_sas_port

if.end.i:                                         ; preds = %if.end4
  %parent_node.i = getelementptr inbounds %struct.pqi_sas_port, ptr %call1, i32 0, i32 6
  %7 = ptrtoint ptr %parent_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent_node.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %next_phy_index.i = getelementptr inbounds %struct.pqi_sas_port, ptr %call1, i32 0, i32 4
  %11 = ptrtoint ptr %next_phy_index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %next_phy_index.i, align 8
  %call1.i = tail call ptr @sas_phy_alloc(ptr noundef %10, i32 noundef %12) #8
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.free_sas_port.sink.split_crit_edge, label %if.end8

if.end.i.free_sas_port.sink.split_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_sas_port.sink.split

if.end8:                                          ; preds = %if.end.i
  %13 = ptrtoint ptr %next_phy_index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %next_phy_index.i, align 8
  %inc.i = add i32 %14, 1
  store i32 %inc.i, ptr %next_phy_index.i, align 8
  %phy6.i = getelementptr inbounds %struct.pqi_sas_phy, ptr %call7.i.i.i26, i32 0, i32 1
  %15 = ptrtoint ptr %phy6.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call1.i, ptr %phy6.i, align 8
  %parent_port.i = getelementptr inbounds %struct.pqi_sas_phy, ptr %call7.i.i.i26, i32 0, i32 2
  %16 = ptrtoint ptr %parent_port.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1, ptr %parent_port.i, align 4
  %identify2.i = getelementptr inbounds %struct.sas_phy, ptr %call1.i, i32 0, i32 3
  %17 = call ptr @memset(ptr %identify2.i, i32 0, i32 32)
  %sas_address.i = getelementptr inbounds %struct.pqi_sas_port, ptr %call1, i32 0, i32 1
  %18 = ptrtoint ptr %sas_address.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %sas_address.i, align 8
  %sas_address3.i = getelementptr inbounds %struct.sas_phy, ptr %call1.i, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %sas_address3.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %sas_address3.i, align 8
  %21 = ptrtoint ptr %identify2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %identify2.i, align 8
  %initiator_port_protocols.i = getelementptr inbounds %struct.sas_phy, ptr %call1.i, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %initiator_port_protocols.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 14, ptr %initiator_port_protocols.i, align 4
  %target_port_protocols.i = getelementptr inbounds %struct.sas_phy, ptr %call1.i, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %target_port_protocols.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 14, ptr %target_port_protocols.i, align 8
  %negotiated_linkrate.i = getelementptr inbounds %struct.sas_phy, ptr %call1.i, i32 0, i32 4
  %24 = call ptr @memset(ptr %negotiated_linkrate.i, i32 0, i32 20)
  %25 = load ptr, ptr %phy6.i, align 8
  %call.i = tail call i32 @sas_phy_add(ptr noundef %25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i29 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i29, label %if.end.i31, label %free_sas_phy

if.end.i31:                                       ; preds = %if.end8
  %port.i = getelementptr inbounds %struct.pqi_sas_port, ptr %call1, i32 0, i32 3
  %26 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %port.i, align 4
  %28 = ptrtoint ptr %phy6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy6.i, align 8
  tail call void @sas_port_add_phy(ptr noundef %27, ptr noundef %29) #8
  %phy_list_head.i = getelementptr inbounds %struct.pqi_sas_port, ptr %call1, i32 0, i32 5
  %prev.i.i30 = getelementptr inbounds %struct.pqi_sas_port, ptr %call1, i32 0, i32 5, i32 1
  %30 = ptrtoint ptr %prev.i.i30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i30, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i26, ptr noundef %31, ptr noundef %phy_list_head.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i31.if.end12_crit_edge

if.end.i31.if.end12_crit_edge:                    ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.end.i.i.i:                                     ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %prev.i.i30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call7.i.i.i26, ptr %prev.i.i30, align 4
  %33 = ptrtoint ptr %call7.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %phy_list_head.i, ptr %call7.i.i.i26, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i26, i32 0, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %call7.i.i.i26, ptr %31, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end.i.i.i, %if.end.i31.if.end12_crit_edge
  %added_to_port.i = getelementptr inbounds %struct.pqi_sas_phy, ptr %call7.i.i.i26, i32 0, i32 3
  %36 = ptrtoint ptr %added_to_port.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %added_to_port.i, align 8
  %sas_host = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 73
  %37 = ptrtoint ptr %sas_host to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i.i, ptr %sas_host, align 8
  br label %cleanup

free_sas_phy:                                     ; preds = %if.end8
  %38 = ptrtoint ptr %phy6.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy6.i, align 8
  %40 = ptrtoint ptr %parent_port.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent_port.i, align 4
  %port.i34 = getelementptr inbounds %struct.pqi_sas_port, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %port.i34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %port.i34, align 4
  tail call void @sas_port_delete_phy(ptr noundef %43, ptr noundef %39) #8
  %added_to_port.i35 = getelementptr inbounds %struct.pqi_sas_phy, ptr %call7.i.i.i26, i32 0, i32 3
  %44 = ptrtoint ptr %added_to_port.i35 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %added_to_port.i35, align 8, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i36 = icmp eq i8 %45, 0
  br i1 %tobool.not.i36, label %free_sas_phy.pqi_free_sas_phy.exit_crit_edge, label %if.then.i38

free_sas_phy.pqi_free_sas_phy.exit_crit_edge:     ; preds = %free_sas_phy
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqi_free_sas_phy.exit

if.then.i38:                                      ; preds = %free_sas_phy
  %call.i.i.i37 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %call7.i.i.i26) #8
  br i1 %call.i.i.i37, label %if.end.i.i.i39, label %if.then.i38.list_del.exit.i_crit_edge

if.then.i38.list_del.exit.i_crit_edge:            ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i39:                                   ; preds = %if.then.i38
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i26, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i, align 4
  %48 = ptrtoint ptr %call7.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call7.i.i.i26, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i39, %if.then.i38.list_del.exit.i_crit_edge
  %52 = ptrtoint ptr %call7.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i.i26, align 8
  %prev.i.i40 = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i26, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i40 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i40, align 4
  br label %pqi_free_sas_phy.exit

pqi_free_sas_phy.exit:                            ; preds = %list_del.exit.i, %free_sas_phy.pqi_free_sas_phy.exit_crit_edge
  tail call void @sas_phy_delete(ptr noundef %39) #8
  br label %free_sas_port.sink.split

free_sas_port.sink.split:                         ; preds = %pqi_free_sas_phy.exit, %if.end.i.free_sas_port.sink.split_crit_edge
  %rc.0.ph = phi i32 [ %call.i, %pqi_free_sas_phy.exit ], [ -19, %if.end.i.free_sas_port.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i26) #8
  br label %free_sas_port

free_sas_port:                                    ; preds = %free_sas_port.sink.split, %if.end4.free_sas_port_crit_edge
  %rc.0 = phi i32 [ -19, %if.end4.free_sas_port_crit_edge ], [ %rc.0.ph, %free_sas_port.sink.split ]
  tail call fastcc void @pqi_free_sas_port(ptr noundef nonnull %call1)
  br label %if.end.i44

if.end.i44:                                       ; preds = %free_sas_port, %if.end.if.end.i44_crit_edge
  %rc.1 = phi i32 [ %rc.0, %free_sas_port ], [ -19, %if.end.if.end.i44_crit_edge ]
  %54 = ptrtoint ptr %port_list_head.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %port_list_head.i, align 4
  %cmp.not20.i = icmp eq ptr %55, %port_list_head.i
  br i1 %cmp.not20.i, label %if.end.i44.pqi_free_sas_node.exit_crit_edge, label %if.end.i44.for.body.i_crit_edge

if.end.i44.for.body.i_crit_edge:                  ; preds = %if.end.i44
  br label %for.body.i

if.end.i44.pqi_free_sas_node.exit_crit_edge:      ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqi_free_sas_node.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i44.for.body.i_crit_edge
  %pqi_sas_port.021.i = phi ptr [ %next.0.i, %for.body.i.for.body.i_crit_edge ], [ %55, %if.end.i44.for.body.i_crit_edge ]
  %56 = ptrtoint ptr %pqi_sas_port.021.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %next.0.i = load ptr, ptr %pqi_sas_port.021.i, align 8
  tail call fastcc void @pqi_free_sas_port(ptr noundef %pqi_sas_port.021.i) #8
  %cmp.not.i = icmp eq ptr %next.0.i, %port_list_head.i
  br i1 %cmp.not.i, label %for.body.i.pqi_free_sas_node.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.pqi_free_sas_node.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqi_free_sas_node.exit

pqi_free_sas_node.exit:                           ; preds = %for.body.i.pqi_free_sas_node.exit_crit_edge, %if.end.i44.pqi_free_sas_node.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %pqi_free_sas_node.exit, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %pqi_free_sas_node.exit ], [ 0, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pqi_alloc_sas_port(ptr noundef %pqi_sas_node, i64 noundef %sas_address, ptr noundef %device) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy_list_head = getelementptr inbounds %struct.pqi_sas_port, ptr %call7.i.i, i32 0, i32 5
  %1 = ptrtoint ptr %phy_list_head to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %phy_list_head, ptr %phy_list_head, align 4
  %prev.i = getelementptr inbounds %struct.pqi_sas_port, ptr %call7.i.i, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %phy_list_head, ptr %prev.i, align 8
  %parent_node = getelementptr inbounds %struct.pqi_sas_port, ptr %call7.i.i, i32 0, i32 6
  %3 = ptrtoint ptr %parent_node to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pqi_sas_node, ptr %parent_node, align 4
  %4 = ptrtoint ptr %pqi_sas_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pqi_sas_node, align 4
  %call1 = tail call ptr @sas_port_alloc_num(ptr noundef %5) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.free_pqi_port_crit_edge, label %if.end4

if.end.free_pqi_port_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_pqi_port

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @sas_port_add(ptr noundef nonnull %call1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %free_sas_port

if.end8:                                          ; preds = %if.end4
  %port9 = getelementptr inbounds %struct.pqi_sas_port, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %port9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call1, ptr %port9, align 4
  %sas_address10 = getelementptr inbounds %struct.pqi_sas_port, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %sas_address10 to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %sas_address, ptr %sas_address10, align 8
  %device11 = getelementptr inbounds %struct.pqi_sas_port, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %device11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %device, ptr %device11, align 8
  %port_list_head = getelementptr inbounds %struct.pqi_sas_node, ptr %pqi_sas_node, i32 0, i32 1
  %prev.i27 = getelementptr inbounds %struct.pqi_sas_node, ptr %pqi_sas_node, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i27, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %10, ptr noundef %port_list_head) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %prev.i27 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %prev.i27, align 4
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %port_list_head, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %call7.i.i, ptr %10, align 4
  br label %cleanup

free_sas_port:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @sas_port_free(ptr noundef nonnull %call1) #8
  br label %free_pqi_port

free_pqi_port:                                    ; preds = %free_sas_port, %if.end.free_pqi_port_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_pqi_port, %if.end.i.i, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %free_pqi_port ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.end8.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pqi_free_sas_port(ptr noundef %pqi_sas_port) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_list_head = getelementptr inbounds %struct.pqi_sas_port, ptr %pqi_sas_port, i32 0, i32 5
  %0 = ptrtoint ptr %phy_list_head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy_list_head, align 4
  %cmp.not21 = icmp eq ptr %1, %phy_list_head
  br i1 %cmp.not21, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %pqi_free_sas_phy.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %pqi_sas_phy.022 = phi ptr [ %next.0, %pqi_free_sas_phy.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %pqi_sas_phy.022 to i32
  call void @__asan_load4_noabort(i32 %2)
  %next.0 = load ptr, ptr %pqi_sas_phy.022, align 4
  %phy1.i = getelementptr inbounds %struct.pqi_sas_phy, ptr %pqi_sas_phy.022, i32 0, i32 1
  %3 = ptrtoint ptr %phy1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy1.i, align 4
  %parent_port.i = getelementptr inbounds %struct.pqi_sas_phy, ptr %pqi_sas_phy.022, i32 0, i32 2
  %5 = ptrtoint ptr %parent_port.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent_port.i, align 4
  %port.i = getelementptr inbounds %struct.pqi_sas_port, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port.i, align 4
  tail call void @sas_port_delete_phy(ptr noundef %8, ptr noundef %4) #8
  %added_to_port.i = getelementptr inbounds %struct.pqi_sas_phy, ptr %pqi_sas_phy.022, i32 0, i32 3
  %9 = ptrtoint ptr %added_to_port.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %added_to_port.i, align 4, !range !11
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %for.body.pqi_free_sas_phy.exit_crit_edge, label %if.then.i

for.body.pqi_free_sas_phy.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqi_free_sas_phy.exit

if.then.i:                                        ; preds = %for.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pqi_sas_phy.022) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pqi_sas_phy.022, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i, align 4
  %13 = ptrtoint ptr %pqi_sas_phy.022 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pqi_sas_phy.022, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.then.i.list_del.exit.i_crit_edge
  %17 = ptrtoint ptr %pqi_sas_phy.022 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %pqi_sas_phy.022, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pqi_sas_phy.022, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %pqi_free_sas_phy.exit

pqi_free_sas_phy.exit:                            ; preds = %list_del.exit.i, %for.body.pqi_free_sas_phy.exit_crit_edge
  tail call void @sas_phy_delete(ptr noundef %4) #8
  tail call void @kfree(ptr noundef %pqi_sas_phy.022) #8
  %cmp.not = icmp eq ptr %next.0, %phy_list_head
  br i1 %cmp.not, label %pqi_free_sas_phy.exit.for.end_crit_edge, label %pqi_free_sas_phy.exit.for.body_crit_edge

pqi_free_sas_phy.exit.for.body_crit_edge:         ; preds = %pqi_free_sas_phy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

pqi_free_sas_phy.exit.for.end_crit_edge:          ; preds = %pqi_free_sas_phy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %pqi_free_sas_phy.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %port = getelementptr inbounds %struct.pqi_sas_port, ptr %pqi_sas_port, i32 0, i32 3
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port, align 4
  tail call void @sas_port_delete(ptr noundef %20) #8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pqi_sas_port) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.end.list_del.exit_crit_edge

for.end.list_del.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i20 = getelementptr inbounds %struct.list_head, ptr %pqi_sas_port, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i20, align 4
  %23 = ptrtoint ptr %pqi_sas_port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pqi_sas_port, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.end.list_del.exit_crit_edge
  %27 = ptrtoint ptr %pqi_sas_port to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %pqi_sas_port, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pqi_sas_port, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %pqi_sas_port) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pqi_delete_sas_host(ptr nocapture noundef readonly %ctrl_info) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sas_host = getelementptr inbounds %struct.pqi_ctrl_info, ptr %ctrl_info, i32 0, i32 73
  %0 = ptrtoint ptr %sas_host to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sas_host, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.pqi_free_sas_node.exit_crit_edge, label %if.end.i

entry.pqi_free_sas_node.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqi_free_sas_node.exit

if.end.i:                                         ; preds = %entry
  %port_list_head.i = getelementptr inbounds %struct.pqi_sas_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %port_list_head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port_list_head.i, align 4
  %cmp.not20.i = icmp eq ptr %3, %port_list_head.i
  br i1 %cmp.not20.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %pqi_sas_port.021.i = phi ptr [ %next.0.i, %for.body.i.for.body.i_crit_edge ], [ %3, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %pqi_sas_port.021.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %next.0.i = load ptr, ptr %pqi_sas_port.021.i, align 8
  tail call fastcc void @pqi_free_sas_port(ptr noundef %pqi_sas_port.021.i) #8
  %cmp.not.i = icmp eq ptr %next.0.i, %port_list_head.i
  br i1 %cmp.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %pqi_free_sas_node.exit

pqi_free_sas_node.exit:                           ; preds = %for.end.i, %entry.pqi_free_sas_node.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pqi_add_sas_device(ptr noundef %pqi_sas_node, ptr noundef %device) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sas_address = getelementptr inbounds %struct.pqi_scsi_dev, ptr %device, i32 0, i32 14
  %0 = ptrtoint ptr %sas_address to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %sas_address, align 8
  %call = tail call fastcc ptr @pqi_alloc_sas_port(ptr noundef %pqi_sas_node, i64 noundef %1, ptr noundef %device)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %device.i = getelementptr inbounds %struct.pqi_sas_port, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %is_expander_smp_device.i = getelementptr inbounds %struct.pqi_scsi_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %is_expander_smp_device.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %is_expander_smp_device.i, align 4
  %5 = and i16 %bf.load.i, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool2.not.i = icmp eq i16 %5, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %port.i = getelementptr inbounds %struct.pqi_sas_port, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 4
  %call.i = tail call ptr @sas_expander_alloc(ptr noundef %7, i32 noundef 3) #8
  br label %pqi_sas_rphy_alloc.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %port3.i = getelementptr inbounds %struct.pqi_sas_port, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %port3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %port3.i, align 4
  %call4.i = tail call ptr @sas_end_device_alloc(ptr noundef %9) #8
  br label %pqi_sas_rphy_alloc.exit

pqi_sas_rphy_alloc.exit:                          ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call.i, %if.then.i ], [ %call4.i, %if.end.i ]
  %tobool2.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool2.not, label %pqi_sas_rphy_alloc.exit.free_sas_port_crit_edge, label %if.end4

pqi_sas_rphy_alloc.exit.free_sas_port_crit_edge:  ; preds = %pqi_sas_rphy_alloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_sas_port

if.end4:                                          ; preds = %pqi_sas_rphy_alloc.exit
  %rphy5 = getelementptr inbounds %struct.pqi_sas_port, ptr %call, i32 0, i32 7
  %10 = ptrtoint ptr %rphy5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %rphy5, align 8
  %sas_port = getelementptr inbounds %struct.pqi_scsi_dev, ptr %device, i32 0, i32 34
  %11 = ptrtoint ptr %sas_port to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %sas_port, align 4
  %sas_address.i = getelementptr inbounds %struct.pqi_sas_port, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %sas_address.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %sas_address.i, align 8
  %sas_address2.i = getelementptr inbounds %struct.sas_rphy, ptr %retval.0.i, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %sas_address2.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %sas_address2.i, align 8
  %initiator_port_protocols.i = getelementptr inbounds %struct.sas_rphy, ptr %retval.0.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %initiator_port_protocols.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 14, ptr %initiator_port_protocols.i, align 4
  %target_port_protocols.i = getelementptr inbounds %struct.sas_rphy, ptr %retval.0.i, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %target_port_protocols.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %target_port_protocols.i, align 8
  %17 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %device.i, align 8
  %tobool.not.i25 = icmp eq ptr %18, null
  br i1 %tobool.not.i25, label %if.end4.pqi_sas_port_add_rphy.exit_crit_edge, label %if.then.i26

if.end4.pqi_sas_port_add_rphy.exit_crit_edge:     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqi_sas_port_add_rphy.exit

if.then.i26:                                      ; preds = %if.end4
  %phy_id.i = getelementptr inbounds %struct.pqi_scsi_dev, ptr %18, i32 0, i32 28
  %19 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %phy_id.i, align 4
  %phy_identifier.i = getelementptr inbounds %struct.sas_rphy, ptr %retval.0.i, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %phy_identifier.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %phy_identifier.i, align 8
  %22 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device.i, align 8
  %device_type.i = getelementptr inbounds %struct.pqi_scsi_dev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %device_type.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %device_type.i, align 4
  %switch.tableidx = add i8 %25, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %26 = icmp ult i8 %switch.tableidx, 8
  br i1 %26, label %switch.hole_check, label %if.then.i26.pqi_sas_port_add_rphy.exit_crit_edge

if.then.i26.pqi_sas_port_add_rphy.exit_crit_edge: ; preds = %if.then.i26
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqi_sas_port_add_rphy.exit

switch.hole_check:                                ; preds = %if.then.i26
  %switch.shifted = lshr i8 -103, %switch.tableidx
  %27 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %switch.lobit.not = icmp eq i8 %27, 0
  br i1 %switch.lobit.not, label %switch.hole_check.pqi_sas_port_add_rphy.exit_crit_edge, label %switch.lookup

switch.hole_check.pqi_sas_port_add_rphy.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %pqi_sas_port_add_rphy.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %28 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.pqi_add_sas_device, i32 0, i32 %28
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load i32, ptr %switch.gep, align 4
  %30 = ptrtoint ptr %target_port_protocols.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %switch.load, ptr %target_port_protocols.i, align 8
  br label %pqi_sas_port_add_rphy.exit

pqi_sas_port_add_rphy.exit:                       ; preds = %switch.lookup, %switch.hole_check.pqi_sas_port_add_rphy.exit_crit_edge, %if.then.i26.pqi_sas_port_add_rphy.exit_crit_edge, %if.end4.pqi_sas_port_add_rphy.exit_crit_edge
  %call.i27 = tail call i32 @sas_rphy_add(ptr noundef nonnull %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool7.not = icmp eq i32 %call.i27, 0
  br i1 %tobool7.not, label %pqi_sas_port_add_rphy.exit.cleanup_crit_edge, label %pqi_sas_port_add_rphy.exit.free_sas_port_crit_edge

pqi_sas_port_add_rphy.exit.free_sas_port_crit_edge: ; preds = %pqi_sas_port_add_rphy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_sas_port

pqi_sas_port_add_rphy.exit.cleanup_crit_edge:     ; preds = %pqi_sas_port_add_rphy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

free_sas_port:                                    ; preds = %pqi_sas_port_add_rphy.exit.free_sas_port_crit_edge, %pqi_sas_rphy_alloc.exit.free_sas_port_crit_edge
  %rc.0 = phi i32 [ %call.i27, %pqi_sas_port_add_rphy.exit.free_sas_port_crit_edge ], [ -19, %pqi_sas_rphy_alloc.exit.free_sas_port_crit_edge ]
  tail call fastcc void @pqi_free_sas_port(ptr noundef nonnull %call)
  %sas_port10 = getelementptr inbounds %struct.pqi_scsi_dev, ptr %device, i32 0, i32 34
  %31 = ptrtoint ptr %sas_port10 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %sas_port10, align 4
  br label %cleanup

cleanup:                                          ; preds = %free_sas_port, %pqi_sas_port_add_rphy.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %free_sas_port ], [ -12, %entry.cleanup_crit_edge ], [ 0, %pqi_sas_port_add_rphy.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pqi_remove_sas_device(ptr nocapture noundef %device) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sas_port = getelementptr inbounds %struct.pqi_scsi_dev, ptr %device, i32 0, i32 34
  %0 = ptrtoint ptr %sas_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sas_port, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @pqi_free_sas_port(ptr noundef nonnull %1)
  %2 = ptrtoint ptr %sas_port to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sas_port, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pqi_sas_smp_handler(ptr noundef %job, ptr nocapture noundef readonly %shost, ptr noundef readonly %rphy) #2 align 64 {
entry:
  %error_info = alloca %struct.pqi_raid_error_info, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 276, ptr nonnull %error_info) #8
  %0 = call ptr @memset(ptr %error_info, i32 255, i32 276)
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 53
  %1 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hostdata.i.i, align 4
  %reply_payload = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8
  %3 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reply_payload, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %rphy, null
  br i1 %tobool.not, label %if.end.out_crit_edge, label %if.end2

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end2:                                          ; preds = %if.end
  %identify = getelementptr inbounds %struct.sas_rphy, ptr %rphy, i32 0, i32 1
  %5 = ptrtoint ptr %identify to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %identify, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp3.not = icmp eq i32 %6, 3
  br i1 %cmp3.not, label %if.end5, label %if.end2.out_crit_edge

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %if.end2
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sg_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp6 = icmp sgt i32 %8, 1
  br i1 %cmp6, label %if.end5.out_crit_edge, label %lor.lhs.false

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end5
  %sg_cnt8 = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8, i32 1
  %9 = ptrtoint ptr %sg_cnt8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sg_cnt8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp9 = icmp sgt i32 %10, 1
  br i1 %cmp9, label %lor.lhs.false.out_crit_edge, label %if.end11

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end11:                                         ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 2092) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end11.out_crit_edge, label %if.end15

if.end11.out_crit_edge:                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end15:                                         ; preds = %if.end11
  %request_payload.i = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7
  %12 = ptrtoint ptr %request_payload.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %request_payload.i, align 4
  %14 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reply_payload, align 4
  %16 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 469762048, ptr %call7.i.i.i, align 8
  %timeout.i = getelementptr inbounds %struct.bmic_csmi_ioctl_header, ptr %call7.i.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %timeout.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1006632960, ptr %timeout.i, align 4
  %control_code.i = getelementptr inbounds %struct.bmic_csmi_ioctl_header, ptr %call7.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %control_code.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 385875968, ptr %control_code.i, align 8
  %length.i = getelementptr inbounds %struct.bmic_csmi_ioctl_header, ptr %call7.i.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 268959744, ptr %length.i, align 8
  %parameters3.i = getelementptr inbounds %struct.bmic_csmi_smp_passthru_buffer, ptr %call7.i.i.i, i32 0, i32 1
  %phy_identifier.i = getelementptr inbounds %struct.sas_rphy, ptr %rphy, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %phy_identifier.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %phy_identifier.i, align 8
  %22 = ptrtoint ptr %parameters3.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %parameters3.i, align 4
  %port_identifier.i = getelementptr inbounds %struct.bmic_csmi_smp_passthru_buffer, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %port_identifier.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %port_identifier.i, align 1
  %connection_rate.i = getelementptr inbounds %struct.bmic_csmi_smp_passthru_buffer, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %connection_rate.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %connection_rate.i, align 2
  %sas_address.i = getelementptr inbounds %struct.sas_rphy, ptr %rphy, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %sas_address.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %sas_address.i, align 8
  %destination_sas_address.i = getelementptr inbounds %struct.bmic_csmi_smp_passthru_buffer, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %destination_sas_address.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %destination_sas_address.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp.i = icmp ugt i32 %13, 4
  %sub.i = add i32 %13, -4
  %spec.select.i = select i1 %cmp.i, i32 %sub.i, i32 %13
  %request_length.i = getelementptr inbounds %struct.bmic_csmi_smp_passthru_buffer, ptr %call7.i.i.i, i32 0, i32 1, i32 5
  %28 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #8
  %29 = ptrtoint ptr %request_length.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %request_length.i, align 8
  %response_length.i = getelementptr inbounds %struct.bmic_csmi_smp_passthru_buffer, ptr %call7.i.i.i, i32 0, i32 1, i32 9
  %30 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  %31 = ptrtoint ptr %response_length.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %response_length.i, align 4
  %sg_list.i = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 7, i32 2
  %32 = ptrtoint ptr %sg_list.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sg_list.i, align 4
  %34 = ptrtoint ptr %sg_cnt8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sg_cnt8, align 4
  %request.i = getelementptr inbounds %struct.bmic_csmi_smp_passthru_buffer, ptr %call7.i.i.i, i32 0, i32 1, i32 6
  %call10.i = tail call i32 @sg_copy_to_buffer(ptr noundef %33, i32 noundef %35, ptr noundef %request.i, i32 noundef %spec.select.i) #8
  %call16 = call i32 @pqi_csmi_smp_passthru(ptr noundef %2, ptr noundef nonnull %call7.i.i.i, i32 noundef 2092, ptr noundef nonnull %error_info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.out_crit_edge

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = call fastcc i32 @pqi_build_sas_smp_handler_reply(ptr noundef nonnull %call7.i.i.i, ptr noundef %job, ptr noundef nonnull %error_info)
  br label %out

out:                                              ; preds = %if.end19, %if.end15.out_crit_edge, %if.end11.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end5.out_crit_edge, %if.end2.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call16, %if.end15.out_crit_edge ], [ 0, %if.end19 ], [ -12, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -22, %if.end2.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.end5.out_crit_edge ], [ -12, %if.end11.out_crit_edge ]
  %reslen.0 = phi i32 [ 0, %if.end15.out_crit_edge ], [ %call20, %if.end19 ], [ 0, %entry.out_crit_edge ], [ 0, %if.end.out_crit_edge ], [ 0, %if.end2.out_crit_edge ], [ 0, %lor.lhs.false.out_crit_edge ], [ 0, %if.end5.out_crit_edge ], [ 0, %if.end11.out_crit_edge ]
  call void @bsg_job_done(ptr noundef %job, i32 noundef %rc.0, i32 noundef %reslen.0) #8
  call void @llvm.lifetime.end.p0(i64 276, ptr nonnull %error_info) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pqi_csmi_smp_passthru(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pqi_build_sas_smp_handler_reply(ptr noundef %smp_buf, ptr nocapture noundef %job, ptr nocapture noundef readonly %error_info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %reply_payload = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8
  %sg_list = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8, i32 2
  %0 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sg_list, align 4
  %sg_cnt = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %sg_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg_cnt, align 4
  %response = getelementptr inbounds %struct.bmic_csmi_smp_passthru_buffer, ptr %smp_buf, i32 0, i32 1, i32 10
  %response_length = getelementptr inbounds %struct.bmic_csmi_smp_passthru_buffer, ptr %smp_buf, i32 0, i32 1, i32 9
  %4 = ptrtoint ptr %response_length to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %response_length, align 1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %call = tail call i32 @sg_copy_from_buffer(ptr noundef %1, i32 noundef %3, ptr noundef %response, i32 noundef %6) #8
  %sense_data_length = getelementptr inbounds %struct.pqi_raid_error_info, ptr %error_info, i32 0, i32 5
  %7 = ptrtoint ptr %sense_data_length to i32
  call void @__asan_loadN_noabort(i32 %7, i32 2)
  %8 = load i16, ptr %sense_data_length, align 1
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  %reply_len = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 6
  %10 = ptrtoint ptr %reply_len to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv, ptr %reply_len, align 4
  %reply = getelementptr inbounds %struct.bsg_job, ptr %job, i32 0, i32 4
  %11 = ptrtoint ptr %reply to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reply, align 4
  %data = getelementptr inbounds %struct.pqi_raid_error_info, ptr %error_info, i32 0, i32 9
  %13 = ptrtoint ptr %sense_data_length to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %sense_data_length, align 1
  %15 = tail call i16 @llvm.bswap.i16(i16 %14)
  %conv4 = zext i16 %15 to i32
  %16 = call ptr @memcpy(ptr %12, ptr %data, i32 %conv4)
  %17 = ptrtoint ptr %reply_payload to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %reply_payload, align 4
  %data_in_transferred = getelementptr inbounds %struct.pqi_raid_error_info, ptr %error_info, i32 0, i32 7
  %19 = ptrtoint ptr %data_in_transferred to i32
  call void @__asan_loadN_noabort(i32 %19, i32 4)
  %20 = load i32, ptr %data_in_transferred, align 1
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  %sub = sub i32 %18, %21
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bsg_job_done(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pqi_sas_get_linkerrors(ptr nocapture noundef readnone %phy) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pqi_sas_get_enclosure_identifier(ptr noundef readonly %rphy, ptr nocapture noundef writeonly %identifier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rphy, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %rphy, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %dev.addr.0.i = phi ptr [ %1, %if.end ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i.i, align 4
  %scsi_device_list_lock = getelementptr inbounds %struct.pqi_ctrl_info, ptr %5, i32 0, i32 70
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %scsi_device_list_lock) #8
  %scsi_device_list.i = getelementptr inbounds %struct.pqi_ctrl_info, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %scsi_device_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn19.i = load ptr, ptr %scsi_device_list.i, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %scsi_device_list.i
  br i1 %cmp.not20.i, label %dev_to_shost.exit.out_crit_edge, label %dev_to_shost.exit.for.body.i_crit_edge

dev_to_shost.exit.for.body.i_crit_edge:           ; preds = %dev_to_shost.exit
  br label %for.body.i

dev_to_shost.exit.out_crit_edge:                  ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %dev_to_shost.exit.for.body.i_crit_edge
  %.pn21.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn19.i, %dev_to_shost.exit.for.body.i_crit_edge ]
  %sas_port.i = getelementptr i8, ptr %.pn21.i, i32 -8
  %7 = ptrtoint ptr %sas_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sas_port.i, align 4
  %tobool.not.i142 = icmp eq ptr %8, null
  br i1 %tobool.not.i142, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %rphy3.i = getelementptr inbounds %struct.pqi_sas_port, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %rphy3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rphy3.i, align 8
  %cmp4.i = icmp eq ptr %10, %rphy
  br i1 %cmp4.i, label %pqi_find_device_by_sas_rphy.exit, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn21.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %scsi_device_list.i
  br i1 %cmp.not.i, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

pqi_find_device_by_sas_rphy.exit:                 ; preds = %if.end.i
  %device.0.le.i = getelementptr i8, ptr %.pn21.i, i32 -172
  %tobool8.not = icmp eq ptr %device.0.le.i, null
  br i1 %tobool8.not, label %pqi_find_device_by_sas_rphy.exit.out_crit_edge, label %if.end10

pqi_find_device_by_sas_rphy.exit.out_crit_edge:   ; preds = %pqi_find_device_by_sas_rphy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end10:                                         ; preds = %pqi_find_device_by_sas_rphy.exit
  %12 = ptrtoint ptr %device.0.le.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %device.0.le.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %13)
  %cmp11 = icmp eq i32 %13, 13
  br i1 %cmp11, label %if.end10.out.sink.split_crit_edge, label %if.end15

if.end10.out.sink.split_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

if.end15:                                         ; preds = %if.end10
  %box_index = getelementptr i8, ptr %.pn21.i, i32 -52
  %14 = ptrtoint ptr %box_index to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %box_index, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp17 = icmp eq i8 %15, -1
  br i1 %cmp17, label %if.end15.out_crit_edge, label %lor.lhs.false

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false:                                    ; preds = %if.end15
  %phys_box_on_bus = getelementptr i8, ptr %.pn21.i, i32 -51
  %16 = ptrtoint ptr %phys_box_on_bus to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %phys_box_on_bus, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp20 = icmp eq i8 %17, 0
  br i1 %cmp20, label %lor.lhs.false.out_crit_edge, label %lor.lhs.false22

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

lor.lhs.false22:                                  ; preds = %lor.lhs.false
  %bay = getelementptr i8, ptr %.pn21.i, i32 -53
  %18 = ptrtoint ptr %bay to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bay, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %19)
  %cmp24 = icmp eq i8 %19, -1
  br i1 %cmp24, label %lor.lhs.false22.out_crit_edge, label %for.cond.preheader

lor.lhs.false22.out_crit_edge:                    ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond.preheader:                               ; preds = %lor.lhs.false22
  %20 = ptrtoint ptr %scsi_device_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn151 = load ptr, ptr %scsi_device_list.i, align 4
  %cmp30.not152 = icmp eq ptr %.pn151, %scsi_device_list.i
  br i1 %cmp30.not152, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %phys_connector49 = getelementptr i8, ptr %.pn21.i, i32 -40
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn153 = phi ptr [ %.pn151, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %device.0 = getelementptr i8, ptr %.pn153, i32 -172
  %21 = ptrtoint ptr %device.0 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %device.0, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %22)
  %cmp33 = icmp eq i32 %22, 13
  br i1 %cmp33, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %box_index35 = getelementptr i8, ptr %.pn153, i32 -52
  %23 = ptrtoint ptr %box_index35 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %box_index35, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %15)
  %cmp39 = icmp eq i8 %24, %15
  br i1 %cmp39, label %land.lhs.true41, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true41:                                  ; preds = %land.lhs.true
  %phys_box_on_bus42 = getelementptr i8, ptr %.pn153, i32 -51
  %25 = ptrtoint ptr %phys_box_on_bus42 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %phys_box_on_bus42, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %17)
  %cmp46 = icmp eq i8 %26, %17
  br i1 %cmp46, label %land.lhs.true48, label %land.lhs.true41.for.inc_crit_edge

land.lhs.true41.for.inc_crit_edge:                ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true48:                                  ; preds = %land.lhs.true41
  %phys_connector = getelementptr i8, ptr %.pn153, i32 -40
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(2) %phys_connector, ptr noundef dereferenceable(2) %phys_connector49, i32 2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp52 = icmp eq i32 %bcmp, 0
  br i1 %cmp52, label %land.lhs.true48.out.sink.split_crit_edge, label %land.lhs.true48.for.inc_crit_edge

land.lhs.true48.for.inc_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true48.out.sink.split_crit_edge:         ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

for.inc:                                          ; preds = %land.lhs.true48.for.inc_crit_edge, %land.lhs.true41.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %27 = ptrtoint ptr %.pn153 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn = load ptr, ptr %.pn153, align 4
  %cmp30.not = icmp eq ptr %.pn, %scsi_device_list.i
  br i1 %cmp30.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %phy_connected_dev_type = getelementptr i8, ptr %.pn21.i, i32 -50
  %28 = ptrtoint ptr %phy_connected_dev_type to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %phy_connected_dev_type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %29)
  %cmp65.not = icmp eq i8 %29, 7
  br i1 %cmp65.not, label %for.cond74.preheader, label %for.end.out_crit_edge

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.cond74.preheader:                             ; preds = %for.end
  %30 = ptrtoint ptr %scsi_device_list.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn141155 = load ptr, ptr %scsi_device_list.i, align 4
  %cmp77.not156 = icmp eq ptr %.pn141155, %scsi_device_list.i
  br i1 %cmp77.not156, label %for.cond74.preheader.out_crit_edge, label %for.cond74.preheader.for.body80_crit_edge

for.cond74.preheader.for.body80_crit_edge:        ; preds = %for.cond74.preheader
  br label %for.body80

for.cond74.preheader.out_crit_edge:               ; preds = %for.cond74.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body80:                                       ; preds = %for.inc97.for.body80_crit_edge, %for.cond74.preheader.for.body80_crit_edge
  %.pn141157 = phi ptr [ %.pn141, %for.inc97.for.body80_crit_edge ], [ %.pn141155, %for.cond74.preheader.for.body80_crit_edge ]
  %device.1 = getelementptr i8, ptr %.pn141157, i32 -172
  %31 = ptrtoint ptr %device.1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %device.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %32)
  %cmp82 = icmp eq i32 %32, 13
  br i1 %cmp82, label %land.lhs.true84, label %for.body80.for.inc97_crit_edge

for.body80.for.inc97_crit_edge:                   ; preds = %for.body80
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc97

land.lhs.true84:                                  ; preds = %for.body80
  %arrayidx85 = getelementptr i8, ptr %.pn141157, i32 -145
  %33 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx85, align 1
  %35 = and i8 %34, 63
  %and = zext i8 %35 to i32
  %sub = shl nuw nsw i32 %and, 8
  %shl = add nsw i32 %sub, -256
  %arrayidx88 = getelementptr i8, ptr %.pn141157, i32 -146
  %36 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx88, align 2
  %conv89 = zext i8 %37 to i32
  %add = or i32 %shl, %conv89
  call void @__sanitizer_cov_trace_const_cmp4(i32 379, i32 %add)
  %cmp90 = icmp eq i32 %add, 379
  br i1 %cmp90, label %land.lhs.true84.out.sink.split_crit_edge, label %land.lhs.true84.for.inc97_crit_edge

land.lhs.true84.for.inc97_crit_edge:              ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc97

land.lhs.true84.out.sink.split_crit_edge:         ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.sink.split

for.inc97:                                        ; preds = %land.lhs.true84.for.inc97_crit_edge, %for.body80.for.inc97_crit_edge
  %38 = ptrtoint ptr %.pn141157 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn141 = load ptr, ptr %.pn141157, align 4
  %cmp77.not = icmp eq ptr %.pn141, %scsi_device_list.i
  br i1 %cmp77.not, label %for.inc97.out_crit_edge, label %for.inc97.for.body80_crit_edge

for.inc97.for.body80_crit_edge:                   ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body80

for.inc97.out_crit_edge:                          ; preds = %for.inc97
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out.sink.split:                                   ; preds = %land.lhs.true84.out.sink.split_crit_edge, %land.lhs.true48.out.sink.split_crit_edge, %if.end10.out.sink.split_crit_edge
  %.pn141157.lcssa.sink = phi ptr [ %.pn21.i, %if.end10.out.sink.split_crit_edge ], [ %.pn141157, %land.lhs.true84.out.sink.split_crit_edge ], [ %.pn153, %land.lhs.true48.out.sink.split_crit_edge ]
  %arrayidx94 = getelementptr i8, ptr %.pn141157.lcssa.sink, i32 -136
  %39 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %arrayidx94, align 1
  %41 = ptrtoint ptr %identifier to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %identifier, align 8
  br label %out

out:                                              ; preds = %out.sink.split, %for.inc97.out_crit_edge, %for.cond74.preheader.out_crit_edge, %for.end.out_crit_edge, %lor.lhs.false22.out_crit_edge, %lor.lhs.false.out_crit_edge, %if.end15.out_crit_edge, %pqi_find_device_by_sas_rphy.exit.out_crit_edge, %for.inc.i.out_crit_edge, %dev_to_shost.exit.out_crit_edge
  %rc.0 = phi i32 [ -19, %pqi_find_device_by_sas_rphy.exit.out_crit_edge ], [ -22, %lor.lhs.false22.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %if.end15.out_crit_edge ], [ -22, %for.end.out_crit_edge ], [ -19, %dev_to_shost.exit.out_crit_edge ], [ -22, %for.cond74.preheader.out_crit_edge ], [ 0, %out.sink.split ], [ -22, %for.inc97.out_crit_edge ], [ -19, %for.inc.i.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %scsi_device_list_lock, i32 noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pqi_sas_get_bay_identifier(ptr noundef readonly %rphy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %rphy, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %rphy, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %dev.addr.0.i = phi ptr [ %1, %if.end ], [ %3, %while.body.i.while.cond.i_crit_edge ]
  %call.i = tail call i32 @scsi_is_host_device(ptr noundef %dev.addr.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond.i
  %parent.i = getelementptr inbounds %struct.device, ptr %dev.addr.0.i, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %while.body.i.dev_to_shost.exit_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

while.body.i.dev_to_shost.exit_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_to_shost.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %dev.addr.0.i, i32 -584
  br label %dev_to_shost.exit

dev_to_shost.exit:                                ; preds = %while.end.i, %while.body.i.dev_to_shost.exit_crit_edge
  %retval.0.i = phi ptr [ %add.ptr.i, %while.end.i ], [ null, %while.body.i.dev_to_shost.exit_crit_edge ]
  %hostdata.i.i = getelementptr inbounds %struct.Scsi_Host, ptr %retval.0.i, i32 0, i32 53
  %4 = ptrtoint ptr %hostdata.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hostdata.i.i, align 4
  %scsi_device_list_lock = getelementptr inbounds %struct.pqi_ctrl_info, ptr %5, i32 0, i32 70
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %scsi_device_list_lock) #8
  %scsi_device_list.i = getelementptr inbounds %struct.pqi_ctrl_info, ptr %5, i32 0, i32 69
  %6 = ptrtoint ptr %scsi_device_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn19.i = load ptr, ptr %scsi_device_list.i, align 4
  %cmp.not20.i = icmp eq ptr %.pn19.i, %scsi_device_list.i
  br i1 %cmp.not20.i, label %dev_to_shost.exit.out_crit_edge, label %dev_to_shost.exit.for.body.i_crit_edge

dev_to_shost.exit.for.body.i_crit_edge:           ; preds = %dev_to_shost.exit
  br label %for.body.i

dev_to_shost.exit.out_crit_edge:                  ; preds = %dev_to_shost.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %dev_to_shost.exit.for.body.i_crit_edge
  %.pn21.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn19.i, %dev_to_shost.exit.for.body.i_crit_edge ]
  %sas_port.i = getelementptr i8, ptr %.pn21.i, i32 -8
  %7 = ptrtoint ptr %sas_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sas_port.i, align 4
  %tobool.not.i29 = icmp eq ptr %8, null
  br i1 %tobool.not.i29, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %rphy3.i = getelementptr inbounds %struct.pqi_sas_port, ptr %8, i32 0, i32 7
  %9 = ptrtoint ptr %rphy3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rphy3.i, align 8
  %cmp4.i = icmp eq ptr %10, %rphy
  br i1 %cmp4.i, label %pqi_find_device_by_sas_rphy.exit, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %11 = ptrtoint ptr %.pn21.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn21.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %scsi_device_list.i
  br i1 %cmp.not.i, label %for.inc.i.out_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.out_crit_edge:                          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

pqi_find_device_by_sas_rphy.exit:                 ; preds = %if.end.i
  %device.0.le.i = getelementptr i8, ptr %.pn21.i, i32 -172
  %tobool8.not = icmp eq ptr %device.0.le.i, null
  br i1 %tobool8.not, label %pqi_find_device_by_sas_rphy.exit.out_crit_edge, label %if.end10

pqi_find_device_by_sas_rphy.exit.out_crit_edge:   ; preds = %pqi_find_device_by_sas_rphy.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end10:                                         ; preds = %pqi_find_device_by_sas_rphy.exit
  call void @__sanitizer_cov_trace_pc() #10
  %bay = getelementptr i8, ptr %.pn21.i, i32 -53
  %12 = ptrtoint ptr %bay to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bay, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %13)
  %cmp12 = icmp eq i8 %13, -1
  %conv11 = zext i8 %13 to i32
  %spec.select = select i1 %cmp12, i32 -22, i32 %conv11
  br label %out

out:                                              ; preds = %if.end10, %pqi_find_device_by_sas_rphy.exit.out_crit_edge, %for.inc.i.out_crit_edge, %dev_to_shost.exit.out_crit_edge
  %rc.0 = phi i32 [ -19, %pqi_find_device_by_sas_rphy.exit.out_crit_edge ], [ %spec.select, %if.end10 ], [ -19, %dev_to_shost.exit.out_crit_edge ], [ -19, %for.inc.i.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %scsi_device_list_lock, i32 noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pqi_sas_phy_reset(ptr nocapture noundef readnone %phy, i32 noundef %hard_reset) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pqi_sas_phy_enable(ptr nocapture noundef readnone %phy, i32 noundef %enable) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pqi_sas_phy_setup(ptr nocapture noundef readnone %phy) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @pqi_sas_phy_release(ptr nocapture noundef %phy) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pqi_sas_phy_speed(ptr nocapture noundef readnone %phy, ptr nocapture noundef readnone %rates) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -22
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_port_alloc_num(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_port_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_phy_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_phy_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_add_phy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_delete_phy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_phy_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_port_delete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_expander_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_end_device_alloc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_rphy_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_copy_from_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_is_host_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @pqi_sas_transport_functions, !1, !"pqi_sas_transport_functions", i1 false, i1 false}
!1 = !{!"../drivers/scsi/smartpqi/smartpqi_sas_transport.c", i32 564, i32 30}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i8 0, i8 2}
