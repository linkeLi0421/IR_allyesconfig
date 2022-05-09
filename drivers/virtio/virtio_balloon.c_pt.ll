; ModuleID = '/llk/IR_all_yes/drivers/virtio/virtio_balloon.c_pt.bc'
source_filename = "../drivers/virtio/virtio_balloon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.static_key_true = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.78 }
%struct.atomic_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_system_type = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, [3 x %struct.lock_class_key], %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key, %struct.lock_class_key }
%struct.hlist_head = type { ptr }
%struct.address_space_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pglist_data = type { [4 x %struct.zone], [1 x %struct.zonelist], i32, ptr, ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, [4 x %struct.wait_queue_head], %struct.atomic_t, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, i8, i32, [36 x i8], %struct.zone_padding, %struct.lruvec, i32, [12 x i8], %struct.zone_padding, ptr, [40 x %struct.atomic_t], [92 x i8] }
%struct.zone = type { [3 x i32], i32, i32, [4 x i32], ptr, ptr, ptr, i32, i32, ptr, i32, %struct.atomic_t, i32, i32, i32, ptr, i32, i32, [36 x i8], %struct.zone_padding, [12 x %struct.free_area], i32, %struct.spinlock, [96 x i8], %struct.zone_padding, i32, i32, [2 x i32], i32, i32, i32, i32, i32, i8, i8, [90 x i8], %struct.zone_padding, [11 x %struct.atomic_t], [0 x %struct.atomic_t], [84 x i8] }
%struct.free_area = type { [6 x %struct.list_head], i32 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.zonelist = type { [5 x %struct.zoneref] }
%struct.zoneref = type { ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.lruvec = type { [5 x %struct.list_head], %struct.spinlock, i32, i32, %struct.atomic_t, [2 x i32], i32, ptr }
%struct.zone_padding = type { [0 x i8] }
%struct.vm_event_state = type { [76 x i32] }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_balloon = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.spinlock, i8, i32, %struct.list_head, %struct.spinlock, i32, i32, i32, i32, %struct.wait_queue_head, i32, %struct.balloon_dev_info, %struct.mutex, i32, [256 x i32], [10 x %struct.virtio_balloon_stat], %struct.shrinker, %struct.notifier_block, ptr, %struct.page_reporting_dev_info }
%struct.balloon_dev_info = type { i32, %struct.spinlock, %struct.list_head, ptr, ptr }
%struct.virtio_balloon_stat = type <{ i16, i64 }>
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.page_reporting_dev_info = type { ptr, %struct.delayed_work, %struct.atomic_t, i32 }
%struct.vfsmount = type { ptr, ptr, i32, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.79, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.80, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.81, ptr, %struct.address_space, %struct.list_head, %union.anon.82, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.79 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.80 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.81 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.82 = type { ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.76, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.76 = type { %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.sysinfo = type { i32, [3 x i32], i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, [8 x i8] }
%struct.shrink_control = type { i32, i32, i32, i32, ptr }

@__initcall__kmod_virtio_balloon__300_1168_virtio_balloon_driver_init6 = internal global ptr @virtio_balloon_driver_init, section ".initcall6.init", align 4
@virtio_balloon_driver = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 6, ptr null, i32 0, ptr @virtballoon_validate, ptr @virtballoon_probe, ptr null, ptr @virtballoon_remove, ptr @virtballoon_changed, ptr @virtballoon_freeze, ptr @virtballoon_restore }, [36 x i8] zeroinitializer }, align 32
@__exitcall_virtio_balloon_driver_exit = internal global ptr @virtio_balloon_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description301 = internal constant [49 x i8] c"virtio_balloon.description=Virtio balloon driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [50 x i8] c"virtio_balloon.file=drivers/virtio/virtio_balloon\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [27 x i8] c"virtio_balloon.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"virtio_balloon\00", [17 x i8] zeroinitializer }, align 32
@id_table = internal constant { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 5, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@features = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@init_on_free = external dso_local global %struct.static_key_true, align 4
@_page_poisoning_enabled = external dso_local global %struct.static_key_false, align 4
@virtballoon_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 888, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s failure: config access disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"virtballoon_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/virtio/virtio_balloon.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@virtballoon_probe._entry_ptr = internal global ptr @virtballoon_probe._entry, section ".printk_index", align 4
@virtballoon_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"(work_completion)(&vb->update_balloon_stats_work)\00", [46 x i8] zeroinitializer }, align 32
@virtballoon_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"(work_completion)(&vb->update_balloon_size_work)\00", [47 x i8] zeroinitializer }, align 32
@virtballoon_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&vb->stop_update_lock\00", [42 x i8] zeroinitializer }, align 32
@virtballoon_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&vb->balloon_lock\00", [46 x i8] zeroinitializer }, align 32
@virtballoon_probe.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&vb->acked\00", [21 x i8] zeroinitializer }, align 32
@balloon_fs = internal global { %struct.file_system_type, [44 x i8] } { %struct.file_system_type { ptr @.str.34, i32 0, ptr @balloon_init_fs_context, ptr null, ptr null, ptr @kill_anon_super, ptr null, ptr null, %struct.hlist_head zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, [3 x %struct.lock_class_key] zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.lock_class_key zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@balloon_mnt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@balloon_aops = external dso_local constant %struct.address_space_operations, align 4
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"balloon-wq\00", [21 x i8] zeroinitializer }, align 32
@virtballoon_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&vb->report_free_page_work)\00", [50 x i8] zeroinitializer }, align 32
@virtballoon_probe.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"&vb->free_page_list_lock\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vm_node_stat = external dso_local global [40 x %struct.atomic_t], align 4
@system_freezable_wq = external dso_local local_unnamed_addr global ptr, align 4
@fill_balloon._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.fill_balloon = private unnamed_addr constant [13 x i8] c"fill_balloon\00", align 1
@fill_balloon._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.fill_balloon, ptr @.str.3, i32 228, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Out of puff! Can't get %u pages\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fill_balloon._entry_ptr = internal global ptr @fill_balloon._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@balloon_devinfo_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&balloon->pages_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"inflate\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"deflate\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"stats\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"free_page_vq\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"reporting_vq\00", [19 x i8] zeroinitializer }, align 32
@init_vqs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 557, ptr @.str.33, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: add stat_vq failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_vqs\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@init_vqs._entry_ptr = internal global ptr @init_vqs._entry, section ".printk_index", align 4
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"balloon-kvm\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@contig_page_data = external dso_local global %struct.pglist_data, align 128
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(p))\00", [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"VM_BUG_ON_PAGE(!((page->page_type & (0xf0000000 | 0)) == 0xf0000000))\00", [58 x i8] zeroinitializer }, align 32
@vm_event_states = external dso_local global %struct.vm_event_state, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(!PageOffline(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@virtio_balloon_report_free_page._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.3, i32 705, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to send a start id, err = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"virtio_balloon_report_free_page\00", [32 x i8] zeroinitializer }, align 32
@virtio_balloon_report_free_page._entry_ptr = internal global ptr @virtio_balloon_report_free_page._entry, section ".printk_index", align 4
@virtio_balloon_report_free_page._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.3, i32 709, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to send a free page, err = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@virtio_balloon_report_free_page._entry_ptr.44 = internal global ptr @virtio_balloon_report_free_page._entry.42, section ".printk_index", align 4
@virtio_balloon_report_free_page._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.3, i32 714, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to send a stop id, err = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@virtio_balloon_report_free_page._entry_ptr.47 = internal global ptr @virtio_balloon_report_free_page._entry.45, section ".printk_index", align 4
@virtballoon_free_page_report.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967292]
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"virtio_balloon_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1152, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1155, i32 17 }
@___asan_gen_.56 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 131, i32 38 }
@___asan_gen_.59 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1143, i32 21 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 887, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 898, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 899, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 900, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 901, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 902, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [11 x i8] c"balloon_fs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 814, i32 32 }
@___asan_gen_.113 = private unnamed_addr constant [12 x i8] c"balloon_mnt\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 46, i32 25 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 935, i32 36 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 941, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 947, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 226, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 717, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [38 x i8] c"../include/linux/balloon_compaction.h\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 75, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 510, i32 37 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 512, i32 37 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 520, i32 36 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 525, i32 40 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 530, i32 40 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 556, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 815, i32 20 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1160, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 1368, i32 10 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 902, i32 1 }
@___asan_gen_.198 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 921, i32 1 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 705, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 709, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private constant [35 x i8] c"../drivers/virtio/virtio_balloon.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 714, i32 3 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_virtio_balloon_driver_exit, ptr @__initcall__kmod_virtio_balloon__300_1168_virtio_balloon_driver_init6, ptr @fill_balloon._entry, ptr @fill_balloon._entry_ptr, ptr @init_vqs._entry, ptr @init_vqs._entry_ptr, ptr @virtballoon_probe._entry, ptr @virtballoon_probe._entry_ptr, ptr @virtio_balloon_driver_exit, ptr @virtio_balloon_report_free_page._entry, ptr @virtio_balloon_report_free_page._entry.42, ptr @virtio_balloon_report_free_page._entry.45, ptr @virtio_balloon_report_free_page._entry_ptr, ptr @virtio_balloon_report_free_page._entry_ptr.44, ptr @virtio_balloon_report_free_page._entry_ptr.47, ptr @virtio_balloon_driver, ptr @.str, ptr @id_table, ptr @features, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @virtballoon_probe.__key, ptr @.str.6, ptr @virtballoon_probe.__key.7, ptr @.str.8, ptr @virtballoon_probe.__key.9, ptr @.str.10, ptr @virtballoon_probe.__key.11, ptr @.str.12, ptr @virtballoon_probe.__key.13, ptr @.str.14, ptr @balloon_fs, ptr @balloon_mnt, ptr @.str.15, ptr @virtballoon_probe.__key.16, ptr @.str.17, ptr @virtballoon_probe.__key.18, ptr @.str.19, ptr @fill_balloon._rs, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @balloon_devinfo_init.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_balloon_driver to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtballoon_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtballoon_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtballoon_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtballoon_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtballoon_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtballoon_probe.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @balloon_fs to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @balloon_mnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtballoon_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtballoon_probe.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_balloon._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_balloon._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @balloon_devinfo_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_vqs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_balloon_report_free_page._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_balloon_report_free_page._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_balloon_report_free_page._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_balloon_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_virtio_driver(ptr noundef nonnull @virtio_balloon_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @virtio_balloon_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @unregister_virtio_driver(ptr noundef nonnull @virtio_balloon_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtballoon_validate(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @init_on_free, i32 1), ptr blockaddress(@virtballoon_validate, %land.lhs.true)) #11
          to label %if.else [label %land.lhs.true], !srcloc !121

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @_page_poisoning_enabled, ptr blockaddress(@virtballoon_validate, %if.else)) #11
          to label %if.then [label %if.else], !srcloc !121

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %features.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %0 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features.i, align 8
  %and.i = and i64 %1, -17
  store i64 %and.i, ptr %features.i, align 8
  br label %if.end4

if.else:                                          ; preds = %land.lhs.true, %entry
  tail call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 4) #11
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %2 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %3, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %if.then3, label %if.else.if.end4_crit_edge

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %and.i11 = and i64 %3, -33
  %4 = ptrtoint ptr %features.i.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %and.i11, ptr %features.i.i, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.else.if.end4_crit_edge, %if.then
  %features.i12 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %5 = ptrtoint ptr %features.i12 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %features.i12, align 8
  %and.i13 = and i64 %6, -8589934593
  store i64 %and.i13, ptr %features.i12, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtballoon_probe(ptr noundef %vdev) #2 align 64 {
entry:
  %virtio_cwrite_v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #14
  br label %cleanup158

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 1780) #15
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %5 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %priv, align 8
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.end.cleanup158_crit_edge, label %do.body4

if.end.cleanup158_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup158

do.body4:                                         ; preds = %if.end
  %update_balloon_stats_work = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_work(ptr noundef %update_balloon_stats_work, i32 noundef 0) #11
  %6 = ptrtoint ptr %update_balloon_stats_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %update_balloon_stats_work, align 4
  %lockdep_map = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 7, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @virtballoon_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry8 = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry8, ptr %entry8, align 8
  %prev.i = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 7, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry8, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @update_balloon_stats_func, ptr %func, align 8
  %update_balloon_size_work = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_work(ptr noundef %update_balloon_size_work, i32 noundef 0) #11
  %10 = ptrtoint ptr %update_balloon_size_work to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -64, ptr %update_balloon_size_work, align 8
  %lockdep_map18 = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 8, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map18, ptr noundef nonnull @.str.8, ptr noundef nonnull @virtballoon_probe.__key.7, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry20 = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %entry20 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %entry20, ptr %entry20, align 4
  %prev.i229 = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 8, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i229 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %entry20, ptr %prev.i229, align 8
  %func22 = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 8, i32 2
  %13 = ptrtoint ptr %func22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @update_balloon_size_func, ptr %func22, align 4
  %stop_update_lock = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %stop_update_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @virtballoon_probe.__key.9, i16 noundef signext 3) #11
  %balloon_lock = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %balloon_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @virtballoon_probe.__key.11) #11
  %acked = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 18
  tail call void @__init_waitqueue_head(ptr noundef %acked, ptr noundef nonnull @.str.14, ptr noundef nonnull @virtballoon_probe.__key.13) #11
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %vdev, ptr %call7.i.i, align 8
  %vb_dev_info = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 20
  %15 = ptrtoint ptr %vb_dev_info to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %vb_dev_info, align 4
  %pages_lock.i = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 20, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %pages_lock.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @balloon_devinfo_init.__key, i16 noundef signext 3) #11
  %pages.i = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 20, i32 2
  %16 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %pages.i, ptr %pages.i, align 4
  %prev.i.i = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 20, i32 2, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pages.i, ptr %prev.i.i, align 8
  %migratepage.i = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 20, i32 3
  %18 = ptrtoint ptr %migratepage.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %migratepage.i, align 4
  %inode.i = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 20, i32 4
  %19 = ptrtoint ptr %inode.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %inode.i, align 8
  %call36 = tail call fastcc i32 @init_vqs(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %do.body4.out_free_vb_crit_edge

do.body4.out_free_vb_crit_edge:                   ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free_vb

if.end39:                                         ; preds = %do.body4
  %call40 = tail call ptr @kern_mount(ptr noundef nonnull @balloon_fs) #11
  store ptr %call40, ptr @balloon_mnt, align 4
  %cmp.i = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %call40 to i32
  br label %out_del_vqs

if.end44:                                         ; preds = %if.end39
  %21 = ptrtoint ptr %migratepage.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @virtballoon_migratepage, ptr %migratepage.i, align 4
  %mnt_sb = getelementptr inbounds %struct.vfsmount, ptr %call40, i32 0, i32 1
  %22 = ptrtoint ptr %mnt_sb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mnt_sb, align 4
  %call46 = tail call ptr @alloc_anon_inode(ptr noundef %23) #11
  %24 = ptrtoint ptr %inode.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call46, ptr %inode.i, align 8
  %cmp.i230 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i230, label %if.then51, label %if.end55

if.then51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %call46 to i32
  br label %out_kern_unmount

if.end55:                                         ; preds = %if.end44
  %i_mapping = getelementptr inbounds %struct.inode, ptr %call46, i32 0, i32 9
  %26 = ptrtoint ptr %i_mapping to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %i_mapping, align 8
  %a_ops = getelementptr inbounds %struct.address_space, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %a_ops to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @balloon_aops, ptr %a_ops, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 3) #11
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %29 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %30, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %if.end55.if.end93_crit_edge, label %if.then59

