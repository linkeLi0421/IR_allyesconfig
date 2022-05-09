; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/display/komeda/komeda_dev.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/display/komeda/komeda_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.komeda_dev = type { ptr, ptr, %struct.komeda_chip_info, %struct.komeda_format_caps_table, ptr, i32, %struct.mutex, i32, i32, [2 x ptr], ptr, ptr, ptr, ptr, i16 }
%struct.komeda_chip_info = type { i32, i32, i32, i32 }
%struct.komeda_format_caps_table = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.komeda_dev_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.komeda_pipeline = type { %struct.drm_private_obj, ptr, ptr, i32, i32, i32, i32, [4 x ptr], i32, [2 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], i8 }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.komeda_layer = type { %struct.komeda_component, %struct.malidp_range, %struct.malidp_range, i32, i32, i32, i32, ptr }
%struct.komeda_component = type { %struct.drm_private_obj, ptr, [32 x i8], ptr, i32, i32, i8, i8, i32, i32, ptr }
%struct.malidp_range = type { i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.82, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.83, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.84, ptr, %struct.address_space, %struct.list_head, %union.anon.85, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.82 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.83 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.84 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.85 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@komeda_dev_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&mdev->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Map register space failed.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"aclk\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Get engine clk failed.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to identify the HW.\0A\00", [36 x i8] zeroinitializer }, align 32
@komeda_dev_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 230, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016[drm] Found ARM Mali-D%x version r%dp%d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"komeda_dev_create\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/arm/display/komeda/komeda_dev.c\00", [48 x i8] zeroinitializer }, align 32
@komeda_dev_create._entry_ptr = internal global ptr @komeda_dev_create._entry, section ".printk_index", align 4
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"enumerate display resource failed.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"parse device tree failed.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"assemble display pipelines failed.\0A\00", [60 x i8] zeroinitializer }, align 32
@komeda_dev_create._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016[drm] continue without IOMMU support!\0A\00", [55 x i8] zeroinitializer }, align 32
@komeda_dev_create._entry_ptr.13 = internal global ptr @komeda_dev_create._entry.11, section ".printk_index", align 4
@komeda_sysfs_attr_group = internal global { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @komeda_sysfs_entries, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"create sysfs group failed.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"connect iommu failed.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disconnect iommu failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"could not get IRQ number.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pipeline\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@komeda_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.7, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014[drm] Skip the redundant DT node: pipeline-%u.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"komeda_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@komeda_parse_dt._entry_ptr = internal global ptr @komeda_parse_dt._entry, section ".printk_index", align 4
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Pipeline-%d doesn't have a DT node.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pxclk\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"get pxclk for pipeline %d failed!\0A\00", [61 x i8] zeroinitializer }, align 32
@komeda_sysfs_entries = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_core_id, ptr @dev_attr_config_id, ptr @dev_attr_aclk_hz, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_core_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @core_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_config_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @config_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_aclk_hz = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aclk_hz_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"core_id\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%08x\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"config_id\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aclk_hz\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"komeda\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"register\00", [23 x i8] zeroinitializer }, align 32
@komeda_register_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @komeda_register_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"err_verbosity\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\0A====== Komeda register dump =========\0A\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 199, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 204, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 210, i32 33 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 212, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 222, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 227, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 236, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 242, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 248, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 256, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [24 x i8] c"komeda_sysfs_attr_group\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 108, i32 31 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 262, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 330, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 339, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 147, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 157, i32 30 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 158, i32 32 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 160, i32 5 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 172, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 117, i32 31 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 119, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant [21 x i8] c"komeda_sysfs_entries\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 101, i32 26 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"dev_attr_core_id\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"dev_attr_config_id\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"dev_attr_aclk_hz\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 67, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 65, i32 25 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 90, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 99, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 97, i32 25 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 52, i32 42 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 53, i32 22 }
@___asan_gen_.151 = private unnamed_addr constant [21 x i8] c"komeda_register_fops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 44, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 55, i32 21 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [51 x i8] c"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 29, i32 15 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @komeda_dev_create._entry, ptr @komeda_dev_create._entry.11, ptr @komeda_dev_create._entry_ptr, ptr @komeda_dev_create._entry_ptr.13, ptr @komeda_parse_dt._entry, ptr @komeda_parse_dt._entry_ptr, ptr @komeda_dev_create.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @komeda_sysfs_attr_group, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @komeda_sysfs_entries, ptr @dev_attr_core_id, ptr @dev_attr_config_id, ptr @dev_attr_aclk_hz, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @komeda_register_fops, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_dev_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_dev_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_dev_create._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_sysfs_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_sysfs_entries to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_core_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_config_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_aclk_hz to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @komeda_register_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @komeda_dev_create(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 172, i32 noundef 3520) #4
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.komeda_dev, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @komeda_dev_create.__key) #4
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call8 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr, i32 noundef 0) #4
  %reg_base = getelementptr inbounds %struct.komeda_dev, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %reg_base, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end15

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  %2 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base, align 4
  %4 = ptrtoint ptr %3 to i32
  store ptr null, ptr %reg_base, align 4
  br label %err_cleanup

