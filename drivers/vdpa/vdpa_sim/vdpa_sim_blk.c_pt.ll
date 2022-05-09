; ModuleID = '/llk/IR_all_yes/drivers/vdpa/vdpa_sim/vdpa_sim_blk.c_pt.bc'
source_filename = "../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.vdpa_mgmt_dev = type { ptr, ptr, ptr, i64, %struct.list_head, i64, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.vdpa_mgmtdev_ops = type { ptr, ptr }
%struct.virtio_device_id = type { i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vdpasim_dev_attr = type { ptr, ptr, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.vdpasim = type { %struct.vdpa_device, ptr, %struct.work_struct, %struct.vdpasim_dev_attr, %struct.spinlock, ptr, ptr, %struct.iova_domain, ptr, i32, i32, i64, %struct.spinlock }
%struct.vdpa_device = type { %struct.device, ptr, ptr, ptr, %struct.mutex, i32, i8, i8, i32, ptr }
%struct.iova_domain = type { %struct.spinlock, %struct.rb_root, ptr, ptr, i32, i32, i32, i32, %struct.iova, [6 x %struct.iova_rcache], %struct.hlist_node }
%struct.rb_root = type { ptr }
%struct.iova = type { %struct.rb_node, i32, i32 }
%struct.iova_rcache = type { %struct.spinlock, i32, [32 x ptr], ptr }
%struct.virtio_blk_config = type <{ i64, i32, i32, %struct.virtio_blk_geometry, i32, i8, i8, i16, i32, i8, i8, i16, i32, i32, i32, i32, i32, i8, [3 x i8] }>
%struct.virtio_blk_geometry = type { i16, i8, i8 }
%struct.virtio_blk_outhdr = type { i32, i32, i64 }
%struct.vdpasim_virtqueue = type { %struct.vringh, %struct.vringh_kiov, %struct.vringh_kiov, i16, i8, i64, i64, i64, i32, ptr, ptr }
%struct.vringh = type { i8, i8, i8, i16, i16, i32, %struct.vring, ptr, ptr, ptr }
%struct.vring = type { i32, ptr, ptr, ptr }
%struct.vringh_kiov = type { ptr, i32, i32, i32, i32 }
%struct.kvec = type { ptr, i32 }

@mgmt_dev = internal global { %struct.vdpa_mgmt_dev, [48 x i8] } { %struct.vdpa_mgmt_dev { ptr @vdpasim_blk_mgmtdev, ptr @vdpasim_blk_mgmtdev_ops, ptr @id_table, i64 0, %struct.list_head zeroinitializer, i64 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@vdpasim_blk_mgmtdev = internal global { %struct.device, [224 x i8] } { %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr @.str.33, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @vdpasim_blk_mgmtdev_release, ptr null, ptr null, i32 0, i8 0 }, [224 x i8] zeroinitializer }, align 32
@__initcall__kmod_vdpa_sim_blk__384_332_vdpasim_blk_init6 = internal global ptr @vdpasim_blk_init, section ".initcall6.init", align 4
@__exitcall_vdpasim_blk_exit = internal global ptr @vdpasim_blk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_version385 = internal constant [25 x i8] c"vdpa_sim_blk.version=0.1\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vdpa_sim_blk\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.1\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file386 = internal constant [53 x i8] c"vdpa_sim_blk.file=drivers/vdpa/vdpa_sim/vdpa_sim_blk\00", section ".modinfo", align 1
@__UNIQUE_ID_license387 = internal constant [28 x i8] c"vdpa_sim_blk.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author388 = internal constant [56 x i8] c"vdpa_sim_blk.author=Max Gurtovoy <mgurtovoy@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description389 = internal constant [64 x i8] c"vdpa_sim_blk.description=vDPA Device Simulator for block device\00", section ".modinfo", align 1
@vdpasim_blk_mgmtdev_ops = internal constant { %struct.vdpa_mgmtdev_ops, [24 x i8] } { %struct.vdpa_mgmtdev_ops { ptr @vdpasim_blk_dev_add, ptr @vdpasim_blk_dev_del }, [24 x i8] zeroinitializer }, align 32
@id_table = internal global { [2 x %struct.virtio_device_id], [16 x i8] } { [2 x %struct.virtio_device_id] [%struct.virtio_device_id { i32 2, i32 -1 }, %struct.virtio_device_id zeroinitializer], [16 x i8] zeroinitializer }, align 32
@vdpasim_blk_handle_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 80, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"missing headers - out_iov: %u in_iov %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vdpasim_blk_handle_req\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/vdpa/vdpa_sim/vdpa_sim_blk.c\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vdpasim_blk_handle_req._entry_ptr = internal global ptr @vdpasim_blk_handle_req._entry, section ".printk_index", align 4
@vdpasim_blk_handle_req._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 85, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"request in header too short\0A\00", [35 x i8] zeroinitializer }, align 32
@vdpasim_blk_handle_req._entry_ptr.10 = internal global ptr @vdpasim_blk_handle_req._entry.8, section ".printk_index", align 4
@vdpasim_blk_handle_req._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 99, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"request out header too short\0A\00", [34 x i8] zeroinitializer }, align 32
@vdpasim_blk_handle_req._entry_ptr.13 = internal global ptr @vdpasim_blk_handle_req._entry.11, section ".printk_index", align 4
@vdpasim_blk_handle_req._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 115, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"reading over the capacity - offset: 0x%llx len: 0x%zx\0A\00", [41 x i8] zeroinitializer }, align 32
@vdpasim_blk_handle_req._entry_ptr.16 = internal global ptr @vdpasim_blk_handle_req._entry.14, section ".printk_index", align 4
@vdpasim_blk_handle_req._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 126, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"vringh_iov_push_iotlb() error: %zd offset: 0x%llx len: 0x%zx\0A\00", [34 x i8] zeroinitializer }, align 32
@vdpasim_blk_handle_req._entry_ptr.19 = internal global ptr @vdpasim_blk_handle_req._entry.17, section ".printk_index", align 4
@vdpasim_blk_handle_req._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 138, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"writing over the capacity - offset: 0x%llx len: 0x%zx\0A\00", [41 x i8] zeroinitializer }, align 32
@vdpasim_blk_handle_req._entry_ptr.22 = internal global ptr @vdpasim_blk_handle_req._entry.20, section ".printk_index", align 4
@vdpasim_blk_handle_req._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.4, ptr @.str.5, i32 149, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"vringh_iov_pull_iotlb() error: %zd offset: 0x%llx len: 0x%zx\0A\00", [34 x i8] zeroinitializer }, align 32
@vdpasim_blk_handle_req._entry_ptr.25 = internal global ptr @vdpasim_blk_handle_req._entry.23, section ".printk_index", align 4
@vdpasim_blk_id = internal global { [20 x i8], [44 x i8] } { [20 x i8] c"vdpa_blk_sim\00\00\00\00\00\00\00\00", [44 x i8] zeroinitializer }, align 32
@vdpasim_blk_handle_req._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.4, ptr @.str.5, i32 161, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"vringh_iov_push_iotlb() error: %zd\0A\00", [60 x i8] zeroinitializer }, align 32
@vdpasim_blk_handle_req._entry_ptr.28 = internal global ptr @vdpasim_blk_handle_req._entry.26, section ".printk_index", align 4
@vdpasim_blk_handle_req._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.4, ptr @.str.5, i32 171, ptr @.str.31, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsupported request type %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@vdpasim_blk_handle_req._entry_ptr.32 = internal global ptr @vdpasim_blk_handle_req._entry.29, section ".printk_index", align 4
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdpasim_blk\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 8]
@___asan_gen_.34 = private unnamed_addr constant [9 x i8] c"mgmt_dev\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 301, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"vdpasim_blk_mgmtdev\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 246, i32 22 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 335, i32 1 }
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"vdpasim_blk_mgmtdev_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 291, i32 38 }
@___asan_gen_.52 = private unnamed_addr constant [9 x i8] c"id_table\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 296, i32 32 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 79, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 85, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 99, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 113, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 124, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 136, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 147, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"vdpasim_blk_id\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 39, i32 13 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 160, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 170, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [40 x i8] c"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 247, i32 15 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author388, ptr @__UNIQUE_ID_description389, ptr @__UNIQUE_ID_file386, ptr @__UNIQUE_ID_license387, ptr @__UNIQUE_ID_version385, ptr @__exitcall_vdpasim_blk_exit, ptr @__initcall__kmod_vdpa_sim_blk__384_332_vdpasim_blk_init6, ptr @__modver_attr, ptr @vdpasim_blk_exit, ptr @vdpasim_blk_handle_req._entry, ptr @vdpasim_blk_handle_req._entry.11, ptr @vdpasim_blk_handle_req._entry.14, ptr @vdpasim_blk_handle_req._entry.17, ptr @vdpasim_blk_handle_req._entry.20, ptr @vdpasim_blk_handle_req._entry.23, ptr @vdpasim_blk_handle_req._entry.26, ptr @vdpasim_blk_handle_req._entry.29, ptr @vdpasim_blk_handle_req._entry.8, ptr @vdpasim_blk_handle_req._entry_ptr, ptr @vdpasim_blk_handle_req._entry_ptr.10, ptr @vdpasim_blk_handle_req._entry_ptr.13, ptr @vdpasim_blk_handle_req._entry_ptr.16, ptr @vdpasim_blk_handle_req._entry_ptr.19, ptr @vdpasim_blk_handle_req._entry_ptr.22, ptr @vdpasim_blk_handle_req._entry_ptr.25, ptr @vdpasim_blk_handle_req._entry_ptr.28, ptr @vdpasim_blk_handle_req._entry_ptr.32, ptr @mgmt_dev, ptr @vdpasim_blk_mgmtdev, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @vdpasim_blk_mgmtdev_ops, ptr @id_table, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @vdpasim_blk_id, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.33], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgmt_dev to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_blk_mgmtdev to i32), i32 928, i32 1152, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_blk_mgmtdev_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @id_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_blk_handle_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_blk_handle_req._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_blk_handle_req._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_blk_handle_req._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_blk_handle_req._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_blk_handle_req._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_blk_handle_req._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_blk_id to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_blk_handle_req._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdpasim_blk_handle_req._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vdpasim_blk_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @vdpa_mgmtdev_unregister(ptr noundef nonnull @mgmt_dev) #9
  tail call void @device_unregister(ptr noundef nonnull @vdpasim_blk_mgmtdev) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vdpa_mgmtdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vdpasim_blk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @device_register(ptr noundef nonnull @vdpasim_blk_mgmtdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @vdpa_mgmtdev_register(ptr noundef nonnull @mgmt_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %parent_err

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

parent_err:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_unregister(ptr noundef nonnull @vdpasim_blk_mgmtdev) #9
  br label %cleanup

cleanup:                                          ; preds = %parent_err, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %parent_err ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vdpasim_blk_dev_add(ptr noundef %mdev, ptr noundef %name, ptr nocapture noundef readnone %config) #2 align 64 {
entry:
  %dev_attr = alloca %struct.vdpasim_dev_attr, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dev_attr) #9
  %0 = getelementptr inbounds i8, ptr %dev_attr, i32 40
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %0, align 8
  %2 = ptrtoint ptr %dev_attr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mdev, ptr %dev_attr, align 8
  %name1 = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 1
  %3 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %name1, align 4
  %id = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %id, align 4
  %supported_features = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 2
  %5 = ptrtoint ptr %supported_features to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 13019124806, ptr %supported_features, align 8
  %nvqs = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 5
  %6 = ptrtoint ptr %nvqs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %nvqs, align 8
  %config_size = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 3
  %7 = ptrtoint ptr %config_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 60, ptr %config_size, align 8
  %get_config = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 8
  %8 = ptrtoint ptr %get_config to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @vdpasim_blk_get_config, ptr %get_config, align 4
  %work_fn = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 7
  %9 = ptrtoint ptr %work_fn to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @vdpasim_blk_work, ptr %work_fn, align 8
  %buffer_size = getelementptr inbounds %struct.vdpasim_dev_attr, ptr %dev_attr, i32 0, i32 4
  %10 = ptrtoint ptr %buffer_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 134217728, ptr %buffer_size, align 4
  %call = call ptr @vdpasim_create(ptr noundef nonnull %dev_attr) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call i32 @_vdpa_register_device(ptr noundef %call, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %put_dev

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

put_dev:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @put_device(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %put_dev, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %11, %if.then ], [ %call4, %put_dev ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dev_attr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdpasim_blk_dev_del(ptr nocapture noundef readnone %mdev, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_vdpa_unregister_device(ptr noundef %dev) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vdpasim_blk_get_config(ptr nocapture noundef readonly %vdpasim, ptr nocapture noundef writeonly %config) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %config, i32 0, i32 60)
  %features.i.i = getelementptr inbounds %struct.vdpasim, ptr %vdpasim, i32 0, i32 11
  %1 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %features.i.i, align 8
  %and.i.i = and i64 %2, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  %..i.i = select i1 %tobool.i.not.i, i64 262144, i64 4398046511104
  %3 = ptrtoint ptr %config to i32
  call void @__asan_storeN_noabort(i32 %3, i32 8)
  store i64 %..i.i, ptr %config, align 1
  %4 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %features.i.i, align 8
  %and.i.i21 = and i64 %5, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i21)
  %tobool.i.not.i22 = icmp eq i64 %and.i.i21, 0
  %retval.0.i.i = select i1 %tobool.i.not.i22, i32 4096, i32 1048576
  %size_max = getelementptr inbounds %struct.virtio_blk_config, ptr %config, i32 0, i32 1
  %6 = ptrtoint ptr %size_max to i32
  call void @__asan_storeN_noabort(i32 %6, i32 4)
  store i32 %retval.0.i.i, ptr %size_max, align 1
  %7 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %features.i.i, align 8
  %and.i.i24 = and i64 %8, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i24)
  %tobool.i.not.i25 = icmp eq i64 %and.i.i24, 0
  %retval.0.i.i26 = select i1 %tobool.i.not.i25, i32 32, i32 536870912
  %seg_max = getelementptr inbounds %struct.virtio_blk_config, ptr %config, i32 0, i32 2
  %9 = ptrtoint ptr %seg_max to i32
  call void @__asan_storeN_noabort(i32 %9, i32 4)
  store i32 %retval.0.i.i26, ptr %seg_max, align 1
  %10 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %features.i.i, align 8
  %and.i.i28 = and i64 %11, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i28)
  %tobool.i.not.i29 = icmp eq i64 %and.i.i28, 0
  %..i.i30 = select i1 %tobool.i.not.i29, i16 1, i16 256
  %num_queues = getelementptr inbounds %struct.virtio_blk_config, ptr %config, i32 0, i32 11
  %12 = ptrtoint ptr %num_queues to i32
  call void @__asan_storeN_noabort(i32 %12, i32 2)
  store i16 %..i.i30, ptr %num_queues, align 1
  %13 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %features.i.i, align 8
  %and.i.i32 = and i64 %14, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i32)
  %tobool.i.not.i33 = icmp eq i64 %and.i.i32, 0
  %..i.i34 = select i1 %tobool.i.not.i33, i16 1, i16 256
  %min_io_size = getelementptr inbounds %struct.virtio_blk_config, ptr %config, i32 0, i32 7
  %15 = ptrtoint ptr %min_io_size to i32
  call void @__asan_storeN_noabort(i32 %15, i32 2)
  store i16 %..i.i34, ptr %min_io_size, align 1
  %16 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %features.i.i, align 8
  %and.i.i36 = and i64 %17, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i36)
  %tobool.i.not.i37 = icmp eq i64 %and.i.i36, 0
  %retval.0.i.i38 = select i1 %tobool.i.not.i37, i32 1, i32 16777216
  %opt_io_size = getelementptr inbounds %struct.virtio_blk_config, ptr %config, i32 0, i32 8
  %18 = ptrtoint ptr %opt_io_size to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %retval.0.i.i38, ptr %opt_io_size, align 1
  %19 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %features.i.i, align 8
  %and.i.i40 = and i64 %20, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i40)
  %tobool.i.not.i41 = icmp eq i64 %and.i.i40, 0
  %retval.0.i.i42 = select i1 %tobool.i.not.i41, i32 512, i32 131072
  %blk_size = getelementptr inbounds %struct.virtio_blk_config, ptr %config, i32 0, i32 4
  %21 = ptrtoint ptr %blk_size to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %retval.0.i.i42, ptr %blk_size, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vdpasim_blk_work(ptr noundef %work) #2 align 64 {