if.end55.if.end93_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.then59:                                        ; preds = %if.end55
  %free_page_vq = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 4
  %31 = ptrtoint ptr %free_page_vq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %free_page_vq, align 8
  %call60 = tail call i32 @virtqueue_get_vring_size(ptr noundef %32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call60)
  %cmp = icmp ult i32 %call60, 2
  br i1 %cmp, label %if.then59.out_iput_crit_edge, label %if.end62

if.then59.out_iput_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_iput

if.end62:                                         ; preds = %if.then59
  %call63 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.15, i32 noundef 36, i32 noundef 0) #11
  %balloon_wq = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 5
  %33 = ptrtoint ptr %balloon_wq to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call63, ptr %balloon_wq, align 4
  %tobool65.not = icmp eq ptr %call63, null
  br i1 %tobool65.not, label %if.end62.out_iput_crit_edge, label %do.body68

if.end62.out_iput_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_iput

do.body68:                                        ; preds = %if.end62
  %report_free_page_work = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_work(ptr noundef %report_free_page_work, i32 noundef 0) #11
  %34 = ptrtoint ptr %report_free_page_work to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %report_free_page_work, align 8
  %lockdep_map74 = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map74, ptr noundef nonnull @.str.17, ptr noundef nonnull @virtballoon_probe.__key.16, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %entry76 = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %entry76 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry76, ptr %entry76, align 4
  %prev.i231 = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 6, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i231 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry76, ptr %prev.i231, align 8
  %func78 = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 6, i32 2
  %37 = ptrtoint ptr %func78 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @report_free_page_func, ptr %func78, align 4
  %cmd_id_received_cache = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 15
  %38 = ptrtoint ptr %cmd_id_received_cache to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %cmd_id_received_cache, align 8
  %cmd_id_active = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 16
  %39 = ptrtoint ptr %cmd_id_active to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %cmd_id_active, align 4
  %cmd_id_stop = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 17
  %40 = ptrtoint ptr %cmd_id_stop to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %cmd_id_stop, align 8
  %free_page_list_lock = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 13
  tail call void @__raw_spin_lock_init(ptr noundef %free_page_list_lock, ptr noundef nonnull @.str.19, ptr noundef nonnull @virtballoon_probe.__key.18, i16 noundef signext 3) #11
  %free_page_list = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 12
  %41 = ptrtoint ptr %free_page_list to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %free_page_list, ptr %free_page_list, align 8
  %prev.i235 = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 12, i32 1
  %42 = ptrtoint ptr %prev.i235 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %free_page_list, ptr %prev.i235, align 4
  %shrinker.i = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 25
  %scan_objects.i = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 25, i32 1
  %43 = ptrtoint ptr %scan_objects.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @virtio_balloon_shrinker_scan, ptr %scan_objects.i, align 4
  %44 = ptrtoint ptr %shrinker.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @virtio_balloon_shrinker_count, ptr %shrinker.i, align 8
  %seeks.i = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 25, i32 3
  %45 = ptrtoint ptr %seeks.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 2, ptr %seeks.i, align 4
  %call.i = tail call i32 @register_shrinker(ptr noundef %shrinker.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool90.not = icmp eq i32 %call.i, 0
  br i1 %tobool90.not, label %do.body68.if.end93_crit_edge, label %do.body68.out_del_balloon_wq_crit_edge

do.body68.out_del_balloon_wq_crit_edge:           ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_del_balloon_wq

do.body68.if.end93_crit_edge:                     ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end93

if.end93:                                         ; preds = %do.body68.if.end93_crit_edge, %if.end55.if.end93_crit_edge
  %46 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call7.i.i, align 8
  tail call void @virtio_check_driver_offered_feature(ptr noundef %47, i32 noundef 2) #11
  %features.i.i236 = getelementptr inbounds %struct.virtio_device, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %features.i.i236 to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %features.i.i236, align 8
  %and.i.i237 = and i64 %49, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i237)
  %tobool13.i.i238.not = icmp eq i64 %and.i.i237, 0
  br i1 %tobool13.i.i238.not, label %if.end93.if.end103_crit_edge, label %if.then96

if.end93.if.end103_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then96:                                        ; preds = %if.end93
  %oom_nb = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 26
  %50 = ptrtoint ptr %oom_nb to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @virtio_balloon_oom_notify, ptr %oom_nb, align 4
  %priority = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 26, i32 2
  %51 = ptrtoint ptr %priority to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 80, ptr %priority, align 4
  %call99 = tail call i32 @register_oom_notifier(ptr noundef %oom_nb) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %cmp100 = icmp slt i32 %call99, 0
  br i1 %cmp100, label %if.then96.out_unregister_shrinker_crit_edge, label %if.then96.if.end103_crit_edge

if.then96.if.end103_crit_edge:                    ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end103

if.then96.out_unregister_shrinker_crit_edge:      ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unregister_shrinker

if.end103:                                        ; preds = %if.then96.if.end103_crit_edge, %if.end93.if.end103_crit_edge
  tail call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 4) #11
  %52 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %features.i.i, align 8
  %and.i.i240 = and i64 %53, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i240)
  %tobool13.i.i241.not = icmp eq i64 %and.i.i240, 0
  br i1 %tobool13.i.i241.not, label %if.end103.if.end122_crit_edge, label %if.then105

if.end103.if.end122_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.then105:                                       ; preds = %if.end103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @init_on_free, i32 1), ptr blockaddress(@virtballoon_probe, %want_init_on_free.exit.thread)) #11
          to label %want_init_on_free.exit [label %want_init_on_free.exit.thread], !srcloc !121

want_init_on_free.exit.thread:                    ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #13
  br label %want_init_on_free.exit

want_init_on_free.exit:                           ; preds = %want_init_on_free.exit.thread, %if.then105
  %54 = phi i32 [ -1431655766, %want_init_on_free.exit.thread ], [ 0, %if.then105 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cwrite_v) #11
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %56 = ptrtoint ptr %virtio_cwrite_v to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %virtio_cwrite_v, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 983) #11
  %57 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call7.i.i, align 8
  %config118 = getelementptr inbounds %struct.virtio_device, ptr %58, i32 0, i32 8
  %59 = ptrtoint ptr %config118 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %config118, align 8
  %set = getelementptr inbounds %struct.virtio_config_ops, ptr %60, i32 0, i32 2
  %61 = ptrtoint ptr %set to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set, align 4
  call void %62(ptr noundef %58, i32 noundef 12, ptr noundef nonnull %virtio_cwrite_v, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cwrite_v) #11
  br label %if.end122

if.end122:                                        ; preds = %want_init_on_free.exit, %if.end103.if.end122_crit_edge
  %pr_dev_info = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 28
  %63 = ptrtoint ptr %pr_dev_info to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @virtballoon_free_page_report, ptr %pr_dev_info, align 4
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call7.i.i, align 8
  call void @virtio_check_driver_offered_feature(ptr noundef %65, i32 noundef 5) #11
  %features.i.i242 = getelementptr inbounds %struct.virtio_device, ptr %65, i32 0, i32 11
  %66 = ptrtoint ptr %features.i.i242 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %features.i.i242, align 8
  %and.i.i243 = and i64 %67, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i243)
  %tobool13.i.i244.not = icmp eq i64 %and.i.i243, 0
  br i1 %tobool13.i.i244.not, label %if.end122.if.end136_crit_edge, label %if.then125

if.end122.if.end136_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.then125:                                       ; preds = %if.end122
  %reporting_vq = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 27
  %68 = ptrtoint ptr %reporting_vq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %reporting_vq, align 8
  %call126 = call i32 @virtqueue_get_vring_size(ptr noundef %69) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call126)
  %cmp127 = icmp ult i32 %call126, 32
  br i1 %cmp127, label %if.then125.out_unregister_oom_crit_edge, label %if.end130

if.then125.out_unregister_oom_crit_edge:          ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unregister_oom

if.end130:                                        ; preds = %if.then125
  %call132 = call i32 @page_reporting_register(ptr noundef %pr_dev_info) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end130.if.end136_crit_edge, label %if.end130.out_unregister_oom_crit_edge

if.end130.out_unregister_oom_crit_edge:           ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unregister_oom

if.end130.if.end136_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.end136:                                        ; preds = %if.end130.if.end136_crit_edge, %if.end122.if.end136_crit_edge
  call fastcc void @virtio_device_ready(ptr noundef %vdev)
  %call137 = call fastcc i64 @towards_target(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call137)
  %tobool138.not = icmp eq i64 %call137, 0
  br i1 %tobool138.not, label %if.end136.cleanup158_crit_edge, label %if.then139

if.end136.cleanup158_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup158

if.then139:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  call void @virtballoon_changed(ptr noundef %vdev)
  br label %cleanup158

out_unregister_oom:                               ; preds = %if.end130.out_unregister_oom_crit_edge, %if.then125.out_unregister_oom_crit_edge
  %err.0.ph = phi i32 [ %call132, %if.end130.out_unregister_oom_crit_edge ], [ -28, %if.then125.out_unregister_oom_crit_edge ]
  %70 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call7.i.i, align 8
  call void @virtio_check_driver_offered_feature(ptr noundef %71, i32 noundef 2) #11
  %features.i.i245 = getelementptr inbounds %struct.virtio_device, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %features.i.i245 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %features.i.i245, align 8
  %and.i.i246 = and i64 %73, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i246)
  %tobool13.i.i247.not = icmp eq i64 %and.i.i246, 0
  br i1 %tobool13.i.i247.not, label %out_unregister_oom.out_unregister_shrinker_crit_edge, label %if.then143

out_unregister_oom.out_unregister_shrinker_crit_edge: ; preds = %out_unregister_oom
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_unregister_shrinker

if.then143:                                       ; preds = %out_unregister_oom
  call void @__sanitizer_cov_trace_pc() #13
  %oom_nb144 = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 26
  %call145 = call i32 @unregister_oom_notifier(ptr noundef %oom_nb144) #11
  br label %out_unregister_shrinker

out_unregister_shrinker:                          ; preds = %if.then143, %out_unregister_oom.out_unregister_shrinker_crit_edge, %if.then96.out_unregister_shrinker_crit_edge
  %err.1 = phi i32 [ %call99, %if.then96.out_unregister_shrinker_crit_edge ], [ %err.0.ph, %if.then143 ], [ %err.0.ph, %out_unregister_oom.out_unregister_shrinker_crit_edge ]
  %74 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call7.i.i, align 8
  call void @virtio_check_driver_offered_feature(ptr noundef %75, i32 noundef 3) #11
  %features.i.i248 = getelementptr inbounds %struct.virtio_device, ptr %75, i32 0, i32 11
  %76 = ptrtoint ptr %features.i.i248 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %features.i.i248, align 8
  %and.i.i249 = and i64 %77, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i249)
  %tobool13.i.i250.not = icmp eq i64 %and.i.i249, 0
  br i1 %tobool13.i.i250.not, label %out_unregister_shrinker.out_del_balloon_wq_crit_edge, label %if.then149

out_unregister_shrinker.out_del_balloon_wq_crit_edge: ; preds = %out_unregister_shrinker
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_del_balloon_wq

if.then149:                                       ; preds = %out_unregister_shrinker
  call void @__sanitizer_cov_trace_pc() #13
  %shrinker.i251 = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 25
  call void @unregister_shrinker(ptr noundef %shrinker.i251) #11
  br label %out_del_balloon_wq

out_del_balloon_wq:                               ; preds = %if.then149, %out_unregister_shrinker.out_del_balloon_wq_crit_edge, %do.body68.out_del_balloon_wq_crit_edge
  %err.2 = phi i32 [ %call.i, %do.body68.out_del_balloon_wq_crit_edge ], [ %err.1, %if.then149 ], [ %err.1, %out_unregister_shrinker.out_del_balloon_wq_crit_edge ]
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 3) #11
  %78 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %features.i.i, align 8
  %and.i.i253 = and i64 %79, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i253)
  %tobool13.i.i254.not = icmp eq i64 %and.i.i253, 0
  br i1 %tobool13.i.i254.not, label %out_del_balloon_wq.out_iput_crit_edge, label %if.then152

out_del_balloon_wq.out_iput_crit_edge:            ; preds = %out_del_balloon_wq
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_iput

if.then152:                                       ; preds = %out_del_balloon_wq
  call void @__sanitizer_cov_trace_pc() #13
  %balloon_wq153 = getelementptr inbounds %struct.virtio_balloon, ptr %call7.i.i, i32 0, i32 5
  %80 = ptrtoint ptr %balloon_wq153 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %balloon_wq153, align 4
  call void @destroy_workqueue(ptr noundef %81) #11
  br label %out_iput

out_iput:                                         ; preds = %if.then152, %out_del_balloon_wq.out_iput_crit_edge, %if.end62.out_iput_crit_edge, %if.then59.out_iput_crit_edge
  %err.3 = phi i32 [ %err.2, %if.then152 ], [ %err.2, %out_del_balloon_wq.out_iput_crit_edge ], [ -28, %if.then59.out_iput_crit_edge ], [ -12, %if.end62.out_iput_crit_edge ]
  %82 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %inode.i, align 8
  call void @iput(ptr noundef %83) #11
  br label %out_kern_unmount

out_kern_unmount:                                 ; preds = %out_iput, %if.then51
  %err.4 = phi i32 [ %25, %if.then51 ], [ %err.3, %out_iput ]
  %84 = load ptr, ptr @balloon_mnt, align 4
  call void @kern_unmount(ptr noundef %84) #11
  br label %out_del_vqs

out_del_vqs:                                      ; preds = %out_kern_unmount, %if.then42
  %err.5 = phi i32 [ %20, %if.then42 ], [ %err.4, %out_kern_unmount ]
  %85 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %del_vqs, align 4
  call void %88(ptr noundef %vdev) #11
  br label %out_free_vb