if.end15:                                         ; preds = %do.body
  %call16 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #4
  %aclk = getelementptr inbounds %struct.komeda_dev, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %aclk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call16, ptr %aclk, align 4
  %cmp.i126 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i126, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #4
  %6 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aclk, align 4
  %8 = ptrtoint ptr %7 to i32
  store ptr null, ptr %aclk, align 4
  br label %err_cleanup

if.end23:                                         ; preds = %if.end15
  %call.i127 = tail call i32 @clk_prepare(ptr noundef %call16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool.not.i = icmp eq i32 %call.i127, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.clk_prepare_enable.exit_crit_edge

if.end23.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end23
  %call1.i = tail call i32 @clk_enable(ptr noundef %call16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %call16) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end23.clk_prepare_enable.exit_crit_edge
  %9 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base, align 4
  %chip = getelementptr inbounds %struct.komeda_dev, ptr %call.i, i32 0, i32 2
  %call27 = tail call ptr %call(ptr noundef %10, ptr noundef %chip) #4
  %funcs = getelementptr inbounds %struct.komeda_dev, ptr %call.i, i32 0, i32 10
  %11 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call27, ptr %funcs, align 4
  %tobool29.not = icmp eq ptr %call27, null
  br i1 %tobool29.not, label %clk_prepare_enable.exit.disable_clk_crit_edge, label %do.end34

clk_prepare_enable.exit.disable_clk_crit_edge:    ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %disable_clk

do.end34:                                         ; preds = %clk_prepare_enable.exit
  %core_id = getelementptr inbounds %struct.komeda_dev, ptr %call.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %core_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %core_id, align 4
  %shr = lshr i32 %13, 16
  %shr39 = lshr i32 %13, 12
  %and = and i32 %shr39, 15
  %shr42 = lshr i32 %13, 8
  %and43 = and i32 %shr42, 15
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %shr, i32 noundef %and, i32 noundef %and43) #7
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void %17(ptr noundef nonnull %call.i) #4
  %18 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %funcs, align 4
  %enum_resources = getelementptr inbounds %struct.komeda_dev_funcs, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %enum_resources to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %enum_resources, align 4
  %call47 = tail call i32 %21(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %do.end34.disable_clk_crit_edge

do.end34.disable_clk_crit_edge:                   ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %disable_clk

if.end50:                                         ; preds = %do.end34
  %call51 = tail call fastcc i32 @komeda_parse_dt(ptr noundef %dev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end50.disable_clk_crit_edge

if.end50.disable_clk_crit_edge:                   ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %disable_clk

if.end54:                                         ; preds = %if.end50
  %call55 = tail call i32 @komeda_assemble_pipelines(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end54.disable_clk_crit_edge

if.end54.disable_clk_crit_edge:                   ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #6
  br label %disable_clk

if.end58:                                         ; preds = %if.end54
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 22
  %22 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i128 = icmp eq ptr %23, null
  br i1 %tobool.not.i128, label %if.end58.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

if.end58.dma_set_max_seg_size.exit_crit_edge:     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %23, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %if.end58.dma_set_max_seg_size.exit_crit_edge
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %call61 = tail call ptr @iommu_get_domain_for_dev(ptr noundef %26) #4
  %iommu = getelementptr inbounds %struct.komeda_dev, ptr %call.i, i32 0, i32 12
  %27 = ptrtoint ptr %iommu to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call61, ptr %iommu, align 4
  %tobool63.not = icmp eq ptr %call61, null
  br i1 %tobool63.not, label %do.end67, label %dma_set_max_seg_size.exit.if.end70_crit_edge

dma_set_max_seg_size.exit.if.end70_crit_edge:     ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end70

do.end67:                                         ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #7
  br label %if.end70

if.end70:                                         ; preds = %do.end67, %dma_set_max_seg_size.exit.if.end70_crit_edge
  %28 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %aclk, align 4
  tail call void @clk_disable(ptr noundef %29) #4
  tail call void @clk_unprepare(ptr noundef %29) #4
  %call72 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @komeda_sysfs_attr_group) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.then74

if.then74:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #4
  br label %err_cleanup

if.end75:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #6
  %err_verbosity = getelementptr inbounds %struct.komeda_dev, ptr %call.i, i32 0, i32 14
  %30 = ptrtoint ptr %err_verbosity to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %err_verbosity, align 4
  tail call fastcc void @komeda_debugfs_init(ptr noundef nonnull %call.i)
  br label %cleanup

disable_clk:                                      ; preds = %if.end54.disable_clk_crit_edge, %if.end50.disable_clk_crit_edge, %do.end34.disable_clk_crit_edge, %clk_prepare_enable.exit.disable_clk_crit_edge
  %.str.10.sink = phi ptr [ @.str.4, %clk_prepare_enable.exit.disable_clk_crit_edge ], [ @.str.8, %do.end34.disable_clk_crit_edge ], [ @.str.9, %if.end50.disable_clk_crit_edge ], [ @.str.10, %if.end54.disable_clk_crit_edge ]
  %err.0 = phi i32 [ -19, %clk_prepare_enable.exit.disable_clk_crit_edge ], [ %call47, %do.end34.disable_clk_crit_edge ], [ %call51, %if.end50.disable_clk_crit_edge ], [ %call55, %if.end54.disable_clk_crit_edge ]
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.10.sink) #4
  %31 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %aclk, align 4
  tail call void @clk_disable(ptr noundef %32) #4
  tail call void @clk_unprepare(ptr noundef %32) #4
  br label %err_cleanup

err_cleanup:                                      ; preds = %disable_clk, %if.then74, %if.then19, %if.then11
  %err.1 = phi i32 [ %4, %if.then11 ], [ %8, %if.then19 ], [ %err.0, %disable_clk ], [ %call72, %if.then74 ]
  tail call void @komeda_dev_destroy(ptr noundef nonnull %call.i)
  %33 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_cleanup, %if.end75, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %33, %err_cleanup ], [ %call.i, %if.end75 ], [ inttoptr (i32 -19 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @komeda_parse_dt(ptr noundef %dev, ptr nocapture noundef %mdev) unnamed_addr #0 align 64 {
entry:
  %pipe_id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pipe_id) #4
  %2 = ptrtoint ptr %pipe_id to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pipe_id, align 4
  %call = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #4
  %irq = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 5
  %3 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #4
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i = tail call i32 @of_reserved_mem_device_init_by_idx(ptr noundef %dev, ptr noundef %7, i32 noundef 0) #4
  %8 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.if.end6_crit_edge
    i32 -19, label %if.end.if.end6_crit_edge87
  ]

