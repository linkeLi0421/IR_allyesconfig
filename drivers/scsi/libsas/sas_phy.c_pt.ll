; ModuleID = '/llk/IR_all_yes/drivers/scsi/libsas/sas_phy.c_pt.bc'
source_filename = "../drivers/scsi/libsas/sas_phy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sas_ha_struct = type { %struct.list_head, %struct.mutex, i32, %struct.spinlock, i32, %struct.wait_queue_head, %struct.list_head, %struct.mutex, %struct.scsi_core, ptr, ptr, ptr, ptr, ptr, ptr, [3 x i8], %struct.spinlock, ptr, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.scsi_core = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.asd_sas_phy = type { %struct.atomic_t, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [8 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, %struct.list_head, ptr, ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.sas_phy = type { %struct.device, i32, i32, %struct.sas_identify, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.list_head, ptr }
%struct.sas_identify = type { i32, i32, i32, i64, i8 }
%struct.sas_internal = type { %struct.scsi_transport_template, ptr, ptr, [0 x %struct.device_attribute], [17 x %struct.device_attribute], [1 x %struct.device_attribute], [8 x %struct.device_attribute], [5 x %struct.device_attribute], [7 x %struct.device_attribute], %struct.transport_container, %struct.transport_container, %struct.transport_container, %struct.transport_container, %struct.transport_container, [1 x ptr], [18 x ptr], [2 x ptr], [9 x ptr], [6 x ptr], [8 x ptr] }
%struct.scsi_transport_template = type { %struct.transport_container, %struct.transport_container, %struct.transport_container, ptr, i32, i32, i32, i32, i32, i8, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.transport_container = type { %struct.attribute_container, ptr }
%struct.attribute_container = type { %struct.list_head, %struct.klist, ptr, ptr, ptr, ptr, i32 }
%struct.klist = type { %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.sas_domain_function_template = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@sas_register_phys.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&phy->frame_rcvd_lock\00", [42 x i8] zeroinitializer }, align 32
@sas_register_phys.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&phy->sas_prim_lock\00", [44 x i8] zeroinitializer }, align 32
@sas_phy_event_fns = dso_local constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @sas_phye_loss_of_signal, ptr @sas_phye_oob_done, ptr @sas_phye_oob_error, ptr @sas_phye_spinup_hold, ptr @sas_phye_resume_timeout, ptr @sas_phye_shutdown], [40 x i8] zeroinitializer }, align 32
@sas_phye_resume_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 82, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"resume timeout cancelled\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sas_phye_resume_timeout\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/scsi/libsas/sas_phy.c\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sas_phye_resume_timeout._entry_ptr = internal global ptr @sas_phye_resume_timeout._entry, section ".printk_index", align 4
@sas_phye_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 108, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\015sas: lldd disable phy%d returned %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sas_phye_shutdown\00", [46 x i8] zeroinitializer }, align 32
@sas_phye_shutdown._entry_ptr = internal global ptr @sas_phye_shutdown._entry, section ".printk_index", align 4
@sas_phye_shutdown._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.5, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\015sas: phy%d is not enabled, cannot shutdown\0A\00", [50 x i8] zeroinitializer }, align 32
@sas_phye_shutdown._entry_ptr.12 = internal global ptr @sas_phye_shutdown._entry.10, section ".printk_index", align 4
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 130, i32 3 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 131, i32 3 }
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"sas_phy_event_fns\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 155, i32 19 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 82, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 107, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private constant [33 x i8] c"../drivers/scsi/libsas/sas_phy.c\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 110, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @sas_phye_resume_timeout._entry, ptr @sas_phye_resume_timeout._entry_ptr, ptr @sas_phye_shutdown._entry, ptr @sas_phye_shutdown._entry.10, ptr @sas_phye_shutdown._entry_ptr, ptr @sas_phye_shutdown._entry_ptr.12, ptr @sas_register_phys.__key, ptr @.str, ptr @sas_register_phys.__key.1, ptr @.str.2, ptr @sas_phy_event_fns, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_register_phys.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_register_phys.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_phy_event_fns to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_phye_resume_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_phye_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sas_phye_shutdown._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sas_register_phys(ptr noundef %sas_ha) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sas_phy = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 17
  %num_phys = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 19
  %0 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp52 = icmp sgt i32 %1, 0
  br i1 %cmp52, label %for.body.lr.ph, label %entry.cleanup22_crit_edge

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup22