entry:
  %hdr.i = alloca %struct.virtio_blk_outhdr, align 8
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1052
  %lock = getelementptr i8, ptr %work, i32 92
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %status = getelementptr i8, ptr %work, i32 1328
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %for.body

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body:                                         ; preds = %entry
  %vqs = getelementptr i8, ptr %work, i32 -4
  %2 = ptrtoint ptr %vqs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vqs, align 8
  %ready = getelementptr inbounds %struct.vdpasim_virtqueue, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ready to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ready, align 2, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %for.body.out_crit_edge, label %while.cond.preheader

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

while.cond.preheader:                             ; preds = %for.body
  %6 = getelementptr inbounds %struct.virtio_blk_outhdr, ptr %hdr.i, i32 0, i32 2
  %out_iov.i = getelementptr inbounds %struct.vdpasim_virtqueue, ptr %3, i32 0, i32 2
  %in_iov.i = getelementptr inbounds %struct.vdpasim_virtqueue, ptr %3, i32 0, i32 1
  %head.i = getelementptr inbounds %struct.vdpasim_virtqueue, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hdr.i) #9
  %7 = call ptr @memset(ptr %hdr.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #9
  %call.i26 = call i32 @vringh_getdesc_iotlb(ptr noundef %3, ptr noundef %out_iov.i, ptr noundef %in_iov.i, ptr noundef %head.i, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i26)
  %cmp.not.i27 = icmp eq i32 %call.i26, 1
  br i1 %cmp.not.i27, label %if.end.i.lr.ph, label %while.cond.preheader.vdpasim_blk_handle_req.exit.thread_crit_edge

while.cond.preheader.vdpasim_blk_handle_req.exit.thread_crit_edge: ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %vdpasim_blk_handle_req.exit.thread

if.end.i.lr.ph:                                   ; preds = %while.cond.preheader
  %used.i = getelementptr inbounds %struct.vdpasim_virtqueue, ptr %3, i32 0, i32 2, i32 3
  %used4.i = getelementptr inbounds %struct.vdpasim_virtqueue, ptr %3, i32 0, i32 1, i32 3
  %i1.i.i = getelementptr inbounds %struct.vdpasim_virtqueue, ptr %3, i32 0, i32 1, i32 2
  %i1.i204.i = getelementptr inbounds %struct.vdpasim_virtqueue, ptr %3, i32 0, i32 2, i32 2
  %features.i.i.i = getelementptr i8, ptr %work, i32 1340
  %buffer74.i = getelementptr i8, ptr %work, i32 1324
  %notify.i = getelementptr inbounds %struct.vringh, ptr %3, i32 0, i32 9
  br label %if.end.i

if.end.i:                                         ; preds = %if.end11.if.end.i_crit_edge, %if.end.i.lr.ph
  %8 = ptrtoint ptr %used.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %used.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2.i = icmp eq i32 %9, 0
  br i1 %cmp2.i, label %if.end.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %10 = ptrtoint ptr %used4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %used4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5.i = icmp eq i32 %11, 0
  br i1 %cmp5.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %if.end11.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge
  %12 = ptrtoint ptr %used4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %used4.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.3, i32 noundef %9, i32 noundef %13) #12
  br label %vdpasim_blk_handle_req.exit.thread