if.end.if.end6_crit_edge87:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end.if.end6_crit_edge, %if.end.if.end6_crit_edge87
  %call7 = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #4
  %cmp8.not67 = icmp eq ptr %call7, null
  br i1 %cmp8.not67, label %if.end6.for.cond21.preheader_crit_edge, label %for.body.lr.ph

if.end6.for.cond21.preheader_crit_edge:           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond21.preheader

for.body.lr.ph:                                   ; preds = %if.end6
  %n_pipelines = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 8
  br label %for.body

for.cond21.preheader:                             ; preds = %for.inc.for.cond21.preheader_crit_edge, %if.end6.for.cond21.preheader_crit_edge
  %n_pipelines22 = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 8
  %9 = ptrtoint ptr %pipe_id to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %pipe_id, align 4
  %10 = ptrtoint ptr %n_pipelines22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_pipelines22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2370.not = icmp eq i32 %11, 0
  br i1 %cmp2370.not, label %for.cond21.preheader.cleanup_crit_edge, label %for.cond21.preheader.for.body24_crit_edge

for.cond21.preheader.for.body24_crit_edge:        ; preds = %for.cond21.preheader
  br label %for.body24

for.cond21.preheader.cleanup_crit_edge:           ; preds = %for.cond21.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %child.068 = phi ptr [ %call7, %for.body.lr.ph ], [ %call20, %for.inc.for.body_crit_edge ]
  %call9 = call zeroext i1 @of_node_name_eq(ptr noundef nonnull %child.068, ptr noundef nonnull @.str.18) #4
  br i1 %call9, label %if.then10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then10:                                        ; preds = %for.body
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.068, ptr noundef nonnull @.str.19, ptr noundef nonnull %pipe_id, i32 noundef 1, i32 noundef 0) #4
  %12 = ptrtoint ptr %pipe_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pipe_id, align 4
  %14 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_pipelines, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp12.not = icmp ult i32 %13, %15
  br i1 %cmp12.not, label %if.end16, label %do.end

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %13) #7
  br label %for.inc