for.body.lr.ph:                                   ; preds = %entry
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 8
  %sas_addr = getelementptr inbounds %struct.sas_ha_struct, ptr %sas_ha, i32 0, i32 14
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.053 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %sas_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sas_phy, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.053
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %error = getelementptr inbounds %struct.asd_sas_phy, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %error, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %5, i32 noundef 4) #4
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 0, ptr %5, align 4
  %port_phy_el = getelementptr inbounds %struct.asd_sas_phy, ptr %5, i32 0, i32 21
  %8 = ptrtoint ptr %port_phy_el to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %port_phy_el, ptr %port_phy_el, align 4
  %prev.i = getelementptr inbounds %struct.asd_sas_phy, ptr %5, i32 0, i32 21, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %port_phy_el, ptr %prev.i, align 4
  %port = getelementptr inbounds %struct.asd_sas_phy, ptr %5, i32 0, i32 22
  %10 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %port, align 4
  %ha = getelementptr inbounds %struct.asd_sas_phy, ptr %5, i32 0, i32 23
  %11 = ptrtoint ptr %ha to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %sas_ha, ptr %ha, align 4
  %frame_rcvd_lock = getelementptr inbounds %struct.asd_sas_phy, ptr %5, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %frame_rcvd_lock, ptr noundef nonnull @.str, ptr noundef nonnull @sas_register_phys.__key, i16 noundef signext 3) #4
  %sas_prim_lock = getelementptr inbounds %struct.asd_sas_phy, ptr %5, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %sas_prim_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @sas_register_phys.__key.1, i16 noundef signext 3) #4
  %frame_rcvd_size = getelementptr inbounds %struct.asd_sas_phy, ptr %5, i32 0, i32 18
  %12 = ptrtoint ptr %frame_rcvd_size to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %frame_rcvd_size, align 4
  %13 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %core, align 4
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %14, i32 0, i32 49
  %call5 = tail call ptr @sas_phy_alloc(ptr noundef %shost_gendev, i32 noundef %i.053) #4
  %phy6 = getelementptr inbounds %struct.asd_sas_phy, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %phy6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5, ptr %phy6, align 4
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %for.body.cleanup22_crit_edge, label %if.end

for.body.cleanup22_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup22

if.end:                                           ; preds = %for.body
  %iproto = getelementptr inbounds %struct.asd_sas_phy, ptr %5, i32 0, i32 8
  %16 = ptrtoint ptr %iproto to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iproto, align 4
  %initiator_port_protocols = getelementptr inbounds %struct.sas_phy, ptr %call5, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %initiator_port_protocols to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %initiator_port_protocols, align 4
  %tproto = getelementptr inbounds %struct.asd_sas_phy, ptr %5, i32 0, i32 9
  %19 = ptrtoint ptr %tproto to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tproto, align 4
  %21 = ptrtoint ptr %phy6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy6, align 4
  %target_port_protocols = getelementptr inbounds %struct.sas_phy, ptr %22, i32 0, i32 3, i32 2
  %23 = ptrtoint ptr %target_port_protocols to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %20, ptr %target_port_protocols, align 8
  %24 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sas_addr, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %25, align 8
  %28 = load ptr, ptr %phy6, align 4
  %sas_address = getelementptr inbounds %struct.sas_phy, ptr %28, i32 0, i32 3, i32 3
  %29 = ptrtoint ptr %sas_address to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %27, ptr %sas_address, align 8
  %conv = trunc i32 %i.053 to i8
  %30 = load ptr, ptr %phy6, align 4
  %phy_identifier = getelementptr inbounds %struct.sas_phy, ptr %30, i32 0, i32 3, i32 4
  %31 = ptrtoint ptr %phy_identifier to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv, ptr %phy_identifier, align 8
  %32 = load ptr, ptr %phy6, align 4
  %minimum_linkrate_hw = getelementptr inbounds %struct.sas_phy, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %minimum_linkrate_hw to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %minimum_linkrate_hw, align 4
  %34 = load ptr, ptr %phy6, align 4
  %maximum_linkrate_hw = getelementptr inbounds %struct.sas_phy, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %maximum_linkrate_hw to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %maximum_linkrate_hw, align 4
  %36 = load ptr, ptr %phy6, align 4
  %minimum_linkrate = getelementptr inbounds %struct.sas_phy, ptr %36, i32 0, i32 6
  %37 = ptrtoint ptr %minimum_linkrate to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %minimum_linkrate, align 8
  %38 = load ptr, ptr %phy6, align 4
  %maximum_linkrate = getelementptr inbounds %struct.sas_phy, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %maximum_linkrate to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %maximum_linkrate, align 8
  %40 = load ptr, ptr %phy6, align 4
  %negotiated_linkrate = getelementptr inbounds %struct.sas_phy, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %negotiated_linkrate to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %negotiated_linkrate, align 8
  %42 = load ptr, ptr %phy6, align 4
  %call21 = tail call i32 @sas_phy_add(ptr noundef %42) #4
  %inc = add nuw nsw i32 %i.053, 1
  %43 = ptrtoint ptr %num_phys to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_phys, align 4
  %cmp = icmp slt i32 %inc, %44
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup22_crit_edge

