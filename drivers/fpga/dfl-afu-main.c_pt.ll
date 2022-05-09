; ModuleID = '/llk/IR_all_yes/drivers/fpga/dfl-afu-main.c_pt.bc'
source_filename = "../drivers/fpga/dfl-afu-main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dfl_fpga_port_ops = type { ptr, ptr, %struct.list_head, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.dfl_feature_driver = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dfl_feature_id = type { i16 }
%struct.dfl_feature_ops = type { ptr, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dfl_feature_platform_data = type { %struct.list_head, %struct.mutex, %struct.cdev, ptr, ptr, i32, i32, i8, i32, ptr, i32, [0 x %struct.dfl_feature] }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.dfl_feature = type { ptr, i16, i8, i32, ptr, ptr, i32, ptr, ptr, ptr }
%struct.dfl_afu = type { i64, i32, i8, %struct.list_head, %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.dfl_fpga_port_dma_unmap = type { i32, i32, i64 }
%struct.dfl_fpga_port_region_info = type { i32, i32, i32, i32, i64, i64 }
%struct.dfl_afu_mmio_region = type { i32, i32, i64, i64, i64, %struct.list_head }
%struct.dfl_fpga_port_info = type { i32, i32, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.67, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.68, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.69, ptr, %struct.address_space, %struct.list_head, %union.anon.70, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.67 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.68 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.69 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.70 = type { ptr }
%struct.dfl_fpga_port_dma_map = type { i32, i32, i64, i64, i64 }

@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/fpga/dfl-afu-main.c\00", [36 x i8] zeroinitializer }, align 32
@__afu_port_enable._entry = internal constant %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 63, ptr @.str.3, ptr @.str.4 }, align 1
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timeout, failure to enable device\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__afu_port_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__afu_port_enable._entry_ptr = internal global ptr @__afu_port_enable._entry, section ".printk_index", align 4
@__afu_port_disable._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 102, ptr @.str.3, ptr @.str.4 }, align 1
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"timeout, failure to disable device\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__afu_port_disable\00", [45 x i8] zeroinitializer }, align 32
@__afu_port_disable._entry_ptr = internal global ptr @__afu_port_disable._entry, section ".printk_index", align 4
@afu_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @afu_probe, ptr @afu_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.8, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @afu_dev_groups, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@afu_port_ops = internal global { %struct.dfl_fpga_port_ops, [40 x i8] } { %struct.dfl_fpga_port_ops { ptr @.str.8, ptr null, %struct.list_head zeroinitializer, ptr @port_get_id, ptr @port_enable_set }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_dfl_afu__295_982_afu_init6 = internal global ptr @afu_init, section ".initcall6.init", align 4
@__exitcall_afu_exit = internal global ptr @afu_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [58 x i8] c"dfl_afu.description=FPGA Accelerated Function Unit driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [33 x i8] c"dfl_afu.author=Intel Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [34 x i8] c"dfl_afu.file=drivers/fpga/dfl-afu\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [23 x i8] c"dfl_afu.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias300 = internal constant [32 x i8] c"dfl_afu.alias=platform:dfl-port\00", section ".modinfo", align 1
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drivers/fpga/dfl.h\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dfl-port\00", [23 x i8] zeroinitializer }, align 32
@afu_dev_groups = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @port_hdr_group, ptr @port_afu_group, ptr @port_err_group, ptr null], [16 x i8] zeroinitializer }, align 32
@afu_probe.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str, ptr @.str.11, i8 0, i8 -29, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dfl_afu\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"afu_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@port_feature_drvs = internal global { [6 x %struct.dfl_feature_driver], [48 x i8] } { [6 x %struct.dfl_feature_driver] [%struct.dfl_feature_driver { ptr @port_hdr_id_table, ptr @port_hdr_ops }, %struct.dfl_feature_driver { ptr @port_afu_id_table, ptr @port_afu_ops }, %struct.dfl_feature_driver { ptr @port_err_id_table, ptr @port_err_ops }, %struct.dfl_feature_driver { ptr @port_stp_id_table, ptr @port_stp_ops }, %struct.dfl_feature_driver { ptr @port_uint_id_table, ptr @port_uint_ops }, %struct.dfl_feature_driver zeroinitializer], [48 x i8] zeroinitializer }, align 32
@afu_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @afu_ioctl, ptr null, ptr @afu_mmap, i32 0, ptr @afu_open, ptr null, ptr @afu_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@port_hdr_id_table = internal constant { [2 x %struct.dfl_feature_id], [28 x i8] } { [2 x %struct.dfl_feature_id] [%struct.dfl_feature_id { i16 254 }, %struct.dfl_feature_id zeroinitializer], [28 x i8] zeroinitializer }, align 32
@port_hdr_ops = internal constant { %struct.dfl_feature_ops, [20 x i8] } { %struct.dfl_feature_ops { ptr @port_hdr_init, ptr null, ptr @port_hdr_ioctl }, [20 x i8] zeroinitializer }, align 32
@port_afu_id_table = internal constant { [2 x %struct.dfl_feature_id], [28 x i8] } { [2 x %struct.dfl_feature_id] [%struct.dfl_feature_id { i16 255 }, %struct.dfl_feature_id zeroinitializer], [28 x i8] zeroinitializer }, align 32
@port_afu_ops = internal constant { %struct.dfl_feature_ops, [20 x i8] } { %struct.dfl_feature_ops { ptr @port_afu_init, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@port_err_id_table = external dso_local constant [0 x %struct.dfl_feature_id], align 2
@port_err_ops = external dso_local constant %struct.dfl_feature_ops, align 4
@port_stp_id_table = internal constant { [2 x %struct.dfl_feature_id], [28 x i8] } { [2 x %struct.dfl_feature_id] [%struct.dfl_feature_id { i16 19 }, %struct.dfl_feature_id zeroinitializer], [28 x i8] zeroinitializer }, align 32
@port_stp_ops = internal constant { %struct.dfl_feature_ops, [20 x i8] } { %struct.dfl_feature_ops { ptr @port_stp_init, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@port_uint_id_table = internal constant { [2 x %struct.dfl_feature_id], [28 x i8] } { [2 x %struct.dfl_feature_id] [%struct.dfl_feature_id { i16 18 }, %struct.dfl_feature_id zeroinitializer], [28 x i8] zeroinitializer }, align 32
@port_uint_ops = internal constant { %struct.dfl_feature_ops, [20 x i8] } { %struct.dfl_feature_ops { ptr null, ptr null, ptr @port_uint_ioctl }, [20 x i8] zeroinitializer }, align 32
@port_hdr_ioctl.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str, ptr @.str.13, i8 0, i8 109, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"port_hdr_ioctl\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%x cmd not handled\00", [45 x i8] zeroinitializer }, align 32
@port_uint_ioctl.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.14, ptr @.str, ptr @.str.13, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"port_uint_ioctl\00", [16 x i8] zeroinitializer }, align 32
@afu_ioctl.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.15, ptr @.str, ptr @.str.16, i8 0, i8 -65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"afu_ioctl\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s cmd 0x%x\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@afu_ioctl_dma_map.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.20, ptr @.str, ptr @.str.21, i8 0, i8 -73, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"afu_ioctl_dma_map\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dma map: ua=%llx, len=%llx, iova=%llx\0A\00", [57 x i8] zeroinitializer }, align 32
@afu_vma_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } zeroinitializer, align 32
@afu_open.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.22, ptr @.str, ptr @.str.23, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"afu_open\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Device File Opened %d Times\0A\00", [35 x i8] zeroinitializer }, align 32
@afu_release.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.24, ptr @.str, ptr @.str.25, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"afu_release\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Device File Release\0A\00", [43 x i8] zeroinitializer }, align 32
@afu_remove.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.26, ptr @.str, ptr @.str.11, i8 0, i8 -22, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"afu_remove\00", [21 x i8] zeroinitializer }, align 32
@port_hdr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @port_hdr_attrs_visible, ptr null, ptr @port_hdr_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@port_afu_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @port_afu_attrs_visible, ptr null, ptr @port_afu_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@port_err_group = external dso_local constant %struct.attribute_group, align 4
@port_hdr_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @dev_attr_id, ptr @dev_attr_ltr, ptr @dev_attr_ap1_event, ptr @dev_attr_ap2_event, ptr @dev_attr_power_state, ptr @dev_attr_userclk_freqcmd, ptr @dev_attr_userclk_freqcntrcmd, ptr @dev_attr_userclk_freqsts, ptr @dev_attr_userclk_freqcntrsts, ptr null], [56 x i8] zeroinitializer }, align 32
@dev_attr_userclk_freqcmd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @userclk_freqcmd_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_userclk_freqcntrcmd = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @userclk_freqcntrcmd_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_userclk_freqsts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @userclk_freqsts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_userclk_freqcntrsts = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @userclk_freqcntrsts_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"userclk_freqcmd\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"userclk_freqcntrcmd\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"userclk_freqsts\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0x%llx\0A\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"userclk_freqcntrsts\00", [44 x i8] zeroinitializer }, align 32
@dev_attr_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ltr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltr_show, ptr @ltr_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ap1_event = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ap1_event_show, ptr @ap1_event_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_ap2_event = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ap2_event_show, ptr @ap2_event_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_power_state = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @power_state_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"id\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ltr\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ap1_event\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ap2_event\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power_state\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0x%x\0A\00", [26 x i8] zeroinitializer }, align 32
@port_afu_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_afu_id, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_afu_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @afu_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"afu_id\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%016llx%016llx\0A\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1074312776, i64 2147792455]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 32, i64 46592, i64 46593, i64 46657, i64 46658, i64 46659, i64 46660]
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 44, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 63, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 102, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"afu_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 953, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant [13 x i8] c"afu_port_ops\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 900, i32 33 }
@___asan_gen_.71 = private unnamed_addr constant [22 x i8] c"../drivers/fpga/dfl.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 392, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 955, i32 15 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"afu_dev_groups\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 946, i32 38 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 911, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"port_feature_drvs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 570, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant [9 x i8] c"afu_fops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 844, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant [18 x i8] c"port_hdr_id_table\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 446, i32 36 }
@___asan_gen_.97 = private unnamed_addr constant [13 x i8] c"port_hdr_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 451, i32 37 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"port_afu_id_table\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 516, i32 36 }
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"port_afu_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 521, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant [18 x i8] c"port_stp_id_table\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 537, i32 36 }
@___asan_gen_.109 = private unnamed_addr constant [13 x i8] c"port_stp_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 542, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"port_uint_id_table\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 561, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"port_uint_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 566, i32 37 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 439, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 556, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 764, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 156, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 732, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant [12 x i8] c"afu_vma_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 799, i32 42 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 609, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 624, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 937, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [15 x i8] c"port_hdr_group\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 412, i32 37 }
@___asan_gen_.163 = private unnamed_addr constant [15 x i8] c"port_afu_group\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 499, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant [15 x i8] c"port_hdr_attrs\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 374, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant [25 x i8] c"dev_attr_userclk_freqcmd\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [29 x i8] c"dev_attr_userclk_freqcntrcmd\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [25 x i8] c"dev_attr_userclk_freqsts\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [29 x i8] c"dev_attr_userclk_freqcntrsts\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 314, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 335, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 353, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 351, i32 22 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 372, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant [12 x i8] c"dev_attr_id\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [13 x i8] c"dev_attr_ltr\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [19 x i8] c"dev_attr_ap1_event\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [19 x i8] c"dev_attr_ap2_event\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [21 x i8] c"dev_attr_power_state\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 160, i32 8 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 158, i32 35 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 201, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 175, i32 22 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 238, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 276, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 293, i32 8 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 291, i32 22 }
@___asan_gen_.235 = private unnamed_addr constant [15 x i8] c"port_afu_attrs\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 479, i32 26 }
@___asan_gen_.238 = private unnamed_addr constant [16 x i8] c"dev_attr_afu_id\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 477, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.245 = private constant [31 x i8] c"../drivers/fpga/dfl-afu-main.c\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.245, i32 475, i32 35 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__afu_port_disable._entry, ptr @__afu_port_disable._entry_ptr, ptr @__afu_port_enable._entry, ptr @__afu_port_enable._entry_ptr, ptr @__exitcall_afu_exit, ptr @__initcall__kmod_dfl_afu__295_982_afu_init6, ptr @afu_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @afu_driver, ptr @afu_port_ops, ptr @.str.7, ptr @.str.8, ptr @afu_dev_groups, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @port_feature_drvs, ptr @afu_fops, ptr @port_hdr_id_table, ptr @port_hdr_ops, ptr @port_afu_id_table, ptr @port_afu_ops, ptr @port_stp_id_table, ptr @port_stp_ops, ptr @port_uint_id_table, ptr @port_uint_ops, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @afu_vma_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @port_hdr_group, ptr @port_afu_group, ptr @port_hdr_attrs, ptr @dev_attr_userclk_freqcmd, ptr @dev_attr_userclk_freqcntrcmd, ptr @dev_attr_userclk_freqsts, ptr @dev_attr_userclk_freqcntrsts, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @dev_attr_id, ptr @dev_attr_ltr, ptr @dev_attr_ap1_event, ptr @dev_attr_ap2_event, ptr @dev_attr_power_state, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @port_afu_attrs, ptr @dev_attr_afu_id, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afu_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afu_port_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afu_dev_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_feature_drvs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afu_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_hdr_id_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_hdr_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_afu_id_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_afu_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_stp_id_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_stp_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_uint_id_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_uint_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @afu_vma_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_hdr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_afu_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_hdr_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_userclk_freqcmd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_userclk_freqcntrcmd to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_userclk_freqsts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_userclk_freqcntrsts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ltr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ap1_event to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ap2_event to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_power_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_afu_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_afu_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__afu_port_enable(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %disable_count = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %disable_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %disable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !155

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 44, i32 noundef 9, ptr noundef null) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %disable_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %disable_count, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %disable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end23, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %6 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %7, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %9
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %if.end23.for.body.i.i_crit_edge, label %if.end23.do.end.i_crit_edge