if.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %call17 = call ptr @of_node_get(ptr noundef nonnull %child.068) #4
  %16 = ptrtoint ptr %pipe_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pipe_id, align 4
  %arrayidx = getelementptr %struct.komeda_dev, ptr %mdev, i32 0, i32 9, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %of_node18 = getelementptr inbounds %struct.komeda_pipeline, ptr %19, i32 0, i32 17
  %20 = ptrtoint ptr %of_node18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call17, ptr %of_node18, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %do.end, %for.body.for.inc_crit_edge
  %call20 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child.068) #4
  %cmp8.not = icmp eq ptr %call20, null
  br i1 %cmp8.not, label %for.inc.for.cond21.preheader_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.cond21.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond21.preheader

for.body24:                                       ; preds = %komeda_parse_pipe_dt.exit.thread.for.body24_crit_edge, %for.cond21.preheader.for.body24_crit_edge
  %storemerge71 = phi i32 [ %inc, %komeda_parse_pipe_dt.exit.thread.for.body24_crit_edge ], [ 0, %for.cond21.preheader.for.body24_crit_edge ]
  %arrayidx26 = getelementptr %struct.komeda_dev, ptr %mdev, i32 0, i32 9, i32 %storemerge71
  %21 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx26, align 4
  %of_node27 = getelementptr inbounds %struct.komeda_pipeline, ptr %22, i32 0, i32 17
  %23 = ptrtoint ptr %of_node27 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node27, align 4
  %tobool28.not = icmp eq ptr %24, null
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #6
  %id = getelementptr inbounds %struct.komeda_pipeline, ptr %22, i32 0, i32 3
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %26) #4
  br label %cleanup