if.end11.i:                                       ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %in_iov.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %in_iov.i, align 8
  %sub.i = add i32 %11, -1
  %iov_len.i = getelementptr %struct.kvec, ptr %15, i32 %sub.i, i32 1
  %16 = ptrtoint ptr %iov_len.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iov_len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp15.i = icmp eq i32 %17, 0
  br i1 %cmp15.i, label %do.end19.i, label %if.end22.i

do.end19.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.9) #12
  br label %vdpasim_blk_handle_req.exit.thread

if.end22.i:                                       ; preds = %if.end11.i
  %18 = ptrtoint ptr %i1.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %11)
  %cmp7.i.i = icmp ult i32 %19, %11
  br i1 %cmp7.i.i, label %if.end22.i.for.body.i.i_crit_edge, label %if.end22.i.vringh_kiov_length.exit.i_crit_edge

if.end22.i.vringh_kiov_length.exit.i_crit_edge:   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vringh_kiov_length.exit.i

if.end22.i.for.body.i.i_crit_edge:                ; preds = %if.end22.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end22.i.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %19, %if.end22.i.for.body.i.i_crit_edge ]
  %len.08.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end22.i.for.body.i.i_crit_edge ]
  %iov_len.i.i = getelementptr %struct.kvec, ptr %15, i32 %i.09.i.i, i32 1
  %20 = ptrtoint ptr %iov_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iov_len.i.i, align 4
  %add.i.i = add i32 %21, %len.08.i.i
  %inc.i.i = add nuw i32 %i.09.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %11
  br i1 %exitcond.not.i.i, label %vringh_kiov_length.exit.loopexit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