if.end23.do.end.i_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end23.for.body.i.i_crit_edge:                  ; preds = %if.end23
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end23.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %if.end23.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %11)
  %cmp5.i.i = icmp eq i16 %11, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %if.end23.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %13, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 56
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 60
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %16 = zext i32 %15 to i64
  %17 = zext i32 %14 to i64
  %18 = shl nuw i64 %17, 32
  %.masked = and i64 %18, -72057598332895232
  %19 = or i64 %.masked, %16
  %20 = tail call i64 @llvm.bswap.i64(i64 %19)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @arm_heavy_mb() #9
  %21 = lshr exact i64 %.masked, 32
  %22 = trunc i64 %21 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #9, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %20, 32
  %conv3.i = trunc i64 %shr.i to i32
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #9, !srcloc !160
  %call28 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call28, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 62) #9
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %26 = and i32 %24, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool45.not98 = icmp eq i32 %26, 0
  br i1 %tobool45.not98, label %dfl_get_feature_ioaddr_by_id.exit.cleanup_crit_edge, label %dfl_get_feature_ioaddr_by_id.exit.land.lhs.true_crit_edge

dfl_get_feature_ioaddr_by_id.exit.land.lhs.true_crit_edge: ; preds = %dfl_get_feature_ioaddr_by_id.exit
  br label %land.lhs.true

dfl_get_feature_ioaddr_by_id.exit.cleanup_crit_edge: ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.then57.land.lhs.true_crit_edge, %dfl_get_feature_ioaddr_by_id.exit.land.lhs.true_crit_edge
  %call49 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call49, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call49, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then57

if.then57:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %29 = and i32 %27, 268435456
  %tobool45.not = icmp eq i32 %29, 0
  br i1 %tobool45.not, label %if.then57.cleanup_crit_edge, label %if.then57.land.lhs.true_crit_edge

if.then57.land.lhs.true_crit_edge:                ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then57.cleanup_crit_edge:                      ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %land.lhs.true
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %32 = and i32 %30, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %phi.cmp = icmp eq i32 %32, 0
  br i1 %phi.cmp, label %for.end.cleanup_crit_edge, label %do.end68

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end68:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end68, %for.end.cleanup_crit_edge, %if.then57.cleanup_crit_edge, %dfl_get_feature_ioaddr_by_id.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end68 ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %dfl_get_feature_ioaddr_by_id.exit.cleanup_crit_edge ], [ 0, %if.then57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__afu_port_disable(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %disable_count = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %disable_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %disable_count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %disable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %5, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %7
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %if.end.for.body.i.i_crit_edge, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %if.end.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %9)
  %cmp5.i.i = icmp eq i16 %9, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %11, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 56
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 60
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %14 = zext i32 %13 to i64
  %15 = zext i32 %12 to i64
  %16 = shl nuw i64 %15, 32
  %17 = or i64 %16, %14
  %18 = or i64 %17, 72057594037927936
  %19 = tail call i64 @llvm.bswap.i64(i64 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  tail call void @arm_heavy_mb() #9
  %20 = lshr i64 %18, 32
  %21 = trunc i64 %20 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #9, !srcloc !160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  tail call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %19, 32
  %conv3.i = trunc i64 %shr.i to i32
  %22 = tail call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #9, !srcloc !160
  %call5 = tail call i64 @ktime_get() #9
  %add.i = add i64 %call5, 1000000
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 101) #9
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %25 = call i32 @llvm.bswap.i32(i32 %23)
  %26 = zext i32 %25 to i64
  %and66 = and i64 %26, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and66)
  %tobool.not67 = icmp eq i64 %and66, 0
  br i1 %tobool.not67, label %dfl_get_feature_ioaddr_by_id.exit.land.lhs.true_crit_edge, label %dfl_get_feature_ioaddr_by_id.exit.for.end_crit_edge

dfl_get_feature_ioaddr_by_id.exit.for.end_crit_edge: ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

dfl_get_feature_ioaddr_by_id.exit.land.lhs.true_crit_edge: ; preds = %dfl_get_feature_ioaddr_by_id.exit
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then29.land.lhs.true_crit_edge, %dfl_get_feature_ioaddr_by_id.exit.land.lhs.true_crit_edge
  %call21 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call21, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %if.then24, label %if.then29

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %29 = call i32 @llvm.bswap.i32(i32 %27)
  %30 = zext i32 %29 to i64
  br label %for.end

if.then29:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #9
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %33 = call i32 @llvm.bswap.i32(i32 %31)
  %34 = zext i32 %33 to i64
  %and = and i64 %34, 16
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then29.land.lhs.true_crit_edge, label %if.then29.for.end_crit_edge

if.then29.for.end_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then29.land.lhs.true_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

for.end:                                          ; preds = %if.then29.for.end_crit_edge, %if.then24, %dfl_get_feature_ioaddr_by_id.exit.for.end_crit_edge
  %v.0 = phi i64 [ %30, %if.then24 ], [ %26, %dfl_get_feature_ioaddr_by_id.exit.for.end_crit_edge ], [ %34, %if.then29.for.end_crit_edge ]
  %and31 = and i64 %v.0, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and31)
  %tobool32.not = icmp eq i64 %and31, 0
  br i1 %tobool32.not, label %do.end37, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end37:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end37 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @afu_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @afu_driver) #9
  tail call void @dfl_fpga_port_ops_del(ptr noundef nonnull @afu_port_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dfl_fpga_port_ops_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @afu_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dfl_fpga_port_ops_add(ptr noundef nonnull @afu_port_ops) #9
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @afu_driver, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dfl_fpga_port_ops_del(ptr noundef nonnull @afu_port_ops) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afu_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_probe.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_probe, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !162

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_probe.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i, align 8
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 32, i32 noundef 3520) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %pdata3.i = getelementptr inbounds %struct.dfl_afu, ptr %call.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %pdata3.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %pdata3.i, align 4
  %lock.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %private1.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 9
  %3 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i.i, ptr %private1.i.i, align 4
  tail call void @afu_mmio_region_init(ptr noundef %1) #9
  tail call void @afu_dma_region_init(ptr noundef %1) #9
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %call7 = tail call i32 @dfl_fpga_dev_feature_init(ptr noundef %pdev, ptr noundef nonnull @port_feature_drvs) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.dev_destroy_crit_edge

