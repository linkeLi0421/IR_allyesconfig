; ModuleID = '/llk/IR_all_yes/drivers/virtio/virtio_pci_modern.c_pt.bc'
source_filename = "../drivers/virtio/virtio_pci_modern.c"
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
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.virtio_pci_vq_info = type { ptr, %struct.list_head, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.virtio_shm_region = type { i64, i64 }

@virtio_pci_config_ops = internal constant { %struct.virtio_config_ops, [36 x i8] } { %struct.virtio_config_ops { ptr @vp_enable_cbs, ptr @vp_get, ptr @vp_set, ptr @vp_generation, ptr @vp_get_status, ptr @vp_set_status, ptr @vp_reset, ptr @vp_modern_find_vqs, ptr @vp_del_vqs, ptr @vp_get_features, ptr @vp_finalize_features, ptr @vp_bus_name, ptr @vp_set_vq_affinity, ptr @vp_get_vq_affinity, ptr @vp_get_shm_region }, [36 x i8] zeroinitializer }, align 32
@virtio_pci_config_nodev_ops = internal constant { %struct.virtio_config_ops, [36 x i8] } { %struct.virtio_config_ops { ptr @vp_enable_cbs, ptr null, ptr null, ptr @vp_generation, ptr @vp_get_status, ptr @vp_set_status, ptr @vp_reset, ptr @vp_modern_find_vqs, ptr @vp_del_vqs, ptr @vp_get_features, ptr @vp_finalize_features, ptr @vp_bus_name, ptr @vp_set_vq_affinity, ptr @vp_get_vq_affinity, ptr @vp_get_shm_region }, [36 x i8] zeroinitializer }, align 32
@vp_finalize_features._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 53, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"virtio: device uses modern interface but does not have VIRTIO_F_VERSION_1\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vp_finalize_features\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/virtio/virtio_pci_modern.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vp_finalize_features._entry_ptr = internal global ptr @vp_finalize_features._entry, section ".printk_index", align 4
@vp_get_shm_region._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 366, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: cap offset+len overflow detected\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vp_get_shm_region\00", [46 x i8] zeroinitializer }, align 32
@vp_get_shm_region._entry_ptr = internal global ptr @vp_get_shm_region._entry, section ".printk_index", align 4
@vp_get_shm_region._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 372, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: bar shorter than cap offset+len\0A\00", [59 x i8] zeroinitializer }, align 32
@vp_get_shm_region._entry_ptr.9 = internal global ptr @vp_get_shm_region._entry.7, section ".printk_index", align 4
@virtio_pci_find_shm_cap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 309, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: shm cap with bad size offset: %d size: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"virtio_pci_find_shm_cap\00", [40 x i8] zeroinitializer }, align 32
@virtio_pci_find_shm_cap._entry_ptr = internal global ptr @virtio_pci_find_shm_cap._entry, section ".printk_index", align 4
@setup_vq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.2, i32 207, ptr @.str.14, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"bad queue size %u\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setup_vq\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@setup_vq._entry_ptr = internal global ptr @setup_vq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.16 = private unnamed_addr constant [22 x i8] c"virtio_pci_config_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 400, i32 39 }
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"virtio_pci_config_nodev_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 382, i32 39 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 52, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 365, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 371, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 308, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [38 x i8] c"../drivers/virtio/virtio_pci_modern.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 207, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @setup_vq._entry, ptr @setup_vq._entry_ptr, ptr @virtio_pci_find_shm_cap._entry, ptr @virtio_pci_find_shm_cap._entry_ptr, ptr @vp_finalize_features._entry, ptr @vp_finalize_features._entry_ptr, ptr @vp_get_shm_region._entry, ptr @vp_get_shm_region._entry.7, ptr @vp_get_shm_region._entry_ptr, ptr @vp_get_shm_region._entry_ptr.9, ptr @virtio_pci_config_ops, ptr @virtio_pci_config_nodev_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_pci_config_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_pci_config_nodev_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_finalize_features._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_get_shm_region._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_get_shm_region._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_pci_find_shm_cap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_vq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_pci_modern_probe(ptr noundef %vp_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 3
  %pci_dev2 = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 1
  %0 = ptrtoint ptr %pci_dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev2, align 8
  %2 = ptrtoint ptr %mdev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %mdev1, align 4
  %call = tail call i32 @vp_modern_probe(ptr noundef %mdev1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %device = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %tobool4.not = icmp eq ptr %4, null
  %spec.select = select i1 %tobool4.not, ptr @virtio_pci_config_nodev_ops, ptr @virtio_pci_config_ops
  %5 = getelementptr inbounds %struct.virtio_device, ptr %vp_dev, i32 0, i32 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spec.select, ptr %5, align 8
  %config_vector = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 19
  %7 = ptrtoint ptr %config_vector to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vp_config_vector, ptr %config_vector, align 4
  %setup_vq = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 17
  %8 = ptrtoint ptr %setup_vq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @setup_vq, ptr %setup_vq, align 4
  %del_vq = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 18
  %9 = ptrtoint ptr %del_vq to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @del_vq, ptr %del_vq, align 8
  %isr = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 3, i32 5
  %10 = ptrtoint ptr %isr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %isr, align 4
  %isr9 = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 5
  %12 = ptrtoint ptr %isr9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %isr9, align 8
  %id = getelementptr inbounds %struct.virtio_device, ptr %vp_dev, i32 0, i32 7
  %id11 = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 3, i32 11
  %13 = ptrtoint ptr %id11 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %id11, align 4
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %id, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_modern_probe(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @vp_config_vector(ptr noundef %vp_dev, i16 noundef zeroext %vector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 3
  %call = tail call zeroext i16 @vp_modern_config_vector(ptr noundef %mdev, i16 noundef zeroext %vector) #4
  ret i16 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @setup_vq(ptr noundef %vp_dev, ptr nocapture noundef writeonly %info, i32 noundef %index, ptr noundef %callback, ptr noundef %name, i1 noundef zeroext %ctx, i16 noundef zeroext %msix_vec) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 3
  %call = tail call zeroext i16 @vp_modern_get_num_queues(ptr noundef %mdev1) #4
  %conv = zext i16 %call to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %index)
  %cmp.not = icmp ugt i32 %conv, %index
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv4 = trunc i32 %index to i16
  %call5 = tail call zeroext i16 @vp_modern_get_queue_size(ptr noundef %mdev1, i16 noundef zeroext %conv4) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call5)
  %tobool.not = icmp eq i16 %call5, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call7 = tail call zeroext i1 @vp_modern_get_queue_enable(ptr noundef %mdev1, i16 noundef zeroext %conv4) #4
  br i1 %call7, label %lor.lhs.false.cleanup_crit_edge, label %if.end11

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %conv12 = zext i16 %call5 to i32
  %sub = add nuw nsw i32 %conv12, 65535
  %and = and i32 %sub, %conv12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end18, label %do.end

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %pci_dev = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 1
  %0 = ptrtoint ptr %pci_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv12) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %conv19 = zext i16 %msix_vec to i32
  %msix_vector = getelementptr inbounds %struct.virtio_pci_vq_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %msix_vector to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv19, ptr %msix_vector, align 4
  %call22 = tail call ptr @vring_create_virtqueue(i32 noundef %index, i32 noundef %conv12, i32 noundef 128, ptr noundef %vp_dev, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext %ctx, ptr noundef nonnull @vp_notify, ptr noundef %callback, ptr noundef %name) #4
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end18.cleanup_crit_edge, label %if.end26

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %call28 = tail call i32 @virtqueue_get_vring_size(ptr noundef nonnull %call22) #4
  %conv29 = trunc i32 %call28 to i16
  tail call void @vp_modern_set_queue_size(ptr noundef %mdev1, i16 noundef zeroext %conv4, i16 noundef zeroext %conv29) #4
  %call31 = tail call i32 @virtqueue_get_desc_addr(ptr noundef nonnull %call22) #4
  %conv32 = zext i32 %call31 to i64
  %call33 = tail call i32 @virtqueue_get_avail_addr(ptr noundef nonnull %call22) #4
  %conv34 = zext i32 %call33 to i64
  %call35 = tail call i32 @virtqueue_get_used_addr(ptr noundef nonnull %call22) #4
  %conv36 = zext i32 %call35 to i64
  tail call void @vp_modern_queue_address(ptr noundef %mdev1, i16 noundef zeroext %conv4, i64 noundef %conv32, i64 noundef %conv34, i64 noundef %conv36) #4
  %call38 = tail call ptr @vp_modern_map_vq_notify(ptr noundef %mdev1, i16 noundef zeroext %conv4, ptr noundef null) #4
  %priv = getelementptr inbounds %struct.virtqueue, ptr %call22, i32 0, i32 6
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call38, ptr %priv, align 4
  %tobool40.not = icmp eq ptr %call38, null
  br i1 %tobool40.not, label %if.end26.err_map_notify_crit_edge, label %if.end42

if.end26.err_map_notify_crit_edge:                ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_map_notify

if.end42:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %msix_vec)
  %cmp44.not = icmp eq i16 %msix_vec, -1
  br i1 %cmp44.not, label %if.end42.cleanup_crit_edge, label %if.then46

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then46:                                        ; preds = %if.end42
  %call48 = tail call zeroext i16 @vp_modern_queue_vector(ptr noundef %mdev1, i16 noundef zeroext %conv4, i16 noundef zeroext %msix_vec) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call48)
  %cmp50 = icmp eq i16 %call48, -1
  br i1 %cmp50, label %if.then52, label %if.then46.cleanup_crit_edge

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then52:                                        ; preds = %if.then46
  %notify_base = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %notify_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %notify_base, align 4
  %tobool55.not = icmp eq ptr %5, null
  br i1 %tobool55.not, label %if.then56, label %if.then52.err_map_notify_crit_edge