vringh_kiov_length.exit.loopexit.i:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo.i = add i32 %add.i.i, -1
  br label %vringh_kiov_length.exit.i

vringh_kiov_length.exit.i:                        ; preds = %vringh_kiov_length.exit.loopexit.i, %if.end22.i.vringh_kiov_length.exit.i_crit_edge
  %len.0.lcssa.i.i = phi i32 [ -1, %if.end22.i.vringh_kiov_length.exit.i_crit_edge ], [ %phi.bo.i, %vringh_kiov_length.exit.loopexit.i ]
  %22 = ptrtoint ptr %i1.i204.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %i1.i204.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %9)
  %cmp7.i206.i = icmp ult i32 %23, %9
  br i1 %cmp7.i206.i, label %for.body.lr.ph.i207.i, label %vringh_kiov_length.exit.i.vringh_kiov_length.exit216.i_crit_edge

vringh_kiov_length.exit.i.vringh_kiov_length.exit216.i_crit_edge: ; preds = %vringh_kiov_length.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vringh_kiov_length.exit216.i

for.body.lr.ph.i207.i:                            ; preds = %vringh_kiov_length.exit.i
  %24 = ptrtoint ptr %out_iov.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %out_iov.i, align 4
  br label %for.body.i214.i

for.body.i214.i:                                  ; preds = %for.body.i214.i.for.body.i214.i_crit_edge, %for.body.lr.ph.i207.i
  %i.09.i208.i = phi i32 [ %23, %for.body.lr.ph.i207.i ], [ %inc.i212.i, %for.body.i214.i.for.body.i214.i_crit_edge ]
  %len.08.i209.i = phi i32 [ 0, %for.body.lr.ph.i207.i ], [ %add.i211.i, %for.body.i214.i.for.body.i214.i_crit_edge ]
  %iov_len.i210.i = getelementptr %struct.kvec, ptr %25, i32 %i.09.i208.i, i32 1
  %26 = ptrtoint ptr %iov_len.i210.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iov_len.i210.i, align 4
  %add.i211.i = add i32 %27, %len.08.i209.i
  %inc.i212.i = add nuw i32 %i.09.i208.i, 1
  %exitcond.not.i213.i = icmp eq i32 %inc.i212.i, %9
  br i1 %exitcond.not.i213.i, label %vringh_kiov_length.exit216.loopexit.i, label %for.body.i214.i.for.body.i214.i_crit_edge