if.end6.dev_destroy_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_destroy

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @dfl_fpga_dev_ops_register(ptr noundef %pdev, ptr noundef nonnull @afu_fops, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.then13

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dfl_fpga_dev_feature_uinit(ptr noundef %pdev) #9
  br label %dev_destroy

dev_destroy:                                      ; preds = %if.then13, %if.end6.dev_destroy_crit_edge
  %ret.0 = phi i32 [ %call7, %if.end6.dev_destroy_crit_edge ], [ %call11, %if.then13 ]
  %4 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i.i, align 8
  %lock.i26 = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i26, i32 noundef 0) #9
  tail call void @afu_mmio_region_destroy(ptr noundef %5) #9
  tail call void @afu_dma_region_destroy(ptr noundef %5) #9
  %private1.i.i27 = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %private1.i.i27 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %private1.i.i27, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i26) #9
  br label %cleanup

cleanup:                                          ; preds = %dev_destroy, %if.end10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10.cleanup_crit_edge ], [ %ret.0, %dev_destroy ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afu_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_remove.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_remove, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !162

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_remove.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.26) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @dfl_fpga_dev_ops_unregister(ptr noundef %pdev) #9
  tail call void @dfl_fpga_dev_feature_uinit(ptr noundef %pdev) #9
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i, align 8
  %lock.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  tail call void @afu_mmio_region_destroy(ptr noundef %1) #9
  tail call void @afu_dma_region_destroy(ptr noundef %1) #9
  %private1.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %private1.i.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_fpga_dev_feature_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_fpga_dev_ops_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dfl_fpga_dev_feature_uinit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afu_mmio_region_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afu_dma_region_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_hdr_init(ptr noundef %pdev, ptr nocapture noundef readnone %feature) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i, align 8
  %lock.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %call.i.i = tail call i32 @__afu_port_disable(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.port_reset.exit_crit_edge

entry.port_reset.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_reset.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = tail call i32 @__afu_port_enable(ptr noundef %pdev) #9
  br label %port_reset.exit

port_reset.exit:                                  ; preds = %if.end.i.i, %entry.port_reset.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_hdr_ioctl(ptr noundef %pdev, ptr nocapture noundef readnone %feature, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 46656, i32 %cmd)
  %cond = icmp eq i32 %cmd, 46656
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not = icmp eq i32 %arg, 0
  br i1 %tobool.not, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %platform_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i, align 8
  %lock.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %call.i.i = tail call i32 @__afu_port_disable(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.port_reset.exit_crit_edge

if.then.port_reset.exit_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_reset.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i.i = tail call i32 @__afu_port_enable(ptr noundef %pdev) #9
  br label %port_reset.exit

port_reset.exit:                                  ; preds = %if.end.i.i, %if.then.port_reset.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call1.i.i, %if.end.i.i ], [ %call.i.i, %if.then.port_reset.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @port_hdr_ioctl.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@port_hdr_ioctl, %if.then5)) #9
          to label %sw.epilog [label %if.then5], !srcloc !162

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @port_hdr_ioctl.__UNIQUE_ID_ddebug287, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %cmd) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then5, %do.body, %port_reset.exit, %sw.bb.sw.epilog_crit_edge
  %ret.0 = phi i32 [ %retval.0.i.i, %port_reset.exit ], [ -22, %sw.bb.sw.epilog_crit_edge ], [ -19, %if.then5 ], [ -19, %do.body ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_afu_init(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readonly %feature) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 8
  %resource_index = getelementptr inbounds %struct.dfl_feature, ptr %feature, i32 0, i32 3
  %2 = ptrtoint ptr %resource_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource_index, align 4
  %arrayidx = getelementptr %struct.resource, ptr %1, i32 %3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %end.i = getelementptr %struct.resource, ptr %1, i32 %3, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %sub.i = add i32 %7, 1
  %add.i = sub i32 %sub.i, %9
  %conv = zext i32 %add.i to i64
  %conv2 = zext i32 %9 to i64
  %call3 = tail call i32 @afu_mmio_region_add(ptr noundef %5, i32 noundef 0, i64 noundef %conv, i64 noundef %conv2, i32 noundef 7) #9
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afu_mmio_region_add(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_stp_init(ptr nocapture noundef readonly %pdev, ptr nocapture noundef readonly %feature) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 7
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 8
  %resource_index = getelementptr inbounds %struct.dfl_feature, ptr %feature, i32 0, i32 3
  %2 = ptrtoint ptr %resource_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %resource_index, align 4
  %arrayidx = getelementptr %struct.resource, ptr %1, i32 %3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %end.i = getelementptr %struct.resource, ptr %1, i32 %3, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %sub.i = add i32 %7, 1
  %add.i = sub i32 %sub.i, %9
  %conv = zext i32 %add.i to i64
  %conv2 = zext i32 %9 to i64
  %call3 = tail call i32 @afu_mmio_region_add(ptr noundef %5, i32 noundef 1, i64 noundef %conv, i64 noundef %conv2, i32 noundef 7) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_uint_ioctl(ptr noundef %pdev, ptr noundef %feature, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.body [
    i32 -2147174841, label %sw.bb
    i32 1074312776, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @dfl_feature_ioctl_get_num_irqs(ptr noundef %pdev, ptr noundef %feature, i32 noundef %arg) #9
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @dfl_feature_ioctl_set_irq(ptr noundef %pdev, ptr noundef %feature, i32 noundef %arg) #9
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @port_uint_ioctl.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@port_uint_ioctl, %if.then)) #9
          to label %return [label %if.then], !srcloc !162

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @port_uint_ioctl.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %cmd) #9
  br label %return

return:                                           ; preds = %if.then, %do.body, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %call2, %sw.bb1 ], [ %call, %sw.bb ], [ -19, %if.then ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_feature_ioctl_get_num_irqs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_feature_ioctl_set_irq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afu_ioctl(ptr nocapture noundef readonly %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %unmap.i = alloca %struct.dfl_fpga_port_dma_unmap, align 8
  %rinfo.i = alloca %struct.dfl_fpga_port_region_info, align 8
  %region.i = alloca %struct.dfl_afu_mmio_region, align 8
  %info.i = alloca %struct.dfl_fpga_port_info, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_ioctl.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_ioctl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !162

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_ioctl.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.15, i32 noundef %cmd) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %cmd, label %sw.default [
    i32 46592, label %do.end.cleanup_crit_edge
    i32 46593, label %do.end.cleanup_crit_edge104
    i32 46657, label %sw.bb7
    i32 46658, label %sw.bb9
    i32 46659, label %sw.bb11
    i32 46660, label %sw.bb13
  ]

do.end.cleanup_crit_edge104:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb7:                                           ; preds = %do.end
  %5 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info.i) #9
  %6 = getelementptr inbounds %struct.dfl_fpga_port_info, ptr %info.i, i32 0, i32 1
  %7 = getelementptr inbounds %struct.dfl_fpga_port_info, ptr %info.i, i32 0, i32 2
  %8 = getelementptr inbounds %struct.dfl_fpga_port_info, ptr %info.i, i32 0, i32 3
  %9 = call ptr @memset(ptr %info.i, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %sw.bb7.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

sw.bb7.if.then11.i.i.i_crit_edge:                 ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %sw.bb7
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 16, i32 -1226833920) #13
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !163

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %info.i, i32 noundef 16) #9
  %11 = call i32 @llvm.read_register.i32(metadata !145) #9
  %and.i.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !164
  %and.i.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %info.i, ptr noundef %5, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #9, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !163

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %sw.bb7.if.then11.i.i.i_crit_edge
  %res.0.i.i30.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 16, %sw.bb7.if.then11.i.i.i_crit_edge ], [ 16, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 16, %res.0.i.i30.i
  %add.ptr.i.i.i = getelementptr i8, ptr %info.i, i32 %sub.i.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i30.i)
  br label %afu_ioctl_get_info.exit

if.end.i:                                         ; preds = %if.end.i.i.i
  %15 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %info.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %16)
  %cmp.i = icmp ult i32 %16, 16
  br i1 %cmp.i, label %if.end.i.afu_ioctl_get_info.exit_crit_edge, label %if.end59.i.i21.i

if.end.i.afu_ioctl_get_info.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afu_ioctl_get_info.exit

if.end59.i.i21.i:                                 ; preds = %if.end.i
  %lock.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %private.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %3, i32 0, i32 9
  %17 = ptrtoint ptr %private.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private.i.i, align 4
  %19 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %6, align 4
  %num_regions.i = getelementptr inbounds %struct.dfl_afu, ptr %18, i32 0, i32 1
  %20 = ptrtoint ptr %num_regions.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_regions.i, align 8
  %22 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %7, align 4
  %num_umsgs.i = getelementptr inbounds %struct.dfl_afu, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %num_umsgs.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %num_umsgs.i, align 4
  %conv.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv.i, ptr %8, align 4
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #9
  %call.i.i22.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i22.i, label %if.end59.i.i21.i.afu_ioctl_get_info.exit_crit_edge, label %copy_to_user.exit.i

if.end59.i.i21.i.afu_ioctl_get_info.exit_crit_edge: ; preds = %if.end59.i.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afu_ioctl_get_info.exit

copy_to_user.exit.i:                              ; preds = %if.end59.i.i21.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i26.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i, i32 noundef 16) #9
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef nonnull %info.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool8.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool8.not.i, i32 0, i32 -14
  br label %afu_ioctl_get_info.exit

afu_ioctl_get_info.exit:                          ; preds = %copy_to_user.exit.i, %if.end59.i.i21.i.afu_ioctl_get_info.exit_crit_edge, %if.end.i.afu_ioctl_get_info.exit_crit_edge, %if.then11.i.i.i
  %retval.0.i54 = phi i32 [ -22, %if.end.i.afu_ioctl_get_info.exit_crit_edge ], [ -14, %if.then11.i.i.i ], [ -14, %if.end59.i.i21.i.afu_ioctl_get_info.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info.i) #9
  br label %cleanup

sw.bb9:                                           ; preds = %do.end
  %26 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %rinfo.i) #9
  %27 = getelementptr inbounds %struct.dfl_fpga_port_region_info, ptr %rinfo.i, i32 0, i32 1
  %28 = getelementptr inbounds %struct.dfl_fpga_port_region_info, ptr %rinfo.i, i32 0, i32 2
  %29 = getelementptr inbounds %struct.dfl_fpga_port_region_info, ptr %rinfo.i, i32 0, i32 3
  %30 = getelementptr inbounds %struct.dfl_fpga_port_region_info, ptr %rinfo.i, i32 0, i32 4
  %31 = getelementptr inbounds %struct.dfl_fpga_port_region_info, ptr %rinfo.i, i32 0, i32 5
  %32 = call ptr @memset(ptr %rinfo.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %region.i) #9
  %33 = call ptr @memset(ptr %region.i, i32 255, i32 40)
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #9
  %call.i.i.i55 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i55, label %sw.bb9.if.then11.i.i.i69_crit_edge, label %land.lhs.true.i.i.i58