if.then52.err_map_notify_crit_edge:               ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_map_notify

if.then56:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %mdev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mdev1, align 4
  %8 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv, align 4
  tail call void @pci_iounmap(ptr noundef %7, ptr noundef %9) #4
  br label %err_map_notify

err_map_notify:                                   ; preds = %if.then56, %if.then52.err_map_notify_crit_edge, %if.end26.err_map_notify_crit_edge
  %err.0 = phi ptr [ inttoptr (i32 -16 to ptr), %if.then52.err_map_notify_crit_edge ], [ inttoptr (i32 -16 to ptr), %if.then56 ], [ inttoptr (i32 -12 to ptr), %if.end26.err_map_notify_crit_edge ]
  tail call void @vring_del_virtqueue(ptr noundef nonnull %call22) #4
  br label %cleanup

cleanup:                                          ; preds = %err_map_notify, %if.then46.cleanup_crit_edge, %if.end42.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ %err.0, %err_map_notify ], [ %call22, %if.then46.cleanup_crit_edge ], [ %call22, %if.end42.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end18.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @del_vq(ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vdev, align 4
  %mdev2 = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 3
  %msix_enabled = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %msix_enabled to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msix_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %index = getelementptr inbounds %struct.virtqueue, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  %conv = trunc i32 %7 to i16
  %call3 = tail call zeroext i16 @vp_modern_queue_vector(ptr noundef %mdev2, i16 noundef zeroext %conv, i16 noundef zeroext -1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %notify_base = getelementptr inbounds %struct.virtio_pci_device, ptr %3, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %notify_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %notify_base, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %mdev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mdev2, align 4
  %priv = getelementptr inbounds %struct.virtqueue, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 4
  tail call void @pci_iounmap(ptr noundef %11, ptr noundef %13) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  tail call void @vring_del_virtqueue(ptr noundef %1) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_pci_modern_remove(ptr noundef %vp_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.virtio_pci_device, ptr %vp_dev, i32 0, i32 3
  tail call void @vp_modern_remove(ptr noundef %mdev1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_enable_cbs(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_get(ptr nocapture noundef readonly %vdev, i32 noundef %offset, ptr nocapture noundef writeonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %add = add i32 %len, %offset
  %device_len = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %device_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ugt i32 %add, %3
  br i1 %cmp, label %do.body4, label %do.end9, !prof !41

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_pci_modern.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 73, 0\0A.popsection", ""() #4, !srcloc !42
  unreachable

do.end9:                                          ; preds = %entry
  %4 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %len, label %do.body24 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 4, label %sw.bb14
    i32 8, label %sw.bb17
  ]

sw.bb:                                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #4, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !44
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %buf, align 1
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr12 = getelementptr i8, ptr %1, i32 %offset
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr12) #4, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !46
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %8, i32 2)
  store i16 %7, ptr %buf, align 1
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr15 = getelementptr i8, ptr %1, i32 %offset
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #4, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  %10 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %buf, align 1
  br label %sw.epilog

sw.bb17:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr18 = getelementptr i8, ptr %1, i32 %offset
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #4, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %buf, align 1
  %add.ptr21 = getelementptr i8, ptr %add.ptr18, i32 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #4, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !48
  %add.ptr23 = getelementptr i8, ptr %buf, i32 4
  %14 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %13, ptr %add.ptr23, align 1
  br label %sw.epilog

do.body24:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_pci_modern.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 95, 0\0A.popsection", ""() #4, !srcloc !49
  unreachable

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb14, %sw.bb11, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_set(ptr nocapture noundef readonly %vdev, i32 noundef %offset, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %device2 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %device2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device2, align 4
  %add = add i32 %len, %offset
  %device_len = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %device_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %device_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp = icmp ugt i32 %add, %3
  br i1 %cmp, label %do.body4, label %do.end9, !prof !41

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_pci_modern.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 111, 0\0A.popsection", ""() #4, !srcloc !50
  unreachable

do.end9:                                          ; preds = %entry
  %4 = zext i32 %len to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %len, label %do.body19 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 4, label %sw.bb12
    i32 8, label %sw.bb14
  ]

sw.bb:                                            ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %b.0.copyload = load i8, ptr %buf, align 1
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %b.0.copyload) #4, !srcloc !52
  br label %sw.epilog

sw.bb10:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %6, i32 2)
  %w.0.copyload = load i16, ptr %buf, align 1
  %add.ptr11 = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11, i16 %w.0.copyload) #4, !srcloc !54
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %l.0.copyload = load i32, ptr %buf, align 1
  %add.ptr13 = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %l.0.copyload) #4, !srcloc !56
  br label %sw.epilog

