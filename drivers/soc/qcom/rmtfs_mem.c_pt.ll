; ModuleID = '/llk/IR_all_yes/drivers/soc/qcom/rmtfs_mem.c_pt.bc'
source_filename = "../drivers/soc/qcom/rmtfs_mem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.qcom_scm_vmperm = type { i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.reserved_mem = type { ptr, i32, i32, ptr, i32, i32, ptr }
%struct.qcom_rmtfs_mem = type { %struct.device, %struct.cdev, ptr, i32, i32, i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
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
%struct.rb_root = type { ptr }
%union.anon.70 = type { ptr }

@__initcall__kmod_rmtfs_mem__231_328_qcom_rmtfs_mem_init6 = internal global ptr @qcom_rmtfs_mem_init, section ".initcall6.init", align 4
@qcom_rmtfs_mem_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @qcom_rmtfs_mem_probe, ptr @qcom_rmtfs_mem_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @qcom_rmtfs_mem_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_major = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rmtfs_class = internal global { %struct.class, [36 x i8] } { %struct.class { ptr @.str.40, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__exitcall_qcom_rmtfs_mem_exit = internal global ptr @qcom_rmtfs_mem_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author232 = internal constant [28 x i8] c"rmtfs_mem.author=Linaro Ltd\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [63 x i8] c"rmtfs_mem.description=Qualcomm Remote Filesystem memory driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [42 x i8] c"rmtfs_mem.file=drivers/soc/qcom/rmtfs_mem\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [25 x i8] c"rmtfs_mem.license=GPL v2\00", section ".modinfo", align 1
@qcom_rmtfs_mem_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom_rmtfs_mem\00", [17 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013qcom_rmtfs_mem: failed to allocate char dev region\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_rmtfs_mem_init\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/soc/qcom/rmtfs_mem.c\00", [35 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_init._entry_ptr = internal global ptr @qcom_rmtfs_mem_init._entry, section ".printk_index", align 4
@qcom_rmtfs_mem_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013qcom_rmtfs_mem: failed to register rmtfs_mem driver\0A\00", [41 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_init._entry_ptr.6 = internal global ptr @qcom_rmtfs_mem_init._entry.4, section ".printk_index", align 4
@qcom_rmtfs_mem_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,rmtfs-mem\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 183, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to acquire memory region\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom_rmtfs_mem_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_probe._entry_ptr = internal global ptr @qcom_rmtfs_mem_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom,client-id\00", [17 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.3, i32 189, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to parse \22qcom,client-id\22\0A\00", [62 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_probe._entry_ptr.14 = internal global ptr @qcom_rmtfs_mem_probe._entry.12, section ".printk_index", align 4
@qcom_rmtfs_mem_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @qcom_rmtfs_mem_group, ptr null], [24 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.8, ptr @.str.3, i32 210, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to remap rmtfs_mem region\0A\00", [62 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_probe._entry_ptr.17 = internal global ptr @qcom_rmtfs_mem_probe._entry.15, section ".printk_index", align 4
@qcom_rmtfs_mem_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @qcom_rmtfs_mem_read, ptr @qcom_rmtfs_mem_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qcom_rmtfs_mem_mmap, i32 0, ptr @qcom_rmtfs_mem_open, ptr null, ptr @qcom_rmtfs_mem_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"qcom_rmtfs_mem%d\00", [47 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.8, ptr @.str.3, i32 225, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to add cdev: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_probe._entry_ptr.21 = internal global ptr @qcom_rmtfs_mem_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"qcom,vmid\00", [22 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.8, ptr @.str.3, i32 231, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to parse qcom,vmid\0A\00", [37 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_probe._entry_ptr.25 = internal global ptr @qcom_rmtfs_mem_probe._entry.23, section ".printk_index", align 4
@qcom_rmtfs_mem_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.8, ptr @.str.3, i32 248, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"assign memory failed\0A\00", [42 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_probe._entry_ptr.28 = internal global ptr @qcom_rmtfs_mem_probe._entry.26, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@qcom_rmtfs_mem_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @qcom_rmtfs_mem_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_phys_addr, ptr @dev_attr_size, ptr @dev_attr_client_id, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_phys_addr = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qcom_rmtfs_mem_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_size = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qcom_rmtfs_mem_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_client_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @qcom_rmtfs_mem_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phys_addr\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pa\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"client_id\00", [22 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@qcom_rmtfs_mem_mmap.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.37, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rmtfs_mem\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"qcom_rmtfs_mem_mmap\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"vm_end[%lu] - vm_start[%lu] [%lu] > mem->size[%pa]\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rmtfs\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"qcom_rmtfs_mem_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 290, i32 31 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"qcom_rmtfs_mem_major\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 21, i32 14 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"rmtfs_class\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 127, i32 21 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 303, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 308, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 310, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 316, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [24 x i8] c"qcom_rmtfs_mem_of_match\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 284, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 183, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 187, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 189, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant [22 x i8] c"qcom_rmtfs_mem_groups\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 210, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c"qcom_rmtfs_mem_fops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 152, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 218, i32 32 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 225, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 229, i32 35 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 231, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 248, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant [21 x i8] c"qcom_rmtfs_mem_group\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 68, i32 1 }
@___asan_gen_.140 = private unnamed_addr constant [21 x i8] c"qcom_rmtfs_mem_attrs\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 62, i32 26 }
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c"dev_attr_phys_addr\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [14 x i8] c"dev_attr_size\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"dev_attr_client_id\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 40, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 53, i32 23 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 57, i32 23 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 41, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 42, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 230, i32 6 }
@___asan_gen_.171 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 214, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 174, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 137, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [32 x i8] c"../drivers/soc/qcom/rmtfs_mem.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 129, i32 20 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_qcom_rmtfs_mem_exit, ptr @__initcall__kmod_rmtfs_mem__231_328_qcom_rmtfs_mem_init6, ptr @qcom_rmtfs_mem_exit, ptr @qcom_rmtfs_mem_init._entry, ptr @qcom_rmtfs_mem_init._entry.4, ptr @qcom_rmtfs_mem_init._entry_ptr, ptr @qcom_rmtfs_mem_init._entry_ptr.6, ptr @qcom_rmtfs_mem_probe._entry, ptr @qcom_rmtfs_mem_probe._entry.12, ptr @qcom_rmtfs_mem_probe._entry.15, ptr @qcom_rmtfs_mem_probe._entry.19, ptr @qcom_rmtfs_mem_probe._entry.23, ptr @qcom_rmtfs_mem_probe._entry.26, ptr @qcom_rmtfs_mem_probe._entry_ptr, ptr @qcom_rmtfs_mem_probe._entry_ptr.14, ptr @qcom_rmtfs_mem_probe._entry_ptr.17, ptr @qcom_rmtfs_mem_probe._entry_ptr.21, ptr @qcom_rmtfs_mem_probe._entry_ptr.25, ptr @qcom_rmtfs_mem_probe._entry_ptr.28, ptr @qcom_rmtfs_mem_driver, ptr @qcom_rmtfs_mem_major, ptr @rmtfs_class, ptr @qcom_rmtfs_mem_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @qcom_rmtfs_mem_of_match, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @qcom_rmtfs_mem_groups, ptr @.str.16, ptr @qcom_rmtfs_mem_fops, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @qcom_rmtfs_mem_group, ptr @qcom_rmtfs_mem_attrs, ptr @dev_attr_phys_addr, ptr @dev_attr_size, ptr @dev_attr_client_id, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_major to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rmtfs_class to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_rmtfs_mem_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_phys_addr to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_size to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_client_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_rmtfs_mem_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__class_register(ptr noundef nonnull @rmtfs_class, ptr noundef nonnull @qcom_rmtfs_mem_init.__key) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @qcom_rmtfs_mem_major, i32 noundef 0, i32 noundef 1048576, ptr noundef nonnull @.str) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %unregister_class

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @__platform_driver_register(ptr noundef nonnull @qcom_rmtfs_mem_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  %0 = load i32, ptr @qcom_rmtfs_mem_major, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 1048576) #10
  br label %unregister_class

unregister_class:                                 ; preds = %do.end11, %do.end
  %ret.0 = phi i32 [ %call1, %do.end ], [ %call6, %do.end11 ]
  tail call void @class_unregister(ptr noundef nonnull @rmtfs_class) #10
  br label %cleanup

cleanup:                                          ; preds = %unregister_class, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unregister_class ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @qcom_rmtfs_mem_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @qcom_rmtfs_mem_driver) #10
  %0 = load i32, ptr @qcom_rmtfs_mem_major, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 1048576) #10
  tail call void @class_unregister(ptr noundef nonnull @rmtfs_class) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__class_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_rmtfs_mem_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %perms = alloca [2 x %struct.qcom_scm_vmperm], align 4
  %client_id = alloca i32, align 4
  %vmid = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %perms) #10
  %2 = getelementptr inbounds %struct.qcom_scm_vmperm, ptr %perms, i32 0, i32 1
  %3 = getelementptr inbounds [2 x %struct.qcom_scm_vmperm], ptr %perms, i32 0, i32 1
  %4 = getelementptr inbounds [2 x %struct.qcom_scm_vmperm], ptr %perms, i32 0, i32 1, i32 1
  %5 = call ptr @memset(ptr %perms, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %client_id) #10
  %6 = ptrtoint ptr %client_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %client_id, align 4, !annotation !110
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vmid) #10
  %7 = ptrtoint ptr %vmid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %vmid, align 4, !annotation !110
  %call = tail call ptr @of_reserved_mem_lookup(ptr noundef %1) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.11, ptr noundef nonnull %client_id, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool3.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1112) #14
  %tobool11.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %base = getelementptr inbounds %struct.reserved_mem, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base, align 4
  %addr = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %addr, align 4
  %12 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %client_id, align 4
  %client_id14 = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %call7.i.i, i32 0, i32 5
  %14 = ptrtoint ptr %client_id14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %client_id14, align 4
  %size = getelementptr inbounds %struct.reserved_mem, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %size, align 4
  %size15 = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %call7.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %size15 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %size15, align 8
  call void @device_initialize(ptr noundef nonnull %call7.i.i) #10
  %parent = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 1
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %dev, ptr %parent, align 8
  %groups = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 34
  %19 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @qcom_rmtfs_mem_groups, ptr %groups, align 8
  %release = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 35
  %20 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @qcom_rmtfs_mem_release_device, ptr %release, align 4
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %addr, align 4
  %23 = ptrtoint ptr %size15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %size15, align 8
  %call24 = call ptr @devm_memremap(ptr noundef nonnull %call7.i.i, i32 noundef %22, i32 noundef %24, i32 noundef 4) #10
  %base25 = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %call7.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %base25 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call24, ptr %base25, align 8
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end31, label %if.end35

do.end31:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #13
  %26 = ptrtoint ptr %base25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base25, align 8
  %28 = ptrtoint ptr %27 to i32
  br label %put_device

if.end35:                                         ; preds = %if.end13
  %cdev = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %call7.i.i, i32 0, i32 1
  call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @qcom_rmtfs_mem_fops) #10
  %owner = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %call7.i.i, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %owner, align 8
  %30 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %client_id, align 4
  %call38 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.18, i32 noundef %31) #10
  %32 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %client_id, align 4
  %id = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 30
  %34 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %id, align 4
  %class = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 33
  %35 = ptrtoint ptr %class to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @rmtfs_class, ptr %class, align 4
  %36 = load i32, ptr @qcom_rmtfs_mem_major, align 4
  %shr = and i32 %36, -1048576
  %or = or i32 %shr, %33
  %devt = getelementptr inbounds %struct.device, ptr %call7.i.i, i32 0, i32 29
  %37 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or, ptr %devt, align 8
  %call44 = call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end51, label %do.end49

do.end49:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call44) #13
  br label %put_device

if.end51:                                         ; preds = %if.end35
  %call.i.i143 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef nonnull %vmid, i32 noundef 1, i32 noundef 0) #10
  %38 = call i32 @llvm.smin.i32(i32 %call.i.i143, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %cmp = icmp sgt i32 %38, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %38)
  %cmp53.not = icmp eq i32 %38, -22
  %or.cond = or i1 %cmp, %cmp53.not
  br i1 %or.cond, label %if.else, label %if.end51.remove_cdev.sink.split_crit_edge