if.end30:                                         ; preds = %for.body24
  %call.i63 = call ptr @of_clk_get_by_name(ptr noundef nonnull %24, ptr noundef nonnull @.str.23) #4
  %cmp.i.i = icmp ugt ptr %call.i63, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %komeda_parse_pipe_dt.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end30
  %pxlclk.i = getelementptr inbounds %struct.komeda_pipeline, ptr %22, i32 0, i32 2
  %27 = ptrtoint ptr %pxlclk.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i63, ptr %pxlclk.i, align 4
  %call3.i = call ptr @of_graph_get_remote_node(ptr noundef nonnull %24, i32 noundef 0, i32 noundef 0) #4
  %of_output_links.i = getelementptr inbounds %struct.komeda_pipeline, ptr %22, i32 0, i32 19
  %28 = ptrtoint ptr %of_output_links.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call3.i, ptr %of_output_links.i, align 4
  %call4.i = call ptr @of_graph_get_remote_node(ptr noundef nonnull %24, i32 noundef 0, i32 noundef 1) #4
  %arrayidx6.i = getelementptr %struct.komeda_pipeline, ptr %22, i32 0, i32 19, i32 1
  %29 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call4.i, ptr %arrayidx6.i, align 4
  %call7.i = call ptr @of_graph_get_port_by_id(ptr noundef nonnull %24, i32 noundef 0) #4
  %of_output_port.i = getelementptr inbounds %struct.komeda_pipeline, ptr %22, i32 0, i32 18
  %30 = ptrtoint ptr %of_output_port.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call7.i, ptr %of_output_port.i, align 4
  %31 = ptrtoint ptr %of_output_links.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %of_output_links.i, align 4
  %tobool.not.i = icmp eq ptr %32, null
  br i1 %tobool.not.i, label %if.end.i.komeda_parse_pipe_dt.exit.thread_crit_edge, label %land.rhs.i

if.end.i.komeda_parse_pipe_dt.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %komeda_parse_pipe_dt.exit.thread

land.rhs.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx6.i, align 4
  %tobool12.i = icmp ne ptr %34, null
  br label %komeda_parse_pipe_dt.exit.thread

komeda_parse_pipe_dt.exit.thread:                 ; preds = %land.rhs.i, %if.end.i.komeda_parse_pipe_dt.exit.thread_crit_edge
  %35 = phi i1 [ false, %if.end.i.komeda_parse_pipe_dt.exit.thread_crit_edge ], [ %tobool12.i, %land.rhs.i ]
  %dual_link.i = getelementptr inbounds %struct.komeda_pipeline, ptr %22, i32 0, i32 20
  %frombool.i = zext i1 %35 to i8
  %36 = ptrtoint ptr %dual_link.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool.i, ptr %dual_link.i, align 4
  %37 = ptrtoint ptr %pipe_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pipe_id, align 4
  %inc = add i32 %38, 1
  store i32 %inc, ptr %pipe_id, align 4
  %39 = ptrtoint ptr %n_pipelines22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n_pipelines22, align 4
  %cmp23 = icmp ult i32 %inc, %40
  br i1 %cmp23, label %komeda_parse_pipe_dt.exit.thread.for.body24_crit_edge, label %komeda_parse_pipe_dt.exit.thread.cleanup_crit_edge

komeda_parse_pipe_dt.exit.thread.cleanup_crit_edge: ; preds = %komeda_parse_pipe_dt.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

komeda_parse_pipe_dt.exit.thread.for.body24_crit_edge: ; preds = %komeda_parse_pipe_dt.exit.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body24

komeda_parse_pipe_dt.exit:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #6
  %id.i = getelementptr inbounds %struct.komeda_pipeline, ptr %22, i32 0, i32 3
  %41 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %id.i, align 4
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24, i32 noundef %42) #4
  %43 = ptrtoint ptr %call.i63 to i32
  br label %cleanup

