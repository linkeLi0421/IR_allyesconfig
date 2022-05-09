; ModuleID = '/llk/IR_all_yes/net/9p/trans_virtio.c_pt.bc'
source_filename = "../net/9p/trans_virtio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.virtio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.p9_trans_module = type { %struct.list_head, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
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
%struct.virtio_config_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.virtio_chan = type { i8, %struct.spinlock, ptr, ptr, ptr, i32, ptr, i32, [128 x %struct.scatterlist], ptr, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }
%struct.p9_req_t = type { i32, i32, %struct.kref, %struct.wait_queue_head, %struct.p9_fcall, %struct.p9_fcall, %struct.list_head }
%struct.p9_fcall = type { i32, i8, i16, i32, i32, ptr, ptr }
%struct.p9_client = type { %struct.spinlock, i32, i8, ptr, i32, ptr, ptr, %union.anon.147, %struct.idr, %struct.idr, [65 x i8] }
%union.anon.147 = type { %struct.anon.148 }
%struct.anon.148 = type { i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.46, %union.anon.47 }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }

@p9_virtio_drv = internal global { %struct.virtio_driver, [36 x i8] } { %struct.virtio_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @id_table, ptr @features, i32 1, ptr null, i32 0, ptr null, ptr @p9_virtio_probe, ptr null, ptr @p9_virtio_remove, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@p9_virtio_trans = internal global { %struct.p9_trans_module, [44 x i8] } { %struct.p9_trans_module { %struct.list_head zeroinitializer, ptr @.str.21, i32 512000, i32 1, ptr null, ptr @p9_virtio_create, ptr @p9_virtio_close, ptr @p9_virtio_request, ptr @p9_virtio_cancel, ptr @p9_virtio_cancelled, ptr @p9_virtio_zc_request, ptr null }, [44 x i8] zeroinitializer }, align 32
@__initcall__kmod_9pnet_virtio__477_795_p9_virtio_init6 = internal global ptr @p9_virtio_init, section ".initcall6.init", align 4
@__exitcall_p9_virtio_cleanup = internal global ptr @p9_virtio_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias478 = internal constant [29 x i8] c"9pnet_virtio.alias=9p-virtio\00", section ".modinfo", align 1
@__UNIQUE_ID_author479 = internal constant [59 x i8] c"9pnet_virtio.author=Eric Van Hensbergen <ericvh@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description480 = internal constant [45 x i8] c"9pnet_virtio.description=Virtio 9p Transport\00", section ".modinfo", align 1
@__UNIQUE_ID_file481 = internal constant [38 x i8] c"9pnet_virtio.file=net/9p/9pnet_virtio\00", section ".modinfo", align 1
@__UNIQUE_ID_license482 = internal constant [25 x i8] c"9pnet_virtio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"9pnet_virtio\00", [19 x i8] zeroinitializer }, align 32
@id_table = internal global { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 9, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@features = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@p9_virtio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 566, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s failure: config access disabled\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"p9_virtio_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/9p/trans_virtio.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@p9_virtio_probe._entry_ptr = internal global ptr @p9_virtio_probe._entry, section ".printk_index", align 4
@p9_virtio_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\0139pnet_virtio: Failed to allocate virtio 9P channel\0A\00", [42 x i8] zeroinitializer }, align 32
@p9_virtio_probe._entry_ptr.8 = internal global ptr @p9_virtio_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"requests\00", [23 x i8] zeroinitializer }, align 32
@p9_virtio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chan->lock\00", [20 x i8] zeroinitializer }, align 32
@dev_attr_mount_tag = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @p9_mount_tag_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@p9_virtio_probe.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"chan->vc_wq\00", [20 x i8] zeroinitializer }, align 32
@virtio_9p_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @virtio_9p_lock, i64 52), ptr getelementptr (i8, ptr @virtio_9p_lock, i64 52) }, ptr @virtio_9p_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@virtio_chan_list = internal global { %struct.list_head, [24 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__func__.req_done = private unnamed_addr constant [9 x i8] c"req_done\00", align 1
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c": request done\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/linux/virtio_config.h\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mount_tag\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"virtio_9p_lock.wait_lock\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"virtio_9p_lock\00", [17 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@p9_virtio_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 716, ptr @.str.20, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"p9_virtio_remove: waiting for device in use.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"p9_virtio_remove\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@p9_virtio_remove._entry_ptr = internal global ptr @p9_virtio_remove._entry, section ".printk_index", align 4
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"virtio\00", [25 x i8] zeroinitializer }, align 32
@p9_virtio_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 682, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\0139pnet_virtio: no channels available for device %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"p9_virtio_create\00", [47 x i8] zeroinitializer }, align 32
@p9_virtio_create._entry_ptr = internal global ptr @p9_virtio_create._entry, section ".printk_index", align 4
@__func__.p9_virtio_request = private unnamed_addr constant [18 x i8] c"p9_virtio_request\00", align 1
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"9p debug: virtio request\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Retry virtio request\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"virtio rpc add_sgs returned failure\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"virtio request kicked\0A\00", [41 x i8] zeroinitializer }, align 32
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__func__.p9_virtio_zc_request = private unnamed_addr constant [21 x i8] c"p9_virtio_zc_request\00", align 1
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"virtio request\0A\00", [16 x i8] zeroinitializer }, align 32
@vp_pinned = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@vp_wq = internal global { %struct.wait_queue_head, [44 x i8] } { %struct.wait_queue_head { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.29, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, %struct.list_head { ptr getelementptr (i8, ptr @vp_wq, i64 44), ptr getelementptr (i8, ptr @vp_wq, i64 44) } }, [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vp_wq.lock\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"p9_virtio_drv\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 745, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"p9_virtio_trans\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 755, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 748, i32 20 }
@___asan_gen_.39 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 735, i32 32 }
@___asan_gen_.42 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 740, i32 21 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 565, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 572, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 580, i32 51 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 586, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [19 x i8] c"dev_attr_mount_tag\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 615, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"virtio_9p_lock\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"virtio_chan_list\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 89, i32 25 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 137, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [33 x i8] c"../include/linux/virtio_config.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 451, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 547, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 42, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 715, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 756, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 682, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 264, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 293, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 297, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 305, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 406, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [10 x i8] c"vp_pinned\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 44, i32 17 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"vp_wq\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private constant [25 x i8] c"../net/9p/trans_virtio.c\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 43, i32 8 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_alias478, ptr @__UNIQUE_ID_author479, ptr @__UNIQUE_ID_description480, ptr @__UNIQUE_ID_file481, ptr @__UNIQUE_ID_license482, ptr @__exitcall_p9_virtio_cleanup, ptr @__initcall__kmod_9pnet_virtio__477_795_p9_virtio_init6, ptr @p9_virtio_cleanup, ptr @p9_virtio_create._entry, ptr @p9_virtio_create._entry_ptr, ptr @p9_virtio_probe._entry, ptr @p9_virtio_probe._entry.6, ptr @p9_virtio_probe._entry_ptr, ptr @p9_virtio_probe._entry_ptr.8, ptr @p9_virtio_remove._entry, ptr @p9_virtio_remove._entry_ptr, ptr @p9_virtio_drv, ptr @p9_virtio_trans, ptr @.str, ptr @id_table, ptr @features, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @p9_virtio_probe.__key, ptr @.str.10, ptr @dev_attr_mount_tag, ptr @p9_virtio_probe.__key.11, ptr @.str.12, ptr @virtio_9p_lock, ptr @virtio_chan_list, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @vp_pinned, ptr @vp_wq, ptr @.str.29], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_virtio_drv to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_virtio_trans to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @features to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_virtio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_virtio_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_virtio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mount_tag to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_virtio_probe.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_9p_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_chan_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_virtio_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @p9_virtio_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_pinned to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vp_wq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @p9_virtio_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @unregister_virtio_driver(ptr noundef nonnull @p9_virtio_drv) #12
  tail call void @v9fs_unregister_trans(ptr noundef nonnull @p9_virtio_trans) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_unregister_trans(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_virtio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  store volatile ptr @virtio_chan_list, ptr @virtio_chan_list, align 4
  store ptr @virtio_chan_list, ptr getelementptr inbounds (%struct.list_head, ptr @virtio_chan_list, i32 0, i32 1), align 4
  tail call void @v9fs_register_trans(ptr noundef nonnull @p9_virtio_trans) #12
  %call = tail call i32 @register_virtio_driver(ptr noundef nonnull @p9_virtio_drv) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @v9fs_unregister_trans(ptr noundef nonnull @p9_virtio_trans) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_virtio_probe(ptr noundef %vdev) #2 align 64 {
entry:
  %callbacks.i = alloca [1 x ptr], align 4
  %names.i = alloca [1 x ptr], align 4
  %vq.i = alloca ptr, align 4
  %virtio_cread_v = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 2644) #16
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %do.end5, label %if.end7

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #15
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %vdev8 = getelementptr inbounds %struct.virtio_chan, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %vdev8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %vdev, ptr %vdev8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %callbacks.i) #12
  %6 = ptrtoint ptr %callbacks.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @req_done, ptr %callbacks.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %names.i) #12
  %7 = ptrtoint ptr %names.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.9, ptr %names.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vq.i) #12
  %8 = ptrtoint ptr %vq.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %vq.i, align 4, !annotation !96
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config, align 8
  %find_vqs.i = getelementptr inbounds %struct.virtio_config_ops, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %find_vqs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %find_vqs.i, align 4
  %call.i = call i32 %12(ptr noundef %vdev, i32 noundef 1, ptr noundef nonnull %vq.i, ptr noundef nonnull %callbacks.i, ptr noundef nonnull %names.i, ptr noundef null, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %13 = inttoptr i32 %call.i to ptr
  br label %virtio_find_single_vq.exit

if.end.i:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %vq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vq.i, align 4
  br label %virtio_find_single_vq.exit

virtio_find_single_vq.exit:                       ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %13, %if.then.i ], [ %15, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vq.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %names.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %callbacks.i) #12
  %vq = getelementptr inbounds %struct.virtio_chan, ptr %call7.i, i32 0, i32 4
  %16 = ptrtoint ptr %vq to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i, ptr %vq, align 8
  %cmp.i107 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %if.then12, label %if.end15

if.then12:                                        ; preds = %virtio_find_single_vq.exit
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %retval.0.i to i32
  br label %out_free_chan

if.end15:                                         ; preds = %virtio_find_single_vq.exit
  %vdev17 = getelementptr inbounds %struct.virtqueue, ptr %retval.0.i, i32 0, i32 3
  %18 = ptrtoint ptr %vdev17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vdev17, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %19, i32 0, i32 12
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call7.i, ptr %priv, align 8
  %lock = getelementptr inbounds %struct.virtio_chan, ptr %call7.i, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @p9_virtio_probe.__key, i16 noundef signext 3) #12
  %sg = getelementptr inbounds %struct.virtio_chan, ptr %call7.i, i32 0, i32 8
  call void @sg_init_table(ptr noundef %sg, i32 noundef 128) #12
  %21 = ptrtoint ptr %call7.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %call7.i, align 8
  call void @virtio_check_driver_offered_feature(ptr noundef %vdev, i32 noundef 0) #12
  %features.i.i = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 11
  %22 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %23, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool13.i.i.not = icmp eq i64 %and.i.i, 0
  br i1 %tobool13.i.i.not, label %if.end15.out_free_vq_crit_edge, label %do.body24