if.end51.remove_cdev.sink.split_crit_edge:        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_cdev.sink.split

if.else:                                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i143)
  %tobool59.not = icmp sgt i32 %call.i.i143, -1
  br i1 %tobool59.not, label %if.then60, label %if.else.if.end83_crit_edge

if.else.if.end83_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.then60:                                        ; preds = %if.else
  %call61 = call zeroext i1 @qcom_scm_is_available() #10
  br i1 %call61, label %if.end63, label %if.then60.remove_cdev_crit_edge

if.then60.remove_cdev_crit_edge:                  ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_cdev

if.end63:                                         ; preds = %if.then60
  %39 = ptrtoint ptr %perms to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 3, ptr %perms, align 4
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 6, ptr %2, align 4
  %41 = ptrtoint ptr %vmid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %vmid, align 4
  %43 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %3, align 4
  %44 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 6, ptr %4, align 4
  %perms70 = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %call7.i.i, i32 0, i32 6
  %45 = ptrtoint ptr %perms70 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 8, ptr %perms70, align 8
  %46 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %addr, align 4
  %48 = ptrtoint ptr %size15 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %size15, align 8
  %call74 = call i32 @qcom_scm_assign_mem(i32 noundef %47, i32 noundef %49, ptr noundef %perms70, ptr noundef nonnull %perms, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end63.remove_cdev.sink.split_crit_edge, label %if.end63.if.end83_crit_edge

if.end63.if.end83_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end83

if.end63.remove_cdev.sink.split_crit_edge:        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %remove_cdev.sink.split

if.end83:                                         ; preds = %if.end63.if.end83_crit_edge, %if.else.if.end83_crit_edge
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %50 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i, ptr %driver_data.i, align 4
  br label %cleanup

remove_cdev.sink.split:                           ; preds = %if.end63.remove_cdev.sink.split_crit_edge, %if.end51.remove_cdev.sink.split_crit_edge
  %.str.27.sink = phi ptr [ @.str.24, %if.end51.remove_cdev.sink.split_crit_edge ], [ @.str.27, %if.end63.remove_cdev.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %38, %if.end51.remove_cdev.sink.split_crit_edge ], [ %call74, %if.end63.remove_cdev.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.27.sink) #13
  br label %remove_cdev

remove_cdev:                                      ; preds = %remove_cdev.sink.split, %if.then60.remove_cdev_crit_edge
  %ret.0 = phi i32 [ -517, %if.then60.remove_cdev_crit_edge ], [ %ret.0.ph, %remove_cdev.sink.split ]
  call void @cdev_device_del(ptr noundef %cdev, ptr noundef nonnull %call7.i.i) #10
  br label %put_device

put_device:                                       ; preds = %remove_cdev, %do.end49, %do.end31
  %ret.1 = phi i32 [ %28, %do.end31 ], [ %call44, %do.end49 ], [ %ret.0, %remove_cdev ]
  call void @put_device(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %put_device, %if.end83, %if.end9.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end7 ], [ %ret.1, %put_device ], [ 0, %if.end83 ], [ -22, %do.end ], [ -12, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vmid) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %client_id) #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %perms) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_rmtfs_mem_remove(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  %perm = alloca %struct.qcom_scm_vmperm, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %perm) #10
  %2 = ptrtoint ptr %perm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %perm, align 4, !annotation !110
  %3 = getelementptr inbounds %struct.qcom_scm_vmperm, ptr %perm, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !110
  %perms = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %perms to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %perms, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %perm to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %perm, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %3, align 4
  %addr = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %addr, align 4
  %size = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size, align 8
  %call3 = call i32 @qcom_scm_assign_mem(i32 noundef %10, i32 noundef %12, ptr noundef %perms, ptr noundef nonnull %perm, i32 noundef 1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cdev = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %1, i32 0, i32 1
  call void @cdev_device_del(ptr noundef %cdev, ptr noundef %1) #10
  call void @put_device(ptr noundef %1) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %perm) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_reserved_mem_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qcom_rmtfs_mem_release_device(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_memremap(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @qcom_scm_is_available() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_assign_mem(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_rmtfs_mem_show(ptr noundef %dev, ptr noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %attr, @dev_attr_phys_addr
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %dev, i32 0, i32 3
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.30, ptr noundef %addr)
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq ptr %attr, @dev_attr_size
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %size = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %dev, i32 0, i32 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.30, ptr noundef %size)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq ptr %attr, @dev_attr_client_id
  br i1 %cmp5, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %client_id = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %client_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %client_id, align 4
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, i32 noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %if.then2, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ %call3, %if.then2 ], [ %call7, %if.then6 ], [ -22, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_rmtfs_mem_read(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %f_pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %f_pos, align 8
  %size = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  %conv = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp.not = icmp slt i64 %3, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = zext i32 %count to i64
  %add = add i64 %3, %conv2
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp5.not = icmp slt i64 %add, %conv
  %6 = trunc i64 %3 to i32
  %conv10 = sub i32 %5, %6
  %count.addr.0 = select i1 %cmp5.not, i32 %count, i32 %conv10
  %base = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0)
  %cmp9.i.i = icmp slt i32 %count.addr.0, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !111

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %count.addr.0, i1 noundef zeroext true) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 174) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count.addr.0, i32 -1226833920) #15, !srcloc !112
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr, i32 noundef %count.addr.0) #10
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %buf, ptr noundef %add.ptr, i32 noundef %count.addr.0) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %count.addr.0, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %count.addr.0, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool.not, label %if.end13, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13:                                         ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv14 = zext i32 %count.addr.0 to i64
  %10 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %f_pos, align 8
  %add15 = add i64 %11, %conv14
  store i64 %add15, ptr %f_pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %if.end13 ], [ 0, %entry.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_rmtfs_mem_write(ptr nocapture noundef readonly %filp, ptr noundef %buf, i32 noundef %count, ptr nocapture noundef %f_pos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %f_pos, align 8
  %size = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 8
  %conv = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv)
  %cmp.not = icmp slt i64 %3, %conv
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv2 = zext i32 %count to i64
  %add = add i64 %3, %conv2
  call void @__sanitizer_cov_trace_cmp8(i64 %add, i64 %conv)
  %cmp5.not = icmp slt i64 %add, %conv
  %6 = trunc i64 %3 to i32
  %conv10 = sub i32 %5, %6
  %count.addr.0 = select i1 %cmp5.not, i32 %count, i32 %conv10
  %base = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 8
  %add.ptr = getelementptr i8, ptr %8, i32 %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.addr.0)
  %cmp9.i.i = icmp slt i32 %count.addr.0, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !111

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.34, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %count.addr.0, i1 noundef zeroext false) #10
  tail call void @__might_fault(ptr noundef nonnull @.str.36, i32 noundef 156) #10
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buf, i32 %count.addr.0, i32 -1226833920) #15, !srcloc !113
  %asmresult.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !111

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr, i32 noundef %count.addr.0) #10
  %10 = tail call i32 @llvm.read_register.i32(metadata !100) #10
  %and.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !114
  %and.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %add.ptr, ptr noundef %buf, i32 noundef %count.addr.0) #10
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #10, !srcloc !115
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !116
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %count.addr.0, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %count.addr.0, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end13, label %if.then11.i.i, !prof !111

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %count.addr.0, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr, i32 %sub.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end13:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv14 = zext i32 %count.addr.0 to i64
  %14 = ptrtoint ptr %f_pos to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %f_pos, align 8
  %add15 = add i64 %15, %conv14
  store i64 %add15, ptr %f_pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %if.end13 ], [ 0, %entry.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_rmtfs_mem_mmap(ptr nocapture noundef readonly %filep, ptr noundef %vma) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filep, i32 0, i32 16
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
  %size = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %7)
  %cmp = icmp ugt i32 %sub, %7
  br i1 %cmp, label %do.body, label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qcom_rmtfs_mem_mmap.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qcom_rmtfs_mem_mmap, %if.then3)) #10
          to label %cleanup [label %if.then3], !srcloc !117

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_end, align 4
  %10 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vma, align 4
  %sub8 = sub i32 %9, %11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qcom_rmtfs_mem_mmap.__UNIQUE_ID_ddebug230, ptr noundef %1, ptr noundef nonnull @.str.39, i32 noundef %9, i32 noundef %11, i32 noundef %sub8, ptr noundef %size) #10
  br label %cleanup