sw.bb14:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %8, i32 4)
  %l.0.copyload25 = load i32, ptr %buf, align 1
  %add.ptr15 = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %l.0.copyload25) #4, !srcloc !56
  %add.ptr16 = getelementptr i8, ptr %buf, i32 4
  %9 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %l.0.copyload27 = load i32, ptr %add.ptr16, align 1
  %add.ptr18 = getelementptr i8, ptr %add.ptr15, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %l.0.copyload27) #4, !srcloc !56
  br label %sw.epilog

do.body19:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_pci_modern.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 133, 0\0A.popsection", ""() #4, !srcloc !57
  unreachable

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_generation(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 3
  %call1 = tail call i32 @vp_modern_generation(ptr noundef %mdev) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @vp_get_status(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 3
  %call1 = tail call zeroext i8 @vp_modern_get_status(ptr noundef %mdev) #4
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_set_status(ptr noundef %vdev, i8 noundef zeroext %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %status)
  %cmp = icmp eq i8 %status, 0
  br i1 %cmp, label %do.body3, label %do.end8, !prof !41

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/virtio/virtio_pci_modern.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 157, 0\0A.popsection", ""() #4, !srcloc !58
  unreachable

do.end8:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %mdev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 3
  tail call void @vp_modern_set_status(ptr noundef %mdev, i8 noundef zeroext %status) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vp_reset(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev1 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 3
  tail call void @vp_modern_set_status(ptr noundef %mdev1, i8 noundef zeroext 0) #4
  %call25 = tail call zeroext i8 @vp_modern_get_status(ptr noundef %mdev1) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call25)
  %tobool.not6 = icmp eq i8 %call25, 0
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @msleep(i32 noundef 1) #4
  %call2 = tail call zeroext i8 @vp_modern_get_status(ptr noundef %mdev1) #4
  %tobool.not = icmp eq i8 %call2, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @vp_disable_cbs(ptr noundef %vdev) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_modern_find_vqs(ptr noundef %vdev, i32 noundef %nvqs, ptr noundef %vqs, ptr noundef %callbacks, ptr noundef %names, ptr noundef %ctx, ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @vp_find_vqs(ptr noundef %vdev, i32 noundef %nvqs, ptr noundef %vqs, ptr noundef %callbacks, ptr noundef %names, ptr noundef %ctx, ptr noundef %desc) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %vqs2 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 10
  %0 = ptrtoint ptr %vqs2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %vq.017 = load ptr, ptr %vqs2, align 4
  %cmp.not18 = icmp eq ptr %vq.017, %vqs2
  br i1 %cmp.not18, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %mdev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %vq.019 = phi ptr [ %vq.017, %for.body.lr.ph ], [ %vq.0, %for.body.for.body_crit_edge ]
  %index = getelementptr inbounds %struct.virtqueue, ptr %vq.019, i32 0, i32 4
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %conv = trunc i32 %2 to i16
  tail call void @vp_modern_set_queue_enable(ptr noundef %mdev, i16 noundef zeroext %conv, i1 noundef zeroext true) #4
  %3 = ptrtoint ptr %vq.019 to i32
  call void @__asan_load4_noabort(i32 %3)
  %vq.0 = load ptr, ptr %vq.019, align 4
  %cmp.not = icmp eq ptr %vq.0, %vqs2
  br i1 %cmp.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_del_vqs(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @vp_get_features(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mdev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 3
  %call1 = tail call i64 @vp_modern_get_features(ptr noundef %mdev) #4
  ret i64 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vp_finalize_features(ptr noundef %vdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %features1 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 8
  tail call void @vring_transport_features(ptr noundef %vdev) #4
  %and.i = and i64 %1, 137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %entry.vp_transport_features.exit_crit_edge, label %land.lhs.true.i

entry.vp_transport_features.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %vp_transport_features.exit

land.lhs.true.i:                                  ; preds = %entry
  %pci_dev1.i = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %pci_dev1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pci_dev1.i, align 8
  %call2.i = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %3, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call2.i)
  %tobool3.not.i = icmp eq i16 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.vp_transport_features.exit_crit_edge, label %if.then.i

land.lhs.true.i.vp_transport_features.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %vp_transport_features.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features1, align 8
  %or.i.i = or i64 %5, 137438953472
  store i64 %or.i.i, ptr %features1, align 8
  br label %vp_transport_features.exit

vp_transport_features.exit:                       ; preds = %if.then.i, %land.lhs.true.i.vp_transport_features.exit_crit_edge, %entry.vp_transport_features.exit_crit_edge
  %6 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %features1, align 8
  %and.i11 = and i64 %7, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i11)
  %tobool13.i.not = icmp eq i64 %and.i11, 0
  br i1 %tobool13.i.not, label %do.end, label %if.end

do.end:                                           ; preds = %vp_transport_features.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #7
  br label %cleanup

if.end:                                           ; preds = %vp_transport_features.exit
  call void @__sanitizer_cov_trace_pc() #6
  %mdev = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 3
  tail call void @vp_modern_set_features(ptr noundef %mdev, i64 noundef %7) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vp_bus_name(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_set_vq_affinity(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vp_get_vq_affinity(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vp_get_shm_region(ptr nocapture noundef readonly %vdev, ptr nocapture noundef writeonly %region, i8 noundef zeroext %id) #0 align 64 {
entry:
  %type.i = alloca i8, align 1
  %cap_len.i = alloca i8, align 1
  %id.i = alloca i8, align 1
  %tmp32.i = alloca i32, align 4
  %bar = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pci_dev1 = getelementptr inbounds %struct.virtio_pci_device, ptr %vdev, i32 0, i32 1
  %0 = ptrtoint ptr %pci_dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pci_dev1, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bar) #4
  %2 = ptrtoint ptr %bar to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %bar, align 1, !annotation !59
  %call.i = tail call zeroext i8 @pci_find_capability(ptr noundef %1, i32 noundef 9) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i)
  %cmp.not77.i = icmp eq i8 %call.i, 0
  br i1 %cmp.not77.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %dev12.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.0.in78.i = phi i8 [ %call.i, %for.body.lr.ph.i ], [ %call45.i, %for.inc.i.for.body.i_crit_edge ]
  %pos.079.i = zext i8 %pos.0.in78.i to i32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %type.i) #4
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %type.i, align 1, !annotation !59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cap_len.i) #4
  %4 = ptrtoint ptr %cap_len.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %cap_len.i, align 1, !annotation !59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %id.i) #4
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %id.i, align 1, !annotation !59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp32.i) #4
  %6 = ptrtoint ptr %tmp32.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %tmp32.i, align 4, !annotation !59
  %add.i = add nuw nsw i32 %pos.079.i, 3
  %call2.i = call i32 @pci_read_config_byte(ptr noundef %1, i32 noundef %add.i, ptr noundef nonnull %type.i) #4
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %8)
  %cmp4.not.i = icmp eq i8 %8, 8
  br i1 %cmp4.not.i, label %if.end.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %add6.i = add nuw nsw i32 %pos.079.i, 2
  %call7.i = call i32 @pci_read_config_byte(ptr noundef %1, i32 noundef %add6.i, ptr noundef nonnull %cap_len.i) #4
  %9 = ptrtoint ptr %cap_len.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %cap_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %10)
  %cmp9.not.i = icmp eq i8 %10, 24
  br i1 %cmp9.not.i, label %if.end14.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv8.i = zext i8 %10 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef %pos.079.i, i32 noundef %conv8.i) #7
  br label %for.inc.i