cleanup:                                          ; preds = %komeda_parse_pipe_dt.exit, %komeda_parse_pipe_dt.exit.thread.cleanup_crit_edge, %if.then29, %for.cond21.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %5, %if.then ], [ -22, %if.then29 ], [ %call.i, %if.end.cleanup_crit_edge ], [ %43, %komeda_parse_pipe_dt.exit ], [ 0, %for.cond21.preheader.cleanup_crit_edge ], [ 0, %komeda_parse_pipe_dt.exit.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pipe_id) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @komeda_assemble_pipelines(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @iommu_get_domain_for_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @komeda_debugfs_init(ptr noundef %mdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @debugfs_initialized() #4
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.30, ptr noundef null) #4
  %debugfs_root = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 13
  %0 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %debugfs_root, align 4
  %call3 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.31, i16 noundef zeroext 292, ptr noundef %call1, ptr noundef %mdev, ptr noundef nonnull @komeda_register_fops) #4
  %1 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %debugfs_root, align 4
  %err_verbosity = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 14
  tail call void @debugfs_create_x16(ptr noundef nonnull @.str.32, i16 noundef zeroext 436, ptr noundef %2, ptr noundef %err_verbosity) #4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @komeda_dev_destroy(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mdev, align 4
  %funcs2 = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 10
  %2 = ptrtoint ptr %funcs2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs2, align 4
  tail call void @sysfs_remove_group(ptr noundef %1, ptr noundef nonnull @komeda_sysfs_attr_group) #4
  %debugfs_root = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 13
  %4 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %5) #4
  %aclk = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 4
  %6 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %aclk, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef nonnull %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %n_pipelines = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 8
  %8 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_pipelines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp55 = icmp sgt i32 %9, 0
  br i1 %cmp55, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.056 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.komeda_dev, ptr %mdev, i32 0, i32 9, i32 %i.056
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @komeda_pipeline_destroy(ptr noundef %mdev, ptr noundef %11) #4
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.056, 1
  %13 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_pipelines, align 4
  %cmp = icmp slt i32 %inc, %14
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %15 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %n_pipelines, align 4
  tail call void @of_reserved_mem_device_release(ptr noundef %1) #4
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %for.end.if.end11_crit_edge, label %land.lhs.true

for.end.if.end11_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

land.lhs.true:                                    ; preds = %for.end
  %cleanup = getelementptr inbounds %struct.komeda_dev_funcs, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cleanup, align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %land.lhs.true.if.end11_crit_edge, label %if.then9

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %17(ptr noundef %mdev) #4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %land.lhs.true.if.end11_crit_edge, %for.end.if.end11_crit_edge
  %reg_base = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 1
  %18 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_base, align 4
  %tobool12.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %if.end11.if.end16_crit_edge, label %if.then13

if.end11.if.end16_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @devm_iounmap(ptr noundef %1, ptr noundef nonnull %19) #4
  %20 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %reg_base, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end11.if.end16_crit_edge
  %21 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %aclk, align 4
  %tobool18.not = icmp eq ptr %22, null
  br i1 %tobool18.not, label %if.end16.if.end23_crit_edge, label %if.then19

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end23

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef nonnull %22) #4
  tail call void @clk_unprepare(ptr noundef nonnull %22) #4
  %23 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %aclk, align 4
  tail call void @devm_clk_put(ptr noundef %1, ptr noundef %24) #4
  %25 = ptrtoint ptr %aclk to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %aclk, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end16.if.end23_crit_edge
  tail call void @devm_kfree(ptr noundef %1, ptr noundef %mdev) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @komeda_pipeline_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_reserved_mem_device_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_clk_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_dev_resume(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %aclk = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 4
  %0 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %1) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %funcs = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 10
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %enable_irq = getelementptr inbounds %struct.komeda_dev_funcs, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %enable_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_irq, align 4
  %call1 = tail call i32 %5(ptr noundef %mdev) #4
  %iommu = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 12
  %6 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iommu, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %clk_prepare_enable.exit.if.end9_crit_edge, label %land.lhs.true