if.end.cleanup22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup22

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup22:                                        ; preds = %if.end.cleanup22_crit_edge, %for.body.cleanup22_crit_edge, %entry.cleanup22_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup22_crit_edge ], [ -12, %for.body.cleanup22_crit_edge ], [ 0, %if.end.cleanup22_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sas_phy_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sas_phy_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_phye_loss_of_signal(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %error = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %error, align 4
  tail call void @sas_deform_port(ptr noundef %1, i32 noundef 1) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sas_phye_oob_done(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %error = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %error, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_phye_oob_error(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %ha = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %port2 = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %port2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %port2, align 4
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %transportt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transportt, align 4
  tail call void @sas_deform_port(ptr noundef %1, i32 noundef 1) #4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %enabled = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool3.not = icmp eq i32 %11, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %dft = getelementptr inbounds %struct.sas_internal, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dft, align 4
  %lldd_control_phy = getelementptr inbounds %struct.sas_domain_function_template, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %lldd_control_phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lldd_control_phy, align 4
  %tobool5.not = icmp eq ptr %15, null
  br i1 %tobool5.not, label %land.lhs.true4.if.end_crit_edge, label %if.then

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true4
  %error = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %error, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %switch = icmp ult i32 %17, 2
  br i1 %switch, label %if.then.if.end.sink.split_crit_edge, label %sw.default

if.then.if.end.sink.split_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.sink.split

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %error, align 4
  %19 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %enabled, align 4
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %sw.default, %if.then.if.end.sink.split_crit_edge
  %.sink = phi i32 [ 3, %sw.default ], [ 2, %if.then.if.end.sink.split_crit_edge ]
  %20 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dft, align 4
  %lldd_control_phy8 = getelementptr inbounds %struct.sas_domain_function_template, ptr %21, i32 0, i32 16
  %22 = ptrtoint ptr %lldd_control_phy8 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lldd_control_phy8, align 4
  %call9 = tail call i32 %23(ptr noundef %1, i32 noundef %.sink, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %land.lhs.true4.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_phye_spinup_hold(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %ha = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ha, align 4
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %core, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %transportt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transportt, align 4
  %error = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %error, align 4
  %dft = getelementptr inbounds %struct.sas_internal, ptr %7, i32 0, i32 2
  %9 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dft, align 4
  %lldd_control_phy = getelementptr inbounds %struct.sas_domain_function_template, ptr %10, i32 0, i32 16
  %11 = ptrtoint ptr %lldd_control_phy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lldd_control_phy, align 4
  %call2 = tail call i32 %12(ptr noundef %1, i32 noundef 16, ptr noundef null) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_phye_resume_timeout(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %suspended = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %suspended to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %suspended, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %phy2 = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.3) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %error = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %error, align 4
  %7 = ptrtoint ptr %suspended to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %suspended, align 4
  tail call void @sas_deform_port(ptr noundef %1, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sas_phye_shutdown(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %phy1 = getelementptr i8, ptr %work, i32 44
  %0 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy1, align 4
  %enabled = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end10, label %if.then

if.then:                                          ; preds = %entry
  %ha = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 23
  %4 = ptrtoint ptr %ha to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ha, align 4
  %core = getelementptr inbounds %struct.sas_ha_struct, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %transportt = getelementptr inbounds %struct.Scsi_Host, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %transportt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transportt, align 4
  %error = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %error, align 4
  %11 = ptrtoint ptr %enabled to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %enabled, align 4
  %dft = getelementptr inbounds %struct.sas_internal, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %dft to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dft, align 4
  %lldd_control_phy = getelementptr inbounds %struct.sas_domain_function_template, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %lldd_control_phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lldd_control_phy, align 4
  %call3 = tail call i32 %15(ptr noundef %1, i32 noundef 3, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end14_crit_edge, label %do.end

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %id = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %17, i32 noundef %call3) #7
  br label %if.end14

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %id12 = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %id12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id12, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %19) #7
  br label %if.end14

if.end14:                                         ; preds = %do.end10, %do.end, %if.then.if.end14_crit_edge
  %in_shutdown = getelementptr inbounds %struct.asd_sas_phy, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %in_shutdown to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %in_shutdown, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sas_deform_port(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !23, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @sas_register_phys.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/scsi/libsas/sas_phy.c", i32 130, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @sas_register_phys.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../drivers/scsi/libsas/sas_phy.c", i32 131, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sas_phy_event_fns, !7, !"sas_phy_event_fns", i1 false, i1 false}
!7 = !{!"../drivers/scsi/libsas/sas_phy.c", i32 155, i32 19}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/scsi/libsas/sas_phy.c", i32 82, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sas_phye_resume_timeout._entry, !9, !"_entry", i1 false, i1 false}
!15 = !{ptr @sas_phye_resume_timeout._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/libsas/sas_phy.c", i32 107, i32 4}
!18 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sas_phye_shutdown._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @sas_phye_shutdown._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/scsi/libsas/sas_phy.c", i32 110, i32 3}
!23 = !{ptr @sas_phye_shutdown._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @sas_phye_shutdown._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