sw.bb9.if.then11.i.i.i69_crit_edge:               ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i69

land.lhs.true.i.i.i58:                            ; preds = %sw.bb9
  %34 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %26, i32 32, i32 -1226833920) #13
  %asmresult.i.i.i56 = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i56)
  %cmp.i6.i.i57 = icmp eq i32 %asmresult.i.i.i56, 0
  br i1 %cmp.i6.i.i57, label %if.end.i.i.i66, label %land.lhs.true.i.i.i58.if.then11.i.i.i69_crit_edge, !prof !163

land.lhs.true.i.i.i58.if.then11.i.i.i69_crit_edge: ; preds = %land.lhs.true.i.i.i58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i69

if.end.i.i.i66:                                   ; preds = %land.lhs.true.i.i.i58
  %call.i.i.i.i59 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %rinfo.i, i32 noundef 32) #9
  %35 = call i32 @llvm.read_register.i32(metadata !145) #9
  %and.i.i.i.i.i.i.i60 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i.i60 to ptr
  %cpu_domain.i.i.i.i.i.i61 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i61) #6, !srcloc !164
  %and.i.i.i.i.i62 = and i32 %37, -13
  %or.i.i.i.i.i63 = or i32 %and.i.i.i.i.i62, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i63) #9, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %call1.i.i.i.i64 = call i32 @arm_copy_from_user(ptr noundef nonnull %rinfo.i, ptr noundef %26, i32 noundef 32) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #9, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i64)
  %tobool4.not.i.i.i65 = icmp eq i32 %call1.i.i.i.i64, 0
  br i1 %tobool4.not.i.i.i65, label %if.end.i71, label %if.end.i.i.i66.if.then11.i.i.i69_crit_edge, !prof !163

if.end.i.i.i66.if.then11.i.i.i69_crit_edge:       ; preds = %if.end.i.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i69

if.then11.i.i.i69:                                ; preds = %if.end.i.i.i66.if.then11.i.i.i69_crit_edge, %land.lhs.true.i.i.i58.if.then11.i.i.i69_crit_edge, %sw.bb9.if.then11.i.i.i69_crit_edge
  %res.0.i.i33.i = phi i32 [ %call1.i.i.i.i64, %if.end.i.i.i66.if.then11.i.i.i69_crit_edge ], [ 32, %sw.bb9.if.then11.i.i.i69_crit_edge ], [ 32, %land.lhs.true.i.i.i58.if.then11.i.i.i69_crit_edge ]
  %sub.i.i.i67 = sub i32 32, %res.0.i.i33.i
  %add.ptr.i.i.i68 = getelementptr i8, ptr %rinfo.i, i32 %sub.i.i.i67
  %38 = call ptr @memset(ptr %add.ptr.i.i.i68, i32 0, i32 %res.0.i.i33.i)
  br label %afu_ioctl_get_region_info.exit

if.end.i71:                                       ; preds = %if.end.i.i.i66
  %39 = ptrtoint ptr %rinfo.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rinfo.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %40)
  %cmp.i70 = icmp ult i32 %40, 32
  br i1 %cmp.i70, label %if.end.i71.afu_ioctl_get_region_info.exit_crit_edge, label %lor.lhs.false.i

if.end.i71.afu_ioctl_get_region_info.exit_crit_edge: ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %afu_ioctl_get_region_info.exit

lor.lhs.false.i:                                  ; preds = %if.end.i71
  %41 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool1.not.i = icmp eq i32 %42, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %lor.lhs.false.i.afu_ioctl_get_region_info.exit_crit_edge

lor.lhs.false.i.afu_ioctl_get_region_info.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afu_ioctl_get_region_info.exit

if.end3.i:                                        ; preds = %lor.lhs.false.i
  %43 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %28, align 8
  %call4.i = call i32 @afu_mmio_region_get_by_index(ptr noundef %3, i32 noundef %44, ptr noundef nonnull %region.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end59.i.i24.i, label %if.end3.i.afu_ioctl_get_region_info.exit_crit_edge

if.end3.i.afu_ioctl_get_region_info.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afu_ioctl_get_region_info.exit

if.end59.i.i24.i:                                 ; preds = %if.end3.i
  %flags.i = getelementptr inbounds %struct.dfl_afu_mmio_region, ptr %region.i, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags.i, align 4
  %47 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %27, align 4
  %size.i = getelementptr inbounds %struct.dfl_afu_mmio_region, ptr %region.i, i32 0, i32 2
  %48 = ptrtoint ptr %size.i to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %size.i, align 8
  %50 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %30, align 8
  %offset.i = getelementptr inbounds %struct.dfl_afu_mmio_region, ptr %region.i, i32 0, i32 3
  %51 = ptrtoint ptr %offset.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %offset.i, align 8
  %53 = ptrtoint ptr %31 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %31, align 8
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #9
  %call.i.i25.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i25.i, label %if.end59.i.i24.i.afu_ioctl_get_region_info.exit_crit_edge, label %copy_to_user.exit.i74

if.end59.i.i24.i.afu_ioctl_get_region_info.exit_crit_edge: ; preds = %if.end59.i.i24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %afu_ioctl_get_region_info.exit

copy_to_user.exit.i74:                            ; preds = %if.end59.i.i24.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i29.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %rinfo.i, i32 noundef 32) #9
  %call.i12.i.i.i72 = call i32 @arm_copy_to_user(ptr noundef %26, ptr noundef nonnull %rinfo.i, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i72)
  %tobool12.not.i = icmp eq i32 %call.i12.i.i.i72, 0
  %spec.select.i73 = select i1 %tobool12.not.i, i32 0, i32 -14
  br label %afu_ioctl_get_region_info.exit

afu_ioctl_get_region_info.exit:                   ; preds = %copy_to_user.exit.i74, %if.end59.i.i24.i.afu_ioctl_get_region_info.exit_crit_edge, %if.end3.i.afu_ioctl_get_region_info.exit_crit_edge, %lor.lhs.false.i.afu_ioctl_get_region_info.exit_crit_edge, %if.end.i71.afu_ioctl_get_region_info.exit_crit_edge, %if.then11.i.i.i69
  %retval.0.i75 = phi i32 [ -22, %lor.lhs.false.i.afu_ioctl_get_region_info.exit_crit_edge ], [ -22, %if.end.i71.afu_ioctl_get_region_info.exit_crit_edge ], [ %call4.i, %if.end3.i.afu_ioctl_get_region_info.exit_crit_edge ], [ -14, %if.then11.i.i.i69 ], [ -14, %if.end59.i.i24.i.afu_ioctl_get_region_info.exit_crit_edge ], [ %spec.select.i73, %copy_to_user.exit.i74 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %region.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %rinfo.i) #9
  br label %cleanup

sw.bb11:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %54 = inttoptr i32 %arg to ptr
  %call12 = tail call fastcc i32 @afu_ioctl_dma_map(ptr noundef %3, ptr noundef %54)
  br label %cleanup

sw.bb13:                                          ; preds = %do.end
  %55 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %unmap.i) #9
  %56 = getelementptr inbounds %struct.dfl_fpga_port_dma_unmap, ptr %unmap.i, i32 0, i32 1
  %57 = getelementptr inbounds %struct.dfl_fpga_port_dma_unmap, ptr %unmap.i, i32 0, i32 2
  %58 = call ptr @memset(ptr %unmap.i, i32 255, i32 16)
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #9
  %call.i.i.i76 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i76, label %sw.bb13.if.then11.i.i.i90_crit_edge, label %land.lhs.true.i.i.i79

sw.bb13.if.then11.i.i.i90_crit_edge:              ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i90

land.lhs.true.i.i.i79:                            ; preds = %sw.bb13
  %59 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %55, i32 16, i32 -1226833920) #13, !srcloc !167
  %asmresult.i.i.i77 = extractvalue { i32, i32 } %59, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i77)
  %cmp.i6.i.i78 = icmp eq i32 %asmresult.i.i.i77, 0
  br i1 %cmp.i6.i.i78, label %if.end.i.i.i87, label %land.lhs.true.i.i.i79.if.then11.i.i.i90_crit_edge, !prof !163

land.lhs.true.i.i.i79.if.then11.i.i.i90_crit_edge: ; preds = %land.lhs.true.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i90

if.end.i.i.i87:                                   ; preds = %land.lhs.true.i.i.i79
  %call.i.i.i.i80 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %unmap.i, i32 noundef 16) #9
  %60 = call i32 @llvm.read_register.i32(metadata !145) #9
  %and.i.i.i.i.i.i.i81 = and i32 %60, -16384
  %61 = inttoptr i32 %and.i.i.i.i.i.i.i81 to ptr
  %cpu_domain.i.i.i.i.i.i82 = getelementptr inbounds %struct.thread_info, ptr %61, i32 0, i32 4
  %62 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i82) #6, !srcloc !164
  %and.i.i.i.i.i83 = and i32 %62, -13
  %or.i.i.i.i.i84 = or i32 %and.i.i.i.i.i83, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i84) #9, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %call1.i.i.i.i85 = call i32 @arm_copy_from_user(ptr noundef nonnull %unmap.i, ptr noundef %55, i32 noundef 16) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %62) #9, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i85)
  %tobool4.not.i.i.i86 = icmp eq i32 %call1.i.i.i.i85, 0
  br i1 %tobool4.not.i.i.i86, label %if.end.i92, label %if.end.i.i.i87.if.then11.i.i.i90_crit_edge, !prof !163

if.end.i.i.i87.if.then11.i.i.i90_crit_edge:       ; preds = %if.end.i.i.i87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i90

