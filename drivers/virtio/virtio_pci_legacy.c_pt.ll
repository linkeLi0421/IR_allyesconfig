; ModuleID = '/llk/IR_all_yes/drivers/virtio/virtio_pci_legacy.c_pt.bc'
source_filename = "../drivers/virtio/virtio_pci_legacy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.virtio_pci_device = type { %struct.virtio_device, ptr, %struct.virtio_pci_legacy_device, %struct.virtio_pci_modern_device, i8, ptr, %struct.spinlock, %struct.list_head, ptr, i32, i32, i8, ptr, ptr, i32, i32, i8, ptr, ptr, ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.virtio_device_id = type { i32, i32 }
%struct.virtio_pci_legacy_device = type { ptr, ptr, ptr, %struct.virtio_device_id }
%struct.virtio_pci_modern_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, %struct.virtio_device_id }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.virtio_pci_vq_info = type { ptr, %struct.list_head, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }

@virtio_pci_config_ops = internal constant { %struct.virtio_config_ops, [36 x i8] } { %struct.virtio_config_ops { ptr @vp_enable_cbs, ptr @vp_get, ptr @vp_set, ptr null, ptr @vp_get_status, ptr @vp_set_status, ptr @vp_reset, ptr @vp_find_vqs, ptr @vp_del_vqs, ptr @vp_get_features, ptr @vp_finalize_features, ptr @vp_bus_name, ptr @vp_set_vq_affinity, ptr @vp_get_vq_affinity, ptr null }, [36 x i8] zeroinitializer }, align 32
@setup_vq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 142, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"platform bug: legacy virtio-pci must not be used with RAM above 0x%llxGB\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setup_vq\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/virtio/virtio_pci_legacy.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@setup_vq._entry_ptr = internal global ptr @setup_vq._entry, section ".printk_index", align 4
@___asan_gen_.5 = private unnamed_addr constant [22 x i8] c"virtio_pci_config_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 187, i32 39 }
@___asan_gen_.8 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private constant [38 x i8] c"../drivers/virtio/virtio_pci_legacy.c\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 140, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @setup_vq._entry, ptr @setup_vq._entry_ptr, ptr @virtio_pci_config_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_pci_config_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_vq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_pci_legacy_probe(ptr noundef %vp_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ldev1 = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 2
  %pci_dev2 = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 1
  %0 = ptrtoint ptr %pci_dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev2, align 8
  %2 = ptrtoint ptr %ldev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %ldev1, align 4
  %call = tail call i32 @vp_legacy_probe(ptr noundef %ldev1) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %isr = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %isr, align 4
  %isr4 = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 5
  %5 = ptrtoint ptr %isr4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %isr4, align 8
  %id = getelementptr inbounds %struct.virtio_device, ptr %vp_dev, i32 0, i32 7
  %id5 = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 2, i32 3
  %6 = ptrtoint ptr %id5 to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %7 = load i64, ptr %id5, align 4
  %8 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %id, align 8
  %config = getelementptr inbounds %struct.virtio_device, ptr %vp_dev, i32 0, i32 8
  %9 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @virtio_pci_config_ops, ptr %config, align 8
  %config_vector = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 19
  %10 = ptrtoint ptr %config_vector to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @vp_config_vector, ptr %config_vector, align 4
  %setup_vq = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 17
  %11 = ptrtoint ptr %setup_vq to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @setup_vq, ptr %setup_vq, align 4
  %del_vq = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 18
  %12 = ptrtoint ptr %del_vq to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @del_vq, ptr %del_vq, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_legacy_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @vp_config_vector(ptr noundef %vp_dev, i16 noundef zeroext %vector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ldev = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 2
  %call = tail call zeroext i16 @vp_legacy_config_vector(ptr noundef %ldev, i16 noundef zeroext %vector) #2
  ret i16 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @setup_vq(ptr noundef %vp_dev, ptr nocapture noundef writeonly %info, i32 noundef %index, ptr noundef %callback, ptr noundef %name, i1 noundef zeroext %ctx, i16 noundef zeroext %msix_vec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ldev = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 2
  %conv = trunc i32 %index to i16
  %call = tail call zeroext i16 @vp_legacy_get_queue_size(ptr noundef %ldev, i16 noundef zeroext %conv) #2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call)
  %tobool.not = icmp eq i16 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call3 = tail call zeroext i1 @vp_legacy_get_queue_enable(ptr noundef %ldev, i16 noundef zeroext %conv) #2
  br i1 %call3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %conv6 = zext i16 %msix_vec to i32
  %msix_vector = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %msix_vector to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %conv6, ptr %msix_vector, align 4
  %conv7 = zext i16 %call to i32
  %call9 = tail call ptr @vring_create_virtqueue(i32 noundef %index, i32 noundef %conv7, i32 noundef 4096, ptr noundef %vp_dev, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext %ctx, ptr noundef nonnull @vp_notify, ptr noundef %callback, ptr noundef %name) #2
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @virtqueue_get_desc_addr(ptr noundef nonnull %call9) #2
  %shr = lshr i32 %call14, 12
  tail call void @vp_legacy_set_queue_address(ptr noundef %ldev, i16 noundef zeroext %conv, i32 noundef %shr) #2
  %ioaddr = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 2, i32 2
  %1 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 16
  %priv = getelementptr inbounds %struct.virtqueue, ptr %call9, i32 0, i32 6
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %msix_vec)
  %cmp.not = icmp eq i16 %msix_vec, -1
  br i1 %cmp.not, label %if.end13.cleanup_crit_edge, label %if.then26

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then26:                                        ; preds = %if.end13
  %call29 = tail call zeroext i16 @vp_legacy_queue_vector(ptr noundef %ldev, i16 noundef zeroext %conv, i16 noundef zeroext %msix_vec) #2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call29)
  %cmp31 = icmp eq i16 %call29, -1
  br i1 %cmp31, label %if.then33, label %if.then26.cleanup_crit_edge

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.then33:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @vp_legacy_set_queue_address(ptr noundef %ldev, i16 noundef zeroext %conv, i32 noundef 0) #2
  tail call void @vring_del_virtqueue(ptr noundef nonnull %call9) #2
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.then26.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -16 to ptr), %if.then33 ], [ %call9, %if.then26.cleanup_crit_edge ], [ %call9, %if.end13.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @del_vq(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %msix_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msix_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %ldev = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 2
  %index = getelementptr inbounds %struct.virtqueue, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %conv = trunc i32 %7 to i16
  %call2 = tail call zeroext i16 @vp_legacy_queue_vector(ptr noundef %ldev, i16 noundef zeroext %conv, i16 noundef zeroext -1) #2
  %ioaddr = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %ioaddr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 19
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #2, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !20
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ldev5 = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 2
  %index6 = getelementptr inbounds %struct.virtqueue, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %index6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index6, align 4
  %conv7 = trunc i32 %12 to i16
  tail call void @vp_legacy_set_queue_address(ptr noundef %ldev5, i16 noundef zeroext %conv7, i32 noundef 0) #2
  tail call void @vring_del_virtqueue(ptr noundef %1) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_pci_legacy_remove(ptr noundef %vp_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ldev1 = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 2
  tail call void @vp_legacy_remove(ptr noundef %ldev1) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_legacy_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_enable_cbs(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_get(ptr nocapture noundef readonly %vdev, i32 noundef %offset, ptr nocapture noundef writeonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %msix_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 9
  %2 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msix_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 20, i32 24
  %add.ptr = getelementptr i8, ptr %1, i32 %cond
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp9.not = icmp eq i32 %len, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add.ptr3 = getelementptr i8, ptr %add.ptr2, i32 %i.010
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr3) #2, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !20
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.010
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %arrayidx, align 1
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_set(ptr nocapture noundef readonly %vdev, i32 noundef %offset, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ioaddr1 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %ioaddr1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioaddr1, align 4
  %msix_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 9
  %2 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msix_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %cond = select i1 %tobool.not, i32 20, i32 24
  %add.ptr = getelementptr i8, ptr %1, i32 %cond
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp8.not = icmp eq i32 %len, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.09
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %add.ptr3 = getelementptr i8, ptr %add.ptr2, i32 %i.09
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !21
  tail call void @arm_heavy_mb() #2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr3, i8 %5) #2, !srcloc !22
  %inc = add nuw i32 %i.09, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @vp_get_status(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ldev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 2
  %call1 = tail call zeroext i8 @vp_legacy_get_status(ptr noundef %ldev) #2
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_set_status(ptr noundef %vdev, i8 noundef zeroext %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %cmp = icmp eq i8 %status, 0
  br i1 %cmp, label %do.body3, label %do.end8, !prof !23

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_pci_legacy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 89, 0\0A.popsection", ""() #2, !srcloc !24
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %ldev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 2
  tail call void @vp_legacy_set_status(ptr noundef %ldev, i8 noundef zeroext %status) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_reset(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ldev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 2
  tail call void @vp_legacy_set_status(ptr noundef %ldev, i8 noundef zeroext 0) #2
  %call2 = tail call zeroext i8 @vp_legacy_get_status(ptr noundef %ldev) #2
  tail call void @vp_disable_cbs(ptr noundef %vdev) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_find_vqs(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_del_vqs(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vp_get_features(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ldev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 2
  %call1 = tail call i64 @vp_legacy_get_features(ptr noundef %ldev) #2
  ret i64 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_finalize_features(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @vring_transport_features(ptr noundef %vdev) #2
  %features = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %0 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %1)
  %2 = icmp ult i64 %1, 4294967296
  br i1 %2, label %do.end10, label %do.body5, !prof !25

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_pci_legacy.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 39, 0\0A.popsection", ""() #2, !srcloc !26
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %conv = trunc i64 %1 to i32
  %ldev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 2
  tail call void @vp_legacy_set_features(ptr noundef %ldev, i32 noundef %conv) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vp_bus_name(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_set_vq_affinity(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vp_get_vq_affinity(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vp_legacy_get_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_legacy_set_status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_disable_cbs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vp_legacy_get_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_transport_features(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_legacy_set_features(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vp_legacy_config_vector(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vp_legacy_get_queue_size(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vp_legacy_get_queue_enable(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vring_create_virtqueue(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vp_notify(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_desc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_legacy_set_queue_address(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vp_legacy_queue_vector(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_del_virtqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @virtio_pci_config_ops, !1, !"virtio_pci_config_ops", i1 false, i1 false}
!1 = !{!"../drivers/virtio/virtio_pci_legacy.c", i32 187, i32 39}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/virtio/virtio_pci_legacy.c", i32 140, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @setup_vq._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @setup_vq._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 4985828}
!20 = !{i64 2152525173}
!21 = !{i64 2152526778}
!22 = !{i64 4985433}
!23 = !{!"branch_weights", i32 1, i32 2000}
!24 = !{i64 2154614144, i64 2154618703, i64 2154614181, i64 2154614237, i64 2154614271, i64 2154614295, i64 2154614336, i64 2154614357, i64 2154614385, i64 2154614419}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2154612411, i64 2154612909, i64 2154612448, i64 2154612504, i64 2154612538, i64 2154612562, i64 2154612603, i64 2154612624, i64 2154612652, i64 2154612686}