out_free_vb:                                      ; preds = %out_del_vqs, %do.body4.out_free_vb_crit_edge
  %err.6 = phi i32 [ %call36, %do.body4.out_free_vb_crit_edge ], [ %err.5, %out_del_vqs ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup158

cleanup158:                                       ; preds = %out_free_vb, %if.then139, %if.end136.cleanup158_crit_edge, %if.end.cleanup158_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then139 ], [ 0, %if.end136.cleanup158_crit_edge ], [ %err.6, %out_free_vb ], [ -12, %if.end.cleanup158_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtballoon_remove(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %3, i32 noundef 5) #11
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %5, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pr_dev_info = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 28
  tail call void @page_reporting_unregister(ptr noundef %pr_dev_info) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %7, i32 noundef 2) #11
  %features.i.i39 = getelementptr inbounds %struct.virtio_device, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %features.i.i39 to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %features.i.i39, align 8
  %and.i.i40 = and i64 %9, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i40)
  %tobool13.i.i41.not = icmp eq i64 %and.i.i40, 0
  br i1 %tobool13.i.i41.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %oom_nb = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 26
  %call5 = tail call i32 @unregister_oom_notifier(ptr noundef %oom_nb) #11
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %11, i32 noundef 3) #11
  %features.i.i42 = getelementptr inbounds %struct.virtio_device, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %features.i.i42 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %features.i.i42, align 8
  %and.i.i43 = and i64 %13, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i43)
  %tobool13.i.i44.not = icmp eq i64 %and.i.i43, 0
  br i1 %tobool13.i.i44.not, label %if.end6.if.end10_crit_edge, label %if.then9

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %shrinker.i = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 25
  tail call void @unregister_shrinker(ptr noundef %shrinker.i) #11
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6.if.end10_crit_edge
  %stop_update_lock = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock_irq(ptr noundef %stop_update_lock) #11
  %stop_update = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %stop_update to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %stop_update, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %stop_update_lock) #11
  %update_balloon_size_work = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 8
  %call12 = tail call zeroext i1 @cancel_work_sync(ptr noundef %update_balloon_size_work) #11
  %update_balloon_stats_work = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 7
  %call13 = tail call zeroext i1 @cancel_work_sync(ptr noundef %update_balloon_stats_work) #11
  tail call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 3) #11
  %features.i.i45 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %15 = ptrtoint ptr %features.i.i45 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %features.i.i45, align 8
  %and.i.i46 = and i64 %16, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i46)
  %tobool13.i.i47.not = icmp eq i64 %and.i.i46, 0
  br i1 %tobool13.i.i47.not, label %if.end10.if.end17_crit_edge, label %if.then15

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %report_free_page_work = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 6
  %call16 = tail call zeroext i1 @cancel_work_sync(ptr noundef %report_free_page_work) #11
  %balloon_wq = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %balloon_wq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %balloon_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %18) #11
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end10.if.end17_crit_edge
  tail call fastcc void @remove_common(ptr noundef %1)
  %inode = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 20, i32 4
  %19 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %inode, align 4
  %tobool.not = icmp eq ptr %20, null
  br i1 %tobool.not, label %if.end17.if.end21_crit_edge, label %if.then18

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then18:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @iput(ptr noundef nonnull %20) #11
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end17.if.end21_crit_edge
  %21 = load ptr, ptr @balloon_mnt, align 4
  tail call void @kern_unmount(ptr noundef %21) #11
  tail call void @kfree(ptr noundef %1) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtballoon_changed(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %stop_update_lock = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 9
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %stop_update_lock) #11
  %stop_update = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %stop_update to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stop_update, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %4 = load ptr, ptr @system_freezable_wq, align 4
  %update_balloon_size_work = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 8
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %update_balloon_size_work) #11
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %6, i32 noundef 3) #11
  %features.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %features.i.i.i, align 8
  %and.i.i.i = and i64 %8, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool13.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool13.i.i.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %config_read_bitmap.i = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 11
  %call1.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %config_read_bitmap.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end3.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %balloon_wq.i = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %balloon_wq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %balloon_wq.i, align 4
  %report_free_page_work.i = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %report_free_page_work.i) #11
  br label %if.end

if.end:                                           ; preds = %if.end3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %stop_update_lock, i32 noundef %call2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtballoon_freeze(ptr nocapture noundef readonly %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call fastcc void @remove_common(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtballoon_restore(ptr noundef %vdev) #2 align 64 {
entry:
  %virtio_cwrite_v.i = alloca i32, align 4
  %virtio_cread_v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call = tail call fastcc i32 @init_vqs(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %2 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config.i, align 8
  %get_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_status.i, align 4
  %call.i = tail call zeroext i8 %5(ptr noundef %vdev) #11
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.do.body.i_crit_edge, label %if.then.i

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %9(ptr noundef %vdev) #11
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.end.do.body.i_crit_edge
  %10 = and i8 %call.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool4.not.i = icmp eq i8 %10, 0
  br i1 %tobool4.not.i, label %virtio_device_ready.exit, label %do.body8.i, !prof !123

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #11, !srcloc !124
  unreachable

virtio_device_ready.exit:                         ; preds = %do.body.i
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 8
  %set_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %set_status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %set_status.i, align 4
  %or.i = or i8 %call.i, 4
  tail call void %14(ptr noundef %vdev, i8 noundef zeroext %or.i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v.i) #11
  %15 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %virtio_cread_v.i, align 4, !annotation !125
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 403) #11
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %config.i12 = getelementptr inbounds %struct.virtio_device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %config.i12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %config.i12, align 8
  %get.i = getelementptr inbounds %struct.virtio_config_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get.i, align 4
  call void %21(ptr noundef %17, i32 noundef 0, ptr noundef nonnull %virtio_cread_v.i, i32 noundef 4) #11
  %22 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %virtio_cread_v.i, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v.i) #11
  %num_pages9.i = getelementptr inbounds %struct.virtio_balloon, ptr %1, i32 0, i32 19
  %25 = ptrtoint ptr %num_pages9.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_pages9.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %tobool3.not = icmp eq i32 %24, %26
  br i1 %tobool3.not, label %virtio_device_ready.exit.if.end5_crit_edge, label %if.then4

virtio_device_ready.exit.if.end5_crit_edge:       ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then4:                                         ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @virtballoon_changed(ptr noundef %vdev)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %virtio_device_ready.exit.if.end5_crit_edge
  %27 = ptrtoint ptr %num_pages9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_pages9.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cwrite_v.i) #11
  %29 = call i32 @llvm.bswap.i32(i32 %28) #11
  %30 = ptrtoint ptr %virtio_cwrite_v.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %virtio_cwrite_v.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 463) #11
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %config.i13 = getelementptr inbounds %struct.virtio_device, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %config.i13 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %config.i13, align 8
  %set.i = getelementptr inbounds %struct.virtio_config_ops, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %set.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %set.i, align 4
  call void %36(ptr noundef %32, i32 noundef 4, ptr noundef nonnull %virtio_cwrite_v.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cwrite_v.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_balloon_stats_func(ptr noundef %work) #2 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  %len.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -68
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #11
  %0 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #11
  %1 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len.i, align 4, !annotation !125
  tail call fastcc void @update_balloon_stats(ptr noundef %add.ptr) #11
  %stats_vq.i = getelementptr i8, ptr %work, i32 -56
  %2 = ptrtoint ptr %stats_vq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stats_vq.i, align 4
  %call1.i = call ptr @virtqueue_get_buf(ptr noundef %3, ptr noundef nonnull %len.i) #11
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.stats_handle_request.exit_crit_edge, label %if.end.i

entry.stats_handle_request.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %stats_handle_request.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %stats.i = getelementptr i8, ptr %work, i32 1448
  call void @sg_init_one(ptr noundef nonnull %sg.i, ptr noundef %stats.i, i32 noundef 80) #11
  %call2.i = call i32 @virtqueue_add_outbuf(ptr noundef %3, ptr noundef nonnull %sg.i, i32 noundef 1, ptr noundef %add.ptr, i32 noundef 3264) #11
  %call3.i = call zeroext i1 @virtqueue_kick(ptr noundef %3) #11
  br label %stats_handle_request.exit

stats_handle_request.exit:                        ; preds = %if.end.i, %entry.stats_handle_request.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @update_balloon_size_func(ptr noundef %work) #2 align 64 {
entry:
  %virtio_cwrite_v.i = alloca i32, align 4
  %pages.i = alloca %struct.list_head, align 4
  %virtio_cread_v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -112
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v.i) #11
  %0 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %virtio_cread_v.i, align 4, !annotation !125
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 403) #11
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config.i, align 8
  %get.i = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get.i, align 4
  call void %6(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %virtio_cread_v.i, i32 noundef 4) #11
  %7 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virtio_cread_v.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v.i) #11
  %conv8.i = zext i32 %9 to i64
  %num_pages9.i = getelementptr i8, ptr %work, i32 216
  %10 = ptrtoint ptr %num_pages9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_pages9.i, align 4
  %conv10.i = zext i32 %11 to i64
  %sub.i = sub nsw i64 %conv8.i, %conv10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %tobool.not = icmp eq i32 %9, %11
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp = icmp sgt i64 %sub.i, 0
  %conv = trunc i64 %sub.i to i32
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pages.i) #11
  %12 = getelementptr inbounds %struct.list_head, ptr %pages.i, i32 0, i32 1
  %13 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pages.i, ptr %pages.i, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pages.i, ptr %12, align 4
  %15 = call i32 @llvm.umin.i32(i32 %conv, i32 256) #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then1
  %num_pfns.060.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then1 ]
  %call.i = call ptr @balloon_page_alloc() #11
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.body.i, label %if.end9.i

do.body.i:                                        ; preds = %for.body.i
  %call3.i = call i32 @___ratelimit(ptr noundef nonnull @fill_balloon._rs, ptr noundef nonnull @__func__.fill_balloon) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %do.body.i.cleanup.i_crit_edge, label %do.end.i

do.body.i.cleanup.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.virtio_device, ptr %17, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.22, i32 noundef 1) #14
  br label %cleanup.i

if.end9.i:                                        ; preds = %for.body.i
  %18 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pages.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %18, ptr noundef nonnull %pages.i, ptr noundef %20) #11
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end9.i.for.inc.i_crit_edge

if.end9.i.for.inc.i_crit_edge:                    ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

if.end.i.i.i.i:                                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %18, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pages.i, ptr %prev3.i.i.i.i, align 4
  %24 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %18, ptr %pages.i, align 4
  br label %for.inc.i

cleanup.i:                                        ; preds = %do.end.i, %do.body.i.cleanup.i_crit_edge
  call void @msleep(i32 noundef 200) #11
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end.i.i.i.i, %if.end9.i.for.inc.i_crit_edge
  %add.i = add nuw nsw i32 %num_pfns.060.i, 1
  %exitcond.not.i = icmp eq i32 %add.i, %15
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %cleanup.i
  %balloon_lock.i = getelementptr i8, ptr %work, i32 284
  call void @mutex_lock_nested(ptr noundef %balloon_lock.i, i32 noundef 0) #11
  %num_pfns10.i = getelementptr i8, ptr %work, i32 376
  %25 = ptrtoint ptr %num_pfns10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %num_pfns10.i, align 4
  %26 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %pages.i, align 4
  %cmp.not.i61.i = icmp eq ptr %27, %pages.i
  %add.ptr.i62.i = getelementptr i8, ptr %27, i32 -4
  %tobool.not7.i63.i = icmp eq ptr %add.ptr.i62.i, null
  %tobool.not.i64.i = or i1 %cmp.not.i61.i, %tobool.not7.i63.i
  br i1 %tobool.not.i64.i, label %for.end.i.while.end.i_crit_edge, label %if.end.i.lr.ph.i

for.end.i.while.end.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

if.end.i.lr.ph.i:                                 ; preds = %for.end.i
  %vb_dev_info.i = getelementptr i8, ptr %work, i32 220
  %pfns.i = getelementptr i8, ptr %work, i32 380
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end18.i.if.end.i.i_crit_edge, %if.end.i.lr.ph.i
  %add.ptr.i65.i = phi ptr [ %add.ptr.i62.i, %if.end.i.lr.ph.i ], [ %add.ptr.i.i, %if.end18.i.if.end.i.i_crit_edge ]
  %28 = phi ptr [ %27, %if.end.i.lr.ph.i ], [ %56, %if.end18.i.if.end.i.i_crit_edge ]
  %call.i.i.i52.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %28) #11
  br i1 %call.i.i.i52.i, label %if.end.i.i.i53.i, label %if.end.i.i.while.body.i_crit_edge

if.end.i.i.while.body.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

if.end.i.i.i53.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i.i.i.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev1.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %32, ptr %30, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.i.i53.i, %if.end.i.i.while.body.i_crit_edge
  %35 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 256 to ptr), ptr %28, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call void @balloon_page_enqueue(ptr noundef %vb_dev_info.i, ptr noundef nonnull %add.ptr.i65.i) #11
  %37 = ptrtoint ptr %num_pfns10.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_pfns10.i, align 4
  %add.ptr.i = getelementptr i32, ptr %pfns.i, i32 %38
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %41 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i65.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %41 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = sdiv exact i32 %sub.ptr.sub.i.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %42 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i.i = add i32 %sub.ptr.div.i.i.i, %42
  %features.i.i.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %40, i32 0, i32 11
  %43 = ptrtoint ptr %features.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %features.i.i.i.i.i.i, align 8
  %and.i.i.i.i.i.i = and i64 %44, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i.i)
  %tobool13.i.i.i.not.i.i.i = icmp eq i64 %and.i.i.i.i.i.i, 0
  %45 = call i32 @llvm.bswap.i32(i32 %add.i.i.i) #11
  %retval.0.i.i.i.i = select i1 %tobool13.i.i.i.not.i.i.i, i32 %add.i.i.i, i32 %45
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %retval.0.i.i.i.i, ptr %add.ptr.i, align 4
  %47 = ptrtoint ptr %num_pages9.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_pages9.i, align 4
  %add14.i = add i32 %48, 1
  store i32 %add14.i, ptr %num_pages9.i, align 4
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %50, i32 noundef 2) #11
  %features.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %features.i.i.i, align 8
  %and.i.i.i = and i64 %52, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool13.i.i.not.i = icmp eq i64 %and.i.i.i, 0
  br i1 %tobool13.i.i.not.i, label %if.then17.i, label %while.body.i.if.end18.i_crit_edge

while.body.i.if.end18.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.then17.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @adjust_managed_page_count(ptr noundef nonnull %add.ptr.i65.i, i32 noundef -1) #11
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then17.i, %while.body.i.if.end18.i_crit_edge
  %53 = ptrtoint ptr %num_pfns10.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_pfns10.i, align 4
  %add20.i = add i32 %54, 1
  store i32 %add20.i, ptr %num_pfns10.i, align 4
  %55 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %pages.i, align 4
  %cmp.not.i.i = icmp eq ptr %56, %pages.i
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 -4
  %tobool.not7.i.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i.i = or i1 %cmp.not.i.i, %tobool.not7.i.i
  br i1 %tobool.not.i.i, label %if.end18.i.while.end.i_crit_edge, label %if.end18.i.if.end.i.i_crit_edge

if.end18.i.if.end.i.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.end18.i.while.end.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %if.end18.i.while.end.i_crit_edge, %for.end.i.while.end.i_crit_edge
  %57 = ptrtoint ptr %num_pfns10.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_pfns10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp23.not.i = icmp eq i32 %58, 0
  br i1 %cmp23.not.i, label %while.end.i.fill_balloon.exit_crit_edge, label %if.then24.i

while.end.i.fill_balloon.exit_crit_edge:          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fill_balloon.exit

if.then24.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %inflate_vq.i = getelementptr i8, ptr %work, i32 -108
  %59 = ptrtoint ptr %inflate_vq.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %inflate_vq.i, align 4
  call fastcc void @tell_host(ptr noundef %add.ptr, ptr noundef %60) #11
  br label %fill_balloon.exit

fill_balloon.exit:                                ; preds = %if.then24.i, %while.end.i.fill_balloon.exit_crit_edge
  call void @mutex_unlock(ptr noundef %balloon_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pages.i) #11
  %conv3 = zext i32 %58 to i64
  %sub = sub nsw i64 %sub.i, %conv3
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv5 = sub i32 0, %conv
  %call6 = call fastcc i32 @leak_balloon(ptr noundef %add.ptr, i32 noundef %conv5)
  %conv7 = zext i32 %call6 to i64
  %add = add nsw i64 %sub.i, %conv7
  br label %if.end8

if.end8:                                          ; preds = %if.else, %fill_balloon.exit
  %diff.0 = phi i64 [ %sub, %fill_balloon.exit ], [ %add, %if.else ]
  %61 = ptrtoint ptr %num_pages9.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %num_pages9.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cwrite_v.i) #11
  %63 = call i32 @llvm.bswap.i32(i32 %62) #11
  %64 = ptrtoint ptr %virtio_cwrite_v.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %virtio_cwrite_v.i, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 463) #11
  %65 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %add.ptr, align 4
  %config.i25 = getelementptr inbounds %struct.virtio_device, ptr %66, i32 0, i32 8
  %67 = ptrtoint ptr %config.i25 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %config.i25, align 8
  %set.i = getelementptr inbounds %struct.virtio_config_ops, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %set.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %set.i, align 4
  call void %70(ptr noundef %66, i32 noundef 4, ptr noundef nonnull %virtio_cwrite_v.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cwrite_v.i) #11
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %diff.0)
  %tobool9.not = icmp eq i64 %diff.0, 0
  br i1 %tobool9.not, label %if.end8.cleanup_crit_edge, label %if.then10

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %71 = load ptr, ptr @system_freezable_wq, align 4
  %call.i26 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %71, ptr noundef %work) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_vqs(ptr noundef %vb) unnamed_addr #2 align 64 {