if.then11.i.i.i90:                                ; preds = %if.end.i.i.i87.if.then11.i.i.i90_crit_edge, %land.lhs.true.i.i.i79.if.then11.i.i.i90_crit_edge, %sw.bb13.if.then11.i.i.i90_crit_edge
  %res.0.i.i9.i = phi i32 [ %call1.i.i.i.i85, %if.end.i.i.i87.if.then11.i.i.i90_crit_edge ], [ 16, %sw.bb13.if.then11.i.i.i90_crit_edge ], [ 16, %land.lhs.true.i.i.i79.if.then11.i.i.i90_crit_edge ]
  %sub.i.i.i88 = sub i32 16, %res.0.i.i9.i
  %add.ptr.i.i.i89 = getelementptr i8, ptr %unmap.i, i32 %sub.i.i.i88
  %63 = call ptr @memset(ptr %add.ptr.i.i.i89, i32 0, i32 %res.0.i.i9.i)
  br label %afu_ioctl_dma_unmap.exit

if.end.i92:                                       ; preds = %if.end.i.i.i87
  %64 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %unmap.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %65)
  %cmp.i91 = icmp ult i32 %65, 16
  br i1 %cmp.i91, label %if.end.i92.afu_ioctl_dma_unmap.exit_crit_edge, label %lor.lhs.false.i94

if.end.i92.afu_ioctl_dma_unmap.exit_crit_edge:    ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %afu_ioctl_dma_unmap.exit

lor.lhs.false.i94:                                ; preds = %if.end.i92
  %66 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool1.not.i93 = icmp eq i32 %67, 0
  br i1 %tobool1.not.i93, label %if.end3.i96, label %lor.lhs.false.i94.afu_ioctl_dma_unmap.exit_crit_edge

lor.lhs.false.i94.afu_ioctl_dma_unmap.exit_crit_edge: ; preds = %lor.lhs.false.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %afu_ioctl_dma_unmap.exit

if.end3.i96:                                      ; preds = %lor.lhs.false.i94
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %57 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %57, align 8
  %call4.i95 = call i32 @afu_dma_unmap_region(ptr noundef %3, i64 noundef %69) #9
  br label %afu_ioctl_dma_unmap.exit

afu_ioctl_dma_unmap.exit:                         ; preds = %if.end3.i96, %lor.lhs.false.i94.afu_ioctl_dma_unmap.exit_crit_edge, %if.end.i92.afu_ioctl_dma_unmap.exit_crit_edge, %if.then11.i.i.i90
  %retval.0.i97 = phi i32 [ %call4.i95, %if.end3.i96 ], [ -22, %lor.lhs.false.i94.afu_ioctl_dma_unmap.exit_crit_edge ], [ -22, %if.end.i92.afu_ioctl_dma_unmap.exit_crit_edge ], [ -14, %if.then11.i.i.i90 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %unmap.i) #9
  br label %cleanup

sw.default:                                       ; preds = %do.end
  %features = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %3, i32 0, i32 11
  %num = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %3, i32 0, i32 10
  %70 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num, align 4
  %add.ptr99 = getelementptr %struct.dfl_feature, ptr %features, i32 %71
  %cmp100 = icmp ult ptr %features, %add.ptr99
  br i1 %cmp100, label %sw.default.for.body_crit_edge, label %sw.default.cleanup_crit_edge

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.default.for.body_crit_edge:                    ; preds = %sw.default
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.default.for.body_crit_edge
  %f.0101 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %features, %sw.default.for.body_crit_edge ]
  %ops = getelementptr inbounds %struct.dfl_feature, ptr %f.0101, i32 0, i32 7
  %72 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ops, align 4
  %tobool17.not = icmp eq ptr %73, null
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %ioctl = getelementptr inbounds %struct.dfl_feature_ops, ptr %73, i32 0, i32 2
  %74 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ioctl, align 4
  %tobool19.not = icmp eq ptr %75, null
  br i1 %tobool19.not, label %land.lhs.true.for.inc_crit_edge, label %if.then20

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then20:                                        ; preds = %land.lhs.true
  %call23 = tail call i32 %75(ptr noundef %1, ptr noundef %f.0101, i32 noundef %cmd, i32 noundef %arg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, -19
  br i1 %cmp24.not, label %if.then20.for.inc_crit_edge, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20.for.inc_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.then20.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.dfl_feature, ptr %f.0101, i32 1
  %76 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num, align 4
  %add.ptr = getelementptr %struct.dfl_feature, ptr %features, i32 %77
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %afu_ioctl_dma_unmap.exit, %sw.bb11, %afu_ioctl_get_region_info.exit, %afu_ioctl_get_info.exit, %do.end.cleanup_crit_edge, %do.end.cleanup_crit_edge104
  %retval.0 = phi i32 [ %retval.0.i97, %afu_ioctl_dma_unmap.exit ], [ %call12, %sw.bb11 ], [ %retval.0.i75, %afu_ioctl_get_region_info.exit ], [ %retval.0.i54, %afu_ioctl_get_info.exit ], [ 0, %do.end.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge104 ], [ -22, %sw.default.cleanup_crit_edge ], [ %call23, %if.then20.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afu_mmap(ptr nocapture noundef readonly %filp, ptr noundef %vma) #0 align 64 {
entry:
  %region = alloca %struct.dfl_afu_mmio_region, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %2 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_end, align 4
  %4 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %vma, align 4
  %sub = sub i32 %3, %5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %region) #9
  %6 = call ptr @memset(ptr %region, i32 255, i32 40)
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %7 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_flags, align 4
  %and = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i32 %sub to i64
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_data.i, align 8
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %11 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %vm_pgoff, align 4
  %shl = shl i32 %12, 12
  %conv1 = zext i32 %shl to i64
  %call2 = call i32 @afu_mmio_region_get_by_offset(ptr noundef %10, i64 noundef %conv1, i64 noundef %conv, ptr noundef nonnull %region) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.dfl_afu_mmio_region, ptr %region, i32 0, i32 1
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and6 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %15 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vm_flags, align 4
  %and11 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp ne i32 %and11, 0
  %and14 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  %or.cond = select i1 %tobool12.not, i1 %tobool15.not, i1 false
  br i1 %or.cond, label %if.end9.cleanup_crit_edge, label %if.end17

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %and19 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp ne i32 %and19, 0
  %and23 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  %or.cond55 = select i1 %tobool20.not, i1 %tobool24.not, i1 false
  br i1 %or.cond55, label %if.end17.cleanup_crit_edge, label %if.end26

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 12
  %17 = ptrtoint ptr %vm_ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @afu_vma_ops, ptr %vm_ops, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %18 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %vm_page_prot, align 4
  %and27 = and i32 %19, -61
  store i32 %and27, ptr %vm_page_prot, align 4
  %20 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %vma, align 4
  %phys = getelementptr inbounds %struct.dfl_afu_mmio_region, ptr %region, i32 0, i32 4
  %22 = ptrtoint ptr %phys to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %phys, align 8
  %offset30 = getelementptr inbounds %struct.dfl_afu_mmio_region, ptr %region, i32 0, i32 3
  %24 = ptrtoint ptr %offset30 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %offset30, align 8
  %sub31 = add i64 %23, %conv1
  %add = sub i64 %sub31, %25
  %shr = lshr i64 %add, 12
  %conv32 = trunc i64 %shr to i32
  %call35 = call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %21, i32 noundef %conv32, i32 noundef %sub, i32 noundef %and27) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end17.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call35, %if.end26 ], [ -22, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -1, %if.end9.cleanup_crit_edge ], [ -1, %if.end17.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %region) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afu_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %dev.i = getelementptr i8, ptr %2, i32 160
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 7
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !155

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 603, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.end24:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %excl_open.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %excl_open.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %excl_open.i, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end24.if.end45_crit_edge

if.end24.if.end45_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end.i:                                         ; preds = %if.end24
  %f_flags = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 7
  %9 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %f_flags, align 4
  %and = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end.i.do.body29_crit_edge, label %if.then2.i

if.end.i.do.body29_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

if.then2.i:                                       ; preds = %if.end.i
  %open_count.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %6, i32 0, i32 8
  %11 = ptrtoint ptr %open_count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %open_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not.i = icmp eq i32 %12, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.then2.i.if.end45_crit_edge

if.then2.i.if.end45_crit_edge:                    ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end5.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %excl_open.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %excl_open.i, align 4
  br label %do.body29

do.body29:                                        ; preds = %if.end5.i, %if.end.i.do.body29_crit_edge
  %open_count8.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %6, i32 0, i32 8
  %14 = ptrtoint ptr %open_count8.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %open_count8.i, align 4
  %inc.i = add i32 %15, 1
  store i32 %inc.i, ptr %open_count8.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_open.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_open, %if.then39)) #9
          to label %do.end44 [label %if.then39], !srcloc !162

if.then39:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %open_count8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %open_count8.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_open.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %17) #9
  br label %do.end44

do.end44:                                         ; preds = %if.then39, %do.body29
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %18 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %4, ptr %private_data, align 4
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %if.then2.i.if.end45_crit_edge, %if.end24.if.end45_crit_edge
  %retval.0.i5862 = phi i32 [ 0, %do.end44 ], [ -16, %if.end24.if.end45_crit_edge ], [ -16, %if.then2.i.if.end45_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %retval.0.i5862, %if.end45 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afu_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_release.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_release, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !162

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_release.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.25) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %excl_open.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %excl_open.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %excl_open.i, align 4
  %open_count.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %3, i32 0, i32 8
  %5 = ptrtoint ptr %open_count.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %open_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp.i = icmp slt i32 %6, 1
  br i1 %cmp.i, label %do.end.i, label %if.end21.critedge.i, !prof !155

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 312, i32 noundef 9, ptr noundef null) #9
  %7 = ptrtoint ptr %open_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %open_count.i, align 4
  br label %dfl_feature_dev_use_end.exit

if.end21.critedge.i:                              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add nsw i32 %6, -1
  %8 = ptrtoint ptr %open_count.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dec.i, ptr %open_count.i, align 4
  br label %dfl_feature_dev_use_end.exit