if.end14.i:                                       ; preds = %if.end.i
  %add15.i = add nuw nsw i32 %pos.079.i, 5
  %call16.i = call i32 @pci_read_config_byte(ptr noundef %1, i32 noundef %add15.i, ptr noundef nonnull %id.i) #4
  %11 = ptrtoint ptr %id.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %id.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %id)
  %cmp19.not.i = icmp eq i8 %12, %id
  br i1 %cmp19.not.i, label %if.end, label %if.end14.i.for.inc.i_crit_edge

if.end14.i.for.inc.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end14.i.for.inc.i_crit_edge, %do.end.i, %for.body.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp32.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cap_len.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i) #4
  %call45.i = call zeroext i8 @pci_find_next_capability(ptr noundef %1, i8 noundef zeroext %pos.0.in78.i, i32 noundef 9) #4
  %cmp.not.i = icmp eq i8 %call45.i, 0
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.end14.i
  %add23.i = add nuw nsw i32 %pos.079.i, 4
  %call24.i = call i32 @pci_read_config_byte(ptr noundef %1, i32 noundef %add23.i, ptr noundef nonnull %bar) #4
  %add25.i = add nuw nsw i32 %pos.079.i, 8
  %call26.i = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add25.i, ptr noundef nonnull %tmp32.i) #4
  %13 = ptrtoint ptr %tmp32.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp32.i, align 4
  %conv27.i = zext i32 %14 to i64
  %add28.i = add nuw nsw i32 %pos.079.i, 12
  %call29.i = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add28.i, ptr noundef nonnull %tmp32.i) #4
  %15 = ptrtoint ptr %tmp32.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tmp32.i, align 4
  %conv30.i = zext i32 %16 to i64
  %add31.i = add nuw nsw i32 %pos.079.i, 16
  %call32.i = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add31.i, ptr noundef nonnull %tmp32.i) #4
  %17 = ptrtoint ptr %tmp32.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tmp32.i, align 4
  %conv33.i = zext i32 %18 to i64
  %shl.i = shl nuw i64 %conv33.i, 32
  %or.i = or i64 %shl.i, %conv27.i
  %add34.i = add nuw nsw i32 %pos.079.i, 20
  %call35.i = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %add34.i, ptr noundef nonnull %tmp32.i) #4
  %19 = ptrtoint ptr %tmp32.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tmp32.i, align 4
  %conv36.i = zext i32 %20 to i64
  %shl37.i = shl nuw i64 %conv36.i, 32
  %or38.i = or i64 %shl37.i, %conv30.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp32.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %id.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cap_len.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %type.i) #4
  %21 = ptrtoint ptr %bar to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bar, align 1
  %idxprom = zext i8 %22 to i32
  %arrayidx = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx, align 8
  %add14 = add i64 %or38.i, %or.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add14, i64 %or.i)
  %cmp15 = icmp ult i64 %add14, %or.i
  br i1 %cmp15, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #7
  br label %cleanup