entry:
  %vqs = alloca [5 x ptr], align 4
  %callbacks = alloca [5 x ptr], align 4
  %names = alloca [5 x ptr], align 4
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %vqs) #11
  %0 = getelementptr inbounds [5 x ptr], ptr %vqs, i32 0, i32 1
  %1 = getelementptr inbounds [5 x ptr], ptr %vqs, i32 0, i32 2
  %2 = getelementptr inbounds [5 x ptr], ptr %vqs, i32 0, i32 3
  %3 = getelementptr inbounds [5 x ptr], ptr %vqs, i32 0, i32 4
  %4 = call ptr @memset(ptr %vqs, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %callbacks) #11
  %5 = getelementptr inbounds [5 x ptr], ptr %callbacks, i32 0, i32 1
  %6 = getelementptr inbounds [5 x ptr], ptr %callbacks, i32 0, i32 2
  %7 = getelementptr inbounds [5 x ptr], ptr %callbacks, i32 0, i32 3
  %8 = getelementptr inbounds [5 x ptr], ptr %callbacks, i32 0, i32 4
  %9 = getelementptr inbounds i8, ptr %callbacks, i32 16
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %names) #11
  %11 = getelementptr inbounds [5 x ptr], ptr %names, i32 0, i32 1
  %12 = getelementptr inbounds [5 x ptr], ptr %names, i32 0, i32 2
  %13 = getelementptr inbounds [5 x ptr], ptr %names, i32 0, i32 3
  %14 = getelementptr inbounds [5 x ptr], ptr %names, i32 0, i32 4
  %15 = ptrtoint ptr %callbacks to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @balloon_ack, ptr %callbacks, align 4
  %16 = ptrtoint ptr %names to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.26, ptr %names, align 4
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @balloon_ack, ptr %5, align 4
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.27, ptr %11, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %6, align 4
  %20 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %12, align 4
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %7, align 4
  %22 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %13, align 4
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %14, align 4
  %24 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %vb, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %25, i32 noundef 1) #11
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %27, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.28, ptr %12, align 4
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @stats_request, ptr %6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %30 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vb, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %31, i32 noundef 3) #11
  %features.i.i81 = getelementptr inbounds %struct.virtio_device, ptr %31, i32 0, i32 11
  %32 = ptrtoint ptr %features.i.i81 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %features.i.i81, align 8
  %and.i.i82 = and i64 %33, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i82)
  %tobool13.i.i83.not = icmp eq i64 %and.i.i82, 0
  br i1 %tobool13.i.i83.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %34 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.29, ptr %13, align 4
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %7, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %36 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %vb, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %37, i32 noundef 5) #11
  %features.i.i84 = getelementptr inbounds %struct.virtio_device, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %features.i.i84 to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %features.i.i84, align 8
  %and.i.i85 = and i64 %39, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i85)
  %tobool13.i.i86.not = icmp eq i64 %and.i.i85, 0
  br i1 %tobool13.i.i86.not, label %if.end16.if.end22_crit_edge, label %if.then19

if.end16.if.end22_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %40 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @.str.30, ptr %14, align 4
  %41 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @balloon_ack, ptr %8, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end16.if.end22_crit_edge
  %42 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %vb, align 4
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %config.i, align 8
  %find_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %45, i32 0, i32 7
  %46 = ptrtoint ptr %find_vqs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %find_vqs.i, align 4
  %call.i = call i32 %47(ptr noundef %43, i32 noundef 5, ptr noundef nonnull %vqs, ptr noundef nonnull %callbacks, ptr noundef nonnull %names, ptr noundef null, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end28, label %if.end22.cleanup57_crit_edge

if.end22.cleanup57_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.end28:                                         ; preds = %if.end22
  %48 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %vqs, align 4
  %inflate_vq = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 1
  %50 = ptrtoint ptr %inflate_vq to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %inflate_vq, align 4
  %51 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %0, align 4
  %deflate_vq = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 2
  %53 = ptrtoint ptr %deflate_vq to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %deflate_vq, align 4
  %54 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %vb, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %55, i32 noundef 1) #11
  %features.i.i87 = getelementptr inbounds %struct.virtio_device, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %features.i.i87 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %features.i.i87, align 8
  %and.i.i88 = and i64 %57, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i88)
  %tobool13.i.i89.not = icmp eq i64 %and.i.i88, 0
  br i1 %tobool13.i.i89.not, label %if.end28.if.end46_crit_edge, label %if.then33

if.end28.if.end46_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then33:                                        ; preds = %if.end28
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #11
  %58 = call ptr @memset(ptr %sg, i32 255, i32 20)
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %stats_vq = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 3
  %61 = ptrtoint ptr %stats_vq to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %stats_vq, align 4
  call fastcc void @update_balloon_stats(ptr noundef %vb)
  %stats = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 24
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %stats, i32 noundef 80) #11
  %62 = ptrtoint ptr %stats_vq to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %stats_vq, align 4
  %call38 = call i32 @virtqueue_add_outbuf(ptr noundef %63, ptr noundef nonnull %sg, i32 noundef 1, ptr noundef %vb, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end42, label %do.end

do.end:                                           ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %vb, align 4
  %dev = getelementptr inbounds %struct.virtio_device, ptr %65, i32 0, i32 6
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #11
  br label %cleanup57

if.end42:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %stats_vq to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %stats_vq, align 4
  %call44 = call zeroext i1 @virtqueue_kick(ptr noundef %67) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #11
  br label %if.end46

if.end46:                                         ; preds = %if.end42, %if.end28.if.end46_crit_edge
  %68 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %vb, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %69, i32 noundef 3) #11
  %features.i.i90 = getelementptr inbounds %struct.virtio_device, ptr %69, i32 0, i32 11
  %70 = ptrtoint ptr %features.i.i90 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %features.i.i90, align 8
  %and.i.i91 = and i64 %71, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i91)
  %tobool13.i.i92.not = icmp eq i64 %and.i.i91, 0
  br i1 %tobool13.i.i92.not, label %if.end46.if.end51_crit_edge, label %if.then49

if.end46.if.end51_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end51

if.then49:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %2, align 4
  %free_page_vq = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 4
  %74 = ptrtoint ptr %free_page_vq to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %73, ptr %free_page_vq, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end46.if.end51_crit_edge
  %75 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %vb, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %76, i32 noundef 5) #11
  %features.i.i93 = getelementptr inbounds %struct.virtio_device, ptr %76, i32 0, i32 11
  %77 = ptrtoint ptr %features.i.i93 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %features.i.i93, align 8
  %and.i.i94 = and i64 %78, 32
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i94)
  %tobool13.i.i95.not = icmp eq i64 %and.i.i94, 0
  br i1 %tobool13.i.i95.not, label %if.end51.cleanup57_crit_edge, label %if.then54

if.end51.cleanup57_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup57

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  %79 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %3, align 4
  %reporting_vq = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 27
  %81 = ptrtoint ptr %reporting_vq to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %80, ptr %reporting_vq, align 4
  br label %cleanup57

cleanup57:                                        ; preds = %if.then54, %if.end51.cleanup57_crit_edge, %do.end, %if.end22.cleanup57_crit_edge
  %retval.1 = phi i32 [ %call.i, %if.end22.cleanup57_crit_edge ], [ %call38, %do.end ], [ 0, %if.then54 ], [ 0, %if.end51.cleanup57_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %names) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %callbacks) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %vqs) #11
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kern_mount(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtballoon_migratepage(ptr noundef %vb_dev_info, ptr noundef %newpage, ptr noundef %page, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %vb_dev_info, i32 -332
  %balloon_lock = getelementptr i8, ptr %vb_dev_info, i32 64
  %call = tail call i32 @mutex_trylock(ptr noundef %balloon_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !123

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %2, -1
  br label %_compound_head.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %newpage to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %3, %if.end.i.i ]
  %4 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  %5 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  %add.i.i = add i32 %6, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i.i)
  %cmp.i.i = icmp ult i32 %add.i.i, 128
  br i1 %cmp.i.i, label %if.then.i1.i, label %do.end5.i.i, !prof !126

if.then.i1.i:                                     ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %4, ptr noundef nonnull @.str.35) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #11, !srcloc !127
  unreachable

do.end5.i.i:                                      ; preds = %_compound_head.exit.i
  %call.i.i.i.i9.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #11
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #11, !srcloc !128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@virtballoon_migratepage, %if.then.i.i.i.i)) #11
          to label %get_page.exit [label %if.then.i.i.i.i], !srcloc !121

if.then.i.i.i.i:                                  ; preds = %do.end5.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__page_ref_mod(ptr noundef %4, i32 noundef 1) #11
  br label %get_page.exit

get_page.exit:                                    ; preds = %if.then.i.i.i.i, %do.end5.i.i
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %9, i32 noundef 2) #11
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %features.i.i, align 8
  %and.i.i61 = and i64 %11, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i61)
  %tobool13.i.i.not = icmp eq i64 %and.i.i61, 0
  br i1 %tobool13.i.i.not, label %land.lhs.true, label %get_page.exit.do.body6_crit_edge

get_page.exit.do.body6_crit_edge:                 ; preds = %get_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

land.lhs.true:                                    ; preds = %get_page.exit
  %12 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp.i.not.i.i = icmp eq i32 %13, -1
  br i1 %cmp.i.not.i.i, label %if.then.i.i62, label %page_zone.exit, !prof !126

if.then.i.i62:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #11, !srcloc !129
  unreachable

page_zone.exit:                                   ; preds = %land.lhs.true
  %14 = ptrtoint ptr %newpage to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %newpage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp.i.not.i.i63 = icmp eq i32 %15, -1
  br i1 %cmp.i.not.i.i63, label %if.then.i.i64, label %page_zone.exit67, !prof !126

if.then.i.i64:                                    ; preds = %page_zone.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %newpage, ptr noundef nonnull @.str.36) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1368, 0\0A.popsection", ""() #11, !srcloc !129
  unreachable

page_zone.exit67:                                 ; preds = %page_zone.exit
  %shr.i.i = lshr i32 %13, 30
  %arrayidx.i = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i
  %shr.i.i65 = lshr i32 %15, 30
  %arrayidx.i66 = getelementptr [4 x %struct.zone], ptr @contig_page_data, i32 0, i32 %shr.i.i65
  %cmp.not = icmp eq ptr %arrayidx.i, %arrayidx.i66
  br i1 %cmp.not, label %page_zone.exit67.do.body6_crit_edge, label %if.then4

page_zone.exit67.do.body6_crit_edge:              ; preds = %page_zone.exit67
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body6

if.then4:                                         ; preds = %page_zone.exit67
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @adjust_managed_page_count(ptr noundef %page, i32 noundef 1) #11
  tail call void @adjust_managed_page_count(ptr noundef %newpage, i32 noundef -1) #11
  br label %do.body6

do.body6:                                         ; preds = %if.then4, %page_zone.exit67.do.body6_crit_edge, %get_page.exit.do.body6_crit_edge
  %pages_lock = getelementptr inbounds %struct.balloon_dev_info, ptr %vb_dev_info, i32 0, i32 1
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pages_lock) #11
  %16 = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %18)
  %cmp.i.i68 = icmp ult i32 %18, -268435456
  br i1 %cmp.i.i68, label %if.then.i.i69, label %__SetPageOffline.exit.i, !prof !126

if.then.i.i69:                                    ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %newpage, ptr noundef nonnull @.str.37) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 902, 0\0A.popsection", ""() #11, !srcloc !130
  unreachable

__SetPageOffline.exit.i:                          ; preds = %do.body6
  %and7.i.i = and i32 %18, -257
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and7.i.i, ptr %16, align 4
  %inode.i = getelementptr inbounds %struct.balloon_dev_info, ptr %vb_dev_info, i32 0, i32 4
  %20 = ptrtoint ptr %inode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %inode.i, align 4
  %i_mapping.i = getelementptr inbounds %struct.inode, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %i_mapping.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i_mapping.i, align 8
  tail call void @__SetPageMovable(ptr noundef %newpage, ptr noundef %23) #11
  %24 = ptrtoint ptr %vb_dev_info to i32
  %private1.i.i = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1, i32 0, i32 3
  %25 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %private1.i.i, align 4
  %pages.i = getelementptr inbounds %struct.balloon_dev_info, ptr %vb_dev_info, i32 0, i32 2
  %26 = ptrtoint ptr %pages.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pages.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %pages.i, ptr noundef %27) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__SetPageOffline.exit.i.balloon_page_insert.exit_crit_edge

__SetPageOffline.exit.i.balloon_page_insert.exit_crit_edge: ; preds = %__SetPageOffline.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %balloon_page_insert.exit

if.end.i.i.i:                                     ; preds = %__SetPageOffline.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %0, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %0, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.page, ptr %newpage, i32 0, i32 1, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %pages.i, ptr %prev3.i.i.i, align 4
  %31 = ptrtoint ptr %pages.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %0, ptr %pages.i, align 4
  br label %balloon_page_insert.exit

balloon_page_insert.exit:                         ; preds = %if.end.i.i.i, %__SetPageOffline.exit.i.balloon_page_insert.exit_crit_edge
  %32 = ptrtoint ptr %vb_dev_info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vb_dev_info, align 4
  %dec = add i32 %33, -1
  store i32 %dec, ptr %vb_dev_info, align 4
  %34 = tail call i32 @llvm.read_register.i32(metadata !111) #11
  %and.i.i70 = and i32 %34, -16384
  %35 = inttoptr i32 %and.i.i70 to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cpu.i, align 4
  %arrayidx7.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx7.i, align 4
  %add.i = add i32 %39, ptrtoint (ptr getelementptr inbounds (%struct.vm_event_state, ptr @vm_event_states, i32 0, i32 0, i32 71) to i32)
  %40 = inttoptr i32 %add.i to ptr
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  %add8.i = add i32 %42, 1
  store i32 %add8.i, ptr %40, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pages_lock, i32 noundef %call10) #11
  %num_pfns = getelementptr i8, ptr %vb_dev_info, i32 156
  %43 = ptrtoint ptr %num_pfns to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %num_pfns, align 4
  %pfns = getelementptr i8, ptr %vb_dev_info, i32 160
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %46 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %newpage to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %46 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %47 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i71 = add i32 %sub.ptr.div.i.i, %47
  %features.i.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %45, i32 0, i32 11
  %48 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i.i = and i64 %49, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i)
  %tobool13.i.i.i.not.i.i = icmp eq i64 %and.i.i.i.i.i, 0
  %50 = tail call i32 @llvm.bswap.i32(i32 %add.i.i71) #11
  %retval.0.i.i.i = select i1 %tobool13.i.i.i.not.i.i, i32 %add.i.i71, i32 %50
  %51 = ptrtoint ptr %pfns to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %retval.0.i.i.i, ptr %pfns, align 4
  %inflate_vq = getelementptr i8, ptr %vb_dev_info, i32 -328
  %52 = ptrtoint ptr %inflate_vq to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %inflate_vq, align 4
  tail call fastcc void @tell_host(ptr noundef %add.ptr, ptr noundef %53)
  %call23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %pages_lock) #11
  %54 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 2
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %54, align 4
  %and.i.i.i = and i32 %56, -268435200
  call void @__sanitizer_cov_trace_const_cmp4(i32 -268435456, i32 %and.i.i.i)
  %cmp.i.not.i.i72 = icmp eq i32 %and.i.i.i, -268435456
  br i1 %cmp.i.not.i.i72, label %__ClearPageOffline.exit.i, label %if.then.i.i73, !prof !123