if.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %12 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vm_page_prot, align 4
  %and = and i32 %13, -61
  %or = or i32 %and, 4
  store i32 %or, ptr %vm_page_prot, align 4
  %addr = getelementptr inbounds %struct.qcom_rmtfs_mem, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr, align 4
  %shr = lshr i32 %15, 12
  %call17 = tail call i32 @remap_pfn_range(ptr noundef %vma, i32 noundef %5, i32 noundef %shr, i32 noundef %sub, i32 noundef %or) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then3, %do.body
  %retval.0 = phi i32 [ %call17, %if.end10 ], [ -22, %if.then3 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_rmtfs_mem_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %filp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -928
  %call = tail call ptr @get_device(ptr noundef %add.ptr) #10
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %private_data, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_rmtfs_mem_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %filp) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @put_device(ptr noundef %1) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @remap_pfn_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33, !34, !35, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !60, !61, !62, !64, !65, !67, !69, !70, !72, !74, !76, !77, !79, !80, !82, !84, !85, !87, !89, !91, !92, !93, !94, !96, !98}
!llvm.named.register.sp = !{!100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_rmtfs_mem__231_328_qcom_rmtfs_mem_init6, !1, !"__initcall__kmod_rmtfs_mem__231_328_qcom_rmtfs_mem_init6", i1 false, i1 false}
!1 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 328, i32 1}
!2 = !{ptr @__exitcall_qcom_rmtfs_mem_exit, !3, !"__exitcall_qcom_rmtfs_mem_exit", i1 false, i1 false}
!3 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 336, i32 1}
!4 = !{ptr @__UNIQUE_ID_author232, !5, !"__UNIQUE_ID_author232", i1 false, i1 false}
!5 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 338, i32 1}
!6 = !{ptr @__UNIQUE_ID_description233, !7, !"__UNIQUE_ID_description233", i1 false, i1 false}
!7 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 339, i32 1}
!8 = !{ptr @__UNIQUE_ID_file234, !9, !"__UNIQUE_ID_file234", i1 false, i1 false}
!9 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 340, i32 1}
!10 = !{ptr @__UNIQUE_ID_license235, !9, !"__UNIQUE_ID_license235", i1 false, i1 false}
!11 = !{ptr @qcom_rmtfs_mem_major, !12, !"qcom_rmtfs_mem_major", i1 false, i1 false}
!12 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 21, i32 14}
!13 = !{ptr @qcom_rmtfs_mem_init.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 303, i32 8}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 308, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 310, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @qcom_rmtfs_mem_init._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @qcom_rmtfs_mem_init._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 316, i32 3}
!25 = !{ptr @qcom_rmtfs_mem_init._entry.4, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @qcom_rmtfs_mem_init._entry_ptr.6, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @qcom_rmtfs_mem_driver, !28, !"qcom_rmtfs_mem_driver", i1 false, i1 false}
!28 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 290, i32 31}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 183, i32 3}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @qcom_rmtfs_mem_probe._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @qcom_rmtfs_mem_probe._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 187, i32 35}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 189, i32 3}
!40 = !{ptr @qcom_rmtfs_mem_probe._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @qcom_rmtfs_mem_probe._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 210, i32 3}
!44 = !{ptr @qcom_rmtfs_mem_probe._entry.15, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @qcom_rmtfs_mem_probe._entry_ptr.17, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 218, i32 32}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 225, i32 3}
!50 = !{ptr @qcom_rmtfs_mem_probe._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @qcom_rmtfs_mem_probe._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 229, i32 35}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 231, i32 3}
!56 = !{ptr @qcom_rmtfs_mem_probe._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @qcom_rmtfs_mem_probe._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 248, i32 4}
!60 = !{ptr @qcom_rmtfs_mem_probe._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @qcom_rmtfs_mem_probe._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @qcom_rmtfs_mem_groups, !63, !"qcom_rmtfs_mem_groups", i1 false, i1 false}
!63 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 68, i32 1}
!64 = !{ptr @qcom_rmtfs_mem_group, !63, !"qcom_rmtfs_mem_group", i1 false, i1 false}
!65 = !{ptr @qcom_rmtfs_mem_attrs, !66, !"qcom_rmtfs_mem_attrs", i1 false, i1 false}
!66 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 62, i32 26}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 40, i32 8}
!69 = !{ptr @dev_attr_phys_addr, !68, !"dev_attr_phys_addr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 53, i32 23}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 57, i32 23}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 41, i32 8}
!76 = !{ptr @dev_attr_size, !75, !"dev_attr_size", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 42, i32 8}
!79 = !{ptr @dev_attr_client_id, !78, !"dev_attr_client_id", i1 false, i1 false}
!80 = !{ptr @qcom_rmtfs_mem_fops, !81, !"qcom_rmtfs_mem_fops", i1 false, i1 false}
!81 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 152, i32 37}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!84 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 137, i32 3}
!91 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @qcom_rmtfs_mem_mmap.__UNIQUE_ID_ddebug230, !90, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!94 = !{ptr @qcom_rmtfs_mem_of_match, !95, !"qcom_rmtfs_mem_of_match", i1 false, i1 false}
!95 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 284, i32 34}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 129, i32 20}
!98 = !{ptr @rmtfs_class, !99, !"rmtfs_class", i1 false, i1 false}
!99 = !{!"../drivers/soc/qcom/rmtfs_mem.c", i32 127, i32 21}
!100 = !{!"sp"}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"auto-init"}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{i64 2153350809, i64 2153350834}
!113 = !{i64 2153350128, i64 2153350153}
!114 = !{i64 5845683}
!115 = !{i64 5845880}
!116 = !{i64 2153331113}
!117 = !{i64 2148697971, i64 2148697976, i64 2148697989, i64 2148698033, i64 2148698067, i64 2148698088}