if.end15.out_free_vq_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_vq

do.body24:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %virtio_cread_v) #12
  %24 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %virtio_cread_v, align 2, !annotation !96
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 592) #12
  %25 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %config, align 8
  %get33 = getelementptr inbounds %struct.virtio_config_ops, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %get33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %get33, align 4
  call void %28(ptr noundef %vdev, i32 noundef 0, ptr noundef nonnull %virtio_cread_v, i32 noundef 2) #12
  %29 = ptrtoint ptr %virtio_cread_v to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %virtio_cread_v, align 2
  %31 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %features.i.i, align 8
  %and.i.i.i.i = and i64 %32, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool13.i.i.i.not.i = icmp eq i64 %and.i.i.i.i, 0
  %33 = call i16 @llvm.bswap.i16(i16 %30) #12
  %retval.0.i.i = select i1 %tobool13.i.i.i.not.i, i16 %30, i16 %33
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %virtio_cread_v) #12
  %conv38 = zext i16 %retval.0.i.i to i32
  %add = add nuw nsw i32 %conv38, 1
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %tobool40.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool40.not, label %do.body24.out_free_vq_crit_edge, label %if.end42

do.body24.out_free_vq_crit_edge:                  ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_vq

if.end42:                                         ; preds = %do.body24
  %34 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %config, align 8
  %generation.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %generation.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.end42.cond.end.i.i_crit_edge, label %cond.true.i.i

if.end42.cond.end.i.i_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i.i

cond.true.i.i:                                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i = call i32 %37(ptr noundef %vdev) #12
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.true.i.i, %if.end42.cond.end.i.i_crit_edge
  %cond.i.i = phi i32 [ %call.i.i, %cond.true.i.i ], [ 0, %if.end42.cond.end.i.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.14, i32 noundef 451) #12
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %retval.0.i.i)
  %cmp1.not.i.i = icmp eq i16 %retval.0.i.i, 0
  br label %do.body6.i.i

do.body6.i.i:                                     ; preds = %cond.end17.i.i.do.body6.i.i_crit_edge, %cond.end.i.i
  %gen.0.i.i = phi i32 [ %cond.i.i, %cond.end.i.i ], [ %cond18.i.i, %cond.end17.i.i.do.body6.i.i_crit_edge ]
  br i1 %cmp1.not.i.i, label %do.body6.i.i.for.end.i.i_crit_edge, label %do.body6.i.i.for.body.i.i_crit_edge

do.body6.i.i.for.body.i.i_crit_edge:              ; preds = %do.body6.i.i
  br label %for.body.i.i

do.body6.i.i.for.end.i.i_crit_edge:               ; preds = %do.body6.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body6.i.i.for.body.i.i_crit_edge
  %i.02.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.body6.i.i.for.body.i.i_crit_edge ]
  %38 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %config, align 8
  %get.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %get.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %get.i.i, align 4
  %add.i.i = add nuw nsw i32 %i.02.i.i, 2
  %add.ptr.i.i = getelementptr i8, ptr %call9.i.i, i32 %i.02.i.i
  call void %41(ptr noundef %vdev, i32 noundef %add.i.i, ptr noundef %add.ptr.i.i, i32 noundef 1) #12
  %inc.i.i = add nuw nsw i32 %i.02.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv38
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %do.body6.i.i.for.end.i.i_crit_edge
  %42 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %config, align 8
  %generation10.i.i = getelementptr inbounds %struct.virtio_config_ops, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %generation10.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %generation10.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %45, null
  br i1 %tobool11.not.i.i, label %for.end.i.i.cond.end17.i.i_crit_edge, label %cond.true12.i.i

for.end.i.i.cond.end17.i.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end17.i.i

cond.true12.i.i:                                  ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i.i = call i32 %45(ptr noundef %vdev) #12
  br label %cond.end17.i.i

cond.end17.i.i:                                   ; preds = %cond.true12.i.i, %for.end.i.i.cond.end17.i.i_crit_edge
  %cond18.i.i = phi i32 [ %call15.i.i, %cond.true12.i.i ], [ 0, %for.end.i.i.cond.end17.i.i_crit_edge ]
  %cmp20.not.i.i = icmp eq i32 %cond18.i.i, %gen.0.i.i
  br i1 %cmp20.not.i.i, label %virtio_cread_bytes.exit, label %cond.end17.i.i.do.body6.i.i_crit_edge

cond.end17.i.i.do.body6.i.i_crit_edge:            ; preds = %cond.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6.i.i

virtio_cread_bytes.exit:                          ; preds = %cond.end17.i.i
  %tag44 = getelementptr inbounds %struct.virtio_chan, ptr %call7.i, i32 0, i32 9
  %46 = ptrtoint ptr %tag44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call9.i.i, ptr %tag44, align 8
  %dev45 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  %call.i110 = call i32 @sysfs_create_file_ns(ptr noundef %dev45, ptr noundef nonnull @dev_attr_mount_tag, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool47.not = icmp eq i32 %call.i110, 0
  br i1 %tobool47.not, label %if.end49, label %virtio_cread_bytes.exit.out_free_tag_crit_edge

virtio_cread_bytes.exit.out_free_tag_crit_edge:   ; preds = %virtio_cread_bytes.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out_free_tag

if.end49:                                         ; preds = %virtio_cread_bytes.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i106 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3264, i32 noundef 52) #16
  %vc_wq = getelementptr inbounds %struct.virtio_chan, ptr %call7.i, i32 0, i32 6
  %48 = ptrtoint ptr %vc_wq to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i106, ptr %vc_wq, align 8
  %tobool52.not = icmp eq ptr %call7.i106, null
  br i1 %tobool52.not, label %if.then53, label %do.body55

if.then53:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #14
  call void @sysfs_remove_file_ns(ptr noundef %dev45, ptr noundef nonnull @dev_attr_mount_tag, ptr noundef null) #12
  br label %out_free_tag

do.body55:                                        ; preds = %if.end49
  call void @__init_waitqueue_head(ptr noundef nonnull %call7.i106, ptr noundef nonnull @.str.12, ptr noundef nonnull @p9_virtio_probe.__key.11) #12
  %ring_bufs_avail = getelementptr inbounds %struct.virtio_chan, ptr %call7.i, i32 0, i32 5
  %49 = ptrtoint ptr %ring_bufs_avail to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %ring_bufs_avail, align 4
  %call59 = call i32 @nr_free_buffer_pages() #12
  %div105 = lshr i32 %call59, 2
  %p9_max_pages = getelementptr inbounds %struct.virtio_chan, ptr %call7.i, i32 0, i32 7
  %50 = ptrtoint ptr %p9_max_pages to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div105, ptr %p9_max_pages, align 4
  %51 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %config, align 8
  %get_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %get_status.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %get_status.i, align 4
  %call.i112 = call zeroext i8 %54(ptr noundef %vdev) #12
  %55 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %config, align 8
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %tobool.not.i = icmp eq ptr %58, null
  br i1 %tobool.not.i, label %do.body55.do.body.i_crit_edge, label %if.then.i113

do.body55.do.body.i_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i

if.then.i113:                                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #14
  call void %58(ptr noundef %vdev) #12
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i113, %do.body55.do.body.i_crit_edge
  %59 = and i8 %call.i112, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool4.not.i = icmp eq i8 %59, 0
  br i1 %tobool4.not.i, label %virtio_device_ready.exit, label %do.body8.i, !prof !97

do.body8.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/virtio_config.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 239, 0\0A.popsection", ""() #12, !srcloc !98
  unreachable

virtio_device_ready.exit:                         ; preds = %do.body.i
  %60 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %config, align 8
  %set_status.i = getelementptr inbounds %struct.virtio_config_ops, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %set_status.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %set_status.i, align 4
  %or.i = or i8 %call.i112, 4
  call void %63(ptr noundef %vdev, i8 noundef zeroext %or.i) #12
  call void @mutex_lock_nested(ptr noundef nonnull @virtio_9p_lock, i32 noundef 0) #12
  %chan_list = getelementptr inbounds %struct.virtio_chan, ptr %call7.i, i32 0, i32 10
  %64 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @virtio_chan_list, i32 0, i32 1), align 4
  %call.i.i114 = call zeroext i1 @__list_add_valid(ptr noundef %chan_list, ptr noundef %64, ptr noundef nonnull @virtio_chan_list) #12
  br i1 %call.i.i114, label %if.end.i.i115, label %virtio_device_ready.exit.list_add_tail.exit_crit_edge

virtio_device_ready.exit.list_add_tail.exit_crit_edge: ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i115:                                    ; preds = %virtio_device_ready.exit
  call void @__sanitizer_cov_trace_pc() #14
  store ptr %chan_list, ptr getelementptr inbounds (%struct.list_head, ptr @virtio_chan_list, i32 0, i32 1), align 4
  %65 = ptrtoint ptr %chan_list to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @virtio_chan_list, ptr %chan_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.virtio_chan, ptr %call7.i, i32 0, i32 10, i32 1
  %66 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %64, ptr %prev3.i.i, align 8
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %chan_list, ptr %64, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i115, %virtio_device_ready.exit.list_add_tail.exit_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @virtio_9p_lock) #12
  %call62 = call i32 @kobject_uevent(ptr noundef %dev45, i32 noundef 2) #12
  br label %cleanup