if.then.i.i73:                                    ; preds = %balloon_page_insert.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.38) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 902, 0\0A.popsection", ""() #11, !srcloc !131
  unreachable

__ClearPageOffline.exit.i:                        ; preds = %balloon_page_insert.exit
  %or.i.i = or i32 %56, 256
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or.i.i, ptr %54, align 4
  tail call void @__ClearPageMovable(ptr noundef %page) #11
  %private1.i.i74 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 3
  %58 = ptrtoint ptr %private1.i.i74 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %private1.i.i74, align 4
  %59 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %page, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %60)
  %cmp.i.not.i5.i = icmp eq i32 %60, -1
  br i1 %cmp.i.not.i5.i, label %if.then.i6.i, label %PageIsolated.exit.i, !prof !126

if.then.i6.i:                                     ; preds = %__ClearPageOffline.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %page, ptr noundef nonnull @.str.39) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 921, 0\0A.popsection", ""() #11, !srcloc !132
  unreachable

PageIsolated.exit.i:                              ; preds = %__ClearPageOffline.exit.i
  %61 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %page, align 4
  %63 = and i32 %62, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i, label %if.then.i, label %PageIsolated.exit.i.balloon_page_delete.exit_crit_edge

PageIsolated.exit.i.balloon_page_delete.exit_crit_edge: ; preds = %PageIsolated.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %balloon_page_delete.exit

if.then.i:                                        ; preds = %PageIsolated.exit.i
  %64 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %call.i.i.i75 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %64) #11
  br i1 %call.i.i.i75, label %if.end.i.i.i76, label %if.then.i.list_del.exit.i_crit_edge

if.then.i.list_del.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i76:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i.i, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %64, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev1.i.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %68, ptr %66, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i76, %if.then.i.list_del.exit.i_crit_edge
  %71 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 256 to ptr), ptr %64, align 4
  %prev.i.i = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1, i32 0, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %balloon_page_delete.exit

balloon_page_delete.exit:                         ; preds = %list_del.exit.i, %PageIsolated.exit.i.balloon_page_delete.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %pages_lock, i32 noundef %call23) #11
  %73 = ptrtoint ptr %num_pfns to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %num_pfns, align 4
  %74 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %add.ptr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %76 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i77 = ptrtoint ptr %page to i32
  %sub.ptr.rhs.cast.i.i78 = ptrtoint ptr %76 to i32
  %sub.ptr.sub.i.i79 = sub i32 %sub.ptr.lhs.cast.i.i77, %sub.ptr.rhs.cast.i.i78
  %sub.ptr.div.i.i80 = sdiv exact i32 %sub.ptr.sub.i.i79, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %77 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i81 = add i32 %sub.ptr.div.i.i80, %77
  %features.i.i.i.i.i82 = getelementptr inbounds %struct.virtio_device, ptr %75, i32 0, i32 11
  %78 = ptrtoint ptr %features.i.i.i.i.i82 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %features.i.i.i.i.i82, align 8
  %and.i.i.i.i.i83 = and i64 %79, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i83)
  %tobool13.i.i.i.not.i.i84 = icmp eq i64 %and.i.i.i.i.i83, 0
  %80 = tail call i32 @llvm.bswap.i32(i32 %add.i.i81) #11
  %retval.0.i.i.i85 = select i1 %tobool13.i.i.i.not.i.i84, i32 %add.i.i81, i32 %80
  %81 = ptrtoint ptr %pfns to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %retval.0.i.i.i85, ptr %pfns, align 4
  %deflate_vq = getelementptr i8, ptr %vb_dev_info, i32 -324
  %82 = ptrtoint ptr %deflate_vq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %deflate_vq, align 4
  tail call fastcc void @tell_host(ptr noundef %add.ptr, ptr noundef %83)
  tail call void @mutex_unlock(ptr noundef %balloon_lock) #11
  %84 = getelementptr inbounds %struct.page, ptr %page, i32 0, i32 1
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %84, align 4
  %and.i.i86 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i86)
  %tobool.not.i.i87 = icmp eq i32 %and.i.i86, 0
  br i1 %tobool.not.i.i87, label %balloon_page_delete.exit._compound_head.exit.i92_crit_edge, label %if.then.i.i89, !prof !123

balloon_page_delete.exit._compound_head.exit.i92_crit_edge: ; preds = %balloon_page_delete.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %_compound_head.exit.i92

if.then.i.i89:                                    ; preds = %balloon_page_delete.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i88 = add i32 %86, -1
  br label %_compound_head.exit.i92

_compound_head.exit.i92:                          ; preds = %if.then.i.i89, %balloon_page_delete.exit._compound_head.exit.i92_crit_edge
  %retval.0.i.i91 = phi i32 [ %sub.i.i88, %if.then.i.i89 ], [ %sub.ptr.lhs.cast.i.i77, %balloon_page_delete.exit._compound_head.exit.i92_crit_edge ]
  %87 = inttoptr i32 %retval.0.i.i91 to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %87, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %88 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp.i.i.i.i = icmp eq i32 %89, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i93, label %do.end5.i.i.i.i, !prof !126

if.then.i.i.i.i93:                                ; preds = %_compound_head.exit.i92
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @dump_page(ptr noundef %87, ptr noundef nonnull @.str.24) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !133
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i92
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %90 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %90, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@virtballoon_migratepage, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !121

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %87, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.cleanup_crit_edge

folio_put_testzero.exit.i.i.cleanup_crit_edge:    ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %87) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ 0, %folio_put_testzero.exit.i.i.cleanup_crit_edge ], [ 0, %if.then.i4.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_anon_inode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_get_vring_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @report_free_page_func(ptr noundef %work) #2 align 64 {
entry:
  %sg.i54.i = alloca %struct.scatterlist, align 4
  %unused.i55.i = alloca i32, align 4
  %sg.i.i.i = alloca %struct.scatterlist, align 4
  %unused.i.i.i = alloca i32, align 4
  %virtio_cread_v.i.i40.i = alloca i32, align 4
  %virtio_cread_v.i.i.i = alloca i32, align 4
  %sg.i.i = alloca %struct.scatterlist, align 4
  %unused.i.i = alloca i32, align 4
  %virtio_cread_v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -24
  %config_read_bitmap.i = getelementptr i8, ptr %work, i32 180
  %call.i = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %config_read_bitmap.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.virtio_balloon_cmd_id_received.exit_crit_edge, label %do.body.i

entry.virtio_balloon_cmd_id_received.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtio_balloon_cmd_id_received.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v.i) #11
  %0 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %virtio_cread_v.i, align 4, !annotation !125
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 579) #11
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config.i, align 8
  %get.i = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %get.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get.i, align 4
  call void %6(ptr noundef %2, i32 noundef 8, ptr noundef nonnull %virtio_cread_v.i, i32 noundef 4) #11
  %7 = ptrtoint ptr %virtio_cread_v.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virtio_cread_v.i, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8) #11
  %cmd_id_received_cache.i = getelementptr i8, ptr %work, i32 240
  %10 = ptrtoint ptr %cmd_id_received_cache.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cmd_id_received_cache.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v.i) #11
  br label %virtio_balloon_cmd_id_received.exit

virtio_balloon_cmd_id_received.exit:              ; preds = %do.body.i, %entry.virtio_balloon_cmd_id_received.exit_crit_edge
  %cmd_id_received_cache8.i = getelementptr i8, ptr %work, i32 240
  %11 = ptrtoint ptr %cmd_id_received_cache8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_id_received_cache8.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %land.lhs.true [
    i32 1, label %if.then
    i32 0, label %virtio_balloon_cmd_id_received.exit.if.end6_crit_edge
  ]

virtio_balloon_cmd_id_received.exit.if.end6_crit_edge: ; preds = %virtio_balloon_cmd_id_received.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %virtio_balloon_cmd_id_received.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = call fastcc i32 @return_free_pages_to_mm(ptr noundef %add.ptr, i32 noundef -1)
  br label %if.end6

land.lhs.true:                                    ; preds = %virtio_balloon_cmd_id_received.exit
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %add.ptr, align 4
  %cmd_id_active = getelementptr i8, ptr %work, i32 244
  %16 = ptrtoint ptr %cmd_id_active to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cmd_id_active, align 4
  %features.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %15, i32 0, i32 11
  %18 = ptrtoint ptr %features.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %features.i.i.i.i, align 8
  %and.i.i.i.i = and i64 %19, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %20 = call i32 @llvm.bswap.i32(i32 %17) #11
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i32 %17, i32 %20
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %retval.0.i.i)
  %cmp4.not = icmp eq i32 %12, %retval.0.i.i
  br i1 %cmp4.not, label %land.lhs.true.if.end6_crit_edge, label %if.then5

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i) #11
  %free_page_vq.i.i = getelementptr i8, ptr %work, i32 -8
  %21 = call ptr @memset(ptr %sg.i.i, i32 255, i32 20)
  %22 = ptrtoint ptr %free_page_vq.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %free_page_vq.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused.i.i) #11
  %24 = ptrtoint ptr %unused.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %unused.i.i, align 4, !annotation !125
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.then5
  %call.i.i = call ptr @virtqueue_get_buf(ptr noundef %23, ptr noundef nonnull %unused.i.i) #11
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %while.end.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %dev1.i = getelementptr inbounds %struct.virtio_device, ptr %15, i32 0, i32 6
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  %call.i.i.i = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %config_read_bitmap.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.end.i.i.virtio_balloon_cmd_id_received.exit.i.i_crit_edge, label %do.body.i.i.i

while.end.i.i.virtio_balloon_cmd_id_received.exit.i.i_crit_edge: ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtio_balloon_cmd_id_received.exit.i.i

do.body.i.i.i:                                    ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v.i.i.i) #11
  %27 = ptrtoint ptr %virtio_cread_v.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %virtio_cread_v.i.i.i, align 4, !annotation !125
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 579) #11
  %28 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr, align 4
  %config.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i.i.i, align 8
  %get.i.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %get.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %get.i.i.i, align 4
  call void %33(ptr noundef %29, i32 noundef 8, ptr noundef nonnull %virtio_cread_v.i.i.i, i32 noundef 4) #11
  %34 = ptrtoint ptr %virtio_cread_v.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %virtio_cread_v.i.i.i, align 4
  %36 = call i32 @llvm.bswap.i32(i32 %35) #11
  %37 = ptrtoint ptr %cmd_id_received_cache8.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %cmd_id_received_cache8.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v.i.i.i) #11
  br label %virtio_balloon_cmd_id_received.exit.i.i

virtio_balloon_cmd_id_received.exit.i.i:          ; preds = %do.body.i.i.i, %while.end.i.i.virtio_balloon_cmd_id_received.exit.i.i_crit_edge
  %38 = ptrtoint ptr %cmd_id_received_cache8.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cmd_id_received_cache8.i, align 4
  %features.i.i.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %26, i32 0, i32 11
  %40 = ptrtoint ptr %features.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %features.i.i.i.i.i.i, align 8
  %and.i.i.i.i.i.i = and i64 %41, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i.i)
  %tobool13.i.i.i.not.i.i.i = icmp eq i64 %and.i.i.i.i.i.i, 0
  %42 = call i32 @llvm.bswap.i32(i32 %39) #11
  %retval.0.i.i.i.i = select i1 %tobool13.i.i.i.not.i.i.i, i32 %39, i32 %42
  %43 = ptrtoint ptr %cmd_id_active to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %retval.0.i.i.i.i, ptr %cmd_id_active, align 4
  call void @sg_init_one(ptr noundef nonnull %sg.i.i, ptr noundef %cmd_id_active, i32 noundef 4) #11
  %call5.i.i = call i32 @virtqueue_add_outbuf(ptr noundef %23, ptr noundef nonnull %sg.i.i, i32 noundef 1, ptr noundef %cmd_id_active, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %send_cmd_id_start.exit.thread.i, label %do.end.i

send_cmd_id_start.exit.thread.i:                  ; preds = %virtio_balloon_cmd_id_received.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call7.i.i = call zeroext i1 @virtqueue_kick(ptr noundef %23) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #11
  br label %if.end.i

do.end.i:                                         ; preds = %virtio_balloon_cmd_id_received.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.40, i32 noundef %call5.i.i) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %send_cmd_id_start.exit.thread.i
  %free_page_list_lock.i.i.i = getelementptr i8, ptr %work, i32 192
  %free_page_list.i.i.i = getelementptr i8, ptr %work, i32 184
  %num_free_page_blocks.i.i.i = getelementptr i8, ptr %work, i32 236
  br label %while.cond.i49.i

while.cond.i49.i:                                 ; preds = %get_free_page_and_send.exit.i.i.while.cond.i49.i_crit_edge, %if.end.i
  %44 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr, align 4
  %46 = ptrtoint ptr %cmd_id_active to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cmd_id_active, align 4
  %features.i.i.i.i.i43.i = getelementptr inbounds %struct.virtio_device, ptr %45, i32 0, i32 11
  %48 = ptrtoint ptr %features.i.i.i.i.i43.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %features.i.i.i.i.i43.i, align 8
  %and.i.i.i.i.i44.i = and i64 %49, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i44.i)
  %tobool13.i.i.i.not.i.i45.i = icmp eq i64 %and.i.i.i.i.i44.i, 0
  %50 = call i32 @llvm.bswap.i32(i32 %47) #11
  %retval.0.i.i.i46.i = select i1 %tobool13.i.i.i.not.i.i45.i, i32 %47, i32 %50
  %call.i.i47.i = call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %config_read_bitmap.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i47.i)
  %tobool.not.i.i48.i = icmp eq i32 %call.i.i47.i, 0
  br i1 %tobool.not.i.i48.i, label %while.cond.i49.i.virtio_balloon_cmd_id_received.exit.i53.i_crit_edge, label %do.body.i.i52.i

while.cond.i49.i.virtio_balloon_cmd_id_received.exit.i53.i_crit_edge: ; preds = %while.cond.i49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %virtio_balloon_cmd_id_received.exit.i53.i

do.body.i.i52.i:                                  ; preds = %while.cond.i49.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v.i.i40.i) #11
  %51 = ptrtoint ptr %virtio_cread_v.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %virtio_cread_v.i.i40.i, align 4, !annotation !125
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 579) #11
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr, align 4
  %config.i.i50.i = getelementptr inbounds %struct.virtio_device, ptr %53, i32 0, i32 8
  %54 = ptrtoint ptr %config.i.i50.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %config.i.i50.i, align 8
  %get.i.i51.i = getelementptr inbounds %struct.virtio_config_ops, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %get.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %get.i.i51.i, align 4
  call void %57(ptr noundef %53, i32 noundef 8, ptr noundef nonnull %virtio_cread_v.i.i40.i, i32 noundef 4) #11
  %58 = ptrtoint ptr %virtio_cread_v.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %virtio_cread_v.i.i40.i, align 4
  %60 = call i32 @llvm.bswap.i32(i32 %59) #11
  %61 = ptrtoint ptr %cmd_id_received_cache8.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %cmd_id_received_cache8.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v.i.i40.i) #11
  br label %virtio_balloon_cmd_id_received.exit.i53.i