dfl_feature_dev_use_end.exit:                     ; preds = %if.end21.critedge.i, %do.end.i
  %9 = phi i32 [ %.pr, %do.end.i ], [ %dec.i, %if.end21.critedge.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not = icmp eq i32 %9, 0
  br i1 %tobool6.not, label %if.then7, label %dfl_feature_dev_use_end.exit.if.end12_crit_edge

dfl_feature_dev_use_end.exit.if.end12_crit_edge:  ; preds = %dfl_feature_dev_use_end.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then7:                                         ; preds = %dfl_feature_dev_use_end.exit
  %features = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %3, i32 0, i32 11
  %num = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num, align 4
  %add.ptr29 = getelementptr %struct.dfl_feature, ptr %features, i32 %11
  %cmp30 = icmp ult ptr %features, %add.ptr29
  br i1 %cmp30, label %if.then7.for.body_crit_edge, label %if.then7.for.end_crit_edge

if.then7.for.end_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then7.for.body_crit_edge:                      ; preds = %if.then7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then7.for.body_crit_edge
  %feature.031 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %features, %if.then7.for.body_crit_edge ]
  %nr_irqs = getelementptr inbounds %struct.dfl_feature, ptr %feature.031, i32 0, i32 6
  %12 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_irqs, align 4
  %call10 = tail call i32 @dfl_fpga_set_irq_triggers(ptr noundef %feature.031, i32 noundef 0, i32 noundef %13, ptr noundef null) #9
  %incdec.ptr = getelementptr %struct.dfl_feature, ptr %feature.031, i32 1
  %14 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num, align 4
  %add.ptr = getelementptr %struct.dfl_feature, ptr %features, i32 %15
  %cmp = icmp ult ptr %incdec.ptr, %add.ptr
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then7.for.end_crit_edge
  %call.i = tail call i32 @__afu_port_disable(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.__port_reset.exit_crit_edge

for.end.__port_reset.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__port_reset.exit

if.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call1.i = tail call i32 @__afu_port_enable(ptr noundef %1) #9
  br label %__port_reset.exit

__port_reset.exit:                                ; preds = %if.end.i, %for.end.__port_reset.exit_crit_edge
  tail call void @afu_dma_region_destroy(ptr noundef %3) #9
  br label %if.end12

if.end12:                                         ; preds = %__port_reset.exit, %dfl_feature_dev_use_end.exit.if.end12_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @afu_ioctl_dma_map(ptr noundef %pdata, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %map = alloca %struct.dfl_fpga_port_dma_map, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %map) #9
  %0 = getelementptr inbounds %struct.dfl_fpga_port_dma_map, ptr %map, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dfl_fpga_port_dma_map, ptr %map, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dfl_fpga_port_dma_map, ptr %map, i32 0, i32 3
  %3 = getelementptr inbounds %struct.dfl_fpga_port_dma_map, ptr %map, i32 0, i32 4
  %4 = call ptr @memset(ptr %map, i32 255, i32 32)
  tail call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %5 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 32, i32 -1226833920) #13
  %asmresult.i.i = extractvalue { i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !163

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %map, i32 noundef 32) #9
  %6 = call i32 @llvm.read_register.i32(metadata !145) #9
  %and.i.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !164
  %and.i.i.i.i = and i32 %8, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %map, ptr noundef %arg, i32 noundef 32) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #9, !srcloc !165
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !163

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i43 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 32, %entry.if.then11.i.i_crit_edge ], [ 32, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 32, %res.0.i.i43
  %add.ptr.i.i = getelementptr i8, ptr %map, i32 %sub.i.i
  %9 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i43)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %map, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %cmp = icmp ult i32 %11, 32
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool1.not = icmp eq i32 %13, 0
  br i1 %tobool1.not, label %if.end3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %1, align 8
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %2, align 8
  %call4 = call i32 @afu_dma_map_region(ptr noundef %pdata, i64 noundef %15, i64 noundef %17, ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end59.i.i34, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59.i.i34:                                   ; preds = %if.end3
  call void @__might_fault(ptr noundef nonnull @.str.19, i32 noundef 174) #9
  %call.i.i35 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i35, label %if.end59.i.i34.if.then10_crit_edge, label %copy_to_user.exit

if.end59.i.i34.if.then10_crit_edge:               ; preds = %if.end59.i.i34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

copy_to_user.exit:                                ; preds = %if.end59.i.i34
  %call.i.i.i39 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %map, i32 noundef 32) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %map, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool9.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool9.not, label %do.body, label %copy_to_user.exit.if.then10_crit_edge

copy_to_user.exit.if.then10_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %copy_to_user.exit.if.then10_crit_edge, %if.end59.i.i34.if.then10_crit_edge
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %3, align 8
  %call12 = call i32 @afu_dma_unmap_region(ptr noundef %pdata, i64 noundef %19) #9
  br label %cleanup

do.body:                                          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @afu_ioctl_dma_map.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@afu_ioctl_dma_map, %if.then18)) #9
          to label %cleanup [label %if.then18], !srcloc !162

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %pdata, i32 0, i32 3
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %dev19 = getelementptr inbounds %struct.platform_device, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %1, align 8
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %2, align 8
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %3, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @afu_ioctl_dma_map.__UNIQUE_ID_ddebug291, ptr noundef %dev19, ptr noundef nonnull @.str.21, i64 noundef %23, i64 noundef %25, i64 noundef %27) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %do.body, %if.then10, %if.end3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -14, %if.then10 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call4, %if.end3.cleanup_crit_edge ], [ 0, %if.then18 ], [ 0, %do.body ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %map) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afu_mmio_region_get_by_index(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afu_dma_map_region(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afu_dma_unmap_region(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @afu_mmio_region_get_by_offset(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dfl_fpga_set_irq_triggers(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afu_dma_region_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @afu_mmio_region_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dfl_fpga_dev_ops_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @port_hdr_attrs_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mode1 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %mode1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mode1, align 4
  %platform_data.i.i.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i.i.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %3, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %5
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %7)
  %cmp5.i.i = icmp eq i16 %7, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %9, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %retval.0.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr.i.i23 = getelementptr i32, ptr %retval.0.i, i32 1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i23) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %12 = and i32 %10, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.not = icmp eq i32 %12, 0
  br i1 %cmp.not, label %dfl_get_feature_ioaddr_by_id.exit.if.end16_crit_edge, label %if.then

dfl_get_feature_ioaddr_by_id.exit.if.end16_crit_edge: ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then:                                          ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  %cmp5 = icmp eq ptr %attr, @dev_attr_userclk_freqcmd
  %cmp7 = icmp eq ptr %attr, @dev_attr_userclk_freqcntrcmd
  %or.cond = or i1 %cmp5, %cmp7
  %cmp10 = icmp eq ptr %attr, @dev_attr_userclk_freqsts
  %or.cond21 = or i1 %cmp10, %or.cond
  %cmp13 = icmp eq ptr %attr, @dev_attr_userclk_freqcntrsts
  %or.cond22 = or i1 %cmp13, %or.cond21
  %spec.select = select i1 %or.cond22, i16 0, i16 %1
  br label %if.end16

if.end16:                                         ; preds = %if.then, %dfl_get_feature_ioaddr_by_id.exit.if.end16_crit_edge
  %mode.0 = phi i16 [ %1, %dfl_get_feature_ioaddr_by_id.exit.if.end16_crit_edge ], [ %spec.select, %if.then ]
  ret i16 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userclk_freqcmd_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %userclk_freq_cmd = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %userclk_freq_cmd) #9
  %2 = ptrtoint ptr %userclk_freq_cmd to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %userclk_freq_cmd, align 8, !annotation !169
  %call.i = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %userclk_freq_cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %4, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %6
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %if.end.for.body.i.i_crit_edge, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %if.end.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %8)
  %cmp5.i.i = icmp eq i16 %8, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %10, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %11 = ptrtoint ptr %userclk_freq_cmd to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %userclk_freq_cmd, align 8
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 80
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  call void @arm_heavy_mb() #9
  %conv.i = trunc i64 %12 to i32
  %13 = call i32 @llvm.bswap.i32(i32 %conv.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #9, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %12, 32
  %conv3.i = trunc i64 %shr.i to i32
  %14 = call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #9, !srcloc !160
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %dfl_get_feature_ioaddr_by_id.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %dfl_get_feature_ioaddr_by_id.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %userclk_freq_cmd) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userclk_freqcntrcmd_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %userclk_freqcntr_cmd = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %userclk_freqcntr_cmd) #9
  %2 = ptrtoint ptr %userclk_freqcntr_cmd to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %userclk_freqcntr_cmd, align 8, !annotation !169
  %call.i = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %userclk_freqcntr_cmd) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %4, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %6
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %if.end.for.body.i.i_crit_edge, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %if.end.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %8)
  %cmp5.i.i = icmp eq i16 %8, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %10, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %11 = ptrtoint ptr %userclk_freqcntr_cmd to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %userclk_freqcntr_cmd, align 8
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 88
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  call void @arm_heavy_mb() #9
  %conv.i = trunc i64 %12 to i32
  %13 = call i32 @llvm.bswap.i32(i32 %conv.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #9, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %12, 32
  %conv3.i = trunc i64 %shr.i to i32
  %14 = call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 92
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %14) #9, !srcloc !160
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %dfl_get_feature_ioaddr_by_id.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %dfl_get_feature_ioaddr_by_id.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %userclk_freqcntr_cmd) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userclk_freqsts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 96
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 100
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.30, i64 noundef %14)
  ret i32 %call4
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userclk_freqcntrsts_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 104
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 108
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %10 = zext i32 %9 to i64
  %11 = zext i32 %8 to i64
  %12 = shl nuw i64 %11, 32
  %13 = or i64 %12, %10
  %14 = tail call i64 @llvm.bswap.i64(i64 %13) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.30, i64 noundef %14)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i.i.i.i = getelementptr i8, ptr %dev, i32 160
  %0 = ptrtoint ptr %platform_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i.i.i, align 8
  %features.i.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i.i, i32 %3
  %cmp13.i.i.i = icmp ult ptr %features.i.i.i, %add.ptr.i.i.i
  br i1 %cmp13.i.i.i, label %entry.for.body.i.i.i_crit_edge, label %entry.do.end.i.i_crit_edge

entry.do.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

entry.for.body.i.i.i_crit_edge:                   ; preds = %entry
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %entry.for.body.i.i.i_crit_edge
  %feature.014.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %features.i.i.i, %entry.for.body.i.i.i_crit_edge ]
  %id3.i.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %5)
  %cmp5.i.i.i = icmp eq i16 %5, 254
  br i1 %cmp5.i.i.i, label %dfl_get_feature_by_id.exit.i.i, label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %incdec.ptr.i.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i.i, i32 1
  %cmp.i.i.i = icmp ult ptr %incdec.ptr.i.i.i, %add.ptr.i.i.i
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.do.end.i.i_crit_edge

for.inc.i.i.i.do.end.i.i_crit_edge:               ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