out_free_tag:                                     ; preds = %if.then53, %virtio_cread_bytes.exit.out_free_tag_crit_edge
  %err.0 = phi i32 [ %call.i110, %virtio_cread_bytes.exit.out_free_tag_crit_edge ], [ -12, %if.then53 ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %out_free_vq

out_free_vq:                                      ; preds = %out_free_tag, %do.body24.out_free_vq_crit_edge, %if.end15.out_free_vq_crit_edge
  %err.1 = phi i32 [ %err.0, %out_free_tag ], [ -22, %if.end15.out_free_vq_crit_edge ], [ -12, %do.body24.out_free_vq_crit_edge ]
  %68 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %del_vqs, align 4
  call void %71(ptr noundef %vdev) #12
  br label %out_free_chan

out_free_chan:                                    ; preds = %out_free_vq, %if.then12
  %err.2 = phi i32 [ %17, %if.then12 ], [ %err.1, %out_free_vq ]
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

cleanup:                                          ; preds = %out_free_chan, %list_add_tail.exit, %do.end5, %do.end
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -22, %do.end ], [ %err.2, %out_free_chan ], [ -12, %do.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p9_virtio_remove(ptr noundef %vdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @mutex_lock_nested(ptr noundef nonnull @virtio_9p_lock, i32 noundef 0) #12
  %chan_list = getelementptr inbounds %struct.virtio_chan, ptr %1, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %chan_list) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.virtio_chan, ptr %1, i32 0, i32 10, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %chan_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %chan_list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %chan_list, align 4
  %prev.i = getelementptr inbounds %struct.virtio_chan, ptr %1, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not14 = icmp eq i8 %12, 0
  br i1 %tobool.not14, label %list_del.exit.while.end_crit_edge, label %while.body.lr.ph

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %list_del.exit
  %dev = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %warning_time.015 = phi i32 [ %10, %while.body.lr.ph ], [ %warning_time.1, %if.end.while.body_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_9p_lock) #12
  tail call void @msleep(i32 noundef 250) #12
  %add = add i32 %warning_time.015, 1000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_emerg(ptr noundef %dev, ptr noundef nonnull @.str.18) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  br label %if.end

if.end:                                           ; preds = %do.end, %while.body.if.end_crit_edge
  %warning_time.1 = phi i32 [ %14, %do.end ], [ %warning_time.015, %while.body.if.end_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @virtio_9p_lock, i32 noundef 0) #12
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %1, align 4, !range !99
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %list_del.exit.while.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_9p_lock) #12
  tail call void @virtio_reset_device(ptr noundef %vdev) #12
  %config = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 8
  %17 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config, align 8
  %del_vqs = getelementptr inbounds %struct.virtio_config_ops, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %del_vqs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %del_vqs, align 4
  tail call void %20(ptr noundef %vdev) #12
  %dev1 = getelementptr inbounds %struct.virtio_device, ptr %vdev, i32 0, i32 6
  tail call void @sysfs_remove_file_ns(ptr noundef %dev1, ptr noundef nonnull @dev_attr_mount_tag, ptr noundef null) #12
  %call = tail call i32 @kobject_uevent(ptr noundef %dev1, i32 noundef 2) #12
  %tag = getelementptr inbounds %struct.virtio_chan, ptr %1, i32 0, i32 9
  %21 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tag, align 4
  tail call void @kfree(ptr noundef %22) #12
  %vc_wq = getelementptr inbounds %struct.virtio_chan, ptr %1, i32 0, i32 6
  %23 = ptrtoint ptr %vc_wq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vc_wq, align 4
  tail call void @kfree(ptr noundef %24) #12
  tail call void @kfree(ptr noundef %1) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @req_done(ptr nocapture noundef readonly %vq) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vq, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #12
  %4 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %len, align 4, !annotation !96
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.req_done, ptr noundef nonnull @.str.13) #12
  %lock = getelementptr inbounds %struct.virtio_chan, ptr %3, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %vq5 = getelementptr inbounds %struct.virtio_chan, ptr %3, i32 0, i32 4
  %5 = ptrtoint ptr %vq5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %vq5, align 4
  %call625 = call ptr @virtqueue_get_buf(ptr noundef %6, ptr noundef nonnull %len) #12
  %cmp7.not26 = icmp eq ptr %call625, null
  br i1 %cmp7.not26, label %if.end16.critedge, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %ring_bufs_avail = getelementptr inbounds %struct.virtio_chan, ptr %3, i32 0, i32 5
  %client = getelementptr inbounds %struct.virtio_chan, ptr %3, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end12.while.body_crit_edge, %while.body.lr.ph
  %call628 = phi ptr [ %call625, %while.body.lr.ph ], [ %call6, %if.end12.while.body_crit_edge ]
  %need_wakeup.0.off027 = phi i1 [ false, %while.body.lr.ph ], [ %need_wakeup.1.off0, %if.end12.while.body_crit_edge ]
  %7 = ptrtoint ptr %ring_bufs_avail to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ring_bufs_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %ring_bufs_avail to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ring_bufs_avail, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %need_wakeup.1.off0 = phi i1 [ %need_wakeup.0.off027, %while.body.if.end_crit_edge ], [ true, %if.then ]
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %rc = getelementptr inbounds %struct.p9_req_t, ptr %call628, i32 0, i32 5
  %12 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rc, align 4
  %13 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client, align 4
  call void @p9_client_cb(ptr noundef %14, ptr noundef nonnull %call628, i32 noundef 3) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %15 = ptrtoint ptr %vq5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vq5, align 4
  %call6 = call ptr @virtqueue_get_buf(ptr noundef %16, ptr noundef nonnull %len) #12
  %cmp7.not = icmp eq ptr %call6, null
  br i1 %cmp7.not, label %while.end, label %if.end12.while.body_crit_edge

if.end12.while.body_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  br i1 %need_wakeup.1.off0, label %if.then15, label %while.end.if.end16_crit_edge

while.end.if.end16_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %vc_wq = getelementptr inbounds %struct.virtio_chan, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %vc_wq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %vc_wq, align 4
  call void @__wake_up(ptr noundef %18, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end16

if.end16.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  br label %if.end16

if.end16:                                         ; preds = %if.end16.critedge, %if.then15, %while.end.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nr_free_buffer_pages() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_p9_debug(i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @p9_client_cb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_check_driver_offered_feature(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @p9_mount_tag_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr i8, ptr %dev, i32 960
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %tag = getelementptr inbounds %struct.virtio_chan, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tag, align 4
  %call1 = tail call i32 @strlen(ptr noundef %3) #18
  %add = add i32 %call1, 1
  %4 = call ptr @memcpy(ptr %buf, ptr %3, i32 %add)
  ret i32 %add
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_emerg(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtio_reset_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_virtio_create(ptr noundef %client, ptr noundef %devname, ptr nocapture noundef readnone %args) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %devname, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @virtio_9p_lock, i32 noundef 0) #12
  %.pn33 = load ptr, ptr @virtio_chan_list, align 4
  %cmp1.not35 = icmp eq ptr %.pn33, @virtio_chan_list
  br i1 %cmp1.not35, label %if.end.do.end.critedge_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.do.end.critedge_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.critedge

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn37 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn33, %if.end.for.body_crit_edge ]
  %ret.036 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ -2, %if.end.for.body_crit_edge ]
  %tag = getelementptr i8, ptr %.pn37, i32 -4
  %0 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tag, align 4
  %call = tail call i32 @strcmp(ptr noundef nonnull %devname, ptr noundef %1) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then2, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then2:                                         ; preds = %for.body
  %chan.038 = getelementptr i8, ptr %.pn37, i32 -2636
  %2 = ptrtoint ptr %chan.038 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %chan.038, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %if.then4, label %if.then2.for.inc_crit_edge

if.then2.for.inc_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %chan.038.le = getelementptr i8, ptr %.pn37, i32 -2636
  %4 = ptrtoint ptr %chan.038.le to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %chan.038.le, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_9p_lock) #12
  %trans = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 5
  %5 = ptrtoint ptr %trans to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %chan.038.le, ptr %trans, align 4
  %status = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 4
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %status, align 4
  %client17 = getelementptr i8, ptr %.pn37, i32 -2588
  %7 = ptrtoint ptr %client17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %client17, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.then2.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.036, %for.body.for.inc_crit_edge ], [ -16, %if.then2.for.inc_crit_edge ]
  %8 = ptrtoint ptr %.pn37 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn = load ptr, ptr %.pn37, align 4
  %cmp1.not = icmp eq ptr %.pn, @virtio_chan_list
  br i1 %cmp1.not, label %for.inc.do.end.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.do.end.critedge_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.critedge

do.end.critedge:                                  ; preds = %for.inc.do.end.critedge_crit_edge, %if.end.do.end.critedge_crit_edge
  %ret.0.lcssa = phi i32 [ -2, %if.end.do.end.critedge_crit_edge ], [ %ret.1, %for.inc.do.end.critedge_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_9p_lock) #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull %devname) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end.critedge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ %ret.0.lcssa, %do.end.critedge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @p9_virtio_close(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 5
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @virtio_9p_lock, i32 noundef 0) #12
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @virtio_9p_lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_virtio_request(ptr nocapture noundef readonly %client, ptr noundef %req) #2 align 64 {
entry:
  %sgs = alloca [2 x ptr], align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %trans = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 5
  %0 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %trans, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sgs) #12
  %2 = ptrtoint ptr %sgs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %sgs, align 4, !annotation !96
  %3 = getelementptr inbounds [2 x ptr], ptr %sgs, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !96
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_virtio_request, ptr noundef nonnull @.str.24) #12
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %req, align 4
  %lock = getelementptr inbounds %struct.virtio_chan, ptr %1, i32 0, i32 1
  %sg = getelementptr inbounds %struct.virtio_chan, ptr %1, i32 0, i32 8
  %tc = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 4
  %sdata = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 4, i32 6
  %sdata11 = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 5, i32 6
  %capacity = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 5, i32 4
  %vq = getelementptr inbounds %struct.virtio_chan, ptr %1, i32 0, i32 4
  %ring_bufs_avail = getelementptr inbounds %struct.virtio_chan, ptr %1, i32 0, i32 5
  %vc_wq = getelementptr inbounds %struct.virtio_chan, ptr %1, i32 0, i32 6
  br label %req_retry