virtio_balloon_cmd_id_received.exit.i53.i:        ; preds = %do.body.i.i52.i, %while.cond.i49.i.virtio_balloon_cmd_id_received.exit.i53.i_crit_edge
  %62 = ptrtoint ptr %cmd_id_received_cache8.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cmd_id_received_cache8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i.i46.i, i32 %63)
  %cmp.not.i.i = icmp eq i32 %retval.0.i.i.i46.i, %63
  br i1 %cmp.not.i.i, label %if.end.i.i, label %virtio_balloon_cmd_id_received.exit.i53.i.if.end16.i_crit_edge, !prof !123

virtio_balloon_cmd_id_received.exit.i53.i.if.end16.i_crit_edge: ; preds = %virtio_balloon_cmd_id_received.exit.i53.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

if.end.i.i:                                       ; preds = %virtio_balloon_cmd_id_received.exit.i53.i
  %64 = ptrtoint ptr %free_page_vq.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %free_page_vq.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i.i.i) #11
  %66 = call ptr @memset(ptr %sg.i.i.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused.i.i.i) #11
  %67 = ptrtoint ptr %unused.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %unused.i.i.i, align 4, !annotation !125
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i.while.cond.i.i.i_crit_edge, %if.end.i.i
  %call.i23.i.i = call ptr @virtqueue_get_buf(ptr noundef %65, ptr noundef nonnull %unused.i.i.i) #11
  %tobool.not.i24.i.i = icmp eq ptr %call.i23.i.i, null
  br i1 %tobool.not.i24.i.i, label %while.end.i.i.i, label %while.cond.i.i.i.while.cond.i.i.i_crit_edge

while.cond.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i.i.i

while.end.i.i.i:                                  ; preds = %while.cond.i.i.i
  %call38.i.i.i.i.i.i = call ptr @__alloc_pages(i32 noundef 598016, i32 noundef 11, i32 noundef 0, ptr noundef null) #11
  %tobool2.not.i.i.i = icmp eq ptr %call38.i.i.i.i.i.i, null
  br i1 %tobool2.not.i.i.i, label %get_free_page_and_send.exit.thread.i.i, label %if.end.i.i.i

get_free_page_and_send.exit.thread.i.i:           ; preds = %while.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i.i) #11
  br label %if.end16.i

if.end.i.i.i:                                     ; preds = %while.end.i.i.i
  %call3.i.i.i = call ptr @page_address(ptr noundef nonnull %call38.i.i.i.i.i.i) #11
  call void @sg_init_one(ptr noundef nonnull %sg.i.i.i, ptr noundef %call3.i.i.i, i32 noundef 8388608) #11
  %num_free.i.i.i = getelementptr inbounds %struct.virtqueue, ptr %65, i32 0, i32 5
  %68 = ptrtoint ptr %num_free.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_free.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %69)
  %cmp.i.i.i = icmp ugt i32 %69, 1
  br i1 %cmp.i.i.i, label %if.then4.i.i.i, label %if.else.i.i.i

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  %call5.i.i.i = call i32 @virtqueue_add_inbuf(ptr noundef %65, ptr noundef nonnull %sg.i.i.i, i32 noundef 1, ptr noundef %call3.i.i.i, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call5.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end10.i.i.i, label %if.then9.i.i.i, !prof !123

if.then9.i.i.i:                                   ; preds = %if.then4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %call3.i.i.i to i32
  call void @free_pages(i32 noundef %70, i32 noundef 11) #11
  br label %get_free_page_and_send.exit.i.i

if.end10.i.i.i:                                   ; preds = %if.then4.i.i.i
  %call11.i.i.i = call zeroext i1 @virtqueue_kick(ptr noundef %65) #11
  call void @_raw_spin_lock_irq(ptr noundef %free_page_list_lock.i.i.i) #11
  %71 = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i.i.i, i32 0, i32 1
  %72 = ptrtoint ptr %free_page_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %free_page_list.i.i.i, align 4
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %71, ptr noundef %free_page_list.i.i.i, ptr noundef %73) #11
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end10.i.i.i.balloon_page_push.exit.i.i.i_crit_edge

if.end10.i.i.i.balloon_page_push.exit.i.i.i_crit_edge: ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %balloon_page_push.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end10.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev1.i.i.i.i.i.i, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %73, ptr %71, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %call38.i.i.i.i.i.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %76 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %free_page_list.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %77 = ptrtoint ptr %free_page_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %71, ptr %free_page_list.i.i.i, align 4
  br label %balloon_page_push.exit.i.i.i

balloon_page_push.exit.i.i.i:                     ; preds = %if.end.i.i.i.i.i.i, %if.end10.i.i.i.balloon_page_push.exit.i.i.i_crit_edge
  %78 = ptrtoint ptr %num_free_page_blocks.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_free_page_blocks.i.i.i, align 4
  %inc.i.i.i = add i32 %79, 1
  store i32 %inc.i.i.i, ptr %num_free_page_blocks.i.i.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %free_page_list_lock.i.i.i) #11
  br label %get_free_page_and_send.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %call3.i.i.i to i32
  call void @free_pages(i32 noundef %80, i32 noundef 11) #11
  br label %get_free_page_and_send.exit.i.i

get_free_page_and_send.exit.i.i:                  ; preds = %if.else.i.i.i, %balloon_page_push.exit.i.i.i, %if.then9.i.i.i
  %retval.0.i.i.i = phi i32 [ %call5.i.i.i, %if.then9.i.i.i ], [ 0, %if.else.i.i.i ], [ 0, %balloon_page_push.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i.i.i) #11
  %81 = zext i32 %retval.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %retval.0.i.i.i, label %do.end15.i [
    i32 -4, label %get_free_page_and_send.exit.i.i.if.end16.i_crit_edge
    i32 0, label %get_free_page_and_send.exit.i.i.while.cond.i49.i_crit_edge
  ], !prof !137

get_free_page_and_send.exit.i.i.while.cond.i49.i_crit_edge: ; preds = %get_free_page_and_send.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i49.i

get_free_page_and_send.exit.i.i.if.end16.i_crit_edge: ; preds = %get_free_page_and_send.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16.i

do.end15.i:                                       ; preds = %get_free_page_and_send.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.43, i32 noundef %retval.0.i.i.i) #14
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end15.i, %get_free_page_and_send.exit.i.i.if.end16.i_crit_edge, %get_free_page_and_send.exit.thread.i.i, %virtio_balloon_cmd_id_received.exit.i53.i.if.end16.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i54.i) #11
  %82 = call ptr @memset(ptr %sg.i54.i, i32 255, i32 20)
  %83 = ptrtoint ptr %free_page_vq.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %free_page_vq.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused.i55.i) #11
  %85 = ptrtoint ptr %unused.i55.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -1, ptr %unused.i55.i, align 4, !annotation !125
  br label %while.cond.i59.i

while.cond.i59.i:                                 ; preds = %while.cond.i59.i.while.cond.i59.i_crit_edge, %if.end16.i
  %call.i57.i = call ptr @virtqueue_get_buf(ptr noundef %84, ptr noundef nonnull %unused.i55.i) #11
  %tobool.not.i58.i = icmp eq ptr %call.i57.i, null
  br i1 %tobool.not.i58.i, label %while.end.i60.i, label %while.cond.i59.i.while.cond.i59.i_crit_edge

while.cond.i59.i.while.cond.i59.i_crit_edge:      ; preds = %while.cond.i59.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond.i59.i

while.end.i60.i:                                  ; preds = %while.cond.i59.i
  %cmd_id_stop.i.i = getelementptr i8, ptr %work, i32 248
  call void @sg_init_one(ptr noundef nonnull %sg.i54.i, ptr noundef %cmd_id_stop.i.i, i32 noundef 4) #11
  %call2.i.i = call i32 @virtqueue_add_outbuf(ptr noundef %84, ptr noundef nonnull %sg.i54.i, i32 noundef 1, ptr noundef %cmd_id_stop.i.i, i32 noundef 3264) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %send_cmd_id_stop.exit.thread.i, label %do.end28.i

send_cmd_id_stop.exit.thread.i:                   ; preds = %while.end.i60.i
  call void @__sanitizer_cov_trace_pc() #13
  %call4.i.i = call zeroext i1 @virtqueue_kick(ptr noundef %84) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused.i55.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i54.i) #11
  br label %if.end6

do.end28.i:                                       ; preds = %while.end.i60.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused.i55.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i54.i) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1.i, ptr noundef nonnull @.str.46, i32 noundef %call2.i.i) #14
  br label %if.end6

if.end6:                                          ; preds = %do.end28.i, %send_cmd_id_stop.exit.thread.i, %land.lhs.true.if.end6_crit_edge, %if.then, %virtio_balloon_cmd_id_received.exit.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_balloon_oom_notify(ptr noundef %nb, i32 noundef %dummy, ptr nocapture noundef %parm) #2 align 64 {
entry:
  %virtio_cwrite_v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -1652
  %call = tail call fastcc i32 @leak_balloon(ptr noundef %add.ptr, i32 noundef 256)
  %0 = ptrtoint ptr %parm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parm, align 4
  %add = add i32 %1, %call
  store i32 %add, ptr %parm, align 4
  %num_pages.i = getelementptr i8, ptr %nb, i32 -1324
  %2 = ptrtoint ptr %num_pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pages.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cwrite_v.i) #11
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #11
  %5 = ptrtoint ptr %virtio_cwrite_v.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %virtio_cwrite_v.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 463) #11
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr, align 4
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 8
  %set.i = getelementptr inbounds %struct.virtio_config_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %set.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set.i, align 4
  call void %11(ptr noundef %7, i32 noundef 4, ptr noundef nonnull %virtio_cwrite_v.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cwrite_v.i) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_oom_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtballoon_free_page_report(ptr noundef %pr_dev_info, ptr noundef %sg, i32 noundef %nents) #2 align 64 {
entry:
  %unused = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %pr_dev_info, i32 -1668
  %reporting_vq = getelementptr i8, ptr %pr_dev_info, i32 -4
  %0 = ptrtoint ptr %reporting_vq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reporting_vq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %unused) #11
  %2 = ptrtoint ptr %unused to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %unused, align 4, !annotation !125
  %call = tail call i32 @virtqueue_add_inbuf(ptr noundef %1, ptr noundef %sg, i32 noundef %nents, ptr noundef %add.ptr, i32 noundef 10240) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end39, label %land.rhs

land.rhs:                                         ; preds = %entry
  %.b74 = load i1, ptr @virtballoon_free_page_report.__already_done, align 1
  br i1 %.b74, label %land.rhs.cleanup61_crit_edge, label %if.then, !prof !123

land.rhs.cleanup61_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup61

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @virtballoon_free_page_report.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 184, i32 noundef 9, ptr noundef null) #11
  br label %cleanup61

if.end39:                                         ; preds = %entry
  %call40 = tail call zeroext i1 @virtqueue_kick(ptr noundef %1) #11
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 190) #11
  %call48 = call ptr @virtqueue_get_buf(ptr noundef %1, ptr noundef nonnull %unused) #11
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end51, label %if.end39.cleanup61_crit_edge

if.end39.cleanup61_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup61