if.end17:                                         ; preds = %if.end
  %end = getelementptr %struct.pci_dev, ptr %1, i32 0, i32 47, i32 %idxprom, i32 1
  %25 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp = icmp eq i32 %26, 0
  %sub = sub i32 1, %24
  %add = add i32 %sub, %26
  %cond = select i1 %cmp, i32 0, i32 %add
  %conv = zext i32 %cond to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %add14, i64 %conv)
  %cmp19 = icmp ugt i64 %add14, %conv
  br i1 %cmp19, label %do.end24, label %if.end26

do.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.6) #7
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  %len27 = getelementptr inbounds %struct.virtio_shm_region, ptr %region, i32 0, i32 1
  %27 = ptrtoint ptr %len27 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %or38.i, ptr %len27, align 8
  %conv28 = zext i32 %24 to i64
  %add29 = add i64 %or.i, %conv28
  %28 = ptrtoint ptr %region to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %add29, ptr %region, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end24, %do.end, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end ], [ false, %do.end24 ], [ true, %if.end26 ], [ false, %entry.cleanup_crit_edge ], [ false, %for.inc.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bar) #4
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_modern_generation(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vp_modern_get_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_set_status(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_disable_cbs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vp_find_vqs(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_set_queue_enable(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @vp_modern_get_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_transport_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_set_features(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_next_capability(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vp_modern_config_vector(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vp_modern_get_num_queues(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vp_modern_get_queue_size(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vp_modern_get_queue_enable(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vring_create_virtqueue(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @vp_notify(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_set_queue_size(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vp_modern_queue_address(ptr noundef, i16 noundef zeroext, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_desc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_avail_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_used_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vp_modern_map_vq_notify(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vp_modern_queue_vector(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vring_del_virtqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !28, !29, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @virtio_pci_config_ops, !1, !"virtio_pci_config_ops", i1 false, i1 false}
!1 = !{!"../drivers/virtio/virtio_pci_modern.c", i32 400, i32 39}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/virtio/virtio_pci_modern.c", i32 52, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @vp_finalize_features._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @vp_finalize_features._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/virtio/virtio_pci_modern.c", i32 365, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @vp_get_shm_region._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @vp_get_shm_region._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/virtio/virtio_pci_modern.c", i32 371, i32 3}
!17 = !{ptr @vp_get_shm_region._entry.7, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @vp_get_shm_region._entry_ptr.9, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/virtio/virtio_pci_modern.c", i32 308, i32 4}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @virtio_pci_find_shm_cap._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @virtio_pci_find_shm_cap._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @virtio_pci_config_nodev_ops, !25, !"virtio_pci_config_nodev_ops", i1 false, i1 false}
!25 = !{!"../drivers/virtio/virtio_pci_modern.c", i32 382, i32 39}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/virtio/virtio_pci_modern.c", i32 207, i32 3}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @setup_vq._entry, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @setup_vq._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
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
!42 = !{i64 2154627712, i64 2154628210, i64 2154627749, i64 2154627805, i64 2154627839, i64 2154627863, i64 2154627904, i64 2154627925, i64 2154627953, i64 2154627987}
!43 = !{i64 5002055}
!44 = !{i64 2152541400}
!45 = !{i64 5001437}
!46 = !{i64 2152542012}
!47 = !{i64 5002275}
!48 = !{i64 2152542624}
!49 = !{i64 2154629862, i64 2154630360, i64 2154629899, i64 2154629955, i64 2154629989, i64 2154630013, i64 2154630054, i64 2154630075, i64 2154630103, i64 2154630137}
!50 = !{i64 2154631524, i64 2154632023, i64 2154631561, i64 2154631617, i64 2154631651, i64 2154631675, i64 2154631716, i64 2154631737, i64 2154631765, i64 2154631799}
!51 = !{i64 2152543005}
!52 = !{i64 5001660}
!53 = !{i64 2152543429}
!54 = !{i64 5001237}
!55 = !{i64 2152543979}
!56 = !{i64 5001857}
!57 = !{i64 2154633572, i64 2154634071, i64 2154633609, i64 2154633665, i64 2154633699, i64 2154633723, i64 2154633764, i64 2154633785, i64 2154633813, i64 2154633847}
!58 = !{i64 2154635195, i64 2154635694, i64 2154635232, i64 2154635288, i64 2154635322, i64 2154635346, i64 2154635387, i64 2154635408, i64 2154635436, i64 2154635470}
!59 = !{!"auto-init"}