for.body.i214.i.for.body.i214.i_crit_edge:        ; preds = %for.body.i214.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i214.i

vringh_kiov_length.exit216.loopexit.i:            ; preds = %for.body.i214.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo233.i = add i32 %add.i211.i, -16
  br label %vringh_kiov_length.exit216.i

vringh_kiov_length.exit216.i:                     ; preds = %vringh_kiov_length.exit216.loopexit.i, %vringh_kiov_length.exit.i.vringh_kiov_length.exit216.i_crit_edge
  %len.0.lcssa.i215.i = phi i32 [ -16, %vringh_kiov_length.exit.i.vringh_kiov_length.exit216.i_crit_edge ], [ %phi.bo233.i, %vringh_kiov_length.exit216.loopexit.i ]
  %call30.i = call i32 @vringh_iov_pull_iotlb(ptr noundef %3, ptr noundef %out_iov.i, ptr noundef nonnull %hdr.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call30.i)
  %cmp31.not.i = icmp eq i32 %call30.i, 16
  br i1 %cmp31.not.i, label %if.end38.i, label %do.end35.i

do.end35.i:                                       ; preds = %vringh_kiov_length.exit216.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.12) #12
  br label %vdpasim_blk_handle_req.exit.thread

if.end38.i:                                       ; preds = %vringh_kiov_length.exit216.i
  %28 = ptrtoint ptr %hdr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hdr.i, align 8
  %30 = ptrtoint ptr %features.i.i.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %features.i.i.i, align 8
  %and.i.i.i = and i64 %31, 4294967296
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i64 %and.i.i.i, 0
  %32 = call i32 @llvm.bswap.i32(i32 %29) #9
  %retval.0.i.i.i = select i1 %tobool.i.not.i.i, i32 %29, i32 %32
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %6, align 8
  %35 = call i64 @llvm.bswap.i64(i64 %34) #9
  %retval.0.i.i220.i = select i1 %tobool.i.not.i.i, i64 %34, i64 %35
  %shl.i = shl i64 %retval.0.i.i220.i, 9
  %36 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %status.i, align 1
  %37 = zext i32 %retval.0.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i.i.i, label %do.end101.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb63.i
    i32 8, label %sw.bb86.i
  ]