if.end51:                                         ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %3 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %acked = getelementptr i8, ptr %pr_dev_info, i32 -1392
  %call5278 = call i32 @prepare_to_wait_event(ptr noundef %acked, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %call5379 = call ptr @virtqueue_get_buf(ptr noundef %1, ptr noundef nonnull %unused) #11
  %tobool54.not80 = icmp eq ptr %call5379, null
  br i1 %tobool54.not80, label %if.end51.cleanup_crit_edge, label %if.end51.for.end_crit_edge

if.end51.for.end_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end51.cleanup_crit_edge
  call void @schedule() #11
  %call52 = call i32 @prepare_to_wait_event(ptr noundef %acked, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %call53 = call ptr @virtqueue_get_buf(ptr noundef %1, ptr noundef nonnull %unused) #11
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end51.for.end_crit_edge
  call void @finish_wait(ptr noundef %acked, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %cleanup61

cleanup61:                                        ; preds = %for.end, %if.end39.cleanup61_crit_edge, %if.then, %land.rhs.cleanup61_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end39.cleanup61_crit_edge ], [ 0, %for.end ], [ %call, %land.rhs.cleanup61_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %unused) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @page_reporting_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtio_device_ready(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %config = getelementptr inbounds %struct.virtio_device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 8
  %get_status = getelementptr inbounds %struct.virtio_config_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_status, align 4
  %call = tail call zeroext i8 %3(ptr noundef %dev) #11
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %7(ptr noundef %dev) #11
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %8 = and i8 %call, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %do.end14, label %do.body8, !prof !123

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #11, !srcloc !124
  unreachable

do.end14:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config, align 8
  %set_status = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %set_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %set_status, align 4
  %or = or i8 %call, 4
  tail call void %12(ptr noundef %dev, i8 noundef zeroext %or) #11
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @towards_target(ptr nocapture noundef readonly %vb) unnamed_addr #6 align 64 {
entry:
  %virtio_cread_v = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cread_v) #11
  %0 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %virtio_cread_v, align 4, !annotation !125
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 403) #11
  %1 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vb, align 4
  %config = getelementptr inbounds %struct.virtio_device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %config, align 8
  %get = getelementptr inbounds %struct.virtio_config_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %get, align 4
  call void %6(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %virtio_cread_v, i32 noundef 4) #11
  %7 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %virtio_cread_v, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cread_v) #11
  %conv8 = zext i32 %9 to i64
  %num_pages9 = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 19
  %10 = ptrtoint ptr %num_pages9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_pages9, align 4
  %conv10 = zext i32 %11 to i64
  %sub = sub nsw i64 %conv8, %conv10
  ret i64 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_oom_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kern_unmount(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @update_balloon_stats(ptr noundef %vb) unnamed_addr #2 align 64 {
entry:
  %events = alloca [76 x i32], align 4
  %i = alloca %struct.sysinfo, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 304, ptr nonnull %events) #11
  %0 = call ptr @memset(ptr %events, i32 255, i32 304)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %i) #11
  %1 = call ptr @memset(ptr %i, i32 255, i32 64)
  call void @all_vm_events(ptr noundef nonnull %events) #11
  call void @si_meminfo(ptr noundef nonnull %i) #11
  %call = call i32 @si_mem_available() #11
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 19), i32 noundef 4) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 19) to i32))
  %2 = load volatile i32, ptr getelementptr inbounds ([40 x %struct.atomic_t], ptr @vm_node_stat, i32 0, i32 19), align 4
  %3 = call i32 @llvm.smax.i32(i32 %2, i32 0) #11
  %arrayidx = getelementptr inbounds [76 x i32], ptr %events, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %conv = zext i32 %5 to i64
  %shl = shl nuw nsw i64 %conv, 12
  %6 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vb, align 4
  %features.i.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %7, i32 0, i32 11
  %arrayidx.i = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 0
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %arrayidx.i, align 2
  %9 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i18.i = and i64 %10, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i18.i)
  %tobool13.i.i.i.not.i19.i = icmp eq i64 %and.i.i.i.i18.i, 0
  %11 = call i64 @llvm.bswap.i64(i64 %shl) #11
  %retval.0.i.i20.i = select i1 %tobool13.i.i.i.not.i19.i, i64 %shl, i64 %11
  %val11.i = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 0, i32 1
  %12 = ptrtoint ptr %val11.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 8)
  store i64 %retval.0.i.i20.i, ptr %val11.i, align 2
  %arrayidx3 = getelementptr inbounds [76 x i32], ptr %events, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3, align 4
  %conv4 = zext i32 %14 to i64
  %shl5 = shl nuw nsw i64 %conv4, 12
  %15 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i.i2 = and i64 %16, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i2)
  %tobool13.i.i.i.not.i.i3 = icmp eq i64 %and.i.i.i.i.i2, 0
  %retval.0.i.i.i = select i1 %tobool13.i.i.i.not.i.i3, i16 1, i16 256
  %arrayidx.i4 = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 1
  %17 = ptrtoint ptr %arrayidx.i4 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %retval.0.i.i.i, ptr %arrayidx.i4, align 2
  %18 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i18.i6 = and i64 %19, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i18.i6)
  %tobool13.i.i.i.not.i19.i7 = icmp eq i64 %and.i.i.i.i18.i6, 0
  %20 = call i64 @llvm.bswap.i64(i64 %shl5) #11
  %retval.0.i.i20.i8 = select i1 %tobool13.i.i.i.not.i19.i7, i64 %shl5, i64 %20
  %val11.i9 = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 1, i32 1
  %21 = ptrtoint ptr %val11.i9 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %retval.0.i.i20.i8, ptr %val11.i9, align 2
  %arrayidx7 = getelementptr inbounds [76 x i32], ptr %events, i32 0, i32 21
  %22 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7, align 4
  %conv8 = zext i32 %23 to i64
  %24 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i.i11 = and i64 %25, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i11)
  %tobool13.i.i.i.not.i.i12 = icmp eq i64 %and.i.i.i.i.i11, 0
  %retval.0.i.i.i13 = select i1 %tobool13.i.i.i.not.i.i12, i16 2, i16 512
  %arrayidx.i14 = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 2
  %26 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %retval.0.i.i.i13, ptr %arrayidx.i14, align 2
  %27 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i18.i16 = and i64 %28, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i18.i16)
  %tobool13.i.i.i.not.i19.i17 = icmp eq i64 %and.i.i.i.i18.i16, 0
  %29 = call i64 @llvm.bswap.i64(i64 %conv8) #11
  %retval.0.i.i20.i18 = select i1 %tobool13.i.i.i.not.i19.i17, i64 %conv8, i64 %29
  %val11.i19 = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 2, i32 1
  %30 = ptrtoint ptr %val11.i19 to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 %retval.0.i.i20.i18, ptr %val11.i19, align 2
  %arrayidx10 = getelementptr inbounds [76 x i32], ptr %events, i32 0, i32 20
  %31 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx10, align 4
  %conv11 = zext i32 %32 to i64
  %33 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i.i21 = and i64 %34, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i21)
  %tobool13.i.i.i.not.i.i22 = icmp eq i64 %and.i.i.i.i.i21, 0
  %retval.0.i.i.i23 = select i1 %tobool13.i.i.i.not.i.i22, i16 3, i16 768
  %arrayidx.i24 = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 3
  %35 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %retval.0.i.i.i23, ptr %arrayidx.i24, align 2
  %36 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i18.i26 = and i64 %37, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i18.i26)
  %tobool13.i.i.i.not.i19.i27 = icmp eq i64 %and.i.i.i.i18.i26, 0
  %38 = call i64 @llvm.bswap.i64(i64 %conv11) #11
  %retval.0.i.i20.i28 = select i1 %tobool13.i.i.i.not.i19.i27, i64 %conv11, i64 %38
  %val11.i29 = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 3, i32 1
  %39 = ptrtoint ptr %val11.i29 to i32
  call void @__asan_storeN_noabort(i32 %39, i32 8)
  store i64 %retval.0.i.i20.i28, ptr %val11.i29, align 2
  %freeram = getelementptr inbounds %struct.sysinfo, ptr %i, i32 0, i32 3
  %40 = ptrtoint ptr %freeram to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %freeram, align 4
  %conv13 = zext i32 %41 to i64
  %shl14 = shl nuw nsw i64 %conv13, 12
  %42 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i.i31 = and i64 %43, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i31)
  %tobool13.i.i.i.not.i.i32 = icmp eq i64 %and.i.i.i.i.i31, 0
  %retval.0.i.i.i33 = select i1 %tobool13.i.i.i.not.i.i32, i16 4, i16 1024
  %arrayidx.i34 = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 4
  %44 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %retval.0.i.i.i33, ptr %arrayidx.i34, align 2
  %45 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i18.i36 = and i64 %46, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i18.i36)
  %tobool13.i.i.i.not.i19.i37 = icmp eq i64 %and.i.i.i.i18.i36, 0
  %47 = call i64 @llvm.bswap.i64(i64 %shl14) #11
  %retval.0.i.i20.i38 = select i1 %tobool13.i.i.i.not.i19.i37, i64 %shl14, i64 %47
  %val11.i39 = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 4, i32 1
  %48 = ptrtoint ptr %val11.i39 to i32
  call void @__asan_storeN_noabort(i32 %48, i32 8)
  store i64 %retval.0.i.i20.i38, ptr %val11.i39, align 2
  %totalram = getelementptr inbounds %struct.sysinfo, ptr %i, i32 0, i32 2
  %49 = ptrtoint ptr %totalram to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %totalram, align 4
  %conv16 = zext i32 %50 to i64
  %shl17 = shl nuw nsw i64 %conv16, 12
  %51 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i.i41 = and i64 %52, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i41)
  %tobool13.i.i.i.not.i.i42 = icmp eq i64 %and.i.i.i.i.i41, 0
  %retval.0.i.i.i43 = select i1 %tobool13.i.i.i.not.i.i42, i16 5, i16 1280
  %arrayidx.i44 = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 5
  %53 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %retval.0.i.i.i43, ptr %arrayidx.i44, align 2
  %54 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i18.i46 = and i64 %55, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i18.i46)
  %tobool13.i.i.i.not.i19.i47 = icmp eq i64 %and.i.i.i.i18.i46, 0
  %56 = call i64 @llvm.bswap.i64(i64 %shl17) #11
  %retval.0.i.i20.i48 = select i1 %tobool13.i.i.i.not.i19.i47, i64 %shl17, i64 %56
  %val11.i49 = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 5, i32 1
  %57 = ptrtoint ptr %val11.i49 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 8)
  store i64 %retval.0.i.i20.i48, ptr %val11.i49, align 2
  %conv19 = sext i32 %call to i64
  %shl20 = shl nsw i64 %conv19, 12
  %58 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i.i51 = and i64 %59, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i51)
  %tobool13.i.i.i.not.i.i52 = icmp eq i64 %and.i.i.i.i.i51, 0
  %retval.0.i.i.i53 = select i1 %tobool13.i.i.i.not.i.i52, i16 6, i16 1536
  %arrayidx.i54 = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 6
  %60 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %retval.0.i.i.i53, ptr %arrayidx.i54, align 2
  %61 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i18.i56 = and i64 %62, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i18.i56)
  %tobool13.i.i.i.not.i19.i57 = icmp eq i64 %and.i.i.i.i18.i56, 0
  %63 = call i64 @llvm.bswap.i64(i64 %shl20) #11
  %retval.0.i.i20.i58 = select i1 %tobool13.i.i.i.not.i19.i57, i64 %shl20, i64 %63
  %val11.i59 = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 6, i32 1
  %64 = ptrtoint ptr %val11.i59 to i32
  call void @__asan_storeN_noabort(i32 %64, i32 8)
  store i64 %retval.0.i.i20.i58, ptr %val11.i59, align 2
  %conv22 = zext i32 %3 to i64
  %shl23 = shl nuw nsw i64 %conv22, 12
  %65 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i.i61 = and i64 %66, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i61)
  %tobool13.i.i.i.not.i.i62 = icmp eq i64 %and.i.i.i.i.i61, 0
  %retval.0.i.i.i63 = select i1 %tobool13.i.i.i.not.i.i62, i16 7, i16 1792
  %arrayidx.i64 = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 7
  %67 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %retval.0.i.i.i63, ptr %arrayidx.i64, align 2
  %68 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i18.i66 = and i64 %69, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i18.i66)
  %tobool13.i.i.i.not.i19.i67 = icmp eq i64 %and.i.i.i.i18.i66, 0
  %70 = call i64 @llvm.bswap.i64(i64 %shl23) #11
  %retval.0.i.i20.i68 = select i1 %tobool13.i.i.i.not.i19.i67, i64 %shl23, i64 %70
  %val11.i69 = getelementptr %struct.virtio_balloon, ptr %vb, i32 0, i32 24, i32 7, i32 1
  %71 = ptrtoint ptr %val11.i69 to i32
  call void @__asan_storeN_noabort(i32 %71, i32 8)
  store i64 %retval.0.i.i20.i68, ptr %val11.i69, align 2
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %i) #11
  call void @llvm.lifetime.end.p0(i64 304, ptr nonnull %events) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_outbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @all_vm_events(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @si_meminfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @si_mem_available() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @leak_balloon(ptr noundef %vb, i32 noundef %num) unnamed_addr #2 align 64 {
entry:
  %pages = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vb_dev_info1 = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pages) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %pages, i32 0, i32 1
  %1 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pages, ptr %pages, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pages, ptr %0, align 4
  %balloon_lock = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 21
  call void @mutex_lock_nested(ptr noundef %balloon_lock, i32 noundef 0) #11
  %num_pages = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 19
  %3 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_pages, align 4
  %5 = call i32 @llvm.umin.i32(i32 %num, i32 %4)
  %6 = call i32 @llvm.umin.i32(i32 %5, i32 256)
  %num_pfns = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 22
  %7 = ptrtoint ptr %num_pfns to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %num_pfns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp943.not = icmp eq i32 %6, 0
  br i1 %cmp943.not, label %entry.if.end17_crit_edge, label %for.body.lr.ph

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

for.body.lr.ph:                                   ; preds = %entry
  %pfns = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 23
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %for.body.lr.ph
  %call = call ptr @balloon_page_dequeue(ptr noundef %vb_dev_info1) #11
  %tobool.not = icmp eq ptr %call, null
  %8 = ptrtoint ptr %num_pfns to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %num_pfns, align 4
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end:                                           ; preds = %for.body
  %add.ptr = getelementptr i32, ptr %pfns, i32 %.pr
  %9 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vb, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %11 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %sub.ptr.div.i.i = sdiv exact i32 %sub.ptr.sub.i.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %12 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i.i = add i32 %sub.ptr.div.i.i, %12
  %features.i.i.i.i.i = getelementptr inbounds %struct.virtio_device, ptr %10, i32 0, i32 11
  %13 = ptrtoint ptr %features.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %features.i.i.i.i.i, align 8
  %and.i.i.i.i.i = and i64 %14, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i.i)
  %tobool13.i.i.i.not.i.i = icmp eq i64 %and.i.i.i.i.i, 0
  %15 = call i32 @llvm.bswap.i32(i32 %add.i.i) #11
  %retval.0.i.i.i = select i1 %tobool13.i.i.i.not.i.i, i32 %add.i.i, i32 %15
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %retval.0.i.i.i, ptr %add.ptr, align 4
  %17 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pages, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %17, ptr noundef nonnull %pages, ptr noundef %19) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_add.exit_crit_edge

if.end.list_add.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %19, ptr %17, align 4
  %prev3.i.i = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %pages, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %17, ptr %pages, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end.list_add.exit_crit_edge
  %24 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_pages, align 4
  %sub = add i32 %25, -1
  store i32 %sub, ptr %num_pages, align 4
  %26 = ptrtoint ptr %num_pfns to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_pfns, align 4
  %add = add i32 %27, 1
  store i32 %add, ptr %num_pfns, align 4
  %cmp9 = icmp ult i32 %add, %6
  br i1 %cmp9, label %list_add.exit.for.body_crit_edge, label %list_add.exit.for.end_crit_edge

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %list_add.exit.for.end_crit_edge, %for.body.for.end_crit_edge
  %28 = phi i32 [ %.pr, %for.body.for.end_crit_edge ], [ %add, %list_add.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp15.not = icmp eq i32 %28, 0
  br i1 %cmp15.not, label %for.end.if.end17_crit_edge, label %if.then16

for.end.if.end17_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then16:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %deflate_vq = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 2
  %29 = ptrtoint ptr %deflate_vq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %deflate_vq, align 4
  call fastcc void @tell_host(ptr noundef %vb, ptr noundef %30)
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %for.end.if.end17_crit_edge, %entry.if.end17_crit_edge
  %31 = phi i32 [ %28, %if.then16 ], [ 0, %for.end.if.end17_crit_edge ], [ 0, %entry.if.end17_crit_edge ]
  call fastcc void @release_pages_balloon(ptr noundef %vb, ptr noundef nonnull %pages)
  call void @mutex_unlock(ptr noundef %balloon_lock) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pages) #11
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @balloon_page_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @balloon_page_enqueue(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @adjust_managed_page_count(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tell_host(ptr noundef %vb, ptr noundef %vq) unnamed_addr #2 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  %len = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #11
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #11
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !125
  %pfns = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 23
  %num_pfns = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 22
  %2 = ptrtoint ptr %num_pfns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pfns, align 4
  %mul = shl i32 %3, 2
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %pfns, i32 noundef %mul) #11
  %call = call i32 @virtqueue_add_outbuf(ptr noundef %vq, ptr noundef nonnull %sg, i32 noundef 1, ptr noundef %vb, i32 noundef 3264) #11
  %call1 = call zeroext i1 @virtqueue_kick(ptr noundef %vq) #11
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 164) #11
  %call6 = call ptr @virtqueue_get_buf(ptr noundef %vq, ptr noundef nonnull %len) #11
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end, label %entry.do.end14_crit_edge

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end14

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #11
  %4 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #11
  %acked = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 18
  %call724 = call i32 @prepare_to_wait_event(ptr noundef %acked, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %call825 = call ptr @virtqueue_get_buf(ptr noundef %vq, ptr noundef nonnull %len) #11
  %tobool9.not26 = icmp eq ptr %call825, null
  br i1 %tobool9.not26, label %if.end.cleanup_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end.cleanup_crit_edge
  call void @schedule() #11
  %call7 = call i32 @prepare_to_wait_event(ptr noundef %acked, ptr noundef nonnull %__wq_entry, i32 noundef 2) #11
  %call8 = call ptr @virtqueue_get_buf(ptr noundef %vq, ptr noundef nonnull %len) #11
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %cleanup.cleanup_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @finish_wait(ptr noundef %acked, ptr noundef nonnull %__wq_entry) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #11
  br label %do.end14

do.end14:                                         ; preds = %for.end, %entry.do.end14_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @balloon_page_dequeue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_pages_balloon(ptr nocapture noundef readonly %vb, ptr noundef readonly %pages) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pages, align 4
  %cmp.not24 = icmp eq ptr %1, %pages
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %put_page.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in25 = phi ptr [ %.pn27, %put_page.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %page.026 = getelementptr i8, ptr %.pn.in25, i32 -4
  %2 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn27 = load ptr, ptr %.pn.in25, align 4
  %3 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vb, align 4
  tail call void @virtio_check_driver_offered_feature(ptr noundef %4, i32 noundef 2) #11
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %6, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @adjust_managed_page_count(ptr noundef %page.026, i32 noundef 1) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in25) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in25, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in25 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in25, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in25, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = load volatile i32, ptr %.pn.in25, align 4
  %and.i.i20 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i20)
  %tobool.not.i.i = icmp eq i32 %and.i.i20, 0
  br i1 %tobool.not.i.i, label %if.end.i.i21, label %if.then.i.i, !prof !123

if.then.i.i:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = add i32 %15, -1
  br label %_compound_head.exit.i

if.end.i.i21:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %page.026 to i32
  br label %_compound_head.exit.i