req_retry:                                        ; preds = %if.end55, %entry
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %6 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sdata, align 4
  %8 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tc, align 4
  %call6 = call fastcc i32 @pack_sg_list(ptr noundef %sg, i32 noundef 0, ptr noundef %7, i32 noundef %9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %req_retry.if.end_crit_edge, label %if.then

req_retry.if.end_crit_edge:                       ; preds = %req_retry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %req_retry
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %sgs to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %sg, ptr %sgs, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %req_retry.if.end_crit_edge
  %out_sgs.0 = phi i32 [ 1, %if.then ], [ 0, %req_retry.if.end_crit_edge ]
  %11 = ptrtoint ptr %sdata11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sdata11, align 4
  %13 = ptrtoint ptr %capacity to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %capacity, align 4
  %call13 = call fastcc i32 @pack_sg_list(ptr noundef %sg, i32 noundef %call6, ptr noundef %12, i32 noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end.if.end20_crit_edge, label %if.then15

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr %struct.scatterlist, ptr %sg, i32 %call6
  %arrayidx19 = getelementptr [2 x ptr], ptr %sgs, i32 0, i32 %out_sgs.0
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %arrayidx19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end.if.end20_crit_edge
  %in_sgs.0 = phi i32 [ 1, %if.then15 ], [ 0, %if.end.if.end20_crit_edge ]
  %16 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vq, align 4
  %call22 = call i32 @virtqueue_add_sgs(ptr noundef %17, ptr noundef nonnull %sgs, i32 noundef %out_sgs.0, i32 noundef %in_sgs.0, ptr noundef %req, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end57

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call22)
  %cmp26 = icmp eq i32 %call22, -28
  br i1 %cmp26, label %if.then28, label %if.then25.cleanup61.sink.split_crit_edge

if.then25.cleanup61.sink.split_crit_edge:         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61.sink.split

if.then28:                                        ; preds = %if.then25
  %18 = ptrtoint ptr %ring_bufs_avail to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %ring_bufs_avail, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 289) #12
  %19 = ptrtoint ptr %ring_bufs_avail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ring_bufs_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool37.not = icmp eq i32 %20, 0
  br i1 %tobool37.not, label %if.then38, label %if.then28.if.end55_crit_edge

if.then28.if.end55_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then38:                                        ; preds = %if.then28
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %21 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %22 = ptrtoint ptr %vc_wq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %vc_wq, align 4
  %call40119 = call i32 @prepare_to_wait_event(ptr noundef %23, ptr noundef nonnull %__wq_entry, i32 noundef 258) #12
  %24 = ptrtoint ptr %ring_bufs_avail to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ring_bufs_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool42.not120 = icmp eq i32 %25, 0
  br i1 %tobool42.not120, label %if.then38.if.end44_crit_edge, label %if.then38.if.end50.thread108_crit_edge

if.then38.if.end50.thread108_crit_edge:           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.thread108

if.then38.if.end44_crit_edge:                     ; preds = %if.then38
  br label %if.end44

if.end44:                                         ; preds = %cleanup.if.end44_crit_edge, %if.then38.if.end44_crit_edge
  %call40121 = phi i32 [ %call40, %cleanup.if.end44_crit_edge ], [ %call40119, %if.then38.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40121)
  %tobool45.not = icmp eq i32 %call40121, 0
  br i1 %tobool45.not, label %cleanup, label %if.end50

cleanup:                                          ; preds = %if.end44
  call void @schedule() #12
  %26 = ptrtoint ptr %vc_wq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vc_wq, align 4
  %call40 = call i32 @prepare_to_wait_event(ptr noundef %27, ptr noundef nonnull %__wq_entry, i32 noundef 258) #12
  %28 = ptrtoint ptr %ring_bufs_avail to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ring_bufs_avail, align 4
  %tobool42.not = icmp eq i32 %29, 0
  br i1 %tobool42.not, label %cleanup.if.end44_crit_edge, label %cleanup.if.end50.thread108_crit_edge

cleanup.if.end50.thread108_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end50.thread108

cleanup.if.end44_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end44

if.end50.thread108:                               ; preds = %cleanup.if.end50.thread108_crit_edge, %if.then38.if.end50.thread108_crit_edge
  %30 = ptrtoint ptr %vc_wq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %vc_wq, align 4
  call void @finish_wait(ptr noundef %31, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end55

if.end50:                                         ; preds = %if.end44
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call40121)
  %cmp52 = icmp eq i32 %call40121, -512
  br i1 %cmp52, label %if.end50.cleanup61_crit_edge, label %if.end50.if.end55_crit_edge

if.end50.if.end55_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.end50.cleanup61_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup61

if.end55:                                         ; preds = %if.end50.if.end55_crit_edge, %if.end50.thread108, %if.then28.if.end55_crit_edge
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_virtio_request, ptr noundef nonnull @.str.25) #12
  br label %req_retry

if.end57:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %vq, align 4
  %call59 = call zeroext i1 @virtqueue_kick(ptr noundef %33) #12
  br label %cleanup61.sink.split

cleanup61.sink.split:                             ; preds = %if.end57, %if.then25.cleanup61.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.27, %if.end57 ], [ @.str.26, %if.then25.cleanup61.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end57 ], [ -5, %if.then25.cleanup61.sink.split_crit_edge ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_virtio_request, ptr noundef nonnull %.str.27.sink) #12
  br label %cleanup61

cleanup61:                                        ; preds = %cleanup61.sink.split, %if.end50.cleanup61_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup61.sink.split ], [ -512, %if.end50.cleanup61_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sgs) #12
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @p9_virtio_cancel(ptr nocapture noundef readnone %client, ptr nocapture noundef readnone %req) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_virtio_cancelled(ptr nocapture noundef readnone %client, ptr noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @p9_req_put(ptr noundef %req) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @p9_virtio_zc_request(ptr nocapture noundef readonly %client, ptr noundef %req, ptr noundef %uidata, ptr noundef %uodata, i32 noundef %inlen, i32 noundef %outlen, i32 noundef %in_hdr_len) #2 align 64 {
entry:
  %in_pages = alloca ptr, align 4
  %out_pages = alloca ptr, align 4
  %sgs = alloca [4 x ptr], align 4
  %offs = alloca i32, align 4
  %need_drop = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry168 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %in_pages) #12
  %0 = ptrtoint ptr %in_pages to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %in_pages, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %out_pages) #12
  %1 = ptrtoint ptr %out_pages to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %out_pages, align 4
  %trans = getelementptr inbounds %struct.p9_client, ptr %client, i32 0, i32 5
  %2 = ptrtoint ptr %trans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %trans, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sgs) #12
  %4 = call ptr @memset(ptr %sgs, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offs) #12
  %5 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %offs, align 4, !annotation !96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %need_drop) #12
  %6 = ptrtoint ptr %need_drop to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %need_drop, align 4
  tail call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_virtio_zc_request, ptr noundef nonnull @.str.28) #12
  %tobool.not = icmp eq ptr %uodata, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call fastcc i32 @p9_get_mapped_pages(ptr noundef %3, ptr noundef nonnull %out_pages, ptr noundef nonnull %uodata, i32 noundef %outlen, ptr noundef nonnull %offs, ptr noundef nonnull %need_drop)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.err_out_crit_edge, label %if.end

if.then.err_out_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %offs, align 4
  %add = add nuw i32 %call, 4095
  %sub = add i32 %add, %8
  %div304 = lshr i32 %sub, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %outlen)
  %cmp3.not = icmp eq i32 %call, %outlen
  br i1 %cmp3.not, label %if.end.cleanup.thread_crit_edge, label %if.then4

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.thread

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %9 = call i32 @llvm.bswap.i32(i32 %call)
  %tc = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 4
  %sdata = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 4, i32 6
  %10 = ptrtoint ptr %sdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sdata, align 4
  %12 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tc, align 4
  %sub6 = add i32 %13, -4
  %arrayidx = getelementptr i8, ptr %11, i32 %sub6
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %9, ptr %arrayidx, align 1
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then4, %if.end.cleanup.thread_crit_edge
  %outlen.addr.0 = phi i32 [ %call, %if.then4 ], [ %outlen, %if.end.cleanup.thread_crit_edge ]
  %tc8 = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 4
  %15 = ptrtoint ptr %tc8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tc8, align 4
  %add10 = add i32 %16, %outlen.addr.0
  %17 = call i32 @llvm.bswap.i32(i32 %add10)
  %sdata12 = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 4, i32 6
  %18 = ptrtoint ptr %sdata12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sdata12, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %17, ptr %19, align 1
  br label %if.end40

if.else:                                          ; preds = %entry
  %tobool15.not = icmp eq ptr %uidata, null
  br i1 %tobool15.not, label %if.else.if.end40_crit_edge, label %if.then16

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then16:                                        ; preds = %if.else
  %call18 = call fastcc i32 @p9_get_mapped_pages(ptr noundef %3, ptr noundef nonnull %in_pages, ptr noundef nonnull %uidata, i32 noundef %inlen, ptr noundef nonnull %offs, ptr noundef nonnull %need_drop)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then16.err_out_crit_edge, label %if.end21

if.then16.err_out_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.end21:                                         ; preds = %if.then16
  %21 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %offs, align 4
  %add22 = add nuw i32 %call18, 4095
  %sub24 = add i32 %add22, %22
  %div25303 = lshr i32 %sub24, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %call18, i32 %inlen)
  %cmp26.not = icmp eq i32 %call18, %inlen
  br i1 %cmp26.not, label %if.end21.if.end40_crit_edge, label %if.then27

if.end21.if.end40_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %23 = call i32 @llvm.bswap.i32(i32 %call18)
  %tc29 = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 4
  %sdata30 = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %sdata30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sdata30, align 4
  %26 = ptrtoint ptr %tc29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tc29, align 4
  %sub33 = add i32 %27, -4
  %arrayidx34 = getelementptr i8, ptr %25, i32 %sub33
  %28 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %23, ptr %arrayidx34, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then27, %if.end21.if.end40_crit_edge, %if.else.if.end40_crit_edge, %cleanup.thread
  %in_nr_pages.1 = phi i32 [ 0, %if.else.if.end40_crit_edge ], [ 0, %cleanup.thread ], [ %div25303, %if.then27 ], [ %div25303, %if.end21.if.end40_crit_edge ]
  %out_nr_pages.1 = phi i32 [ 0, %if.else.if.end40_crit_edge ], [ %div304, %cleanup.thread ], [ 0, %if.then27 ], [ 0, %if.end21.if.end40_crit_edge ]
  %outlen.addr.2 = phi i32 [ %outlen, %if.else.if.end40_crit_edge ], [ %outlen.addr.0, %cleanup.thread ], [ %outlen, %if.then27 ], [ %outlen, %if.end21.if.end40_crit_edge ]
  %inlen.addr.2 = phi i32 [ %inlen, %if.else.if.end40_crit_edge ], [ %inlen, %cleanup.thread ], [ %call18, %if.then27 ], [ %inlen, %if.end21.if.end40_crit_edge ]
  %29 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %req, align 4
  %lock = getelementptr inbounds %struct.virtio_chan, ptr %3, i32 0, i32 1
  %sg = getelementptr inbounds %struct.virtio_chan, ptr %3, i32 0, i32 8
  %tc47 = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 4
  %sdata48 = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 4, i32 6
  %sdata71 = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 5, i32 6
  %vq = getelementptr inbounds %struct.virtio_chan, ptr %3, i32 0, i32 4
  %ring_bufs_avail = getelementptr inbounds %struct.virtio_chan, ptr %3, i32 0, i32 5
  %vc_wq = getelementptr inbounds %struct.virtio_chan, ptr %3, i32 0, i32 6
  br label %req_retry_pinned