sw.bb.i:                                          ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %len.0.lcssa.i.i)
  %cmp.i.i = icmp ugt i32 %len.0.lcssa.i.i, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 262144, i64 %retval.0.i.i220.i)
  %cmp2.i.i = icmp ugt i64 %retval.0.i.i220.i, 262144
  %or.cond.i.i = or i1 %cmp.i.i, %cmp2.i.i
  br i1 %or.cond.i.i, label %sw.bb.i.do.end48.i_crit_edge, label %vdpasim_blk_check_range.exit.i

sw.bb.i.do.end48.i_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48.i

vdpasim_blk_check_range.exit.i:                   ; preds = %sw.bb.i
  %shr.i.i = lshr i32 %len.0.lcssa.i.i, 9
  %conv.i.i = zext i32 %shr.i.i to i64
  %sub.i.i = sub nuw nsw i64 262144, %retval.0.i.i220.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i.i, i64 %conv.i.i)
  %cmp6.i.not.i = icmp ult i64 %sub.i.i, %conv.i.i
  br i1 %cmp6.i.not.i, label %vdpasim_blk_check_range.exit.i.do.end48.i_crit_edge, label %if.end51.i

vdpasim_blk_check_range.exit.i.do.end48.i_crit_edge: ; preds = %vdpasim_blk_check_range.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end48.i

do.end48.i:                                       ; preds = %vdpasim_blk_check_range.exit.i.do.end48.i_crit_edge, %sw.bb.i.do.end48.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.15, i64 noundef %shl.i, i32 noundef %len.0.lcssa.i.i) #12
  %38 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %status.i, align 1
  br label %sw.epilog.i

if.end51.i:                                       ; preds = %vdpasim_blk_check_range.exit.i
  %39 = ptrtoint ptr %buffer74.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer74.i, align 8
  %idx.ext.i = trunc i64 %shl.i to i32
  %add.ptr.i = getelementptr i8, ptr %40, i32 %idx.ext.i
  %call54.i = call i32 @vringh_iov_push_iotlb(ptr noundef %3, ptr noundef %in_iov.i, ptr noundef %add.ptr.i, i32 noundef %len.0.lcssa.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.i = icmp slt i32 %call54.i, 0
  br i1 %cmp55.i, label %do.end59.i, label %if.end51.i.sw.epilog.i_crit_edge

if.end51.i.sw.epilog.i_crit_edge:                 ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.end59.i:                                       ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.18, i32 noundef %call54.i, i64 noundef %shl.i, i32 noundef %len.0.lcssa.i.i) #12
  %41 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %status.i, align 1
  br label %sw.epilog.i

sw.bb63.i:                                        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %len.0.lcssa.i215.i)
  %cmp.i221.i = icmp ugt i32 %len.0.lcssa.i215.i, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 262144, i64 %retval.0.i.i220.i)
  %cmp2.i222.i = icmp ugt i64 %retval.0.i.i220.i, 262144
  %or.cond.i223.i = or i1 %cmp.i221.i, %cmp2.i222.i
  br i1 %or.cond.i223.i, label %sw.bb63.i.do.end68.i_crit_edge, label %vdpasim_blk_check_range.exit230.i

sw.bb63.i.do.end68.i_crit_edge:                   ; preds = %sw.bb63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68.i

vdpasim_blk_check_range.exit230.i:                ; preds = %sw.bb63.i
  %shr.i224.i = lshr i32 %len.0.lcssa.i215.i, 9
  %conv.i225.i = zext i32 %shr.i224.i to i64
  %sub.i226.i = sub nuw nsw i64 262144, %retval.0.i.i220.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i226.i, i64 %conv.i225.i)
  %cmp6.i227.not.i = icmp ult i64 %sub.i226.i, %conv.i225.i
  br i1 %cmp6.i227.not.i, label %vdpasim_blk_check_range.exit230.i.do.end68.i_crit_edge, label %if.end71.i