clk_prepare_enable.exit.if.end9_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

land.lhs.true:                                    ; preds = %clk_prepare_enable.exit
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs, align 4
  %connect_iommu = getelementptr inbounds %struct.komeda_dev_funcs, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %connect_iommu to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %connect_iommu, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %land.lhs.true.if.end9_crit_edge, label %if.then

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then:                                          ; preds = %land.lhs.true
  %call6 = tail call i32 %11(ptr noundef %mdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then.if.end9_crit_edge, label %if.then8

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end9

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.then.if.end9_crit_edge, %land.lhs.true.if.end9_crit_edge, %clk_prepare_enable.exit.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @komeda_dev_suspend(ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iommu = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 12
  %0 = ptrtoint ptr %iommu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iommu, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %funcs = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 10
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %disconnect_iommu = getelementptr inbounds %struct.komeda_dev_funcs, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %disconnect_iommu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disconnect_iommu, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 %5(ptr noundef %mdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then5

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %funcs7 = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 10
  %6 = ptrtoint ptr %funcs7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs7, align 4
  %disable_irq = getelementptr inbounds %struct.komeda_dev_funcs, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %disable_irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %disable_irq, align 4
  %call8 = tail call i32 %9(ptr noundef %mdev) #4
  %aclk = getelementptr inbounds %struct.komeda_dev, ptr %mdev, i32 0, i32 4
  %10 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %aclk, align 4
  tail call void @clk_disable(ptr noundef %11) #4
  tail call void @clk_unprepare(ptr noundef %11) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_reserved_mem_device_init_by_idx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @core_id_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dev_to_mdev(ptr noundef %dev) #4
  %core_id = getelementptr inbounds %struct.komeda_dev, ptr %call, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %core_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %core_id, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %1) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_to_mdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @config_id_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dev_to_mdev(ptr noundef %dev) #4
  %pipelines = getelementptr inbounds %struct.komeda_dev, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %pipelines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipelines, align 4
  %layers = getelementptr inbounds %struct.komeda_pipeline, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %layers to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %layers, align 4
  %end = getelementptr inbounds %struct.komeda_layer, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  %bf.shl = shl i32 %5, 16
  %n_pipelines = getelementptr inbounds %struct.komeda_dev, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_pipelines, align 4
  %bf.value3 = shl i32 %7, 14
  %bf.shl4 = and i32 %bf.value3, 49152
  %bf.set6 = or i32 %bf.shl4, %bf.shl
  %n_scalers = getelementptr inbounds %struct.komeda_pipeline, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %n_scalers to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_scalers, align 4
  %bf.value8 = shl i32 %9, 12
  %bf.shl9 = and i32 %bf.value8, 12288
  %bf.set11 = or i32 %bf.set6, %bf.shl9
  %n_layers = getelementptr inbounds %struct.komeda_pipeline, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %n_layers to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_layers, align 4
  %bf.value13 = shl i32 %11, 9
  %bf.shl14 = and i32 %bf.value13, 3584
  %bf.set16 = or i32 %bf.set11, %bf.shl14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp47 = icmp sgt i32 %11, 0
  br i1 %cmp47, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.049 = phi i32 [ %inc31, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %config_id.sroa.0.048 = phi i32 [ %config_id.sroa.0.1, %for.body.for.body_crit_edge ], [ %bf.set16, %entry.for.body_crit_edge ]
  %arrayidx22 = getelementptr %struct.komeda_pipeline, ptr %1, i32 0, i32 7, i32 %i.049
  %12 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx22, align 4
  %layer_type = getelementptr inbounds %struct.komeda_layer, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %layer_type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %layer_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp23 = icmp eq i32 %15, 1
  %16 = add i32 %config_id.sroa.0.048, 64
  %bf.shl28 = and i32 %16, 448
  %bf.clear29 = and i32 %config_id.sroa.0.048, -449
  %bf.set30 = or i32 %bf.shl28, %bf.clear29
  %config_id.sroa.0.1 = select i1 %cmp23, i32 %bf.set30, i32 %config_id.sroa.0.048
  %inc31 = add nuw nsw i32 %i.049, 1
  %exitcond.not = icmp eq i32 %inc31, %11
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %config_id.sroa.0.0.lcssa = phi i32 [ %bf.set16, %entry.for.end_crit_edge ], [ %config_id.sroa.0.1, %for.body.for.end_crit_edge ]
  %call32 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.26, i32 noundef %config_id.sroa.0.0.lcssa) #4
  ret i32 %call32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aclk_hz_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dev_to_mdev(ptr noundef %dev) #4
  %aclk = getelementptr inbounds %struct.komeda_dev, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aclk, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %1) #4
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.29, i32 noundef %call1) #4
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @debugfs_initialized() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x16(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @komeda_register_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @komeda_register_show, ptr noundef %1) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @komeda_register_show(ptr noundef %sf, ptr nocapture noundef readnone %x) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %sf, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  tail call void @seq_puts(ptr noundef %sf, ptr noundef nonnull @.str.33) #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #4
  %funcs = getelementptr inbounds %struct.komeda_dev, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %dump_register = getelementptr inbounds %struct.komeda_dev_funcs, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %dump_register to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dump_register, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %7(ptr noundef %1, ptr noundef %sf) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %n_pipelines = getelementptr inbounds %struct.komeda_dev, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n_pipelines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp17 = icmp sgt i32 %9, 0
  br i1 %cmp17, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.018 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.komeda_dev, ptr %1, i32 0, i32 9, i32 %i.018
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  tail call void @komeda_pipeline_dump_register(ptr noundef %11, ptr noundef %sf) #4
  %inc = add nuw nsw i32 %i.018, 1
  %12 = ptrtoint ptr %n_pipelines to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_pipelines, align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call.i16 = tail call i32 @__pm_runtime_idle(ptr noundef %15, i32 noundef 5) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @komeda_pipeline_dump_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !57, !59, !61, !62, !64, !65, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @komeda_dev_create.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 199, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 204, i32 3}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 210, i32 33}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 212, i32 3}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 222, i32 3}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 227, i32 2}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @komeda_dev_create._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @komeda_dev_create._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 236, i32 3}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 242, i32 3}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 248, i32 3}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 256, i32 3}