_compound_head.exit.i:                            ; preds = %if.end.i.i21, %if.then.i.i
  %retval.0.i.i = phi i32 [ %sub.i.i, %if.then.i.i ], [ %16, %if.end.i.i21 ]
  %17 = inttoptr i32 %retval.0.i.i to ptr
  %_refcount.i.i.i.i.i = getelementptr inbounds %struct.page, ptr %17, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  %18 = ptrtoint ptr %_refcount.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %_refcount.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i.i, label %do.end5.i.i.i.i, !prof !126

if.then.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = inttoptr i32 %retval.0.i.i to ptr
  tail call void @dump_page(ptr noundef %20, ptr noundef nonnull @.str.24) #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #11, !srcloc !133
  unreachable

do.end5.i.i.i.i:                                  ; preds = %_compound_head.exit.i
  %call.i.i.i10.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !134
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i.i, i32 1, i32 3, i32 1) #11
  %21 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i.i, ptr %_refcount.i.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i.i) #11, !srcloc !135
  %asmresult.i.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@release_pages_balloon, %if.then.i.i.i.i.i)) #11
          to label %folio_put_testzero.exit.i.i [label %if.then.i.i.i.i.i], !srcloc !121

if.then.i.i.i.i.i:                                ; preds = %do.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef %17, i32 noundef -1, i32 noundef %conv.i.i.i.i.i) #11
  br label %folio_put_testzero.exit.i.i

folio_put_testzero.exit.i.i:                      ; preds = %if.then.i.i.i.i.i, %do.end5.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i4.i, label %folio_put_testzero.exit.i.i.put_page.exit_crit_edge

folio_put_testzero.exit.i.i.put_page.exit_crit_edge: ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %put_page.exit

if.then.i4.i:                                     ; preds = %folio_put_testzero.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__put_page(ptr noundef %17) #11
  br label %put_page.exit

put_page.exit:                                    ; preds = %if.then.i4.i, %folio_put_testzero.exit.i.i.put_page.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn27, %pages
  br i1 %cmp.not, label %put_page.exit.for.end_crit_edge, label %put_page.exit.for.body_crit_edge

put_page.exit.for.body_crit_edge:                 ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

put_page.exit.for.end_crit_edge:                  ; preds = %put_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %put_page.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @balloon_ack(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %acked = getelementptr inbounds %struct.virtio_balloon, ptr %3, i32 0, i32 18
  tail call void @__wake_up(ptr noundef %acked, i32 noundef 3, i32 noundef 1, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stats_request(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %stop_update_lock = getelementptr inbounds %struct.virtio_balloon, ptr %3, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %stop_update_lock) #11
  %stop_update = getelementptr inbounds %struct.virtio_balloon, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %stop_update to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %stop_update, align 4, !range !122
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezable_wq to i32))
  %6 = load ptr, ptr @system_freezable_wq, align 4
  %update_balloon_stats_work = getelementptr inbounds %struct.virtio_balloon, ptr %3, i32 0, i32 7
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %update_balloon_stats_work) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %stop_update_lock) #11
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @balloon_init_fs_context(ptr noundef %fc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @init_pseudo(ptr noundef %fc, i32 noundef 325456742) #11
  %tobool.not = icmp eq ptr %call, null
  %cond = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kill_anon_super(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @init_pseudo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_trylock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__SetPageMovable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ClearPageMovable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @return_free_pages_to_mm(ptr noundef %vb, i32 noundef %num_to_return) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %free_page_list_lock = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 13
  tail call void @_raw_spin_lock_irq(ptr noundef %free_page_list_lock) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_to_return)
  %cmp12.not = icmp eq i32 %num_to_return, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %free_page_list = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %num_returned.013 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %0 = ptrtoint ptr %free_page_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %free_page_list, align 4
  %cmp.not.i = icmp eq ptr %1, %free_page_list
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %tobool.not7.i = icmp eq ptr %add.ptr.i, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not7.i
  br i1 %tobool.not.i, label %for.body.for.end_crit_edge, label %if.end.i

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end.i:                                         ; preds = %for.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i, %if.end.i.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %call1 = tail call ptr @page_address(ptr noundef nonnull %add.ptr.i) #11
  %10 = ptrtoint ptr %call1 to i32
  tail call void @free_pages(i32 noundef %10, i32 noundef 11) #11
  %inc = add nuw i32 %num_returned.013, 1
  %exitcond.not = icmp eq i32 %inc, %num_to_return
  br i1 %exitcond.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %num_returned.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %num_returned.013, %for.body.for.end_crit_edge ], [ %num_to_return, %if.end.for.end_crit_edge ]
  %num_free_page_blocks = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 14
  %11 = ptrtoint ptr %num_free_page_blocks to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_free_page_blocks, align 4
  %sub = sub i32 %12, %num_returned.0.lcssa
  store i32 %sub, ptr %num_free_page_blocks, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %free_page_list_lock) #11
  ret i32 %num_returned.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_inbuf(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_balloon_shrinker_scan(ptr noundef %shrinker, ptr nocapture noundef readonly %sc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %shrinker, i32 -1616
  %nr_to_scan = getelementptr inbounds %struct.shrink_control, ptr %sc, i32 0, i32 2
  %0 = ptrtoint ptr %nr_to_scan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_to_scan, align 4
  %sub.i = add i32 %1, -1
  %or.i = or i32 %sub.i, 2047
  %add.i = add i32 %or.i, 1
  %div2.i = lshr exact i32 %add.i, 11
  %call.i = tail call fastcc i32 @return_free_pages_to_mm(ptr noundef %add.ptr, i32 noundef %div2.i) #11
  %mul.i = shl i32 %call.i, 11
  ret i32 %mul.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @virtio_balloon_shrinker_count(ptr nocapture noundef readonly %shrinker, ptr nocapture noundef readnone %sc) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_free_page_blocks = getelementptr i8, ptr %shrinker, i32 -1356
  %0 = ptrtoint ptr %num_free_page_blocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_free_page_blocks, align 4
  %mul = shl i32 %1, 11
  ret i32 %mul
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_shrinker(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_reporting_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @remove_common(ptr noundef %vb) unnamed_addr #2 align 64 {
entry:
  %virtio_cwrite_v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pages = getelementptr inbounds %struct.virtio_balloon, ptr %vb, i32 0, i32 19
  %0 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not15 = icmp eq i32 %1, 0
  br i1 %tobool.not15, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi i32 [ %4, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %call = tail call fastcc i32 @leak_balloon(ptr noundef %vb, i32 noundef %2)
  %3 = ptrtoint ptr %num_pages to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_pages, align 4
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %virtio_cwrite_v.i) #11
  %5 = ptrtoint ptr %virtio_cwrite_v.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %virtio_cwrite_v.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 463) #11
  %6 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vb, align 4
  %config.i = getelementptr inbounds %struct.virtio_device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 8
  %set.i = getelementptr inbounds %struct.virtio_config_ops, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %set.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %set.i, align 4
  call void %11(ptr noundef %7, i32 noundef 4, ptr noundef nonnull %virtio_cwrite_v.i, i32 noundef 4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %virtio_cwrite_v.i) #11
  %12 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vb, align 4
  call void @virtio_check_driver_offered_feature(ptr noundef %13, i32 noundef 3) #11
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %15, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %while.end.if.end_crit_edge, label %if.then

while.end.if.end_crit_edge:                       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #13
  %call3 = call fastcc i32 @return_free_pages_to_mm(ptr noundef %vb, i32 noundef -1)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end.if.end_crit_edge
  %16 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vb, align 4
  call void @virtio_reset_device(ptr noundef %17) #11
  %18 = ptrtoint ptr %vb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vb, align 4
  %config = getelementptr inbounds %struct.virtio_device, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %del_vqs, align 4
  call void %23(ptr noundef %19) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !43, !44, !46, !47, !49, !50, !52, !53, !54, !55, !56, !57, !58, !60, !62, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !79, !81, !83, !85, !87, !89, !91, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109}
!llvm.named.register.sp = !{!111}
!llvm.module.flags = !{!112, !113, !114, !115, !116, !117, !118, !119}
!llvm.ident = !{!120}

!0 = !{ptr @__initcall__kmod_virtio_balloon__300_1168_virtio_balloon_driver_init6, !1, !"__initcall__kmod_virtio_balloon__300_1168_virtio_balloon_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/virtio/virtio_balloon.c", i32 1168, i32 1}
!2 = !{ptr @__exitcall_virtio_balloon_driver_exit, !1, !"__exitcall_virtio_balloon_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description301, !4, !"__UNIQUE_ID_description301", i1 false, i1 false}
!4 = !{!"../drivers/virtio/virtio_balloon.c", i32 1170, i32 1}
!5 = !{ptr @__UNIQUE_ID_file302, !6, !"__UNIQUE_ID_file302", i1 false, i1 false}
!6 = !{!"../drivers/virtio/virtio_balloon.c", i32 1171, i32 1}
!7 = !{ptr @__UNIQUE_ID_license303, !6, !"__UNIQUE_ID_license303", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/virtio/virtio_balloon.c", i32 1155, i32 17}
!10 = !{ptr @virtio_balloon_driver, !11, !"virtio_balloon_driver", i1 false, i1 false}
!11 = !{!"../drivers/virtio/virtio_balloon.c", i32 1152, i32 29}
!12 = !{ptr @id_table, !13, !"id_table", i1 false, i1 false}
!13 = !{!"../drivers/virtio/virtio_balloon.c", i32 131, i32 38}
!14 = !{ptr @features, !15, !"features", i1 false, i1 false}
!15 = !{!"../drivers/virtio/virtio_balloon.c", i32 1143, i32 21}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/virtio/virtio_balloon.c", i32 887, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @virtballoon_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @virtballoon_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @virtballoon_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/virtio/virtio_balloon.c", i32 898, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @virtballoon_probe.__key.7, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/virtio/virtio_balloon.c", i32 899, i32 2}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @virtballoon_probe.__key.9, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/virtio/virtio_balloon.c", i32 900, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @virtballoon_probe.__key.11, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/virtio/virtio_balloon.c", i32 901, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @virtballoon_probe.__key.13, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/virtio/virtio_balloon.c", i32 902, i32 2}
!38 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/virtio/virtio_balloon.c", i32 935, i32 36}
!41 = !{ptr @virtballoon_probe.__key.16, !42, !"__key", i1 false, i1 false}
!42 = !{!"../drivers/virtio/virtio_balloon.c", i32 941, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @virtballoon_probe.__key.18, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/virtio/virtio_balloon.c", i32 947, i32 3}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../include/linux/vmstat.h", i32 202, i32 2}
!49 = distinct !{null, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/virtio/virtio_balloon.c", i32 226, i32 4}
!52 = !{ptr @fill_balloon._rs, !51, !"_rs", i1 false, i1 false}
!53 = !{ptr @__func__.fill_balloon, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @fill_balloon._entry, !51, !"_entry", i1 false, i1 false}
!57 = !{ptr @fill_balloon._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../include/linux/mm.h", i32 717, i32 2}
!60 = !{ptr @balloon_devinfo_init.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../include/linux/balloon_compaction.h", i32 75, i32 2}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/virtio/virtio_balloon.c", i32 510, i32 37}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/virtio/virtio_balloon.c", i32 512, i32 37}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/virtio/virtio_balloon.c", i32 520, i32 36}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/virtio/virtio_balloon.c", i32 525, i32 40}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/virtio/virtio_balloon.c", i32 530, i32 40}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/virtio/virtio_balloon.c", i32 556, i32 4}
!75 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @init_vqs._entry, !74, !"_entry", i1 false, i1 false}
!78 = !{ptr @init_vqs._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/virtio/virtio_balloon.c", i32 815, i32 20}
!81 = !{ptr @balloon_fs, !82, !"balloon_fs", i1 false, i1 false}
!82 = !{!"../drivers/virtio/virtio_balloon.c", i32 814, i32 32}
!83 = !{ptr @balloon_mnt, !84, !"balloon_mnt", i1 false, i1 false}
!84 = !{!"../drivers/virtio/virtio_balloon.c", i32 46, i32 25}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/mm.h", i32 1368, i32 10}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../include/linux/page-flags.h", i32 902, i32 1}
!91 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/linux/page-flags.h", i32 921, i32 1}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/virtio/virtio_balloon.c", i32 705, i32 3}
!96 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @virtio_balloon_report_free_page._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @virtio_balloon_report_free_page._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/virtio/virtio_balloon.c", i32 709, i32 3}
!101 = !{ptr @virtio_balloon_report_free_page._entry.42, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @virtio_balloon_report_free_page._entry_ptr.44, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/virtio/virtio_balloon.c", i32 714, i32 3}
!105 = !{ptr @virtio_balloon_report_free_page._entry.45, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @virtio_balloon_report_free_page._entry_ptr.47, !104, !"_entry_ptr", i1 false, i1 false}
!107 = distinct !{null, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!109 = distinct !{null, !110, !"__already_done", i1 false, i1 false}
!110 = !{!"../drivers/virtio/virtio_balloon.c", i32 184, i32 6}
!111 = !{!"sp"}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"min_enum_size", i32 4}
!114 = !{i32 8, !"branch-target-enforcement", i32 0}
!115 = !{i32 8, !"sign-return-address", i32 0}
!116 = !{i32 8, !"sign-return-address-all", i32 0}
!117 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!118 = !{i32 7, !"uwtable", i32 1}
!119 = !{i32 7, !"frame-pointer", i32 2}
!120 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!121 = !{i64 2148227025, i64 2148227030, i64 2148227043, i64 2148227087, i64 2148227121, i64 2148227142}
!122 = !{i8 0, i8 2}
!123 = !{!"branch_weights", i32 2000, i32 1}
!124 = !{i64 2153877113, i64 2153877607, i64 2153877150, i64 2153877206, i64 2153877240, i64 2153877264, i64 2153877305, i64 2153877326, i64 2153877354, i64 2153877388}
!125 = !{!"auto-init"}
!126 = !{!"branch_weights", i32 1, i32 2000}
!127 = !{i64 2153192695, i64 2153193179, i64 2153192732, i64 2153192788, i64 2153192822, i64 2153192846, i64 2153192887, i64 2153192908, i64 2153192936, i64 2153192970}
!128 = !{i64 2148736537, i64 2148736563, i64 2148736592, i64 2148736626, i64 2148736657, i64 2148736680}
!129 = !{i64 2153198477, i64 2153198961, i64 2153198514, i64 2153198570, i64 2153198604, i64 2153198628, i64 2153198669, i64 2153198690, i64 2153198718, i64 2153198752}
!130 = !{i64 2151078083, i64 2151078574, i64 2151078120, i64 2151078176, i64 2151078210, i64 2151078234, i64 2151078275, i64 2151078296, i64 2151078324, i64 2151078358}
!131 = !{i64 2151080150, i64 2151080641, i64 2151080187, i64 2151080243, i64 2151080277, i64 2151080301, i64 2151080342, i64 2151080363, i64 2151080391, i64 2151080425}
!132 = !{i64 2151097715, i64 2151098206, i64 2151097752, i64 2151097808, i64 2151097842, i64 2151097866, i64 2151097907, i64 2151097928, i64 2151097956, i64 2151097990}
!133 = !{i64 2153168722, i64 2153169205, i64 2153168759, i64 2153168815, i64 2153168849, i64 2153168873, i64 2153168914, i64 2153168935, i64 2153168963, i64 2153168997}
!134 = !{i64 2148825013}
!135 = !{i64 2148739722, i64 2148739754, i64 2148739783, i64 2148739817, i64 2148739848, i64 2148739871}
!136 = !{i64 2148825242}
!137 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