req_retry_pinned:                                 ; preds = %if.end150, %if.end40
  %call44 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %30 = ptrtoint ptr %sdata48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sdata48, align 4
  %32 = ptrtoint ptr %tc47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tc47, align 4
  %call51 = call fastcc i32 @pack_sg_list(ptr noundef %sg, i32 noundef 0, ptr noundef %31, i32 noundef %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %req_retry_pinned.if.end57_crit_edge, label %if.then53

req_retry_pinned.if.end57_crit_edge:              ; preds = %req_retry_pinned
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end57

if.then53:                                        ; preds = %req_retry_pinned
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %sgs to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %sg, ptr %sgs, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %req_retry_pinned.if.end57_crit_edge
  %out_sgs.0 = phi i32 [ 1, %if.then53 ], [ 0, %req_retry_pinned.if.end57_crit_edge ]
  %35 = ptrtoint ptr %out_pages to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %out_pages, align 4
  %tobool58.not = icmp eq ptr %36, null
  br i1 %tobool58.not, label %if.end57.if.end68_crit_edge, label %if.then59

if.end57.if.end68_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end68

if.then59:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr %struct.scatterlist, ptr %sg, i32 %call51
  %inc62 = add nuw nsw i32 %out_sgs.0, 1
  %arrayidx63 = getelementptr [4 x ptr], ptr %sgs, i32 0, i32 %out_sgs.0
  %37 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr, ptr %arrayidx63, align 4
  %38 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %offs, align 4
  %call66 = call fastcc i32 @pack_sg_list_p(ptr noundef %sg, i32 noundef %call51, ptr noundef nonnull %36, i32 noundef %out_nr_pages.1, i32 noundef %39, i32 noundef %outlen.addr.2)
  %add67 = add i32 %call66, %call51
  br label %if.end68

if.end68:                                         ; preds = %if.then59, %if.end57.if.end68_crit_edge
  %out_sgs.1 = phi i32 [ %inc62, %if.then59 ], [ %out_sgs.0, %if.end57.if.end68_crit_edge ]
  %out.0 = phi i32 [ %add67, %if.then59 ], [ %call51, %if.end57.if.end68_crit_edge ]
  %40 = ptrtoint ptr %sdata71 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %sdata71, align 4
  %call72 = call fastcc i32 @pack_sg_list(ptr noundef %sg, i32 noundef %out.0, ptr noundef %41, i32 noundef %in_hdr_len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end68.if.end81_crit_edge, label %if.then74

if.end68.if.end81_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end81

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr77 = getelementptr %struct.scatterlist, ptr %sg, i32 %out.0
  %arrayidx80 = getelementptr [4 x ptr], ptr %sgs, i32 0, i32 %out_sgs.1
  %42 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr77, ptr %arrayidx80, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then74, %if.end68.if.end81_crit_edge
  %in_sgs.0 = phi i32 [ 1, %if.then74 ], [ 0, %if.end68.if.end81_crit_edge ]
  %43 = ptrtoint ptr %in_pages to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %in_pages, align 4
  %tobool82.not = icmp eq ptr %44, null
  br i1 %tobool82.not, label %if.end81.do.end112_crit_edge, label %if.then83

if.end81.do.end112_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end112

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr86 = getelementptr %struct.scatterlist, ptr %sg, i32 %out.0
  %add.ptr87 = getelementptr %struct.scatterlist, ptr %add.ptr86, i32 %call72
  %inc88 = add nuw nsw i32 %in_sgs.0, 1
  %add89 = add nuw nsw i32 %in_sgs.0, %out_sgs.1
  %arrayidx90 = getelementptr [4 x ptr], ptr %sgs, i32 0, i32 %add89
  %45 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr87, ptr %arrayidx90, align 4
  %add93 = add i32 %call72, %out.0
  %46 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %offs, align 4
  %48 = call fastcc i32 @pack_sg_list_p(ptr noundef %sg, i32 noundef %add93, ptr noundef nonnull %44, i32 noundef %in_nr_pages.1, i32 noundef %47, i32 noundef %inlen.addr.2)
  br label %do.end112

do.end112:                                        ; preds = %if.then83, %if.end81.do.end112_crit_edge
  %in_sgs.1 = phi i32 [ %inc88, %if.then83 ], [ %in_sgs.0, %if.end81.do.end112_crit_edge ]
  %49 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %vq, align 4
  %call114 = call i32 @virtqueue_add_sgs(ptr noundef %50, ptr noundef nonnull %sgs, i32 noundef %out_sgs.1, i32 noundef %in_sgs.1, ptr noundef %req, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %cmp115 = icmp slt i32 %call114, 0
  br i1 %cmp115, label %if.then117, label %if.end153

if.then117:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call114)
  %cmp118 = icmp eq i32 %call114, -28
  br i1 %cmp118, label %if.then120, label %if.else151

if.then120:                                       ; preds = %if.then117
  %51 = ptrtoint ptr %ring_bufs_avail to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %ring_bufs_avail, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call44) #12
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 487) #12
  %52 = ptrtoint ptr %ring_bufs_avail to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ring_bufs_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool129.not = icmp eq i32 %53, 0
  br i1 %tobool129.not, label %if.then130, label %if.then120.if.end150_crit_edge

if.then120.if.end150_crit_edge:                   ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150

if.then130:                                       ; preds = %if.then120
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %54 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %55 = ptrtoint ptr %vc_wq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %vc_wq, align 4
  %call132348 = call i32 @prepare_to_wait_event(ptr noundef %56, ptr noundef nonnull %__wq_entry, i32 noundef 258) #12
  %57 = ptrtoint ptr %ring_bufs_avail to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ring_bufs_avail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool134.not349 = icmp eq i32 %58, 0
  br i1 %tobool134.not349, label %if.then130.if.end136_crit_edge, label %if.then130.if.end145.thread328_crit_edge

if.then130.if.end145.thread328_crit_edge:         ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145.thread328

if.then130.if.end136_crit_edge:                   ; preds = %if.then130
  br label %if.end136

if.end136:                                        ; preds = %cleanup140.if.end136_crit_edge, %if.then130.if.end136_crit_edge
  %call132350 = phi i32 [ %call132, %cleanup140.if.end136_crit_edge ], [ %call132348, %if.then130.if.end136_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132350)
  %tobool137.not = icmp eq i32 %call132350, 0
  br i1 %tobool137.not, label %cleanup140, label %if.end145

cleanup140:                                       ; preds = %if.end136
  call void @schedule() #12
  %59 = ptrtoint ptr %vc_wq to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %vc_wq, align 4
  %call132 = call i32 @prepare_to_wait_event(ptr noundef %60, ptr noundef nonnull %__wq_entry, i32 noundef 258) #12
  %61 = ptrtoint ptr %ring_bufs_avail to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ring_bufs_avail, align 4
  %tobool134.not = icmp eq i32 %62, 0
  br i1 %tobool134.not, label %cleanup140.if.end136_crit_edge, label %cleanup140.if.end145.thread328_crit_edge

cleanup140.if.end145.thread328_crit_edge:         ; preds = %cleanup140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end145.thread328

cleanup140.if.end136_crit_edge:                   ; preds = %cleanup140
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end136

if.end145.thread328:                              ; preds = %cleanup140.if.end145.thread328_crit_edge, %if.then130.if.end145.thread328_crit_edge
  %63 = ptrtoint ptr %vc_wq to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %vc_wq, align 4
  call void @finish_wait(ptr noundef %64, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end150

if.end145:                                        ; preds = %if.end136
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call132350)
  %cmp147 = icmp eq i32 %call132350, -512
  br i1 %cmp147, label %if.end145.err_out_crit_edge, label %if.end145.if.end150_crit_edge

if.end145.if.end150_crit_edge:                    ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end150

if.end145.err_out_crit_edge:                      ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.end150:                                        ; preds = %if.end145.if.end150_crit_edge, %if.end145.thread328, %if.then120.if.end150_crit_edge
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_virtio_zc_request, ptr noundef nonnull @.str.25) #12
  br label %req_retry_pinned

if.else151:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call44) #12
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_virtio_zc_request, ptr noundef nonnull @.str.26) #12
  br label %err_out

if.end153:                                        ; preds = %do.end112
  %65 = ptrtoint ptr %vq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %vq, align 4
  %call155 = call zeroext i1 @virtqueue_kick(ptr noundef %66) #12
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call44) #12
  call void (i32, ptr, ptr, ...) @_p9_debug(i32 noundef 64, ptr noundef nonnull @__func__.p9_virtio_zc_request, ptr noundef nonnull @.str.27) #12
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 505) #12
  %67 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %68)
  %cmp165 = icmp sgt i32 %68, 2
  br i1 %cmp165, label %if.end153.err_out_crit_edge, label %if.then167

if.end153.err_out_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_out

if.then167:                                       ; preds = %if.end153
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry168) #12
  %69 = call ptr @memset(ptr %__wq_entry168, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry168, i32 noundef 0) #12
  %wq = getelementptr inbounds %struct.p9_req_t, ptr %req, i32 0, i32 3
  %call172351 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry168, i32 noundef 258) #12
  %70 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp174352 = icmp sgt i32 %71, 2
  br i1 %cmp174352, label %if.then167.for.end184_crit_edge, label %if.then167.if.end177_crit_edge

if.then167.if.end177_crit_edge:                   ; preds = %if.then167
  br label %if.end177

if.then167.for.end184_crit_edge:                  ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end184

if.end177:                                        ; preds = %cleanup181.if.end177_crit_edge, %if.then167.if.end177_crit_edge
  %call172353 = phi i32 [ %call172, %cleanup181.if.end177_crit_edge ], [ %call172351, %if.then167.if.end177_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172353)
  %tobool178.not = icmp eq i32 %call172353, 0
  br i1 %tobool178.not, label %cleanup181, label %if.end177.__out186_crit_edge

if.end177.__out186_crit_edge:                     ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #14
  br label %__out186

cleanup181:                                       ; preds = %if.end177
  call void @schedule() #12
  %call172 = call i32 @prepare_to_wait_event(ptr noundef %wq, ptr noundef nonnull %__wq_entry168, i32 noundef 258) #12
  %72 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %req, align 4
  %cmp174 = icmp sgt i32 %73, 2
  br i1 %cmp174, label %cleanup181.for.end184_crit_edge, label %cleanup181.if.end177_crit_edge

cleanup181.if.end177_crit_edge:                   ; preds = %cleanup181
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end177

cleanup181.for.end184_crit_edge:                  ; preds = %cleanup181
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end184

for.end184:                                       ; preds = %cleanup181.for.end184_crit_edge, %if.then167.for.end184_crit_edge
  call void @finish_wait(ptr noundef %wq, ptr noundef nonnull %__wq_entry168) #12
  br label %__out186

__out186:                                         ; preds = %for.end184, %if.end177.__out186_crit_edge
  %__ret169.1333 = phi i32 [ 0, %for.end184 ], [ %call172353, %if.end177.__out186_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry168) #12
  br label %err_out

err_out:                                          ; preds = %__out186, %if.end153.err_out_crit_edge, %if.else151, %if.end145.err_out_crit_edge, %if.then16.err_out_crit_edge, %if.then.err_out_crit_edge
  %in_nr_pages.2 = phi i32 [ %in_nr_pages.1, %if.else151 ], [ %in_nr_pages.1, %__out186 ], [ %in_nr_pages.1, %if.end153.err_out_crit_edge ], [ 0, %if.then.err_out_crit_edge ], [ 0, %if.then16.err_out_crit_edge ], [ %in_nr_pages.1, %if.end145.err_out_crit_edge ]
  %out_nr_pages.2 = phi i32 [ %out_nr_pages.1, %if.else151 ], [ %out_nr_pages.1, %__out186 ], [ %out_nr_pages.1, %if.end153.err_out_crit_edge ], [ 0, %if.then.err_out_crit_edge ], [ 0, %if.then16.err_out_crit_edge ], [ %out_nr_pages.1, %if.end145.err_out_crit_edge ]
  %tobool199.not = phi i1 [ true, %if.else151 ], [ false, %__out186 ], [ false, %if.end153.err_out_crit_edge ], [ true, %if.then.err_out_crit_edge ], [ true, %if.then16.err_out_crit_edge ], [ true, %if.end145.err_out_crit_edge ]
  %err.2 = phi i32 [ -5, %if.else151 ], [ %__ret169.1333, %__out186 ], [ 0, %if.end153.err_out_crit_edge ], [ %call, %if.then.err_out_crit_edge ], [ %call18, %if.then16.err_out_crit_edge ], [ -512, %if.end145.err_out_crit_edge ]
  %74 = ptrtoint ptr %need_drop to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %need_drop, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool190.not = icmp eq i32 %75, 0
  br i1 %tobool190.not, label %err_out.if.end198_crit_edge, label %if.then191

err_out.if.end198_crit_edge:                      ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end198