!25 = !{ptr @komeda_dev_create._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @komeda_dev_create._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 262, i32 3}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 330, i32 4}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 339, i32 4}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 147, i32 3}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 157, i32 30}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 158, i32 32}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 160, i32 5}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @komeda_parse_dt._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @komeda_parse_dt._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 172, i32 4}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 117, i32 31}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 119, i32 3}
!50 = !{ptr @komeda_sysfs_attr_group, !51, !"komeda_sysfs_attr_group", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 108, i32 31}
!52 = !{ptr @komeda_sysfs_entries, !53, !"komeda_sysfs_entries", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 101, i32 26}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 67, i32 8}
!56 = !{ptr @dev_attr_core_id, !55, !"dev_attr_core_id", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 65, i32 25}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 90, i32 8}
!61 = !{ptr @dev_attr_config_id, !60, !"dev_attr_config_id", i1 false, i1 false}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 99, i32 8}
!64 = !{ptr @dev_attr_aclk_hz, !63, !"dev_attr_aclk_hz", i1 false, i1 false}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 97, i32 25}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 52, i32 42}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 53, i32 22}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 55, i32 21}
!73 = !{ptr @komeda_register_fops, !74, !"komeda_register_fops", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 44, i32 1}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/arm/display/komeda/komeda_dev.c", i32 29, i32 15}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