dfl_get_feature_by_id.exit.i.i:                   ; preds = %for.body.i.i.i
  %tobool.not.i.i = icmp eq ptr %feature.014.i.i.i, null
  br i1 %tobool.not.i.i, label %dfl_get_feature_by_id.exit.i.i.do.end.i.i_crit_edge, label %land.lhs.true.i.i

dfl_get_feature_by_id.exit.i.i.do.end.i.i_crit_edge: ; preds = %dfl_get_feature_by_id.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

land.lhs.true.i.i:                                ; preds = %dfl_get_feature_by_id.exit.i.i
  %ioaddr.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.do.end.i.i_crit_edge, label %land.lhs.true.i.i.port_get_id.exit_crit_edge

land.lhs.true.i.i.port_get_id.exit_crit_edge:     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %port_get_id.exit

land.lhs.true.i.i.do.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %land.lhs.true.i.i.do.end.i.i_crit_edge, %dfl_get_feature_by_id.exit.i.i.do.end.i.i_crit_edge, %for.inc.i.i.i.do.end.i.i_crit_edge, %entry.do.end.i.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %port_get_id.exit

port_get_id.exit:                                 ; preds = %do.end.i.i, %land.lhs.true.i.i.port_get_id.exit_crit_edge
  %retval.0.i.i = phi ptr [ null, %do.end.i.i ], [ %7, %land.lhs.true.i.i.port_get_id.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %retval.0.i.i, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr.i.i = getelementptr i8, ptr %retval.0.i.i, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %10 = lshr i32 %8, 24
  %conv.i = and i32 %10, 3
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.33, i32 noundef %conv.i) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_get_id(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 48
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 52
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %10 = lshr i32 %8, 24
  %conv = and i32 %10, 3
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 56
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 60
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %10 = lshr i32 %8, 26
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %conv = and i32 %10, 1
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %conv)
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltr_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %ltr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ltr) #9
  %2 = ptrtoint ptr %ltr to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %ltr, align 1, !annotation !169
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %ltr) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %4, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %4, i32 0, i32 10
  %5 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %6
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %if.end.for.body.i.i_crit_edge, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %if.end.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %8)
  %cmp5.i.i = icmp eq i16 %8, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %10, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %10, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 56
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 60
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %13 = zext i32 %12 to i64
  %14 = zext i32 %11 to i64
  %15 = shl nuw i64 %14, 32
  %.masked = and i64 %15, -288230380446679040
  %16 = or i64 %.masked, %13
  %17 = call i64 @llvm.bswap.i64(i64 %16)
  %18 = ptrtoint ptr %ltr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ltr, align 1, !range !168
  %20 = shl nuw nsw i8 %19, 2
  %shl = zext i8 %20 to i64
  %or = or i64 %17, %shl
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  call void @arm_heavy_mb() #9
  %conv.i = trunc i64 %or to i32
  %21 = call i32 @llvm.bswap.i32(i32 %conv.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #9, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  call void @arm_heavy_mb() #9
  %shr.i = lshr i64 %17, 32
  %conv3.i = trunc i64 %shr.i to i32
  %22 = call i32 @llvm.bswap.i32(i32 %conv3.i) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %22) #9, !srcloc !160
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %dfl_get_feature_ioaddr_by_id.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %dfl_get_feature_ioaddr_by_id.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ltr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ap1_event_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 68
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %10 = lshr i32 %8, 20
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %conv = and i32 %10, 1
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %conv)
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ap1_event_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %clear = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %clear) #9
  %2 = ptrtoint ptr %clear to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %clear, align 1, !annotation !169
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %clear) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %clear to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %clear, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %6, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %8
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %if.end.for.body.i.i_crit_edge, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %if.end.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %10)
  %cmp5.i.i = icmp eq i16 %10, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %12, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1048576) #9, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  call void @arm_heavy_mb() #9
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !160
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %dfl_get_feature_ioaddr_by_id.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %dfl_get_feature_ioaddr_by_id.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %clear) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ap2_event_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 68
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %10 = lshr i32 %8, 21
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %conv = and i32 %10, 1
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %conv)
  ret i32 %call17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ap2_event_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #0 align 64 {
entry:
  %clear = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %clear) #9
  %2 = ptrtoint ptr %clear to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %clear, align 1, !annotation !169
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %clear) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %clear to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %clear, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %5 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %6, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %8
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %if.end.for.body.i.i_crit_edge, label %if.end.do.end.i_crit_edge

if.end.do.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %if.end.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %10)
  %cmp5.i.i = icmp eq i16 %10, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %if.end.do.end.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %12, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !159
  call void @arm_heavy_mb() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 2097152) #9, !srcloc !160
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  call void @arm_heavy_mb() #9
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #9, !srcloc !160
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %dfl_get_feature_ioaddr_by_id.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %dfl_get_feature_ioaddr_by_id.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %clear) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @power_state_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 254, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 254
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 64
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 68
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %10 = lshr i32 %8, 16
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %conv = and i32 %10, 15
  %call17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %conv)
  ret i32 %call17
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @port_afu_attrs_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %n) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i.i, align 8
  %features.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i, align 4
  %add.ptr.i = getelementptr %struct.dfl_feature, ptr %features.i, i32 %3
  %cmp13.i = icmp ult ptr %features.i, %add.ptr.i
  br i1 %cmp13.i, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %feature.014.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %features.i, %entry.for.body.i_crit_edge ]
  %id3.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %5)
  %cmp5.i = icmp eq i16 %5, 255
  br i1 %cmp5.i, label %dfl_get_feature_by_id.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.dfl_feature, ptr %feature.014.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cleanup_crit_edge

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

dfl_get_feature_by_id.exit:                       ; preds = %for.body.i
  %tobool.not = icmp eq ptr %feature.014.i, null
  br i1 %tobool.not, label %dfl_get_feature_by_id.exit.cleanup_crit_edge, label %if.end

dfl_get_feature_by_id.exit.cleanup_crit_edge:     ; preds = %dfl_get_feature_by_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dfl_get_feature_by_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %dfl_get_feature_by_id.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %7, %if.end ], [ 0, %dfl_get_feature_by_id.exit.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.i.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @afu_id_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %features.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 11
  %num.i.i = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.dfl_feature, ptr %features.i.i, i32 %3
  %cmp13.i.i = icmp ult ptr %features.i.i, %add.ptr.i.i
  br i1 %cmp13.i.i, label %entry.for.body.i.i_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

entry.for.body.i.i_crit_edge:                     ; preds = %entry
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %entry.for.body.i.i_crit_edge
  %feature.014.i.i = phi ptr [ %incdec.ptr.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %features.i.i, %entry.for.body.i.i_crit_edge ]
  %id3.i.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %id3.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %5)
  %cmp5.i.i = icmp eq i16 %5, 255
  br i1 %cmp5.i.i, label %dfl_get_feature_by_id.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.dfl_feature, ptr %feature.014.i.i, i32 1
  %cmp.i.i = icmp ult ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.do.end.i_crit_edge

for.inc.i.i.do.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

dfl_get_feature_by_id.exit.i:                     ; preds = %for.body.i.i
  %tobool.not.i = icmp eq ptr %feature.014.i.i, null
  br i1 %tobool.not.i, label %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, label %land.lhs.true.i

dfl_get_feature_by_id.exit.i.do.end.i_crit_edge:  ; preds = %dfl_get_feature_by_id.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %dfl_get_feature_by_id.exit.i
  %ioaddr.i = getelementptr inbounds %struct.dfl_feature, ptr %feature.014.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ioaddr.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge

land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dfl_get_feature_ioaddr_by_id.exit

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %dfl_get_feature_by_id.exit.i.do.end.i_crit_edge, %for.inc.i.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 392, i32 noundef 9, ptr noundef null) #9
  br label %dfl_get_feature_ioaddr_by_id.exit

dfl_get_feature_ioaddr_by_id.exit:                ; preds = %do.end.i, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %7, %land.lhs.true.i.dfl_get_feature_ioaddr_by_id.exit_crit_edge ]
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %disable_count = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %disable_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %disable_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