vdpasim_blk_check_range.exit230.i.do.end68.i_crit_edge: ; preds = %vdpasim_blk_check_range.exit230.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end68.i

do.end68.i:                                       ; preds = %vdpasim_blk_check_range.exit230.i.do.end68.i_crit_edge, %sw.bb63.i.do.end68.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.21, i64 noundef %shl.i, i32 noundef %len.0.lcssa.i215.i) #12
  %42 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %status.i, align 1
  br label %sw.epilog.i

if.end71.i:                                       ; preds = %vdpasim_blk_check_range.exit230.i
  %43 = ptrtoint ptr %buffer74.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer74.i, align 8
  %idx.ext75.i = trunc i64 %shl.i to i32
  %add.ptr76.i = getelementptr i8, ptr %44, i32 %idx.ext75.i
  %call77.i = call i32 @vringh_iov_pull_iotlb(ptr noundef %3, ptr noundef %out_iov.i, ptr noundef %add.ptr76.i, i32 noundef %len.0.lcssa.i215.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %cmp78.i = icmp slt i32 %call77.i, 0
  br i1 %cmp78.i, label %do.end82.i, label %if.end71.i.sw.epilog.i_crit_edge

if.end71.i.sw.epilog.i_crit_edge:                 ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.end82.i:                                       ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.24, i32 noundef %call77.i, i64 noundef %shl.i, i32 noundef %len.0.lcssa.i215.i) #12
  %45 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %status.i, align 1
  br label %sw.epilog.i

sw.bb86.i:                                        ; preds = %if.end38.i
  %call89.i = call i32 @vringh_iov_push_iotlb(ptr noundef %3, ptr noundef %in_iov.i, ptr noundef nonnull @vdpasim_blk_id, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %cmp90.i = icmp slt i32 %call89.i, 0
  br i1 %cmp90.i, label %do.end94.i, label %sw.bb86.i.sw.epilog.i_crit_edge

sw.bb86.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

do.end94.i:                                       ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %add.ptr, ptr noundef nonnull @.str.27, i32 noundef %call89.i) #12
  %46 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %status.i, align 1
  br label %sw.epilog.i

do.end101.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %add.ptr, ptr noundef nonnull @.str.30, i32 noundef %retval.0.i.i.i) #12
  %47 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %status.i, align 1
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.end101.i, %do.end94.i, %sw.bb86.i.sw.epilog.i_crit_edge, %do.end82.i, %if.end71.i.sw.epilog.i_crit_edge, %do.end68.i, %do.end59.i, %if.end51.i.sw.epilog.i_crit_edge, %do.end48.i
  %pushed.0.i = phi i32 [ 0, %do.end101.i ], [ 0, %do.end94.i ], [ 0, %do.end82.i ], [ 0, %if.end71.i.sw.epilog.i_crit_edge ], [ 0, %do.end68.i ], [ 0, %do.end59.i ], [ 0, %do.end48.i ], [ %call54.i, %if.end51.i.sw.epilog.i_crit_edge ], [ %call89.i, %sw.bb86.i.sw.epilog.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %len.0.lcssa.i.i, i32 %pushed.0.i)
  %cmp105.not.i = icmp eq i32 %len.0.lcssa.i.i, %pushed.0.i
  br i1 %cmp105.not.i, label %sw.epilog.i.if.end109.i_crit_edge, label %if.then106.i

sw.epilog.i.if.end109.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109.i

if.then106.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub104.i = sub i32 %len.0.lcssa.i.i, %pushed.0.i
  call void @vringh_kiov_advance(ptr noundef %in_iov.i, i32 noundef %sub104.i) #9
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.then106.i, %sw.epilog.i.if.end109.i_crit_edge
  %call112.i = call i32 @vringh_iov_push_iotlb(ptr noundef %3, ptr noundef %in_iov.i, ptr noundef nonnull %status.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call112.i)
  %cmp113.not.i = icmp eq i32 %call112.i, 1
  br i1 %cmp113.not.i, label %do.end, label %if.end109.i.vdpasim_blk_handle_req.exit.thread_crit_edge

if.end109.i.vdpasim_blk_handle_req.exit.thread_crit_edge: ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vdpasim_blk_handle_req.exit.thread

vdpasim_blk_handle_req.exit.thread:               ; preds = %if.end11.vdpasim_blk_handle_req.exit.thread_crit_edge, %if.end109.i.vdpasim_blk_handle_req.exit.thread_crit_edge, %do.end35.i, %do.end19.i, %do.end.i, %while.cond.preheader.vdpasim_blk_handle_req.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hdr.i) #9
  br label %out