if.then191:                                       ; preds = %err_out
  %76 = ptrtoint ptr %in_pages to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %in_pages, align 4
  %tobool192.not = icmp eq ptr %77, null
  br i1 %tobool192.not, label %if.then191.if.end194_crit_edge, label %if.then193

if.then191.if.end194_crit_edge:                   ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end194

if.then193:                                       ; preds = %if.then191
  call void @__sanitizer_cov_trace_pc() #14
  call void @p9_release_pages(ptr noundef nonnull %77, i32 noundef %in_nr_pages.2) #12
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @vp_pinned, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull @vp_pinned, i32 1, i32 3, i32 1) #12
  %78 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @vp_pinned, ptr nonnull @vp_pinned, i32 %in_nr_pages.2, ptr nonnull elementtype(i32) @vp_pinned) #12, !srcloc !100
  br label %if.end194

if.end194:                                        ; preds = %if.then193, %if.then191.if.end194_crit_edge
  %79 = ptrtoint ptr %out_pages to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %out_pages, align 4
  %tobool195.not = icmp eq ptr %80, null
  br i1 %tobool195.not, label %if.end194.if.end197_crit_edge, label %if.then196

if.end194.if.end197_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end197

if.then196:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #14
  call void @p9_release_pages(ptr noundef nonnull %80, i32 noundef %out_nr_pages.2) #12
  %call.i.i308 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @vp_pinned, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull @vp_pinned, i32 1, i32 3, i32 1) #12
  %81 = call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @vp_pinned, ptr nonnull @vp_pinned, i32 %out_nr_pages.2, ptr nonnull elementtype(i32) @vp_pinned) #12, !srcloc !100
  br label %if.end197

if.end197:                                        ; preds = %if.then196, %if.end194.if.end197_crit_edge
  call void @__wake_up(ptr noundef nonnull @vp_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end198

if.end198:                                        ; preds = %if.end197, %err_out.if.end198_crit_edge
  %82 = ptrtoint ptr %in_pages to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %in_pages, align 4
  call void @kvfree(ptr noundef %83) #12
  %84 = ptrtoint ptr %out_pages to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %out_pages, align 4
  call void @kvfree(ptr noundef %85) #12
  br i1 %tobool199.not, label %if.then200, label %if.end198.cleanup203_crit_edge

if.end198.cleanup203_crit_edge:                   ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup203

if.then200:                                       ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #14
  %call201 = call i32 @p9_req_put(ptr noundef %req) #12
  br label %cleanup203

cleanup203:                                       ; preds = %if.then200, %if.end198.cleanup203_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %need_drop) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offs) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sgs) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %out_pages) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %in_pages) #12
  ret i32 %err.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pack_sg_list(ptr nocapture noundef %sg, i32 noundef %start, ptr noundef %data, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not10 = icmp eq i32 %count, 0
  br i1 %tobool.not10, label %entry.if.end18_crit_edge, label %while.body.preheader

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

while.body.preheader:                             ; preds = %entry
  %smax = call i32 @llvm.smax.i32(i32 %start, i32 128)
  br label %while.body

while.body:                                       ; preds = %sg_set_buf.exit.while.body_crit_edge, %while.body.preheader
  %index.013 = phi i32 [ %inc, %sg_set_buf.exit.while.body_crit_edge ], [ %start, %while.body.preheader ]
  %count.addr.012 = phi i32 [ %sub, %sg_set_buf.exit.while.body_crit_edge ], [ %count, %while.body.preheader ]
  %data.addr.011 = phi ptr [ %add.ptr, %sg_set_buf.exit.while.body_crit_edge ], [ %data, %while.body.preheader ]
  %0 = ptrtoint ptr %data.addr.011 to i32
  %and.i = and i32 %0, 4095
  %sub.i = sub nuw nsw i32 4096, %and.i
  %1 = tail call i32 @llvm.smin.i32(i32 %sub.i, i32 %count.addr.012)
  call void @__sanitizer_cov_trace_cmp4(i32 %index.013, i32 %smax)
  %exitcond = icmp eq i32 %index.013, %smax
  br i1 %exitcond, label %do.body5, label %do.end11, !prof !101

do.body5:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/9p/trans_virtio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #12, !srcloc !102
  unreachable

do.end11:                                         ; preds = %while.body
  %arrayidx = getelementptr %struct.scatterlist, ptr %sg, i32 %index.013
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and.i1 = and i32 %3, -3
  store i32 %and.i1, ptr %arrayidx, align 4
  %inc = add i32 %index.013, 1
  %cmp.i = icmp ugt ptr %data.addr.011, inttoptr (i32 -1073741825 to ptr)
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end11.do.body5.i_crit_edge, !prof !97

do.end11.do.body5.i_crit_edge:                    ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.lhs.true.i:                                  ; preds = %do.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %4 = load ptr, ptr @high_memory, align 4
  %cmp1.i = icmp ugt ptr %4, %data.addr.011
  br i1 %cmp1.i, label %land.rhs.i, label %land.lhs.true.i.do.body5.i_crit_edge, !prof !97

land.lhs.true.i.do.body5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %sub.i2 = add i32 %0, 1073741824
  %shr.i = lshr i32 %sub.i2, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %5 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add.i = add i32 %5, %shr.i
  %call.i = tail call i32 @pfn_valid(i32 noundef %add.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp eq i32 %call.i, 0
  br i1 %tobool.i, label %land.rhs.i.do.body5.i_crit_edge, label %do.end8.i, !prof !101

land.rhs.i.do.body5.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i

do.body5.i:                                       ; preds = %land.rhs.i.do.body5.i_crit_edge, %land.lhs.true.i.do.body5.i_crit_edge, %do.end11.do.body5.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 160, 0\0A.popsection", ""() #12, !srcloc !103
  unreachable

do.end8.i:                                        ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %add.ptr.i = getelementptr %struct.page, ptr %6, i32 %shr.i
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  %and2.i.i.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %do.body11.i.i.i, label %do.body5.i.i.i, !prof !97

do.body5.i.i.i:                                   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !104
  unreachable

do.body11.i.i.i:                                  ; preds = %do.end8.i
  %and.i.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %sg_set_buf.exit, label %do.body19.i.i.i, !prof !97

do.body19.i.i.i:                                  ; preds = %do.body11.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

sg_set_buf.exit:                                  ; preds = %do.body11.i.i.i
  %and.i.i.i = and i32 %8, 3
  %or.i.i.i = or i32 %and.i.i.i, %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i.i.i, ptr %arrayidx, align 4
  %offset1.i.i = getelementptr %struct.scatterlist, ptr %sg, i32 %index.013, i32 1
  %11 = ptrtoint ptr %offset1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and.i, ptr %offset1.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %sg, i32 %index.013, i32 2
  %12 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %1, ptr %length.i.i, align 4
  %sub = sub i32 %count.addr.012, %1
  %add.ptr = getelementptr i8, ptr %data.addr.011, i32 %1
  %tobool.not = icmp eq i32 %sub, 0
  br i1 %tobool.not, label %while.end, label %sg_set_buf.exit.while.body_crit_edge

sg_set_buf.exit.while.body_crit_edge:             ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %sg_set_buf.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %start)
  %tobool14.not = icmp eq i32 %inc, %start
  br i1 %tobool14.not, label %while.end.if.end18_crit_edge, label %if.then15

while.end.if.end18_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

if.then15:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx17 = getelementptr %struct.scatterlist, ptr %sg, i32 %index.013
  %13 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx17, align 4
  %or.i = and i32 %14, -4
  %and.i4 = or i32 %or.i, 2
  store i32 %and.i4, ptr %arrayidx17, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %while.end.if.end18_crit_edge, %entry.if.end18_crit_edge
  %index.0.lcssa19 = phi i32 [ %inc, %if.then15 ], [ %inc, %while.end.if.end18_crit_edge ], [ %start, %entry.if.end18_crit_edge ]
  %sub13 = sub i32 %index.0.lcssa19, %start
  ret i32 %sub13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_sgs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @p9_req_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @p9_get_mapped_pages(ptr nocapture noundef readonly %chan, ptr noundef %pages, ptr noundef %data, i32 noundef %count, ptr noundef %offs, ptr nocapture noundef writeonly %need_drop) unnamed_addr #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %count.i = getelementptr inbounds %struct.iov_iter, ptr %data, i32 0, i32 4
  %0 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup68_crit_edge, label %if.end

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp.i = icmp eq i8 %3, 1
  br i1 %cmp.i, label %while.cond.preheader, label %if.then2

while.cond.preheader:                             ; preds = %if.end
  %call34135 = tail call i32 @iov_iter_single_seg_count(ptr noundef %data) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34135)
  %tobool35.not136 = icmp eq i32 %call34135, 0
  br i1 %tobool35.not136, label %while.cond.preheader.if.end39_crit_edge, label %while.cond.preheader.if.then38_crit_edge, !prof !101

while.cond.preheader.if.then38_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

while.cond.preheader.if.end39_crit_edge:          ; preds = %while.cond.preheader
  br label %if.end39

if.then2:                                         ; preds = %if.end
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vp_pinned, i32 noundef 4) #12
  %4 = load volatile i32, ptr @vp_pinned, align 4
  %p9_max_pages = getelementptr inbounds %struct.virtio_chan, ptr %chan, i32 0, i32 7
  %5 = ptrtoint ptr %p9_max_pages to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p9_max_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp ult i32 %4, %6
  br i1 %cmp.not, label %if.then2.if.end27_crit_edge, label %if.then4

if.then2.if.end27_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then4:                                         ; preds = %if.then2
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 330) #12
  %call.i.i110 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vp_pinned, i32 noundef 4) #12
  %7 = load volatile i32, ptr @vp_pinned, align 4
  %8 = ptrtoint ptr %p9_max_pages to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %p9_max_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp10 = icmp ult i32 %7, %9
  br i1 %cmp10, label %if.then4.if.end27_crit_edge, label %if.then11

if.then4.if.end27_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then11:                                        ; preds = %if.then4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %10 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %call13131 = call i32 @prepare_to_wait_event(ptr noundef nonnull @vp_wq, ptr noundef nonnull %__wq_entry, i32 noundef 258) #12
  %call.i.i111132 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vp_pinned, i32 noundef 4) #12
  %11 = load volatile i32, ptr @vp_pinned, align 4
  %12 = ptrtoint ptr %p9_max_pages to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %p9_max_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp16133 = icmp ult i32 %11, %13
  br i1 %cmp16133, label %if.then11.if.end22.thread122_crit_edge, label %if.then11.if.end18_crit_edge

if.then11.if.end18_crit_edge:                     ; preds = %if.then11
  br label %if.end18

if.then11.if.end22.thread122_crit_edge:           ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.thread122

if.end18:                                         ; preds = %cleanup.if.end18_crit_edge, %if.then11.if.end18_crit_edge
  %call13134 = phi i32 [ %call13, %cleanup.if.end18_crit_edge ], [ %call13131, %if.then11.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13134)
  %tobool19.not = icmp eq i32 %call13134, 0
  br i1 %tobool19.not, label %cleanup, label %if.end22