if.end:                                           ; preds = %dfl_get_feature_ioaddr_by_id.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %retval.0.i, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %12 = zext i32 %11 to i64
  %13 = zext i32 %10 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or i64 %14, %12
  %16 = tail call i64 @llvm.bswap.i64(i64 %15) #9
  %add.ptr4 = getelementptr i8, ptr %retval.0.i, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !157
  %add.ptr.i16 = getelementptr i8, ptr %retval.0.i, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i16) #9, !srcloc !156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  %19 = zext i32 %18 to i64
  %20 = zext i32 %17 to i64
  %21 = shl nuw i64 %20, 32
  %22 = or i64 %21, %19
  %23 = tail call i64 @llvm.bswap.i64(i64 %22) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %call7 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.41, i64 noundef %23, i64 noundef %16) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ -16, %if.then ], [ %call7, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @port_enable_set(ptr noundef %pdev, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %lock = getelementptr inbounds %struct.dfl_feature_platform_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @__afu_port_enable(ptr noundef %pdev)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @__afu_port_disable(ptr noundef %pdev)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dfl_fpga_port_ops_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !11, !12, !13, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !35, !36, !37, !38, !40, !42, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !63, !65, !67, !68, !69, !71, !72, !74, !76, !78, !79, !80, !82, !84, !85, !86, !88, !89, !90, !92, !93, !95, !97, !99, !100, !102, !103, !105, !106, !108, !110, !111, !113, !115, !116, !118, !120, !121, !123, !125, !126, !128, !129, !131, !132, !134, !136, !138, !140, !141, !143}
!llvm.named.register.sp = !{!145}
!llvm.module.flags = !{!146, !147, !148, !149, !150, !151, !152, !153}
!llvm.ident = !{!154}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/fpga/dfl-afu-main.c", i32 44, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/fpga/dfl-afu-main.c", i32 63, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @__afu_port_enable._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @__afu_port_enable._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/fpga/dfl-afu-main.c", i32 102, i32 3}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @__afu_port_disable._entry, !10, !"_entry", i1 false, i1 false}
!13 = !{ptr @__afu_port_disable._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_dfl_afu__295_982_afu_init6, !15, !"__initcall__kmod_dfl_afu__295_982_afu_init6", i1 false, i1 false}
!15 = !{!"../drivers/fpga/dfl-afu-main.c", i32 982, i32 1}
!16 = !{ptr @__exitcall_afu_exit, !17, !"__exitcall_afu_exit", i1 false, i1 false}
!17 = !{!"../drivers/fpga/dfl-afu-main.c", i32 983, i32 1}
!18 = !{ptr @__UNIQUE_ID_description296, !19, !"__UNIQUE_ID_description296", i1 false, i1 false}
!19 = !{!"../drivers/fpga/dfl-afu-main.c", i32 985, i32 1}
!20 = !{ptr @__UNIQUE_ID_author297, !21, !"__UNIQUE_ID_author297", i1 false, i1 false}
!21 = !{!"../drivers/fpga/dfl-afu-main.c", i32 986, i32 1}
!22 = !{ptr @__UNIQUE_ID_file298, !23, !"__UNIQUE_ID_file298", i1 false, i1 false}
!23 = !{!"../drivers/fpga/dfl-afu-main.c", i32 987, i32 1}
!24 = !{ptr @__UNIQUE_ID_license299, !23, !"__UNIQUE_ID_license299", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_alias300, !26, !"__UNIQUE_ID_alias300", i1 false, i1 false}
!26 = !{!"../drivers/fpga/dfl-afu-main.c", i32 988, i32 1}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/fpga/dfl.h", i32 392, i32 2}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/fpga/dfl-afu-main.c", i32 955, i32 15}
!31 = !{ptr @afu_driver, !32, !"afu_driver", i1 false, i1 false}
!32 = !{!"../drivers/fpga/dfl-afu-main.c", i32 953, i32 31}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/fpga/dfl-afu-main.c", i32 911, i32 2}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @afu_probe.__UNIQUE_ID_ddebug293, !34, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!38 = !{ptr @port_feature_drvs, !39, !"port_feature_drvs", i1 false, i1 false}
!39 = !{!"../drivers/fpga/dfl-afu-main.c", i32 570, i32 34}
!40 = !{ptr @port_hdr_id_table, !41, !"port_hdr_id_table", i1 false, i1 false}
!41 = !{!"../drivers/fpga/dfl-afu-main.c", i32 446, i32 36}
!42 = !{ptr @port_hdr_ops, !43, !"port_hdr_ops", i1 false, i1 false}
!43 = !{!"../drivers/fpga/dfl-afu-main.c", i32 451, i32 37}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/fpga/dfl-afu-main.c", i32 439, i32 3}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @port_hdr_ioctl.__UNIQUE_ID_ddebug287, !45, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!48 = !{ptr @port_afu_id_table, !49, !"port_afu_id_table", i1 false, i1 false}
!49 = !{!"../drivers/fpga/dfl-afu-main.c", i32 516, i32 36}
!50 = !{ptr @port_afu_ops, !51, !"port_afu_ops", i1 false, i1 false}
!51 = !{!"../drivers/fpga/dfl-afu-main.c", i32 521, i32 37}
!52 = !{ptr @port_stp_id_table, !53, !"port_stp_id_table", i1 false, i1 false}
!53 = !{!"../drivers/fpga/dfl-afu-main.c", i32 537, i32 36}
!54 = !{ptr @port_stp_ops, !55, !"port_stp_ops", i1 false, i1 false}
!55 = !{!"../drivers/fpga/dfl-afu-main.c", i32 542, i32 37}
!56 = !{ptr @port_uint_id_table, !57, !"port_uint_id_table", i1 false, i1 false}
!57 = !{!"../drivers/fpga/dfl-afu-main.c", i32 561, i32 36}
!58 = !{ptr @port_uint_ops, !59, !"port_uint_ops", i1 false, i1 false}
!59 = !{!"../drivers/fpga/dfl-afu-main.c", i32 566, i32 37}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/fpga/dfl-afu-main.c", i32 556, i32 3}
!62 = !{ptr @port_uint_ioctl.__UNIQUE_ID_ddebug288, !61, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!63 = !{ptr @afu_fops, !64, !"afu_fops", i1 false, i1 false}
!64 = !{!"../drivers/fpga/dfl-afu-main.c", i32 844, i32 37}
!65 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/fpga/dfl-afu-main.c", i32 764, i32 2}
!67 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @afu_ioctl.__UNIQUE_ID_ddebug292, !66, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!71 = distinct !{null, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!74 = !{ptr @.str.19, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!76 = !{ptr @.str.20, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/fpga/dfl-afu-main.c", i32 732, i32 2}
!78 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @afu_ioctl_dma_map.__UNIQUE_ID_ddebug291, !77, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!80 = !{ptr @afu_vma_ops, !81, !"afu_vma_ops", i1 false, i1 false}
!81 = !{!"../drivers/fpga/dfl-afu-main.c", i32 799, i32 42}
!82 = !{ptr @.str.22, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/fpga/dfl-afu-main.c", i32 609, i32 3}
!84 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @afu_open.__UNIQUE_ID_ddebug289, !83, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/fpga/dfl-afu-main.c", i32 624, i32 2}
!88 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @afu_release.__UNIQUE_ID_ddebug290, !87, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/fpga/dfl-afu-main.c", i32 937, i32 2}
!92 = !{ptr @afu_remove.__UNIQUE_ID_ddebug294, !91, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!93 = !{ptr @afu_dev_groups, !94, !"afu_dev_groups", i1 false, i1 false}
!94 = !{!"../drivers/fpga/dfl-afu-main.c", i32 946, i32 38}
!95 = !{ptr @port_hdr_group, !96, !"port_hdr_group", i1 false, i1 false}
!96 = !{!"../drivers/fpga/dfl-afu-main.c", i32 412, i32 37}
!97 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/fpga/dfl-afu-main.c", i32 314, i32 8}
!99 = !{ptr @dev_attr_userclk_freqcmd, !98, !"dev_attr_userclk_freqcmd", i1 false, i1 false}
!100 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/fpga/dfl-afu-main.c", i32 335, i32 8}
!102 = !{ptr @dev_attr_userclk_freqcntrcmd, !101, !"dev_attr_userclk_freqcntrcmd", i1 false, i1 false}
!103 = !{ptr @.str.29, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/fpga/dfl-afu-main.c", i32 353, i32 8}
!105 = !{ptr @dev_attr_userclk_freqsts, !104, !"dev_attr_userclk_freqsts", i1 false, i1 false}
!106 = !{ptr @.str.30, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/fpga/dfl-afu-main.c", i32 351, i32 22}
!108 = !{ptr @.str.31, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/fpga/dfl-afu-main.c", i32 372, i32 8}
!110 = !{ptr @dev_attr_userclk_freqcntrsts, !109, !"dev_attr_userclk_freqcntrsts", i1 false, i1 false}
!111 = !{ptr @port_hdr_attrs, !112, !"port_hdr_attrs", i1 false, i1 false}
!112 = !{!"../drivers/fpga/dfl-afu-main.c", i32 374, i32 26}
!113 = !{ptr @.str.32, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/fpga/dfl-afu-main.c", i32 160, i32 8}
!115 = !{ptr @dev_attr_id, !114, !"dev_attr_id", i1 false, i1 false}
!116 = !{ptr @.str.33, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/fpga/dfl-afu-main.c", i32 158, i32 35}
!118 = !{ptr @.str.34, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/fpga/dfl-afu-main.c", i32 201, i32 8}
!120 = !{ptr @dev_attr_ltr, !119, !"dev_attr_ltr", i1 false, i1 false}
!121 = !{ptr @.str.35, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/fpga/dfl-afu-main.c", i32 175, i32 22}
!123 = !{ptr @.str.36, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/fpga/dfl-afu-main.c", i32 238, i32 8}
!125 = !{ptr @dev_attr_ap1_event, !124, !"dev_attr_ap1_event", i1 false, i1 false}
!126 = !{ptr @.str.37, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/fpga/dfl-afu-main.c", i32 276, i32 8}
!128 = !{ptr @dev_attr_ap2_event, !127, !"dev_attr_ap2_event", i1 false, i1 false}
!129 = !{ptr @.str.38, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/fpga/dfl-afu-main.c", i32 293, i32 8}
!131 = !{ptr @dev_attr_power_state, !130, !"dev_attr_power_state", i1 false, i1 false}
!132 = !{ptr @.str.39, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/fpga/dfl-afu-main.c", i32 291, i32 22}
!134 = !{ptr @port_afu_group, !135, !"port_afu_group", i1 false, i1 false}
!135 = !{!"../drivers/fpga/dfl-afu-main.c", i32 499, i32 37}
!136 = !{ptr @port_afu_attrs, !137, !"port_afu_attrs", i1 false, i1 false}
!137 = !{!"../drivers/fpga/dfl-afu-main.c", i32 479, i32 26}
!138 = !{ptr @.str.40, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/fpga/dfl-afu-main.c", i32 477, i32 8}
!140 = !{ptr @dev_attr_afu_id, !139, !"dev_attr_afu_id", i1 false, i1 false}
!141 = !{ptr @.str.41, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/fpga/dfl-afu-main.c", i32 475, i32 35}
!143 = !{ptr @afu_port_ops, !144, !"afu_port_ops", i1 false, i1 false}
!144 = !{!"../drivers/fpga/dfl-afu-main.c", i32 900, i32 33}
!145 = !{!"sp"}
!146 = !{i32 1, !"wchar_size", i32 2}
!147 = !{i32 1, !"min_enum_size", i32 4}
!148 = !{i32 8, !"branch-target-enforcement", i32 0}
!149 = !{i32 8, !"sign-return-address", i32 0}
!150 = !{i32 8, !"sign-return-address-all", i32 0}
!151 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!152 = !{i32 7, !"uwtable", i32 1}
!153 = !{i32 7, !"frame-pointer", i32 2}
!154 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!155 = !{!"branch_weights", i32 1, i32 2000}
!156 = !{i64 6363436}
!157 = !{i64 2154116473}
!158 = !{i64 2154116911}
!159 = !{i64 2154117281}
!160 = !{i64 6363018}
!161 = !{i64 2154117654}
!162 = !{i64 2148713391, i64 2148713396, i64 2148713409, i64 2148713453, i64 2148713487, i64 2148713508}
!163 = !{!"branch_weights", i32 2000, i32 1}
!164 = !{i64 4575146}
!165 = !{i64 4575343}
!166 = !{i64 2152060576}
!167 = !{i64 2152079591, i64 2152079616}
!168 = !{i8 0, i8 2}
!169 = !{!"auto-init"}