do.end:                                           ; preds = %if.end109.i
  %add116.i = add nuw i32 %pushed.0.i, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  %48 = ptrtoint ptr %head.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %head.i, align 8
  %call125.i = call i32 @vringh_complete_iotlb(ptr noundef %3, i16 noundef zeroext %49, i32 noundef %add116.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hdr.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !81
  call fastcc void @local_bh_disable()
  %call7 = call i32 @vringh_need_notify_iotlb(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp sgt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %do.end
  %50 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %notify.i, align 4
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %if.then9.if.end11_crit_edge, label %if.then.i

if.then9.if.end11_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  call void %51(ptr noundef %3) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then.i, %if.then9.if.end11_crit_edge, %do.end.if.end11_crit_edge
  call fastcc void @local_bh_enable()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hdr.i) #9
  %52 = call ptr @memset(ptr %hdr.i, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #9
  %call.i = call i32 @vringh_getdesc_iotlb(ptr noundef %3, ptr noundef %out_iov.i, ptr noundef %in_iov.i, ptr noundef %head.i, i32 noundef 2592) #9
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end11.if.end.i_crit_edge, label %if.end11.vdpasim_blk_handle_req.exit.thread_crit_edge

if.end11.vdpasim_blk_handle_req.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %vdpasim_blk_handle_req.exit.thread

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

out:                                              ; preds = %vdpasim_blk_handle_req.exit.thread, %for.body.out_crit_edge, %entry.out_crit_edge
  call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vdpasim_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_vdpa_register_device(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_need_notify_iotlb(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_getdesc_iotlb(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_iov_pull_iotlb(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_iov_push_iotlb(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vringh_kiov_advance(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vringh_complete_iotlb(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_vdpa_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @vdpasim_blk_mgmtdev_release(ptr nocapture noundef %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vdpa_mgmtdev_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_vdpa_sim_blk__384_332_vdpasim_blk_init6, !1, !"__initcall__kmod_vdpa_sim_blk__384_332_vdpasim_blk_init6", i1 false, i1 false}
!1 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 332, i32 1}
!2 = !{ptr @__exitcall_vdpasim_blk_exit, !3, !"__exitcall_vdpasim_blk_exit", i1 false, i1 false}
!3 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 333, i32 1}
!4 = !{ptr @__UNIQUE_ID_version385, !5, !"__UNIQUE_ID_version385", i1 false, i1 false}
!5 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 335, i32 1}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__modver_attr, !5, !"__modver_attr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file386, !11, !"__UNIQUE_ID_file386", i1 false, i1 false}
!11 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 336, i32 1}
!12 = !{ptr @__UNIQUE_ID_license387, !11, !"__UNIQUE_ID_license387", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author388, !14, !"__UNIQUE_ID_author388", i1 false, i1 false}
!14 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 337, i32 1}
!15 = !{ptr @__UNIQUE_ID_description389, !16, !"__UNIQUE_ID_description389", i1 false, i1 false}
!16 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 338, i32 1}
!17 = !{ptr @mgmt_dev, !18, !"mgmt_dev", i1 false, i1 false}
!18 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 301, i32 29}
!19 = !{ptr @vdpasim_blk_mgmtdev_ops, !20, !"vdpasim_blk_mgmtdev_ops", i1 false, i1 false}
!20 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 291, i32 38}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 79, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vdpasim_blk_handle_req._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @vdpasim_blk_handle_req._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 85, i32 3}
!31 = !{ptr @vdpasim_blk_handle_req._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @vdpasim_blk_handle_req._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 99, i32 3}
!35 = !{ptr @vdpasim_blk_handle_req._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @vdpasim_blk_handle_req._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 113, i32 4}
!39 = !{ptr @vdpasim_blk_handle_req._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @vdpasim_blk_handle_req._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 124, i32 4}
!43 = !{ptr @vdpasim_blk_handle_req._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @vdpasim_blk_handle_req._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 136, i32 4}
!47 = !{ptr @vdpasim_blk_handle_req._entry.20, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @vdpasim_blk_handle_req._entry_ptr.22, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 147, i32 4}
!51 = !{ptr @vdpasim_blk_handle_req._entry.23, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @vdpasim_blk_handle_req._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 160, i32 4}
!55 = !{ptr @vdpasim_blk_handle_req._entry.26, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @vdpasim_blk_handle_req._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 170, i32 3}
!59 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @vdpasim_blk_handle_req._entry.29, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @vdpasim_blk_handle_req._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @vdpasim_blk_id, !63, !"vdpasim_blk_id", i1 false, i1 false}
!63 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 39, i32 13}
!64 = !{ptr @id_table, !65, !"id_table", i1 false, i1 false}
!65 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 296, i32 32}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 247, i32 15}
!68 = !{ptr @vdpasim_blk_mgmtdev, !69, !"vdpasim_blk_mgmtdev", i1 false, i1 false}
!69 = !{!"../drivers/vdpa/vdpa_sim/vdpa_sim_blk.c", i32 246, i32 22}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i8 0, i8 2}
!80 = !{i64 2156500188}
!81 = !{i64 2156501478}