cleanup:                                          ; preds = %if.end18
  call void @schedule() #12
  %call13 = call i32 @prepare_to_wait_event(ptr noundef nonnull @vp_wq, ptr noundef nonnull %__wq_entry, i32 noundef 258) #12
  %call.i.i111 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @vp_pinned, i32 noundef 4) #12
  %14 = load volatile i32, ptr @vp_pinned, align 4
  %15 = ptrtoint ptr %p9_max_pages to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p9_max_pages, align 4
  %cmp16 = icmp ult i32 %14, %16
  br i1 %cmp16, label %cleanup.if.end22.thread122_crit_edge, label %cleanup.if.end18_crit_edge

cleanup.if.end18_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18

cleanup.if.end22.thread122_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22.thread122

if.end22.thread122:                               ; preds = %cleanup.if.end22.thread122_crit_edge, %if.then11.if.end22.thread122_crit_edge
  call void @finish_wait(ptr noundef nonnull @vp_wq, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %if.end27

if.end22:                                         ; preds = %if.end18
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %call13134)
  %cmp24 = icmp eq i32 %call13134, -512
  br i1 %cmp24, label %if.end22.cleanup68_crit_edge, label %if.end22.if.end27_crit_edge

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.end22.cleanup68_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

if.end27:                                         ; preds = %if.end22.if.end27_crit_edge, %if.end22.thread122, %if.then4.if.end27_crit_edge, %if.then2.if.end27_crit_edge
  %call28 = call i32 @iov_iter_get_pages_alloc(ptr noundef %data, ptr noundef %pages, i32 noundef %count, ptr noundef %offs) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %if.end27.cleanup68_crit_edge, label %if.end31

if.end27.cleanup68_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %need_drop to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %need_drop, align 4
  %18 = ptrtoint ptr %offs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %offs, align 4
  %add = add nuw i32 %call28, 4095
  %sub = add i32 %add, %19
  %div107 = lshr i32 %sub, 12
  %call.i.i112 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @vp_pinned, i32 noundef 4) #12
  call void @llvm.prefetch.p0(ptr nonnull @vp_pinned, i32 1, i32 3, i32 1) #12
  %20 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @vp_pinned, ptr nonnull @vp_pinned, i32 %div107, ptr nonnull elementtype(i32) @vp_pinned) #12, !srcloc !106
  br label %cleanup68

if.then38:                                        ; preds = %if.end39.if.then38_crit_edge, %while.cond.preheader.if.then38_crit_edge
  %call34.lcssa = phi i32 [ %call34135, %while.cond.preheader.if.then38_crit_edge ], [ %call34, %if.end39.if.then38_crit_edge ]
  %21 = getelementptr inbounds %struct.iov_iter, ptr %data, i32 0, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %iov_offset = getelementptr inbounds %struct.iov_iter, ptr %data, i32 0, i32 3
  %26 = ptrtoint ptr %iov_offset to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iov_offset, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 %27
  %28 = tail call i32 @llvm.umin.i32(i32 %call34.lcssa, i32 %count)
  %29 = ptrtoint ptr %add.ptr to i32
  %add43 = add i32 %28, 4095
  %sub45 = add i32 %add43, %29
  %div46108 = lshr i32 %sub45, 12
  %div47109 = lshr i32 %29, 12
  %sub48 = sub nsw i32 %div46108, %div47109
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sub48, i32 4) #12
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !101

kmalloc_array.exit.thread:                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %pages, align 4
  br label %cleanup68

if.end7.i:                                        ; preds = %if.then38
  %33 = extractvalue { i32, i1 } %30, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3136) #17
  %34 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call8.i, ptr %pages, align 4
  %tobool50.not = icmp eq ptr %call8.i, null
  br i1 %tobool50.not, label %if.end7.i.cleanup68_crit_edge, label %if.end52

if.end7.i.cleanup68_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

if.end39:                                         ; preds = %if.end39.if.end39_crit_edge, %while.cond.preheader.if.end39_crit_edge
  tail call void @iov_iter_advance(ptr noundef %data, i32 noundef 0) #12
  %call34 = tail call i32 @iov_iter_single_seg_count(ptr noundef %data) #12
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end39.if.end39_crit_edge, label %if.end39.if.then38_crit_edge, !prof !101

if.end39.if.then38_crit_edge:                     ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then38

if.end39.if.end39_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.end52:                                         ; preds = %if.end7.i
  %35 = ptrtoint ptr %need_drop to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %need_drop, align 4
  %and = and i32 %29, 4095
  %36 = ptrtoint ptr %offs to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and, ptr %offs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div46108, i32 %div47109)
  %cmp55137.not = icmp eq i32 %div46108, %div47109
  br i1 %cmp55137.not, label %if.end52.cleanup68_crit_edge, label %for.body.preheader

if.end52.cleanup68_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

for.body.preheader:                               ; preds = %if.end52
  %idx.neg = sub nsw i32 0, %and
  %add.ptr53 = getelementptr i8, ptr %add.ptr, i32 %idx.neg
  br label %for.body

for.body:                                         ; preds = %if.end62.for.body_crit_edge, %for.body.preheader
  %p.0140 = phi ptr [ %add.ptr63, %if.end62.for.body_crit_edge ], [ %add.ptr53, %for.body.preheader ]
  %index.0138 = phi i32 [ %inc, %if.end62.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call56 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %p.0140) #12
  br i1 %call56, label %if.then57, label %if.else59

if.then57:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call58 = tail call ptr @vmalloc_to_page(ptr noundef %p.0140) #12
  br label %if.end62

if.else59:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call ptr @__kmap_to_page(ptr noundef %p.0140) #12
  br label %if.end62

if.end62:                                         ; preds = %if.else59, %if.then57
  %call.i.sink = phi ptr [ %call.i, %if.else59 ], [ %call58, %if.then57 ]
  %37 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pages, align 4
  %arrayidx61 = getelementptr ptr, ptr %38, i32 %index.0138
  %39 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i.sink, ptr %arrayidx61, align 4
  %add.ptr63 = getelementptr i8, ptr %p.0140, i32 4096
  %inc = add nuw nsw i32 %index.0138, 1
  %exitcond.not = icmp eq i32 %inc, %sub48
  br i1 %exitcond.not, label %if.end62.cleanup68_crit_edge, label %if.end62.for.body_crit_edge

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

if.end62.cleanup68_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup68

cleanup68:                                        ; preds = %if.end62.cleanup68_crit_edge, %if.end52.cleanup68_crit_edge, %if.end7.i.cleanup68_crit_edge, %kmalloc_array.exit.thread, %if.end31, %if.end27.cleanup68_crit_edge, %if.end22.cleanup68_crit_edge, %entry.cleanup68_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup68_crit_edge ], [ %call28, %if.end31 ], [ -512, %if.end22.cleanup68_crit_edge ], [ %call28, %if.end27.cleanup68_crit_edge ], [ -12, %if.end7.i.cleanup68_crit_edge ], [ -12, %kmalloc_array.exit.thread ], [ %28, %if.end52.cleanup68_crit_edge ], [ %28, %if.end62.cleanup68_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pack_sg_list_p(ptr nocapture noundef %sg, i32 noundef %start, ptr nocapture noundef readonly %pdata, i32 noundef %nr_pages, i32 noundef %offs, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 128, %start
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %nr_pages)
  %cmp = icmp slt i32 %sub, %nr_pages
  br i1 %cmp, label %do.body2, label %while.cond.preheader, !prof !101

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pages)
  %tobool8.not6 = icmp eq i32 %nr_pages, 0
  br i1 %tobool8.not6, label %while.cond.preheader.if.end40_crit_edge, label %while.body.preheader

while.cond.preheader.if.end40_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

while.body.preheader:                             ; preds = %while.cond.preheader
  %smax = call i32 @llvm.smax.i32(i32 %start, i32 128)
  %0 = sub i32 %smax, %start
  %sub9.peel = sub i32 4096, %offs
  %1 = tail call i32 @llvm.smin.i32(i32 %sub9.peel, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %start)
  %exitcond.peel = icmp sgt i32 %start, 127
  br i1 %exitcond.peel, label %while.body.preheader.do.body22_crit_edge, label %do.end30.peel, !prof !101

while.body.preheader.do.body22_crit_edge:         ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body22

do.end30.peel:                                    ; preds = %while.body.preheader
  %arrayidx.peel = getelementptr %struct.scatterlist, ptr %sg, i32 %start
  %2 = ptrtoint ptr %arrayidx.peel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.peel, align 4
  %and.i.peel = and i32 %3, -3
  store i32 %and.i.peel, ptr %arrayidx.peel, align 4
  %inc.peel = add nsw i32 %start, 1
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %6 = ptrtoint ptr %5 to i32
  %and2.i.i.peel = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.peel)
  %tobool.not.i.i.peel = icmp eq i32 %and2.i.i.peel, 0
  br i1 %tobool.not.i.i.peel, label %do.body11.i.i.peel, label %do.end30.peel.do.body5.i.i_crit_edge, !prof !97

do.end30.peel.do.body5.i.i_crit_edge:             ; preds = %do.end30.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i

do.body11.i.i.peel:                               ; preds = %do.end30.peel
  %and.i.i.i.peel = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.peel)
  %tobool.i.not.i.i.peel = icmp eq i32 %and.i.i.i.peel, 0
  br i1 %tobool.i.not.i.i.peel, label %sg_set_page.exit.peel, label %do.body11.i.i.peel.do.body19.i.i_crit_edge, !prof !97

do.body11.i.i.peel.do.body19.i.i_crit_edge:       ; preds = %do.body11.i.i.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body19.i.i

sg_set_page.exit.peel:                            ; preds = %do.body11.i.i.peel
  %7 = ptrtoint ptr %arrayidx.peel to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx.peel, align 4
  %offset1.i.peel = getelementptr %struct.scatterlist, ptr %sg, i32 %start, i32 1
  %8 = ptrtoint ptr %offset1.i.peel to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %offs, ptr %offset1.i.peel, align 4
  %length.i.peel = getelementptr %struct.scatterlist, ptr %sg, i32 %start, i32 2
  %9 = ptrtoint ptr %length.i.peel to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %1, ptr %length.i.peel, align 4
  %dec.peel = add i32 %nr_pages, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.peel)
  %tobool8.not.peel = icmp eq i32 %dec.peel, 0
  br i1 %tobool8.not.peel, label %sg_set_page.exit.peel.if.then37_crit_edge, label %while.body.peel.next

sg_set_page.exit.peel.if.then37_crit_edge:        ; preds = %sg_set_page.exit.peel
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

while.body.peel.next:                             ; preds = %sg_set_page.exit.peel
  %sub34.peel = sub i32 %count, %1
  br label %while.body

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/9p/trans_virtio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 225, 0\0A.popsection", ""() #12, !srcloc !107
  unreachable

while.body:                                       ; preds = %sg_set_page.exit.while.body_crit_edge, %while.body.peel.next
  %index.011 = phi i32 [ %inc, %sg_set_page.exit.while.body_crit_edge ], [ %inc.peel, %while.body.peel.next ]
  %i.09 = phi i32 [ %inc32, %sg_set_page.exit.while.body_crit_edge ], [ 1, %while.body.peel.next ]
  %count.addr.08 = phi i32 [ %sub34, %sg_set_page.exit.while.body_crit_edge ], [ %sub34.peel, %while.body.peel.next ]
  %nr_pages.addr.07 = phi i32 [ %dec, %sg_set_page.exit.while.body_crit_edge ], [ %dec.peel, %while.body.peel.next ]
  %10 = tail call i32 @llvm.smin.i32(i32 %count.addr.08, i32 4096)
  call void @__sanitizer_cov_trace_cmp4(i32 %i.09, i32 %0)
  %exitcond = icmp eq i32 %i.09, %0
  br i1 %exitcond, label %while.body.do.body22_crit_edge, label %do.end30, !prof !101

while.body.do.body22_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body22

do.body22:                                        ; preds = %while.body.do.body22_crit_edge, %while.body.preheader.do.body22_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/9p/trans_virtio.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 234, 0\0A.popsection", ""() #12, !srcloc !108
  unreachable

do.end30:                                         ; preds = %while.body
  %arrayidx = getelementptr %struct.scatterlist, ptr %sg, i32 %index.011
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %12, -3
  store i32 %and.i, ptr %arrayidx, align 4
  %inc = add nsw i32 %index.011, 1
  %inc32 = add nuw i32 %i.09, 1
  %arrayidx33 = getelementptr ptr, ptr %pdata, i32 %i.09
  %13 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx33, align 4
  %15 = ptrtoint ptr %14 to i32
  %and2.i.i = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.end30.do.body5.i.i_crit_edge, !prof !97

do.end30.do.body5.i.i_crit_edge:                  ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body5.i.i

do.body5.i.i:                                     ; preds = %do.end30.do.body5.i.i_crit_edge, %do.end30.peel.do.body5.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !104
  unreachable

do.body11.i.i:                                    ; preds = %do.end30
  %and.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body11.i.i.do.body19.i.i_crit_edge, !prof !97

do.body11.i.i.do.body19.i.i_crit_edge:            ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body19.i.i

do.body19.i.i:                                    ; preds = %do.body11.i.i.do.body19.i.i_crit_edge, %do.body11.i.i.peel.do.body19.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !105
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx, align 4
  %offset1.i = getelementptr %struct.scatterlist, ptr %sg, i32 %index.011, i32 1
  %17 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.scatterlist, ptr %sg, i32 %index.011, i32 2
  %18 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %10, ptr %length.i, align 4
  %sub34 = sub i32 %count.addr.08, %10
  %dec = add i32 %nr_pages.addr.07, -1
  %tobool8.not = icmp eq i32 %dec, 0
  br i1 %tobool8.not, label %while.end, label %sg_set_page.exit.while.body_crit_edge, !llvm.loop !109

sg_set_page.exit.while.body_crit_edge:            ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %start)
  %tobool36.not = icmp eq i32 %inc, %start
  br i1 %tobool36.not, label %while.end.if.end40_crit_edge, label %while.end.if.then37_crit_edge

while.end.if.then37_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then37

while.end.if.end40_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.then37:                                        ; preds = %while.end.if.then37_crit_edge, %sg_set_page.exit.peel.if.then37_crit_edge
  %index.0.lcssa21 = phi i32 [ %inc, %while.end.if.then37_crit_edge ], [ %inc.peel, %sg_set_page.exit.peel.if.then37_crit_edge ]
  %sub38 = add nsw i32 %index.0.lcssa21, -1
  %arrayidx39 = getelementptr %struct.scatterlist, ptr %sg, i32 %sub38
  %19 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx39, align 4
  %or.i = and i32 %20, -4
  %and.i1 = or i32 %or.i, 2
  store i32 %and.i1, ptr %arrayidx39, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %while.end.if.end40_crit_edge, %while.cond.preheader.if.end40_crit_edge
  %index.0.lcssa17 = phi i32 [ %index.0.lcssa21, %if.then37 ], [ %inc, %while.end.if.end40_crit_edge ], [ %start, %while.cond.preheader.if.end40_crit_edge ]
  %sub35 = sub i32 %index.0.lcssa17, %start
  ret i32 %sub35
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @p9_release_pages(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_get_pages_alloc(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_single_seg_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_advance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmap_to_page(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v9fs_register_trans(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_virtio_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !37, !38, !40, !41, !43, !44, !46, !48, !49, !51, !52, !53, !55, !57, !58, !59, !60, !61, !63, !65, !67, !68, !69, !70, !72, !73, !75, !77, !79, !81, !82, !84, !86}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_9pnet_virtio__477_795_p9_virtio_init6, !1, !"__initcall__kmod_9pnet_virtio__477_795_p9_virtio_init6", i1 false, i1 false}
!1 = !{!"../net/9p/trans_virtio.c", i32 795, i32 1}
!2 = !{ptr @__exitcall_p9_virtio_cleanup, !3, !"__exitcall_p9_virtio_cleanup", i1 false, i1 false}
!3 = !{!"../net/9p/trans_virtio.c", i32 796, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias478, !5, !"__UNIQUE_ID_alias478", i1 false, i1 false}
!5 = !{!"../net/9p/trans_virtio.c", i32 797, i32 1}
!6 = !{ptr @__UNIQUE_ID_author479, !7, !"__UNIQUE_ID_author479", i1 false, i1 false}
!7 = !{!"../net/9p/trans_virtio.c", i32 800, i32 1}
!8 = !{ptr @__UNIQUE_ID_description480, !9, !"__UNIQUE_ID_description480", i1 false, i1 false}
!9 = !{!"../net/9p/trans_virtio.c", i32 801, i32 1}
!10 = !{ptr @__UNIQUE_ID_file481, !11, !"__UNIQUE_ID_file481", i1 false, i1 false}
!11 = !{!"../net/9p/trans_virtio.c", i32 802, i32 1}
!12 = !{ptr @__UNIQUE_ID_license482, !11, !"__UNIQUE_ID_license482", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/9p/trans_virtio.c", i32 748, i32 20}
!15 = !{ptr @p9_virtio_drv, !16, !"p9_virtio_drv", i1 false, i1 false}
!16 = !{!"../net/9p/trans_virtio.c", i32 745, i32 29}
!17 = !{ptr @id_table, !18, !"id_table", i1 false, i1 false}
!18 = !{!"../net/9p/trans_virtio.c", i32 735, i32 32}
!19 = !{ptr @features, !20, !"features", i1 false, i1 false}
!20 = !{!"../net/9p/trans_virtio.c", i32 740, i32 21}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/9p/trans_virtio.c", i32 565, i32 3}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @p9_virtio_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @p9_virtio_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/9p/trans_virtio.c", i32 572, i32 3}
!31 = !{ptr @p9_virtio_probe._entry.6, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @p9_virtio_probe._entry_ptr.8, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/9p/trans_virtio.c", i32 580, i32 51}
!35 = !{ptr @p9_virtio_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../net/9p/trans_virtio.c", i32 586, i32 2}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @p9_virtio_probe.__key.11, !39, !"__key", i1 false, i1 false}
!39 = !{!"../net/9p/trans_virtio.c", i32 615, i32 2}
!40 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @__func__.req_done, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/9p/trans_virtio.c", i32 137, i32 2}
!43 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../include/linux/virtio_config.h", i32 451, i32 2}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../net/9p/trans_virtio.c", i32 547, i32 8}
!48 = !{ptr @dev_attr_mount_tag, !47, !"dev_attr_mount_tag", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/9p/trans_virtio.c", i32 42, i32 8}
!51 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @virtio_9p_lock, !50, !"virtio_9p_lock", i1 false, i1 false}
!53 = !{ptr @virtio_chan_list, !54, !"virtio_chan_list", i1 false, i1 false}
!54 = !{!"../net/9p/trans_virtio.c", i32 89, i32 25}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/9p/trans_virtio.c", i32 715, i32 4}
!57 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @p9_virtio_remove._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @p9_virtio_remove._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/9p/trans_virtio.c", i32 756, i32 10}
!63 = !{ptr @p9_virtio_trans, !64, !"p9_virtio_trans", i1 false, i1 false}
!64 = !{!"../net/9p/trans_virtio.c", i32 755, i32 31}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/9p/trans_virtio.c", i32 682, i32 3}
!67 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @p9_virtio_create._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @p9_virtio_create._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @__func__.p9_virtio_request, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../net/9p/trans_virtio.c", i32 264, i32 2}
!72 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/9p/trans_virtio.c", i32 293, i32 4}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/9p/trans_virtio.c", i32 297, i32 4}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/9p/trans_virtio.c", i32 305, i32 2}
!79 = !{ptr @__func__.p9_virtio_zc_request, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/9p/trans_virtio.c", i32 406, i32 2}
!81 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @vp_pinned, !83, !"vp_pinned", i1 false, i1 false}
!83 = !{!"../net/9p/trans_virtio.c", i32 44, i32 17}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../net/9p/trans_virtio.c", i32 43, i32 8}
!86 = !{ptr @vp_wq, !85, !"vp_wq", i1 false, i1 false}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
!97 = !{!"branch_weights", i32 2000, i32 1}
!98 = !{i64 2157213375, i64 2157213869, i64 2157213412, i64 2157213468, i64 2157213502, i64 2157213526, i64 2157213567, i64 2157213588, i64 2157213616, i64 2157213650}
!99 = !{i8 0, i8 2}
!100 = !{i64 2148289157, i64 2148289183, i64 2148289212, i64 2148289246, i64 2148289277, i64 2148289300}
!101 = !{!"branch_weights", i32 1, i32 2000}
!102 = !{i64 2157222257, i64 2157222743, i64 2157222294, i64 2157222350, i64 2157222384, i64 2157222408, i64 2157222449, i64 2157222470, i64 2157222498, i64 2157222532}
!103 = !{i64 2154401273, i64 2154401765, i64 2154401310, i64 2154401366, i64 2154401400, i64 2154401424, i64 2154401465, i64 2154401486, i64 2154401514, i64 2154401548}
!104 = !{i64 2154394954, i64 2154395446, i64 2154394991, i64 2154395047, i64 2154395081, i64 2154395105, i64 2154395146, i64 2154395167, i64 2154395195, i64 2154395229}
!105 = !{i64 2154396564, i64 2154397056, i64 2154396601, i64 2154396657, i64 2154396691, i64 2154396715, i64 2154396756, i64 2154396777, i64 2154396805, i64 2154396839}
!106 = !{i64 2148286692, i64 2148286718, i64 2148286747, i64 2148286781, i64 2148286812, i64 2148286835}
!107 = !{i64 2157223871, i64 2157224357, i64 2157223908, i64 2157223964, i64 2157223998, i64 2157224022, i64 2157224063, i64 2157224084, i64 2157224112, i64 2157224146}
!108 = !{i64 2157225521, i64 2157226007, i64 2157225558, i64 2157225614, i64 2157225648, i64 2157225672, i64 2157225713, i64 2157225734, i64 2157225762, i64 2157225796}
!109 = distinct !{!109, !110}
!110 = !{!"llvm.loop.peeled.count", i32 1}
